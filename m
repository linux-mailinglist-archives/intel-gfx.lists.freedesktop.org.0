Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 515A11E9F29
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5F46E182;
	Mon,  1 Jun 2020 07:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3586E15C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356634-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:44 +0100
Message-Id: <20200601072446.19548-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 34/36] drm/i915/gem: Separate the ww_mutex
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 52 ++++++++++++-------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cb4872ccfe58..b400eed1f435 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -36,6 +36,7 @@ struct eb_vma {
 	struct drm_i915_gem_exec_object2 *exec;
 	struct list_head bind_link;
 	struct list_head reloc_link;
+	struct list_head lock_link;
 
 	struct hlist_node node;
 	u32 handle;
@@ -247,6 +248,8 @@ struct i915_execbuffer {
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
 
+	struct list_head lock;
+
 	/**
 	 * Track the most recently used object for relocations, as we
 	 * frequently have to perform multiple relocations within the same
@@ -391,6 +394,10 @@ static int eb_create(struct i915_execbuffer *eb)
 		eb->lut_size = -eb->buffer_count;
 	}
 
+	INIT_LIST_HEAD(&eb->relocs);
+	INIT_LIST_HEAD(&eb->unbound);
+	INIT_LIST_HEAD(&eb->lock);
+
 	return 0;
 }
 
@@ -598,6 +605,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 		eb_unreserve_vma(ev);
 		list_add_tail(&ev->bind_link, &eb->unbound);
 	}
+
+	list_add_tail(&ev->lock_link, &eb->lock);
 }
 
 static int eb_reserve_vma(const struct i915_execbuffer *eb,
@@ -857,9 +866,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i;
 	int err = 0;
 
-	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
-
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
 
@@ -1701,38 +1707,43 @@ static void eb_reloc_signal(struct i915_execbuffer *eb, struct i915_request *rq)
 
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
-
-				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
+			struct eb_vma *unlock = ev, *en;
 
-				swap(eb->vma[i],  eb->vma[j]);
-			} while (--i);
+			list_for_each_entry_safe_continue_reverse(unlock, en,
+								  &eb->lock,
+								  lock_link) {
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
+			list_for_each_entry_continue_reverse(ev,
+							     &eb->lock,
+							     lock_link)
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
@@ -2079,9 +2090,10 @@ static int eb_parse(struct i915_execbuffer *eb)
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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
