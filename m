Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4271916FB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D486E4DE;
	Tue, 24 Mar 2020 16:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B8CF6E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:51:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 17:51:45 +0100
Message-Id: <20200324165146.1032624-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
References: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/21] drm/i915: Add ww locking to
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
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 57 ++++++++++++++++------
 1 file changed, 41 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index e9d3b587f562..1833f58fa615 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -197,18 +197,12 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
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
@@ -255,6 +249,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_caching *args = data;
 	struct drm_i915_gem_object *obj;
 	enum i915_cache_level level;
+	struct i915_gem_ww_ctx ww;
 	int ret = 0;
 
 	switch (args->caching) {
@@ -293,7 +288,18 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
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
@@ -313,6 +319,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     unsigned int flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
 
@@ -320,6 +327,11 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
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
@@ -334,7 +346,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 					      HAS_WT(i915) ?
 					      I915_CACHE_WT : I915_CACHE_NONE);
 	if (ret)
-		return ERR_PTR(ret);
+		goto err;
 
 	/*
 	 * As the user may map the buffer once pinned in the display plane
@@ -347,19 +359,32 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
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
 
 	i915_gem_object_flush_if_display(obj);
 
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
+
 	return vma;
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
