Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179CC40CCF6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0A06E9F4;
	Wed, 15 Sep 2021 19:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918446E9F2;
 Wed, 15 Sep 2021 19:00:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286094831"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="286094831"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="553461221"
Received: from rdignam-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.110])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:31 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 15 Sep 2021 19:59:53 +0100
Message-Id: <20210915185954.3114858-11-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210915185954.3114858-1-matthew.auld@intel.com>
References: <20210915185954.3114858-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/12] drm/i915/ttm: make evicted shmem pages
 visible to the shrinker
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We currently just evict lmem objects to system memory when under memory
pressure. For this case we lack the usual object mm.pages, which
effectively hides the pages from the i915-gem shrinker, until we
actually "attach" the TT to the object, or in the case of lmem-only
objects it just gets migrated back to lmem when touched again. For such
cases we can make the object visible as soon as we populate the TT with
shmem pages, and then hide it again when doing the unpopulate.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 29 +++++++++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 11 ++++++++
 3 files changed, 34 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 561d6bd0a5c9..28b831c78c47 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -540,6 +540,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 
 void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
+void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_purgeable(struct drm_i915_gem_object *obj);
 
 static inline bool cpu_write_needs_clflush(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 6b38e4414c5a..02175e8ad069 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -482,13 +482,12 @@ void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj)
 	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 }
 
-static void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj,
-					      struct list_head *head)
+static void ___i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj,
+					       struct list_head *head)
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 	unsigned long flags;
 
-	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 	if (!i915_gem_object_is_shrinkable(obj))
 		return;
 
@@ -507,6 +506,21 @@ static void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj,
 	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 }
 
+/**
+ * __i915_gem_object_make_shrinkable - Move the object to the tail of the
+ * shrinkable list. Objects on this list might be swapped out. Used with
+ * WILLNEED objects.
+ * @obj: The GEM object.
+ *
+ * DO NOT USE. This is intended to be called on very special objects that don't
+ * yet have mm.pages, but are guaranteed to have potentially reclaimable pages
+ * underneath.
+ */
+void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj)
+{
+	___i915_gem_object_make_shrinkable(obj,
+					   &obj_to_i915(obj)->mm.shrink_list);
+}
 
 /**
  * i915_gem_object_make_shrinkable - Move the object to the tail of the
@@ -518,8 +532,8 @@ static void __i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj,
  */
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj)
 {
-	__i915_gem_object_make_shrinkable(obj,
-					  &obj_to_i915(obj)->mm.shrink_list);
+	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
+	__i915_gem_object_make_shrinkable(obj);
 }
 
 /**
@@ -533,6 +547,7 @@ void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj)
  */
 void i915_gem_object_make_purgeable(struct drm_i915_gem_object *obj)
 {
-	__i915_gem_object_make_shrinkable(obj,
-					  &obj_to_i915(obj)->mm.purge_list);
+	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
+	___i915_gem_object_make_shrinkable(obj,
+					   &obj_to_i915(obj)->mm.purge_list);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 079a7a655ede..e758de336b96 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -234,6 +234,15 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 	if (ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)
 		ttm->page_flags &= ~TTM_PAGE_FLAG_SWAPPED;
 
+	/*
+	 * Even if we lack mm.pages for this object(which will be the case when
+	 * something is evicted to system memory by TTM), we still want to make
+	 * this object visible to the shrinker, since the underlying ttm_tt
+	 * still has the real shmem pages. When unpopulating the tt(possibly due
+	 * to shrinking) we hide it again from the shrinker.
+	 */
+	__i915_gem_object_make_shrinkable(obj);
+
 	i915_tt->cached_st = st;
 	return 0;
 
@@ -248,6 +257,8 @@ static void i915_ttm_tt_shmem_unpopulate(struct ttm_tt *ttm)
 	struct drm_i915_gem_object *obj = i915_tt->obj;
 	bool backup = i915_tt->backup;
 
+	i915_gem_object_make_unshrinkable(obj);
+
 	if (obj->mm.madv == I915_MADV_DONTNEED) {
 		obj->mm.dirty = false;
 		GEM_BUG_ON(backup);
-- 
2.26.3

