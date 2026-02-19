class RenamePassDigestToPasswordDigest < ActiveRecord::Migration[7.2]
def change
  rename_column :users, :pass_digest, :password_digest
end
end
