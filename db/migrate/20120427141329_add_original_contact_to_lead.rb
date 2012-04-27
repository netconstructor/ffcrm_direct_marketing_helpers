class AddOriginalContactToLead < ActiveRecord::Migration
  def up
    add_column :leads, :original_contact, :string

    Lead.transaction do
      for lead in Lead.all
        lead.original_contact = lead.full_name
        lead.save!
      end
    end
  end

  def down
    remove_column :leads, :original_contact
  end
end
