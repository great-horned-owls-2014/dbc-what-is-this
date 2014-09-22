module ResponsesHelper

  def best_response?(response)
    response.question.best_response == response
  end

  def not_yet_voted?(response)
    Vote.find_by(response_id: response.id, user_id: session[:current_user]) == nil
  end

end
