class RedditResponseDto{
  late final originalJson;
  late final data;

  RedditResponseDto.fromJson(Map<String, dynamic> json,) {
    originalJson = json;
    data = data.fromJson(json);
  }
}

class RedditResponse {
  String? kind;
  RedditResponseData? data;

  RedditResponse({
    this.kind,
    this.data,
  });

  factory RedditResponse.fromJson(Map<String, dynamic> json,) {
    final kind = json['kind'] as String?;
    final data = ((json['data'] as Map<String,dynamic>?) != null) ? RedditResponseData.fromJson(json['data'] as Map<String,dynamic>,) : null;
    return RedditResponse(kind: kind, data: data,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['kind'] = kind;
    json['data'] = data?.toJson();
    return json;
  }
}

class RedditResponseData {
  dynamic after;
  int? dist;
  String? modhash;
  String? geoFilter;
  List<Child>? children;
  String? before;

  RedditResponseData({
    this.after,
    this.dist,
    this.modhash,
    this.geoFilter,
    this.children,
    this.before,
  });

  factory RedditResponseData.fromJson(Map<String, dynamic> json,) {
    final after = json['after'];
    final dist = json['dist'] as int?;
    final modhash = json['modhash'] as String?;
    final geoFilter = json['geo_filter'] as String?;
    final children = (json['children'] as List?)?.map((e,) => Child.fromJson(e as Map<String,dynamic>,),).toList();
    final before = json['before'] as String?;
    return RedditResponseData(after: after, dist: dist, modhash: modhash, geoFilter: geoFilter, children: children, before: before,);

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['after'] = after;
    json['dist'] = dist;
    json['modhash'] = modhash;
    json['geo_filter'] = geoFilter;
    json['children'] = children?.map((e,) => e.toJson(),).toList();
    json['before'] = before;
    return json;
  }
}

class Child {
  String? kind;
  ChildData? data;

  Child({
    this.kind,
    this.data,
  });

  Child.fromJson(Map<String, dynamic> json,) {
    kind = json['kind'] as String?;
    data = (json['data'] as Map<String,dynamic>?) != null ? ChildData.fromJson(json['data'] as Map<String,dynamic>,) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['kind'] = kind;
    json['data'] = data?.toJson();
    return json;
  }
}

class ChildData {
  dynamic approvedAtUtc;
  String? subreddit;
  String? selftext;
  String? authorFullname;
  bool? saved;
  dynamic modReasonTitle;
  int? gilded;
  bool? clicked;
  String? title;
  List<dynamic>? linkFlairRichtext;
  String? subredditNamePrefixed;
  bool? hidden;
  int? pwls;
  String? linkFlairCssClass;
  int? downs;
  int? thumbnailHeight;
  dynamic topAwardedType;
  bool? hideScore;
  String? name;
  bool? quarantine;
  String? linkFlairTextColor;
  double? upvoteRatio;
  String? authorFlairBackgroundColor;
  int? ups;
  int? totalAwardsReceived;
  MediaEmbed? mediaEmbed;
  int? thumbnailWidth;
  dynamic authorFlairTemplateId;
  bool? isOriginalContent;
  List<dynamic>? userReports;
  SecureMedia? secureMedia;
  bool? isRedditMediaDomain;
  bool? isMeta;
  dynamic category;
  SecureMediaEmbed? secureMediaEmbed;
  String? linkFlairText;
  bool? canModPost;
  int? score;
  dynamic approvedBy;
  bool? isCreatedFromAdsUi;
  bool? authorPremium;
  String? thumbnail;
  bool? edited;
  String? authorFlairCssClass;
  List<dynamic>? authorFlairRichtext;
  dynamic gildings;
  String? postHint;
  dynamic contentCategories;
  bool? isSelf;
  String? subredditType;
  int? created;
  String? linkFlairType;
  int? wls;
  dynamic removedByCategory;
  dynamic bannedBy;
  String? authorFlairType;
  String? domain;
  bool? allowLiveComments;
  dynamic selftextHtml;
  dynamic likes;
  dynamic suggestedSort;
  dynamic bannedAtUtc;
  String? urlOverriddenByDest;
  dynamic viewCount;
  bool? archived;
  bool? noFollow;
  bool? isCrosspostable;
  bool? pinned;
  bool? over18;
  Preview? preview;
  List<dynamic>? allAwardings;
  List<dynamic>? awarders;
  bool? mediaOnly;
  String? linkFlairTemplateId;
  bool? canGild;
  bool? spoiler;
  bool? locked;
  String? authorFlairText;
  List<dynamic>? treatmentTags;
  bool? visited;
  dynamic removedBy;
  dynamic modNote;
  dynamic distinguished;
  String? subredditId;
  bool? authorIsBlocked;
  dynamic modReasonBy;
  dynamic numReports;
  dynamic removalReason;
  String? linkFlairBackgroundColor;
  String? id;
  bool? isRobotIndexable;
  dynamic reportReasons;
  String? author;
  dynamic discussionType;
  int? numComments;
  bool? sendReplies;
  String? whitelistStatus;
  bool? contestMode;
  List<dynamic>? modReports;
  bool? authorPatreonFlair;
  String? authorFlairTextColor;
  String? permalink;
  String? parentWhitelistStatus;
  bool? stickied;
  String? url;
  int? subredditSubscribers;
  int? createdUtc;
  int? numCrossposts;
  Media? media;
  bool? isVideo;

