Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EBB21069F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8756E432;
	Wed,  1 Jul 2020 08:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC916E432
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:44:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21672070-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jul 2020 09:44:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:44:39 +0100
Message-Id: <20200701084439.17025-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Move obj->lut_list under its own lock
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

The obj->lut_list is traversed when the object is closed as the file
table is destroyed during process termination. As this occurs before we
kill any outstanding context if, due to some bug or another, the closure
is blocked, then we fail to shootdown any inflight operations
potentially leaving the GPU spinning forever. As we only need to guard
the list against concurrent closures and insertions, the hold is short
and merits being treated as a simple spinlock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 ++----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 21 +++++++++++++------
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
 4 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5c13809dc3c8..6675447a47b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -112,8 +112,7 @@ static void lut_close(struct i915_gem_context *ctx)
 		if (!kref_get_unless_zero(&obj->base.refcount))
 			continue;
 
-		rcu_read_unlock();
-		i915_gem_object_lock(obj);
+		spin_lock(&obj->lut_lock);
 		list_for_each_entry(lut, &obj->lut_list, obj_link) {
 			if (lut->ctx != ctx)
 				continue;
@@ -124,8 +123,7 @@ static void lut_close(struct i915_gem_context *ctx)
 			list_del(&lut->obj_link);
 			break;
 		}
-		i915_gem_object_unlock(obj);
-		rcu_read_lock();
+		spin_unlock(&obj->lut_lock);
 
 		if (&lut->obj_link != &obj->lut_list) {
 			i915_lut_handle_free(lut);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c38ab51e82f0..b4862afaaf28 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -789,14 +789,14 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 		if (err == 0) { /* And nor has this handle */
 			struct drm_i915_gem_object *obj = vma->obj;
 
-			i915_gem_object_lock(obj);
+			spin_lock(&obj->lut_lock);
 			if (idr_find(&eb->file->object_idr, handle) == obj) {
 				list_add(&lut->obj_link, &obj->lut_list);
 			} else {
 				radix_tree_delete(&ctx->handles_vma, handle);
 				err = -ENOENT;
 			}
-			i915_gem_object_unlock(obj);
+			spin_unlock(&obj->lut_lock);
 		}
 		mutex_unlock(&ctx->mutex);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index b6ec5b50d93b..6b69191c5543 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -61,6 +61,7 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	INIT_LIST_HEAD(&obj->mm.link);
 
 	INIT_LIST_HEAD(&obj->lut_list);
+	spin_lock_init(&obj->lut_lock);
 
 	spin_lock_init(&obj->mmo.lock);
 	obj->mmo.offsets = RB_ROOT;
@@ -104,21 +105,29 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(gem);
 	struct drm_i915_file_private *fpriv = file->driver_priv;
+	struct i915_lut_handle bookmark = {};
 	struct i915_mmap_offset *mmo, *mn;
 	struct i915_lut_handle *lut, *ln;
 	LIST_HEAD(close);
 
-	i915_gem_object_lock(obj);
+	spin_lock(&obj->lut_lock);
 	list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
 		struct i915_gem_context *ctx = lut->ctx;
 
-		if (ctx->file_priv != fpriv)
-			continue;
+		if (ctx && ctx->file_priv == fpriv) {
+			i915_gem_context_get(ctx);
+			list_move(&lut->obj_link, &close);
+		}
 
-		i915_gem_context_get(ctx);
-		list_move(&lut->obj_link, &close);
+		/* Break long locks, and carefully continue on from this spot */
+		if (&ln->obj_link != &obj->lut_list) {
+			list_add_tail(&bookmark.obj_link, &ln->obj_link);
+			if (cond_resched_lock(&obj->lut_lock))
+				list_safe_reset_next(&bookmark, ln, obj_link);
+			__list_del_entry(&bookmark.obj_link);
+		}
 	}
-	i915_gem_object_unlock(obj);
+	spin_unlock(&obj->lut_lock);
 
 	spin_lock(&obj->mmo.lock);
 	rbtree_postorder_for_each_entry_safe(mmo, mn, &obj->mmo.offsets, offset)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index b1f82a11aef2..5335f799b548 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -121,6 +121,7 @@ struct drm_i915_gem_object {
 	 * this translation from object to context->handles_vma.
 	 */
 	struct list_head lut_list;
+	spinlock_t lut_lock; /* guards lut_list */
 
 	/** Stolen memory for this object, instead of being backed by shmem. */
 	struct drm_mm_node *stolen;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
