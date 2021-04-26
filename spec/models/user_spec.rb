require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとemail、encrypted_password、family_name、first_name、family_name_kana、first_name_kana、birthdayがあれば登録できる' do
        expect(@user).to be_valid
      end
      it 'encrypted_passwordが6文字以上であれば登録できる' do
        @user.encrypted_password = '000000'
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'encrypted_passwordが空では登録できない' do
        @user.encrypted_password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it '重複したemailが存在すると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(@user.errors.full_messages).to include("Email has already been taken")
      end
      it 'encrypted_passwordが5文字以下であれば登録できない' do
        @user.encrypted_password = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
    end
  end
end
