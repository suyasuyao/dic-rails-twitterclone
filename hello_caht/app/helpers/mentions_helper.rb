module MentionsHelper
  def choose_new_or_edit
    if action_name == "new"
      confirm_mentions_path
    elsif action_name == "edit"
      mention_path
    end
  end
end
