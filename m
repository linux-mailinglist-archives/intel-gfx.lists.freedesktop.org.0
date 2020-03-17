Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE0718837D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 13:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC0789319;
	Tue, 17 Mar 2020 12:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A709189319
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 12:17:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20588337-1500050 
 for multiple; Tue, 17 Mar 2020 12:17:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 12:17:15 +0000
Message-Id: <20200317121715.6749-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Avoid gem_context->mutex for
 simple vma lookup
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

As we store the handle lookup inside a radix tree, we do not need the
gem_context->mutex except until we need to insert our lookup into the
common radix tree. This takes a small bit of rearranging to ensure that
the lut we insert into the tree is ready prior to actually inserting it
(as soon as it is exposed via the radixtree, it is visible to any other
submission).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 43 ++++++++++++-------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..75529d8e0f08 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -481,7 +481,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
-	ev->vma = i915_vma_get(vma);
+	ev->vma = vma;
 	ev->exec = entry;
 	ev->flags = entry->flags;
 
@@ -731,24 +731,25 @@ static int eb_select_context(struct i915_execbuffer *eb)
 static int eb_lookup_vmas(struct i915_execbuffer *eb)
 {
 	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
+	unsigned int batch = eb_batch_index(eb);
 	struct drm_i915_gem_object *obj;
-	unsigned int i, batch;
+	unsigned int i;
 	int err;
 
-	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
-		return -ENOENT;
-
 	INIT_LIST_HEAD(&eb->relocs);
 	INIT_LIST_HEAD(&eb->unbound);
 
-	batch = eb_batch_index(eb);
-
 	for (i = 0; i < eb->buffer_count; i++) {
 		u32 handle = eb->exec[i].handle;
 		struct i915_lut_handle *lut;
 		struct i915_vma *vma;
 
+lookup:
+		rcu_read_lock();
 		vma = radix_tree_lookup(handles_vma, handle);
+		if (likely(vma))
+			vma = i915_vma_tryget(vma);
+		rcu_read_unlock();
 		if (likely(vma))
 			goto add_vma;
 
@@ -770,26 +771,38 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 			goto err_obj;
 		}
 
-		err = radix_tree_insert(handles_vma, handle, vma);
-		if (unlikely(err)) {
-			i915_lut_handle_free(lut);
-			goto err_obj;
-		}
-
 		/* transfer ref to lut */
+		i915_gem_object_get(obj);
 		if (!atomic_fetch_inc(&vma->open_count))
 			i915_vma_reopen(vma);
 		lut->handle = handle;
 		lut->ctx = eb->gem_context;
 
+		mutex_lock(&eb->gem_context->mutex);
+		err = -ENOENT;
+		if (unlikely(!i915_gem_context_is_closed(eb->gem_context)))
+			err = radix_tree_insert(handles_vma, handle, vma);
+		mutex_unlock(&eb->gem_context->mutex);
+		if (unlikely(err)) {
+			atomic_dec(&vma->open_count);
+			i915_gem_object_put(obj);
+			i915_lut_handle_free(lut);
+			i915_gem_object_put(obj);
+			if (err == -EEXIST)
+				goto lookup;
+			goto err_vma;
+		}
+
 		i915_gem_object_lock(obj);
 		list_add(&lut->obj_link, &obj->lut_list);
 		i915_gem_object_unlock(obj);
 
 add_vma:
 		err = eb_validate_vma(eb, &eb->exec[i], vma);
-		if (unlikely(err))
+		if (unlikely(err)) {
+			i915_vma_put(vma);
 			goto err_vma;
+		}
 
 		eb_add_vma(eb, i, batch, vma);
 	}
@@ -1494,9 +1507,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
 
-	mutex_lock(&eb->gem_context->mutex);
 	err = eb_lookup_vmas(eb);
-	mutex_unlock(&eb->gem_context->mutex);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
