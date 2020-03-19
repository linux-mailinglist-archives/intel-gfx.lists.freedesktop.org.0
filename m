Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C55AB18AFBA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1989D6E9C0;
	Thu, 19 Mar 2020 09:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A07B6E9BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 09:19:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20613250-1500050 
 for multiple; Thu, 19 Mar 2020 09:19:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 09:19:39 +0000
Message-Id: <20200319091943.7815-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200319091943.7815-1-chris@chris-wilson.co.uk>
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/gem: Avoid gem_context->mutex for
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

v2: For brownie points, remove the goto spaghetti.
v3: Tighten up the closed-handle checks.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 136 +++++++++++-------
 1 file changed, 87 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..042a9ccf348f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -481,7 +481,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
-	ev->vma = i915_vma_get(vma);
+	ev->vma = vma;
 	ev->exec = entry;
 	ev->flags = entry->flags;
 
@@ -728,77 +728,117 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	return 0;
 }
 
-static int eb_lookup_vmas(struct i915_execbuffer *eb)
+static int __eb_add_lut(struct i915_execbuffer *eb,
+			u32 handle, struct i915_vma *vma)
 {
-	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
-	struct drm_i915_gem_object *obj;
-	unsigned int i, batch;
+	struct i915_gem_context *ctx = eb->gem_context;
+	struct i915_lut_handle *lut;
 	int err;
 
-	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
-		return -ENOENT;
+	lut = i915_lut_handle_alloc();
+	if (unlikely(!lut))
+		return -ENOMEM;
 
-	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
+	i915_vma_get(vma);
+	if (!atomic_fetch_inc(&vma->open_count))
+		i915_vma_reopen(vma);
+	lut->handle = handle;
+	lut->ctx = ctx;
+
+	/* Check that the context hasn't been closed in the meantime */
+	err = -EINTR;
+	if (!mutex_lock_interruptible(&ctx->mutex)) {
+		err = -ENOENT;
+		if (likely(!i915_gem_context_is_closed(ctx)))
+			err = radix_tree_insert(&ctx->handles_vma, handle, vma);
+		if (err == 0) { /* And nor has this handle */
+			struct drm_i915_gem_object *obj = vma->obj;
+
+			i915_gem_object_lock(obj);
+			if (idr_find(&eb->file->object_idr, handle) == obj) {
+				list_add(&lut->obj_link, &obj->lut_list);
+			} else {
+				radix_tree_delete(&ctx->handles_vma, handle);
+				err = -ENOENT;
+			}
+			i915_gem_object_unlock(obj);
+		}
+		mutex_unlock(&ctx->mutex);
+	}
+	if (unlikely(err))
+		goto err;
 
-	batch = eb_batch_index(eb);
+	return 0;
 
-	for (i = 0; i < eb->buffer_count; i++) {
-		u32 handle = eb->exec[i].handle;
-		struct i915_lut_handle *lut;
+err:
+	atomic_dec(&vma->open_count);
+	i915_vma_put(vma);
+	i915_lut_handle_free(lut);
+	return err;
+}
+
+static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
+{
+	do {
+		struct drm_i915_gem_object *obj;
 		struct i915_vma *vma;
+		int err;
 
-		vma = radix_tree_lookup(handles_vma, handle);
+		rcu_read_lock();
+		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
+		if (likely(vma))
+			vma = i915_vma_tryget(vma);
+		rcu_read_unlock();
 		if (likely(vma))
-			goto add_vma;
+			return vma;
 
 		obj = i915_gem_object_lookup(eb->file, handle);
-		if (unlikely(!obj)) {
-			err = -ENOENT;
-			goto err_vma;
-		}
+		if (unlikely(!obj))
+			return ERR_PTR(-ENOENT);
 
 		vma = i915_vma_instance(obj, eb->context->vm, NULL);
 		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_obj;
+			i915_gem_object_put(obj);
+			return vma;
 		}
 
-		lut = i915_lut_handle_alloc();
-		if (unlikely(!lut)) {
-			err = -ENOMEM;
-			goto err_obj;
-		}
+		err = __eb_add_lut(eb, handle, vma);
+		if (likely(!err))
+			return vma;
 
-		err = radix_tree_insert(handles_vma, handle, vma);
-		if (unlikely(err)) {
-			i915_lut_handle_free(lut);
-			goto err_obj;
-		}
+		i915_gem_object_put(obj);
+		if (err != -EEXIST)
+			return ERR_PTR(err);
+	} while (1);
+}
 
-		/* transfer ref to lut */
-		if (!atomic_fetch_inc(&vma->open_count))
-			i915_vma_reopen(vma);
-		lut->handle = handle;
-		lut->ctx = eb->gem_context;
+static int eb_lookup_vmas(struct i915_execbuffer *eb)
+{
+	unsigned int batch = eb_batch_index(eb);
+	unsigned int i;
+	int err = 0;
 
-		i915_gem_object_lock(obj);
-		list_add(&lut->obj_link, &obj->lut_list);
-		i915_gem_object_unlock(obj);
+	INIT_LIST_HEAD(&eb->relocs);
+	INIT_LIST_HEAD(&eb->unbound);
+
+	for (i = 0; i < eb->buffer_count; i++) {
+		struct i915_vma *vma;
+
+		vma = eb_lookup_vma(eb, eb->exec[i].handle);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			break;
+		}
 
-add_vma:
 		err = eb_validate_vma(eb, &eb->exec[i], vma);
-		if (unlikely(err))
-			goto err_vma;
+		if (unlikely(err)) {
+			i915_vma_put(vma);
+			break;
+		}
 
 		eb_add_vma(eb, i, batch, vma);
 	}
 
-	return 0;
-
-err_obj:
-	i915_gem_object_put(obj);
-err_vma:
 	eb->vma[i].vma = NULL;
 	return err;
 }
@@ -1494,9 +1534,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
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