  ChildData({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.thumbnailHeight,
    this.topAwardedType,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.upvoteRatio,
    this.authorFlairBackgroundColor,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.isCreatedFromAdsUi,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.postHint,
    this.contentCategories,
    this.isSelf,
    this.subredditType,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.urlOverriddenByDest,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.preview,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.linkFlairTemplateId,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.modNote,
    this.distinguished,
    this.subredditId,
    this.authorIsBlocked,
    this.modReasonBy,
    this.numReports,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
  });

  factory ChildData.fromJson(Map<String, dynamic> json,) {
    final approvedAtUtc = json['approved_at_utc'];
    final subreddit = json['subreddit'] as String?;
    final selftext = json['selftext'] as String?;
    final authorFullname = json['author_fullname'] as String?;
    final saved = json['saved'] as bool?;
    final modReasonTitle = json['mod_reason_title'];
    final gilded = json['gilded'] as int?;
    final clicked = json['clicked'] as bool?;
    final title = json['title'] as String?;
    final linkFlairRichtext = json['link_flair_richtext'] as List?;
    final subredditNamePrefixed = json['subreddit_name_prefixed'] as String?;
    final hidden = json['hidden'] as bool?;
    final pwls = json['pwls'] as int?;
    final linkFlairCssClass = json['link_flair_css_class'] as String?;
    final  downs = json['downs'] as int?;
    final thumbnailHeight = json['thumbnail_height'] as int?;
    final topAwardedType = json['top_awarded_type'];
    final hideScore = json['hide_score'] as bool?;
    final name = json['name'] as String?;
    final quarantine = json['quarantine'] as bool?;
    final linkFlairTextColor = json['link_flair_text_color'] as String?;
    final upvoteRatio = json['upvote_ratio'] as double?;
    final authorFlairBackgroundColor = json['author_flair_background_color'] as String?;
    final ups = json['ups'] as int?;
    final totalAwardsReceived = json['total_awards_received'] as int?;
    final mediaEmbed = (json['media_embed'] as Map<String,dynamic>?) != null ? MediaEmbed.fromJson(json['media_embed'] as Map<String,dynamic>,) : null;
    final thumbnailWidth = json['thumbnail_width'] as int?;
    final authorFlairTemplateId = json['author_flair_template_id'];
    final isOriginalContent = json['is_original_content'] as bool?;
    final userReports = json['user_reports'] as List?;
    final secureMedia = (json['secure_media'] as Map<String,dynamic>?) != null ? SecureMedia.fromJson(json['secure_media'] as Map<String,dynamic>,) : null;
    final isRedditMediaDomain = json['is_reddit_media_domain'] as bool?;
    final isMeta = json['is_meta'] as bool?;
    final category = json['category'];
    final secureMediaEmbed = (json['secure_media_embed'] as Map<String,dynamic>?) != null ? SecureMediaEmbed.fromJson(json['secure_media_embed'] as Map<String,dynamic>,) : null;
    final linkFlairText = json['link_flair_text'] as String?;
    final canModPost = json['can_mod_post'] as bool?;
    final score = json['score'] as int?;
    final approvedBy = json['approved_by'];
    final isCreatedFromAdsUi = json['is_created_from_ads_ui'] as bool?;
    final authorPremium = json['author_premium'] as bool?;
    final thumbnail = json['thumbnail'] as String?;
    final edited = json['edited'] as bool?;
    final authorFlairCssClass = json['author_flair_css_class'] as String?;
    final authorFlairRichtext = json['author_flair_richtext'] as List?;
    final gildings = json['gildings'] as dynamic;
    final postHint = json['post_hint'] as String?;
    final contentCategories = json['content_categories'];
    final isSelf = json['is_self'] as bool?;
    final subredditType = json['subreddit_type'] as String?;
    final created = json['created'] as int?;
    final linkFlairType = json['link_flair_type'] as String?;
    final wls = json['wls'] as int?;
    final removedByCategory = json['removed_by_category'];
    final bannedBy = json['banned_by'];
    final authorFlairType = json['author_flair_type'] as String?;
    final domain = json['domain'] as String?;
    final allowLiveComments = json['allow_live_comments'] as bool?;
    final selftextHtml = json['selftext_html'];
    final likes = json['likes'];
    final suggestedSort = json['suggested_sort'];
    final bannedAtUtc = json['banned_at_utc'];
    final urlOverriddenByDest = json['url_overridden_by_dest'] as String?;
    final viewCount = json['view_count'];
    final archived = json['archived'] as bool?;
    final noFollow = json['no_follow'] as bool?;
    final isCrosspostable = json['is_crosspostable'] as bool?;
    final pinned = json['pinned'] as bool?;
    final over18 = json['over_18'] as bool?;
    final preview = (json['preview'] as Map<String,dynamic>?) != null ? Preview.fromJson(json['preview'] as Map<String,dynamic>,) : null;
    final allAwardings = json['all_awardings'] as List?;
    final awarders = json['awarders'] as List?;
    final mediaOnly = json['media_only'] as bool?;
    final linkFlairTemplateId = json['link_flair_template_id'] as String?;
    final canGild = json['can_gild'] as bool?;
    final spoiler = json['spoiler'] as bool?;
    final locked = json['locked'] as bool?;
    final authorFlairText = json['author_flair_text'] as String?;
    final treatmentTags = json['treatment_tags'] as List?;
    final visited = json['visited'] as bool?;
    final removedBy = json['removed_by'];
    final modNote = json['mod_note'];
    final distinguished = json['distinguished'];
    final subredditId = json['subreddit_id'] as String?;
    final authorIsBlocked = json['author_is_blocked'] as bool?;
    final modReasonBy = json['mod_reason_by'];
    final numReports = json['num_reports'];
    final removalReason = json['removal_reason'];
    final linkFlairBackgroundColor = json['link_flair_background_color'] as String?;
    final id = json['id'] as String?;
    final isRobotIndexable = json['is_robot_indexable'] as bool?;
    final reportReasons = json['report_reasons'];
    final author = json['author'] as String?;
    final discussionType = json['discussion_type'];
    final numComments = json['num_comments'] as int?;
    final sendReplies = json['send_replies'] as bool?;
    final whitelistStatus = json['whitelist_status'] as String?;
    final contestMode = json['contest_mode'] as bool?;
    final modReports = json['mod_reports'] as List?;
    final authorPatreonFlair = json['author_patreon_flair'] as bool?;
    final authorFlairTextColor = json['author_flair_text_color'] as String?;
    final permalink = json['permalink'] as String?;
    final parentWhitelistStatus = json['parent_whitelist_status'] as String?;
    final stickied = json['stickied'] as bool?;
    final url = json['url'] as String?;
    final subredditSubscribers = json['subreddit_subscribers'] as int?;
    final createdUtc = json['created_utc'] as int?;
    final numCrossposts = json['num_crossposts'] as int?;
    final media = (json['media'] as Map<String,dynamic>?) != null ? Media.fromJson(json['media'] as Map<String,dynamic>,) : null;
    final isVideo = json['is_video'] as bool?;
    return ChildData(
      approvedAtUtc: approvedAtUtc,
      subreddit: subreddit,
      selftext: selftext,
      authorFullname: authorFullname,
      saved: saved,
      modReasonTitle: modReasonTitle,
      gilded: gilded,
      clicked: clicked,
      title: title,
      linkFlairRichtext: linkFlairRichtext,
      subredditNamePrefixed: subredditNamePrefixed,
      hidden: hidden,
      pwls: pwls,
      linkFlairCssClass: linkFlairCssClass,
      downs: downs,
      thumbnailHeight: thumbnailHeight,
      topAwardedType: topAwardedType,
      hideScore: hideScore,
      name: name,
      quarantine: quarantine,
      linkFlairTextColor: linkFlairTextColor,
      upvoteRatio: upvoteRatio,
      authorFlairBackgroundColor: authorFlairBackgroundColor,
      ups: ups,
      totalAwardsReceived: totalAwardsReceived,
      mediaEmbed: mediaEmbed,
      thumbnailWidth: thumbnailWidth,
      authorFlairTemplateId: authorFlairTemplateId,
      isOriginalContent: isOriginalContent,
      userReports: userReports,
      secureMedia: secureMedia,
      isRedditMediaDomain: isRedditMediaDomain,
      isMeta: isMeta,
      category: category,
      secureMediaEmbed: secureMediaEmbed,
      linkFlairText: linkFlairText,
      canModPost: canModPost,
      score: score,
      approvedBy: approvedBy,
      isCreatedFromAdsUi: isCreatedFromAdsUi,
      authorPremium: authorPremium,
      thumbnail: thumbnail,
      edited: edited,
      authorFlairCssClass: authorFlairCssClass,
      authorFlairRichtext: authorFlairRichtext,
      gildings: gildings,
      postHint: postHint,
      contentCategories: contentCategories,
      isSelf: isSelf,
      subredditType: subredditType,
      created: created,
      linkFlairType: linkFlairType,
      wls: wls,
      removedByCategory: removedByCategory,
      bannedBy: bannedBy,
      authorFlairType: authorFlairType,
      domain: domain,
      allowLiveComments: allowLiveComments,
      selftextHtml: selftextHtml,
      likes: likes,
      suggestedSort: suggestedSort,
      bannedAtUtc: bannedAtUtc,
      urlOverriddenByDest: urlOverriddenByDest,
      viewCount: viewCount,
      archived: archived,
      noFollow: noFollow,
      isCrosspostable: isCrosspostable,
      pinned: pinned,
      over18: over18,
      preview: preview,
      allAwardings: allAwardings,
      awarders: awarders,
      mediaOnly: mediaOnly,
      linkFlairTemplateId: linkFlairTemplateId,
      canGild: canGild,
      spoiler: spoiler,
      locked: locked,
      authorFlairText: authorFlairText,
      treatmentTags: treatmentTags,
      visited: visited,
      removedBy: removedBy,
      modNote: modNote,
      distinguished: distinguished,
      subredditId: subredditId,
      authorIsBlocked: authorIsBlocked,
      modReasonBy: modReasonBy,
      numReports: numReports,
      removalReason: removalReason,
      linkFlairBackgroundColor: linkFlairBackgroundColor,
      id: id,
      isRobotIndexable: isRobotIndexable,
      reportReasons: reportReasons,
      author: author,
      discussionType: discussionType,
      numComments: numComments,
      sendReplies: sendReplies,
      whitelistStatus: whitelistStatus,
      contestMode: contestMode,
      modReports: modReports,
      authorPatreonFlair: authorPatreonFlair,
      authorFlairTextColor: authorFlairTextColor,
      permalink: permalink,
      parentWhitelistStatus: parentWhitelistStatus,
      stickied: stickied,
      url: url,
      subredditSubscribers: subredditSubscribers,
      createdUtc: createdUtc,
      numCrossposts: numCrossposts,
      media: media,
      isVideo: isVideo,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['approved_at_utc'] = approvedAtUtc;
    json['subreddit'] = subreddit;
    json['selftext'] = selftext;
    json['author_fullname'] = authorFullname;
    json['saved'] = saved;
    json['mod_reason_title'] = modReasonTitle;
    json['gilded'] = gilded;
    json['clicked'] = clicked;
    json['title'] = title;
    json['link_flair_richtext'] = linkFlairRichtext;
    json['subreddit_name_prefixed'] = subredditNamePrefixed;
    json['hidden'] = hidden;
    json['pwls'] = pwls;
    json['link_flair_css_class'] = linkFlairCssClass;
    json['downs'] = downs;
    json['thumbnail_height'] = thumbnailHeight;
    json['top_awarded_type'] = topAwardedType;
    json['hide_score'] = hideScore;
    json['name'] = name;
    json['quarantine'] = quarantine;
    json['link_flair_text_color'] = linkFlairTextColor;
    json['upvote_ratio'] = upvoteRatio;
    json['author_flair_background_color'] = authorFlairBackgroundColor;
    json['ups'] = ups;
    json['total_awards_received'] = totalAwardsReceived;
    json['media_embed'] = mediaEmbed?.toJson();
    json['thumbnail_width'] = thumbnailWidth;
    json['author_flair_template_id'] = authorFlairTemplateId;
    json['is_original_content'] = isOriginalContent;
    json['user_reports'] = userReports;
    json['secure_media'] = secureMedia?.toJson();
    json['is_reddit_media_domain'] = isRedditMediaDomain;
    json['is_meta'] = isMeta;
    json['category'] = category;
    json['secure_media_embed'] = secureMediaEmbed?.toJson();
    json['link_flair_text'] = linkFlairText;
    json['can_mod_post'] = canModPost;
    json['score'] = score;
    json['approved_by'] = approvedBy;
    json['is_created_from_ads_ui'] = isCreatedFromAdsUi;
    json['author_premium'] = authorPremium;
    json['thumbnail'] = thumbnail;
    json['edited'] = edited;
    json['author_flair_css_class'] = authorFlairCssClass;
    json['author_flair_richtext'] = authorFlairRichtext;
    json['gildings'] = gildings?.toJson();
    json['post_hint'] = postHint;
    json['content_categories'] = contentCategories;
    json['is_self'] = isSelf;
    json['subreddit_type'] = subredditType;
    json['created'] = created;
    json['link_flair_type'] = linkFlairType;
    json['wls'] = wls;
    json['removed_by_category'] = removedByCategory;
    json['banned_by'] = bannedBy;
    json['author_flair_type'] = authorFlairType;
    json['domain'] = domain;
    json['allow_live_comments'] = allowLiveComments;
    json['selftext_html'] = selftextHtml;
    json['likes'] = likes;
    json['suggested_sort'] = suggestedSort;
    json['banned_at_utc'] = bannedAtUtc;
    json['url_overridden_by_dest'] = urlOverriddenByDest;
    json['view_count'] = viewCount;
    json['archived'] = archived;
    json['no_follow'] = noFollow;
    json['is_crosspostable'] = isCrosspostable;
    json['pinned'] = pinned;
    json['over_18'] = over18;
    json['preview'] = preview?.toJson();
    json['all_awardings'] = allAwardings;
    json['awarders'] = awarders;
    json['media_only'] = mediaOnly;
    json['link_flair_template_id'] = linkFlairTemplateId;
    json['can_gild'] = canGild;
    json['spoiler'] = spoiler;
    json['locked'] = locked;
    json['author_flair_text'] = authorFlairText;
    json['treatment_tags'] = treatmentTags;
    json['visited'] = visited;
    json['removed_by'] = removedBy;
    json['mod_note'] = modNote;
    json['distinguished'] = distinguished;
    json['subreddit_id'] = subredditId;
    json['author_is_blocked'] = authorIsBlocked;
    json['mod_reason_by'] = modReasonBy;
    json['num_reports'] = numReports;
    json['removal_reason'] = removalReason;
    json['link_flair_background_color'] = linkFlairBackgroundColor;
    json['id'] = id;
    json['is_robot_indexable'] = isRobotIndexable;
    json['report_reasons'] = reportReasons;
    json['author'] = author;
    json['discussion_type'] = discussionType;
    json['num_comments'] = numComments;
    json['send_replies'] = sendReplies;
    json['whitelist_status'] = whitelistStatus;
    json['contest_mode'] = contestMode;
    json['mod_reports'] = modReports;
    json['author_patreon_flair'] = authorPatreonFlair;
    json['author_flair_text_color'] = authorFlairTextColor;
    json['permalink'] = permalink;
    json['parent_whitelist_status'] = parentWhitelistStatus;
    json['stickied'] = stickied;
    json['url'] = url;
    json['subreddit_subscribers'] = subredditSubscribers;
    json['created_utc'] = createdUtc;
    json['num_crossposts'] = numCrossposts;
    json['media'] = media?.toJson();
    json['is_video'] = isVideo;
    return json;
  }
}

class MediaEmbed {
  String? content;
  int? width;
  bool? scrolling;
  int? height;

  MediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.height,
  });

  factory MediaEmbed.fromJson(Map<String, dynamic> json,) {
    final content = json['content'] as String?;
    final width = json['width'] as int?;
    final scrolling = json['scrolling'] as bool?;
    final height = json['height'] as int?;
    return MediaEmbed(content: content, width: width, scrolling: scrolling, height: height,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['content'] = content;
    json['width'] = width;
    json['scrolling'] = scrolling;
    json['height'] = height;
    return json;
  }
}

class SecureMedia {
  SecureMediaOembed? oembed;
  String? type;

  SecureMedia({
    this.oembed,
    this.type,
  });

  SecureMedia.fromJson(Map<String, dynamic> json,) {
    oembed = (json['oembed'] as Map<String,dynamic>?) != null ? SecureMediaOembed.fromJson(json['oembed'] as Map<String,dynamic>,) : null;
    type = json['type'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['oembed'] = oembed?.toJson();
    json['type'] = type;
    return json;
  }
}

class SecureMediaOembed {
  String? providerUrl;
  String? title;
  String? html;
  int? thumbnailWidth;
  int? height;
  int? width;
  String? version;
  String? authorName;
  String? providerName;
  String? thumbnailUrl;
  String? type;
  int? thumbnailHeight;
  String? authorUrl;

