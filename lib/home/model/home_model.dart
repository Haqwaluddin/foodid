class Example {
  List<Data>? data;
  int? page;
  int? size;
  int? total;

  Example({this.data, this.page, this.size, this.total});

  Example.fromJson(Map<String, dynamic> json) {
    this.data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e)).toList();
    this.page = json["page"];
    this.size = json["size"];
    this.total = json["total"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.data != null)
      data["data"] = this.data?.map((e)=>e.toJson()).toList();
    data["page"] = this.page;
    data["size"] = this.size;
    data["total"] = this.total;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? pageUrl;
  String? originalPageUrl;
  String? media;
  bool? isActive;
  int? orders;
  int? bannerVariantId;
  Variant? variant;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data({this.id, this.name, this.pageUrl, this.originalPageUrl, this.media, this.isActive, this.orders, this.bannerVariantId, this.variant, this.createdBy, this.updatedBy, this.createdAt, this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.pageUrl = json["page_url"];
    this.originalPageUrl = json["original_page_url"];
    this.media = json["media"];
    this.isActive = json["is_active"];
    this.orders = json["orders"];
    this.bannerVariantId = json["banner_variant_id"];
    this.variant = json["variant"] == null ? null : Variant.fromJson(json["variant"]);
    this.createdBy = json["created_by"];
    this.updatedBy = json["updated_by"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["page_url"] = this.pageUrl;
    data["original_page_url"] = this.originalPageUrl;
    data["media"] = this.media;
    data["is_active"] = this.isActive;
    data["orders"] = this.orders;
    data["banner_variant_id"] = this.bannerVariantId;
    if(this.variant != null)
      data["variant"] = this.variant?.toJson();
    data["created_by"] = this.createdBy;
    data["updated_by"] = this.updatedBy;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    return data;
  }
}

class Variant {
  int? id;
  String? name;
  String? slug;
  String? createdAt;
  String? updatedAt;

  Variant({this.id, this.name, this.slug, this.createdAt, this.updatedAt});

  Variant.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.slug = json["slug"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["slug"] = this.slug;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    return data;
  }
}