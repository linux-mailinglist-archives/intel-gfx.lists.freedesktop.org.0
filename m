Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C49EB215281
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9956E0D3;
	Mon,  6 Jul 2020 06:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AB76E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724454-1500050 
 for multiple; Mon, 06 Jul 2020 07:19:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:17 +0100
Message-Id: <20200706061926.6687-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/20] drm/i915/gem: Separate the ww_mutex
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 83 ++++++++++++-------
 1 file changed, 54 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6d20be29ff3c..4d8ac89c56fc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -37,6 +37,7 @@ struct eb_vma {
 	struct list_head bind_link;
 	struct list_head unbound_link;
 	struct list_head reloc_link;
+	struct list_head submit_link;
 
 	struct hlist_node node;
 	u32 handle;
@@ -248,6 +249,8 @@ struct i915_execbuffer {
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
 
+	struct list_head submit_list;
+
 	/**
 	 * Track the most recently used object for relocations, as we
 	 * frequently have to perform multiple relocations within the same
@@ -341,6 +344,42 @@ static void eb_vma_array_put(struct eb_vma_array *arr)
 	kref_put(&arr->kref, eb_vma_array_destroy);
 }
 
+static int
+eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
+{
+	struct eb_vma *ev;
+	int err = 0;
+
+	list_for_each_entry(ev, &eb->submit_list, submit_link) {
+		struct i915_vma *vma = ev->vma;
+
+		err = ww_mutex_lock_interruptible(&vma->resv->lock, acquire);
+		if (err == -EDEADLK) {
+			struct eb_vma *unlock = ev, *en;
+
+			list_for_each_entry_safe_continue_reverse(unlock, en,
+								  &eb->submit_list,
+								  submit_link) {
+				ww_mutex_unlock(&unlock->vma->resv->lock);
+				list_move_tail(&unlock->submit_link, &eb->submit_list);
+			}
+
+			GEM_BUG_ON(!list_is_first(&ev->submit_link, &eb->submit_list));
+			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
+							       acquire);
+		}
+		if (err) {
+			list_for_each_entry_continue_reverse(ev,
+							     &eb->submit_list,
+							     submit_link)
+				ww_mutex_unlock(&ev->vma->resv->lock);
+			break;
+		}
+	}
+
+	return err;
+}
+
 static int eb_create(struct i915_execbuffer *eb)
 {
 	/* Allocate an extra slot for use by the command parser + sentinel */
@@ -393,6 +432,10 @@ static int eb_create(struct i915_execbuffer *eb)
 		eb->lut_size = -eb->buffer_count;
 	}
 
+	INIT_LIST_HEAD(&eb->bind_list);
+	INIT_LIST_HEAD(&eb->submit_list);
+	INIT_LIST_HEAD(&eb->relocs);
+
 	return 0;
 }
 
@@ -574,6 +617,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 	}
 
 	list_add_tail(&ev->bind_link, &eb->bind_list);
+	list_add_tail(&ev->submit_link, &eb->submit_list);
 
 	if (entry->relocation_count)
 		list_add_tail(&ev->reloc_link, &eb->relocs);
@@ -910,9 +954,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i;
 	int err = 0;
 
-	INIT_LIST_HEAD(&eb->bind_list);
-	INIT_LIST_HEAD(&eb->relocs);
-
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
 
@@ -1583,38 +1624,19 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
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
-		struct i915_vma *vma = ev->vma;
-
-		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
-		if (err == -EDEADLK) {
-			GEM_BUG_ON(i == 0);
-			do {
-				int j = i - 1;
-
-				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
-
-				swap(eb->vma[i],  eb->vma[j]);
-			} while (--i);
+	err = eb_lock_vma(eb, &acquire);
+	if (err)
+		goto err_fini;
 
-			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
-							       &acquire);
-		}
-		if (err)
-			break;
-	}
 	ww_acquire_done(&acquire);
 
-	while (i--) {
-		struct eb_vma *ev = &eb->vma[i];
+	list_for_each_entry(ev, &eb->submit_list, submit_link) {
 		struct i915_vma *vma = ev->vma;
 		unsigned int flags = ev->flags;
 		struct drm_i915_gem_object *obj = vma->obj;
@@ -1671,6 +1693,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	intel_gt_chipset_flush(eb->engine->gt);
 	return 0;
 
+err_fini:
+	ww_acquire_fini(&acquire);
 err_skip:
 	i915_request_set_error_once(eb->request, err);
 	return err;
@@ -1952,9 +1976,10 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err_trampoline;
 
-	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
-	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
+	eb->batch->vma = i915_vma_get(shadow);
+	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
+	list_add_tail(&eb->batch->submit_link, &eb->submit_list);
 	eb->vma[eb->buffer_count].vma = NULL;
 
 	eb->trampoline = trampoline;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