  SecureMediaOembed({
    this.providerUrl,
    this.title,
    this.html,
    this.thumbnailWidth,
    this.height,
    this.width,
    this.version,
    this.authorName,
    this.providerName,
    this.thumbnailUrl,
    this.type,
    this.thumbnailHeight,
    this.authorUrl,
  });

  factory SecureMediaOembed.fromJson(Map<String, dynamic> json,) {
    final providerUrl = json['provider_url'] as String?;
    final title = json['title'] as String?;
    final html = json['html'] as String?;
    final thumbnailWidth = json['thumbnail_width'] as int?;
    final height = json['height'] as int?;
    final width = json['width'] as int?;
    final version = json['version'] as String?;
    final authorName = json['author_name'] as String?;
    final providerName = json['provider_name'] as String?;
    final thumbnailUrl = json['thumbnail_url'] as String?;
    final type = json['type'] as String?;
    final thumbnailHeight = json['thumbnail_height'] as int?;
    final authorUrl = json['author_url'] as String?;
    return SecureMediaOembed(
      providerUrl: providerUrl,
      title: title,
      html: html,
      thumbnailWidth: thumbnailWidth,
      height: height,
      width: width,
      version: version,
      authorName: authorName,
      providerName: providerName,
      thumbnailUrl: thumbnailUrl,
      type: type,
      thumbnailHeight: thumbnailHeight,
      authorUrl: authorUrl,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['provider_url'] = providerUrl;
    json['title'] = title;
    json['html'] = html;
    json['thumbnail_width'] = thumbnailWidth;
    json['height'] = height;
    json['width'] = width;
    json['version'] = version;
    json['author_name'] = authorName;
    json['provider_name'] = providerName;
    json['thumbnail_url'] = thumbnailUrl;
    json['type'] = type;
    json['thumbnail_height'] = thumbnailHeight;
    json['author_url'] = authorUrl;
    return json;
  }
}

class SecureMediaEmbed {
  String? content;
  int? width;
  bool? scrolling;
  String? mediaDomainUrl;
  int? height;

  SecureMediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.mediaDomainUrl,
    this.height,
  });

  SecureMediaEmbed.fromJson(Map<String, dynamic> json,) {
    content = json['content'] as String?;
    width = json['width'] as int?;
    scrolling = json['scrolling'] as bool?;
    mediaDomainUrl = json['media_domain_url'] as String?;
    height = json['height'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['content'] = content;
    json['width'] = width;
    json['scrolling'] = scrolling;
    json['media_domain_url'] = mediaDomainUrl;
    json['height'] = height;
    return json;
  }
}

class Preview {
  List<Image>? images;
  bool? enabled;

  Preview({
    this.images,
    this.enabled,
  });

  Preview.fromJson(Map<String, dynamic> json,) {
    images = (json['images'] as List?)?.map((e,) => Image.fromJson(e as Map<String,dynamic>,),).toList();
    enabled = json['enabled'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['images'] = images?.map((e,) => e.toJson(),).toList();
    json['enabled'] = enabled;
    return json;
  }
}

class Image {
  Source? source;
  List<Resolutions>? resolutions;
  dynamic variants;
  String? id;

  Image({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  Image.fromJson(Map<String, dynamic> json,) {
    source = (json['source'] as Map<String,dynamic>?) != null ? Source.fromJson(json['source'] as Map<String,dynamic>,) : null;
    resolutions = (json['resolutions'] as List?)?.map((e,) => Resolutions.fromJson(e as Map<String,dynamic>,),).toList();
    variants = json['variants'] as dynamic;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['source'] = source?.toJson();
    json['resolutions'] = resolutions?.map((e,) => e.toJson()).toList();
    json['variants'] = variants?.toJson();
    json['id'] = id;
    return json;
  }
}

class Source {
  String? url;
  int? width;
  int? height;

  Source({
    this.url,
    this.width,
    this.height,
  });

  Source.fromJson(Map<String, dynamic> json,) {
    url = json['url'] as String?;
    width = json['width'] as int?;
    height = json['height'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['url'] = url;
    json['width'] = width;
    json['height'] = height;
    return json;
  }
}

class Resolutions {
  String? url;
  int? width;
  int? height;

  Resolutions({
    this.url,
    this.width,
    this.height,
  });

  Resolutions.fromJson(Map<String, dynamic> json,) {
    url = json['url'] as String?;
    width = json['width'] as int?;
    height = json['height'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['url'] = url;
    json['width'] = width;
    json['height'] = height;
    return json;
  }
}

class Media {
  MediaOembed? oembed;
  String? type;

  Media({
    this.oembed,
    this.type,
  });

  factory Media.fromJson(Map<String, dynamic> json,) {
    final oembed = (json['oembed'] as Map<String,dynamic>?) != null ? MediaOembed.fromJson(json['oembed'] as Map<String,dynamic>,) : null;
    final type = json['type'] as String?;
    return Media(oembed: oembed, type: type,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['oembed'] = oembed?.toJson();
    json['type'] = type;
    return json;
  }
}

class MediaOembed {
  String? providerUrl;
  String? title;
  String? html;
  int? thumbnailWidth;
  int? height;
  int? width;
  String? version;
  String? authorName;
  String? providerName;
  String? thumbnailUrl;
  String? type;
  int? thumbnailHeight;
  String? authorUrl;

  MediaOembed({
    this.providerUrl,
    this.title,
    this.html,
    this.thumbnailWidth,
    this.height,
    this.width,
    this.version,
    this.authorName,
    this.providerName,
    this.thumbnailUrl,
    this.type,
    this.thumbnailHeight,
    this.authorUrl,
  });

  factory MediaOembed.fromJson(Map<String, dynamic> json,) {
    final providerUrl = json['provider_url'] as String?;
    final title = json['title'] as String?;
    final html = json['html'] as String?;
    final thumbnailWidth = json['thumbnail_width'] as int?;
    final height = json['height'] as int?;
    final width = json['width'] as int?;
    final version = json['version'] as String?;
    final authorName = json['author_name'] as String?;
    final providerName = json['provider_name'] as String?;
    final thumbnailUrl = json['thumbnail_url'] as String?;
    final type = json['type'] as String?;
    final thumbnailHeight = json['thumbnail_height'] as int?;
    final authorUrl = json['author_url'] as String?;
    return MediaOembed(
      providerUrl: providerUrl,
      title: title,
      html: html,
      thumbnailWidth: thumbnailWidth,
      height: height,
      width: width,
      version: version,
      authorName: authorName,
      providerName: providerName,
      thumbnailUrl: thumbnailUrl,
      type: type,
      thumbnailHeight: thumbnailHeight,
      authorUrl: authorUrl,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['provider_url'] = providerUrl;
    json['title'] = title;
    json['html'] = html;
    json['thumbnail_width'] = thumbnailWidth;
    json['height'] = height;
    json['width'] = width;
    json['version'] = version;
    json['author_name'] = authorName;
    json['provider_name'] = providerName;
    json['thumbnail_url'] = thumbnailUrl;
    json['type'] = type;
    json['thumbnail_height'] = thumbnailHeight;
    json['author_url'] = authorUrl;
    return json;
  }
}