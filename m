Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E122D28F114
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91ECC6EC8E;
	Thu, 15 Oct 2020 11:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9FF6EC78
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:26:26 +0200
Message-Id: <20201015112627.1142745-63-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 62/63] drm/i915: Idea to implement eviction
 locking
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
 drivers/gpu/drm/i915/gem/i915_gem_object.h   | 39 +++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 10 ++++-
 drivers/gpu/drm/i915/i915_gem.c              | 29 ++++++++++++++-
 drivers/gpu/drm/i915/i915_gem.h              |  5 ++-
 4 files changed, 78 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index f6ccd05010df..3cafe8985034 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -126,12 +126,43 @@ static inline void assert_object_held_shared(struct drm_i915_gem_object *obj)
 		assert_object_held(obj);
 }
 
+static inline int
+i915_gem_object_lock_to_evict(struct drm_i915_gem_object *obj,
+			      struct i915_gem_ww_ctx *ww)
+{
+	int ret;
+
+	if (ww->intr)
+		ret = dma_resv_lock_interruptible(obj->base.resv, &ww->ctx);
+	else
+		ret = dma_resv_lock(obj->base.resv, &ww->ctx);
+
+	if (!ret) {
+		list_add_tail(&obj->obj_link, &ww->eviction_list);
+		i915_gem_object_get(obj);
+	}
+
+	if (ret == -EALREADY &&
+	    obj == list_first_entry(&ww->eviction_list, struct drm_i915_gem_object, obj_link))
+		ret = 0;
+
+	ww->evicting = true;
+
+	if (ret == -EDEADLK)
+		ww->contended = i915_gem_object_get(obj);
+
+	return ret;
+}
+
 static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
 					 struct i915_gem_ww_ctx *ww,
 					 bool intr)
 {
 	int ret;
 
+	if (ww && GEM_WARN_ON(ww->evicting))
+		ww->evicting = false;
+
 	if (intr)
 		ret = dma_resv_lock_interruptible(obj->base.resv, ww ? &ww->ctx : NULL);
 	else
@@ -139,8 +170,14 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
 
 	if (!ret && ww)
 		list_add_tail(&obj->obj_link, &ww->obj_list);
-	if (ret == -EALREADY)
+	if (ret == -EALREADY) {
 		ret = 0;
+		if (obj == list_first_entry(&ww->eviction_list, struct drm_i915_gem_object, obj_link)) {
+			i915_gem_object_put(obj);
+			list_del(&obj->obj_link);
+			list_add_tail(&obj->obj_link, &ww->obj_list);
+		}
+	}
 
 	if (ret == -EDEADLK)
 		ww->contended = obj;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index e42192834c88..075cdd7718c4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -99,6 +99,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 		unsigned long *nr_scanned,
 		unsigned int shrink)
 {
+	struct drm_i915_gem_object *obj;
 	const struct {
 		struct list_head *list;
 		unsigned int bit;
@@ -163,7 +164,6 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	 */
 	for (phase = phases; phase->list; phase++) {
 		struct list_head still_in_list;
-		struct drm_i915_gem_object *obj;
 		unsigned long flags;
 
 		if ((shrink & phase->bit) == 0)
@@ -208,7 +208,11 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 					if (!i915_gem_object_trylock(obj))
 						goto skip;
 				} else {
-					err = i915_gem_object_lock(obj, ww);
+					err = i915_gem_object_lock_to_evict(obj, ww);
+					if (err == -EALREADY) {
+						err = 0;
+						goto skip;
+					}
 					if (err)
 						goto skip;
 				}
@@ -234,6 +238,8 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 		if (err)
 			return err;
 	}
+	if (ww)
+		i915_gem_ww_ctx_unlock_evictions(ww);
 
 	if (shrink & I915_SHRINK_BOUND)
 		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 5a497576614c..4f6fcdae1457 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1370,10 +1370,25 @@ void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ww, bool intr)
 {
 	ww_acquire_init(&ww->ctx, &reservation_ww_class);
 	INIT_LIST_HEAD(&ww->obj_list);
+	INIT_LIST_HEAD(&ww->eviction_list);
 	ww->intr = intr;
+	ww->evicting = false;
 	ww->contended = NULL;
 }
 
+void i915_gem_ww_ctx_unlock_evictions(struct i915_gem_ww_ctx *ww)
+{
+	struct drm_i915_gem_object *obj;
+
+	while ((obj = list_first_entry_or_null(&ww->eviction_list, struct drm_i915_gem_object, obj_link))) {
+		list_del(&obj->obj_link);
+		i915_gem_object_unlock(obj);
+		i915_gem_object_put(obj);
+	}
+
+	ww->evicting = false;
+}
+
 static void i915_gem_ww_ctx_unlock_all(struct i915_gem_ww_ctx *ww)
 {
 	struct drm_i915_gem_object *obj;
@@ -1382,6 +1397,12 @@ static void i915_gem_ww_ctx_unlock_all(struct i915_gem_ww_ctx *ww)
 		list_del(&obj->obj_link);
 		i915_gem_object_unlock(obj);
 	}
+
+	while ((obj = list_first_entry_or_null(&ww->eviction_list, struct drm_i915_gem_object, obj_link))) {
+		list_del(&obj->obj_link);
+		i915_gem_object_unlock(obj);
+		i915_gem_object_put(obj);
+	}
 }
 
 void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj)
@@ -1411,9 +1432,15 @@ int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ww)
 		dma_resv_lock_slow(ww->contended->base.resv, &ww->ctx);
 
 	if (!ret)
-		list_add_tail(&ww->contended->obj_link, &ww->obj_list);
+		list_add_tail(&ww->contended->obj_link,
+			      ww->evicting ? &ww->eviction_list :
+			      &ww->obj_list);
+	else if (ret && ww->evicting) {
+	      i915_gem_object_put(ww->contended);
+	}
 
 	ww->contended = NULL;
+	ww->evicting = false;
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index a4cad3f154ca..52b19ebffab1 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -119,7 +119,8 @@ static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
 struct i915_gem_ww_ctx {
 	struct ww_acquire_ctx ctx;
 	struct list_head obj_list;
-	bool intr;
+	struct list_head eviction_list;
+	bool intr, evicting;
 	struct drm_i915_gem_object *contended;
 };
 
@@ -128,4 +129,6 @@ void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ctx);
 int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ctx);
 void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj);
 
+void i915_gem_ww_ctx_unlock_evictions(struct i915_gem_ww_ctx *ww);
+
 #endif /* __I915_GEM_H__ */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
