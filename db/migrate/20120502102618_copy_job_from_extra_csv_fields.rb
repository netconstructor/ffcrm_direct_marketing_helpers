class CopyJobFromExtraCsvFields < ActiveRecord::Migration
  def up
    if defined?(FatfreeCsvImport)
      ver = FatfreeCsvImport::VERSION.split('.').collect { |n| n.to_i }
      return if ver[0] == 0 && ver[1] == 0 && ver[2] < 8
      Lead.transaction do
        for lead in Lead.all
          next if lead.extra_csv_data.nil?
          extra_data = YAML.load(lead.extra_csv_data)
          next if extra_data.nil?
          lead.original_contact_job = extra_data['job']
          lead.job ||= extra_data['job']
          lead.save!
        end
      end
    end
  end

  def down
  end
end
