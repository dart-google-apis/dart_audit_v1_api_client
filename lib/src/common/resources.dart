part of audit_v1_api_client;

class ActivitiesResource extends Resource {

  ActivitiesResource(Client client) : super(client) {
  }

  /**
   * Retrieves a list of activities for a specific customer and application.
   *
   * [customerId] - Represents the customer who is the owner of target object on which action was performed.
   *
   * [applicationId] - Application ID of the application on which the event was performed.
   *
   * [actorApplicationId] - Application ID of the application which interacted on behalf of the user while performing the event.
   *
   * [actorEmail] - Email address of the user who performed the action.
   *
   * [actorIpAddress] - IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
   *
   * [caller] - Type of the caller.
   *   Allowed values:
   *     application_owner - Caller is an application owner.
   *     customer - Caller is a customer.
   *
   * [continuationToken] - Next page URL.
   *
   * [endTime] - Return events which occured at or before this time.
   *
   * [eventName] - Name of the event being queried.
   *
   * [maxResults] - Number of activity records to be shown in each page.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [parameters] - Event parameters in the form [parameter1 name]:[parameter1 value],[parameter2 name]:[parameter2 value],...
   *
   * [startTime] - Return events which occured at or after this time.
   *
   * [optParams] - Additional query parameters
   */
  Future<Activities> list(String customerId, String applicationId, {String actorApplicationId, String actorEmail, String actorIpAddress, String caller, String continuationToken, String endTime, String eventName, int maxResults, String parameters, String startTime, Map optParams}) {
    var completer = new Completer();
    var url = "{customerId}/{applicationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (actorApplicationId != null) queryParams["actorApplicationId"] = actorApplicationId;
    if (actorEmail != null) queryParams["actorEmail"] = actorEmail;
    if (actorIpAddress != null) queryParams["actorIpAddress"] = actorIpAddress;
    if (applicationId == null) paramErrors.add("applicationId is required");
    if (applicationId != null) urlParams["applicationId"] = applicationId;
    if (caller != null && !["application_owner", "customer"].contains(caller)) {
      paramErrors.add("Allowed values for caller: application_owner, customer");
    }
    if (caller != null) queryParams["caller"] = caller;
    if (continuationToken != null) queryParams["continuationToken"] = continuationToken;
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (endTime != null) queryParams["endTime"] = endTime;
    if (eventName != null) queryParams["eventName"] = eventName;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (parameters != null) queryParams["parameters"] = parameters;
    if (startTime != null) queryParams["startTime"] = startTime;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Activities.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

