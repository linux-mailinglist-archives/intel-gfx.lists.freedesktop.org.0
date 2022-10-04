Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE955F4113
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EBC10E544;
	Tue,  4 Oct 2022 10:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B3210E544
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664880692; x=1696416692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1wQy+WP3k0/4A8RRhuxSrt/gBkALldYp37VQqHb4kDA=;
 b=Vw6o+fTmt0wTE4tUFAp1TUMLTwbyIRSgmku87wIx7h5RMU5hUgyZ8RWQ
 5L7yJN+PQhfpZxX4O+Gbr0R8ay/WJsM5sXPO5mAvAmQOrp5WX9IYzFreJ
 LVCAaFOx8ujUGn0n/qDDNLJk7Cy4FH8kTEloXEmEOdnWgVXDdaUbZqRv4
 YYDEWy0D8YQKiGoKv6KcgAOAcnDG8rAiRXakz2ejjQiC264PoQBBBHF47
 7xGyJwAaeiyXjrhpmhXt+K9eLfpQJTmChQg9kv26+RmFXbv5FCbYJWEA5
 twZObku7n1pC3zQXwQOVmCQSdjq+t+Qn8VjphSKxGojF28QsLhXiQrSb3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366977482"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="366977482"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="749333600"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="749333600"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:30 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 11:51:19 +0100
Message-Id: <20221004105121.203149-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004105121.203149-1-matthew.auld@intel.com>
References: <20221004105121.203149-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/5] drm/i915: allow control over the flags
 when migrating
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Nirmoy Das <nirmoy.das@intel.com>, Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the next patch we want to move the object (if the current resource is
not compatible), to the mappable part of lmem for some display buffers.
Currently that requires being able to unset the I915_BO_ALLOC_GPU_ONLY
hint.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
 4 files changed, 45 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 7ff9c7877bec..369006c5317f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -652,6 +652,41 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
 int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
 			    struct i915_gem_ww_ctx *ww,
 			    enum intel_region_id id)
+{
+	return __i915_gem_object_migrate(obj, ww, id, obj->flags);
+}
+
+/**
+ * __i915_gem_object_migrate - Migrate an object to the desired region id, with
+ * control of the extra flags
+ * @obj: The object to migrate.
+ * @ww: An optional struct i915_gem_ww_ctx. If NULL, the backend may
+ * not be successful in evicting other objects to make room for this object.
+ * @id: The region id to migrate to.
+ * @flags: The object flags. Normally just obj->flags.
+ *
+ * Attempt to migrate the object to the desired memory region. The
+ * object backend must support migration and the object may not be
+ * pinned, (explicitly pinned pages or pinned vmas). The object must
+ * be locked.
+ * On successful completion, the object will have pages pointing to
+ * memory in the new region, but an async migration task may not have
+ * completed yet, and to accomplish that, i915_gem_object_wait_migration()
+ * must be called.
+ *
+ * Note: the @ww parameter is not used yet, but included to make sure
+ * callers put some effort into obtaining a valid ww ctx if one is
+ * available.
+ *
+ * Return: 0 on success. Negative error code on failure. In particular may
+ * return -ENXIO on lack of region space, -EDEADLK for deadlock avoidance
+ * if @ww is set, -EINTR or -ERESTARTSYS if signal pending, and
+ * -EBUSY if the object is pinned.
+ */
+int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
+			      struct i915_gem_ww_ctx *ww,
+			      enum intel_region_id id,
+			      unsigned int flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct intel_memory_region *mr;
@@ -672,7 +707,7 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
 		return 0;
 	}
 
-	return obj->ops->migrate(obj, mr);
+	return obj->ops->migrate(obj, mr, flags);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index a3b7551a57fc..6b9ecff42bb5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -612,6 +612,10 @@ bool i915_gem_object_migratable(struct drm_i915_gem_object *obj);
 int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
 			    struct i915_gem_ww_ctx *ww,
 			    enum intel_region_id id);
+int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
+			      struct i915_gem_ww_ctx *ww,
+			      enum intel_region_id id,
+			      unsigned int flags);
 
 bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
 				 enum intel_region_id id);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 40305e2bcd49..d0d6772e6f36 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -107,7 +107,8 @@ struct drm_i915_gem_object_ops {
 	 * pinning or for as long as the object lock is held.
 	 */
 	int (*migrate)(struct drm_i915_gem_object *obj,
-		       struct intel_memory_region *mr);
+		       struct intel_memory_region *mr,
+		       unsigned int flags);
 
 	void (*release)(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3dc6acfcf4ec..5bed353ee9bc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -848,9 +848,10 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
 }
 
 static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
-			    struct intel_memory_region *mr)
+			    struct intel_memory_region *mr,
+			    unsigned int flags)
 {
-	return __i915_ttm_migrate(obj, mr, obj->flags);
+	return __i915_ttm_migrate(obj, mr, flags);
 }
 
 static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
-- 
2.37.3

