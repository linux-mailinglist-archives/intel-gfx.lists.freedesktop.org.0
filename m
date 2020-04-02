Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8381119C438
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 16:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4D46EAA6;
	Thu,  2 Apr 2020 14:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B9389AEB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 14:31:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 16:31:08 +0200
Message-Id: <20200402143109.1801605-22-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
References: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/23] drm/i915: Add ww locking to
 pin_to_display_plane
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 65 ++++++++++++++++------
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  1 +
 2 files changed, 49 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 1a3dd77a35b9..4be148392acc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -37,6 +37,12 @@ void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj)
 	i915_gem_object_unlock(obj);
 }
 
+void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj)
+{
+	if (i915_gem_object_is_framebuffer(obj))
+		__i915_gem_object_flush_for_display(obj);
+}
+
 /**
  * Moves a single object to the WC read, and possibly write domain.
  * @obj: object to act on
@@ -197,18 +203,12 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_lock_interruptible(obj, NULL);
-	if (ret)
-		return ret;
-
 	/* Always invalidate stale cachelines */
 	if (obj->cache_level != cache_level) {
 		i915_gem_object_set_cache_coherency(obj, cache_level);
 		obj->cache_dirty = true;
 	}
 
-	i915_gem_object_unlock(obj);
-
 	/* The cache-level will be applied when each vma is rebound. */
 	return i915_gem_object_unbind(obj,
 				      I915_GEM_OBJECT_UNBIND_ACTIVE |
@@ -255,6 +255,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_caching *args = data;
 	struct drm_i915_gem_object *obj;
 	enum i915_cache_level level;
+	struct i915_gem_ww_ctx ww;
 	int ret = 0;
 
 	switch (args->caching) {
@@ -293,7 +294,18 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 
-	ret = i915_gem_object_set_cache_level(obj, level);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(obj, &ww);
+	if (!ret)
+		ret = i915_gem_object_set_cache_level(obj, level);
+
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 
 out:
 	i915_gem_object_put(obj);
@@ -313,6 +325,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     unsigned int flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
 
@@ -320,6 +333,11 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	if (HAS_LMEM(i915) && !i915_gem_object_is_lmem(obj))
 		return ERR_PTR(-EINVAL);
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(obj, &ww);
+	if (ret)
+		goto err;
 	/*
 	 * The display engine is not coherent with the LLC cache on gen6.  As
 	 * a result, we make sure that the pinning that is about to occur is
@@ -334,7 +352,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 					      HAS_WT(i915) ?
 					      I915_CACHE_WT : I915_CACHE_NONE);
 	if (ret)
-		return ERR_PTR(ret);
+		goto err;
 
 	/*
 	 * As the user may map the buffer once pinned in the display plane
@@ -347,18 +365,31 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	vma = ERR_PTR(-ENOSPC);
 	if ((flags & PIN_MAPPABLE) == 0 &&
 	    (!view || view->type == I915_GGTT_VIEW_NORMAL))
-		vma = i915_gem_object_ggtt_pin(obj, view, 0, alignment,
-					       flags |
-					       PIN_MAPPABLE |
-					       PIN_NONBLOCK);
-	if (IS_ERR(vma))
-		vma = i915_gem_object_ggtt_pin(obj, view, 0, alignment, flags);
-	if (IS_ERR(vma))
-		return vma;
+		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0, alignment,
+						  flags | PIN_MAPPABLE |
+						  PIN_NONBLOCK);
+	if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK))
+		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0,
+						  alignment, flags);
+	if (IS_ERR(vma)) {
+		ret = PTR_ERR(vma);
+		goto err;
+	}
 
 	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
 
-	i915_gem_object_flush_if_display(obj);
+	i915_gem_object_flush_if_display_locked(obj);
+
+err:
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	if (ret)
+		return ERR_PTR(ret);
 
 	return vma;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 11b8e2735071..409fd00c8709 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -456,6 +456,7 @@ i915_gem_object_last_write_engine(struct drm_i915_gem_object *obj)
 void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 					 unsigned int cache_level);
 void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
+void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj);
 
 int __must_check
 i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
