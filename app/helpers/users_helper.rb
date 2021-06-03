# rubocop: disable Style/GuardClause
module UsersHelper
  def error_helper(user)
    err = ''
    if user.errors.any?
      @user.errors.full_messages.each { |msg| err << "#{msg}  " }
      err
    end
  end
end

# rubocop: enable Style/GuardClause
