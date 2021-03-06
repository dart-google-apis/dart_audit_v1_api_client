part of audit_v1_api;

class Activities {

  /** Each record in read response. */
  core.List<Activity> items;

  /** Kind of list response this is. */
  core.String kind;

  /** Next page URL. */
  core.String next;

  /** Create new Activities from JSON data */
  Activities.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Activity.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("next")) {
      next = json["next"];
    }
  }

  /** Create JSON Object for Activities */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (next != null) {
      output["next"] = next;
    }

    return output;
  }

  /** Return String representation of Activities */
  core.String toString() => JSON.encode(this.toJson());

}

class Activity {

  /** User doing the action. */
  ActivityActor actor;

  /** Activity events. */
  core.List<ActivityEvents> events;

  /** Unique identifier for each activity record. */
  ActivityId id;

  /** IP Address of the user doing the action. */
  core.String ipAddress;

  /** Kind of resource this is. */
  core.String kind;

  /** Domain of source customer. */
  core.String ownerDomain;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
    if (json.containsKey("actor")) {
      actor = new ActivityActor.fromJson(json["actor"]);
    }
    if (json.containsKey("events")) {
      events = json["events"].map((eventsItem) => new ActivityEvents.fromJson(eventsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = new ActivityId.fromJson(json["id"]);
    }
    if (json.containsKey("ipAddress")) {
      ipAddress = json["ipAddress"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("ownerDomain")) {
      ownerDomain = json["ownerDomain"];
    }
  }

  /** Create JSON Object for Activity */
  core.Map toJson() {
    var output = new core.Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (events != null) {
      output["events"] = events.map((eventsItem) => eventsItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id.toJson();
    }
    if (ipAddress != null) {
      output["ipAddress"] = ipAddress;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (ownerDomain != null) {
      output["ownerDomain"] = ownerDomain;
    }

    return output;
  }

  /** Return String representation of Activity */
  core.String toString() => JSON.encode(this.toJson());

}

/** User doing the action. */
class ActivityActor {

  /** ID of application which interacted on behalf of the user. */
  core.int applicationId;

  /** User or OAuth 2LO request. */
  core.String callerType;

  /** Email address of the user. */
  core.String email;

  /** For OAuth 2LO API requests, consumer_key of the requestor. */
  core.String key;

  /** Create new ActivityActor from JSON data */
  ActivityActor.fromJson(core.Map json) {
    if (json.containsKey("applicationId")) {
      applicationId = (json["applicationId"] is core.String) ? core.int.parse(json["applicationId"]) : json["applicationId"];
    }
    if (json.containsKey("callerType")) {
      callerType = json["callerType"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
  }

  /** Create JSON Object for ActivityActor */
  core.Map toJson() {
    var output = new core.Map();

    if (applicationId != null) {
      output["applicationId"] = applicationId;
    }
    if (callerType != null) {
      output["callerType"] = callerType;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (key != null) {
      output["key"] = key;
    }

    return output;
  }

  /** Return String representation of ActivityActor */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityEvents {

  /** Type of event. */
  core.String eventType;

  /** Name of event. */
  core.String name;

  /** Event parameters. */
  core.List<ActivityEventsParameters> parameters;

  /** Create new ActivityEvents from JSON data */
  ActivityEvents.fromJson(core.Map json) {
    if (json.containsKey("eventType")) {
      eventType = json["eventType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parameters")) {
      parameters = json["parameters"].map((parametersItem) => new ActivityEventsParameters.fromJson(parametersItem)).toList();
    }
  }

  /** Create JSON Object for ActivityEvents */
  core.Map toJson() {
    var output = new core.Map();

    if (eventType != null) {
      output["eventType"] = eventType;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parameters != null) {
      output["parameters"] = parameters.map((parametersItem) => parametersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ActivityEvents */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityEventsParameters {

  /** Name of the parameter. */
  core.String name;

  /** Value of the parameter. */
  core.String value;

  /** Create new ActivityEventsParameters from JSON data */
  ActivityEventsParameters.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ActivityEventsParameters */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ActivityEventsParameters */
  core.String toString() => JSON.encode(this.toJson());

}

/** Unique identifier for each activity record. */
class ActivityId {

  /** Application ID of the source application. */
  core.int applicationId;

  /** Obfuscated customer ID of the source customer. */
  core.String customerId;

  /** Time of occurrence of the activity. */
  core.String time;

  /** Unique qualifier if multiple events have the same time. */
  core.int uniqQualifier;

  /** Create new ActivityId from JSON data */
  ActivityId.fromJson(core.Map json) {
    if (json.containsKey("applicationId")) {
      applicationId = (json["applicationId"] is core.String) ? core.int.parse(json["applicationId"]) : json["applicationId"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("time")) {
      time = json["time"];
    }
    if (json.containsKey("uniqQualifier")) {
      uniqQualifier = (json["uniqQualifier"] is core.String) ? core.int.parse(json["uniqQualifier"]) : json["uniqQualifier"];
    }
  }

  /** Create JSON Object for ActivityId */
  core.Map toJson() {
    var output = new core.Map();

    if (applicationId != null) {
      output["applicationId"] = applicationId;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (time != null) {
      output["time"] = time;
    }
    if (uniqQualifier != null) {
      output["uniqQualifier"] = uniqQualifier;
    }

    return output;
  }

  /** Return String representation of ActivityId */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
