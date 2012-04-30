class AddOriginalContactJobToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :job, :string
    add_column :leads, :original_contact_job, :string
  end
end
