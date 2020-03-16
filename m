Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A0F186A43
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071B36E419;
	Mon, 16 Mar 2020 11:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 446396E418
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:42:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574781-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:35 +0000
Message-Id: <20200316114237.5436-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/gem: Separate the ww_mutex
 walker into its own list
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

In preparation for making eb_vma bigger and heavy to run inn parallel,
we need to stop apply an in-place swap() to reorder around ww_mutex
deadlocks. Keep the array intact and reorder the locks using a dedicated
list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 48 +++++++++++--------
 drivers/gpu/drm/i915/i915_utils.h             |  6 +++
 2 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3d0d0baa0ec..50b2000a72de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -35,6 +35,7 @@ struct eb_vma {
 	struct drm_i915_gem_exec_object2 *exec;
 	struct list_head bind_link;
 	struct list_head reloc_link;
+	struct list_head lock_link;
 
 	struct hlist_node node;
 	u32 handle;
@@ -253,6 +254,8 @@ struct i915_execbuffer {
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
 
+	struct list_head lock;
+
 	/**
 	 * Track the most recently used object for relocations, as we
 	 * frequently have to perform multiple relocations within the same
@@ -396,6 +399,10 @@ static int eb_create(struct i915_execbuffer *eb)
 		eb->lut_size = -eb->buffer_count;
 	}
 
+	INIT_LIST_HEAD(&eb->relocs);
+	INIT_LIST_HEAD(&eb->unbound);
+	INIT_LIST_HEAD(&eb->lock);
+
 	return 0;
 }
 
@@ -564,6 +571,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 		eb_unreserve_vma(ev);
 		list_add_tail(&ev->bind_link, &eb->unbound);
 	}
+
+	list_add_tail(&ev->lock_link, &eb->lock);
 }
 
 static inline int use_cpu_reloc(const struct reloc_cache *cache,
@@ -779,9 +788,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
 		return -ENOENT;
 
-	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
-
 	batch = eb_batch_index(eb);
 
 	for (i = 0; i < eb->buffer_count; i++) {
@@ -1546,38 +1552,39 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
-	const unsigned int count = eb->buffer_count;
 	struct ww_acquire_ctx acquire;
-	unsigned int i;
+	struct eb_vma *ev;
 	int err = 0;
 
 	ww_acquire_init(&acquire, &reservation_ww_class);
 
-	for (i = 0; i < count; i++) {
-		struct eb_vma *ev = &eb->vma[i];
+	list_for_each_entry(ev, &eb->lock, lock_link) {
 		struct i915_vma *vma = ev->vma;
 
 		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
 		if (err == -EDEADLK) {
-			GEM_BUG_ON(i == 0);
-			do {
-				int j = i - 1;
+			struct eb_vma *unlock = ev, *en;
 
-				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
-
-				swap(eb->vma[i],  eb->vma[j]);
-			} while (--i);
+			list_for_each_entry_safe_continue_reverse(unlock, en, &eb->lock, lock_link) {
+				ww_mutex_unlock(&unlock->vma->resv->lock);
+				list_move_tail(&unlock->lock_link, &eb->lock);
+			}
 
+			GEM_BUG_ON(!list_is_first(&ev->lock_link, &eb->lock));
 			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
 							       &acquire);
 		}
-		if (err)
-			break;
+		if (err) {
+			list_for_each_entry_continue_reverse(ev, &eb->lock, lock_link)
+				ww_mutex_unlock(&ev->vma->resv->lock);
+
+			ww_acquire_fini(&acquire);
+			goto err_skip;
+		}
 	}
 	ww_acquire_done(&acquire);
 
-	while (i--) {
-		struct eb_vma *ev = &eb->vma[i];
+	list_for_each_entry(ev, &eb->lock, lock_link) {
 		struct i915_vma *vma = ev->vma;
 		unsigned int flags = ev->flags;
 		struct drm_i915_gem_object *obj = vma->obj;
@@ -1878,9 +1885,10 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err_trampoline;
 
-	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
-	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
+	eb->batch->vma = i915_vma_get(shadow);
+	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
+	list_add_tail(&eb->batch->lock_link, &eb->lock);
 	eb->vma[eb->buffer_count].vma = NULL;
 
 	eb->trampoline = trampoline;
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 03a73d2bd50d..28813806bc19 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -266,6 +266,12 @@ static inline int list_is_last_rcu(const struct list_head *list,
 	return READ_ONCE(list->next) == head;
 }
 
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))
+
 /*
  * Wait until the work is finally complete, even if it tries to postpone
  * by requeueing itself. Note, that if the worker never cancels itself,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
