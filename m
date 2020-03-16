Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 422501875D0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 23:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9246E4FE;
	Mon, 16 Mar 2020 22:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A236E4FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 22:52:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20582109-1500050 
 for multiple; Mon, 16 Mar 2020 22:51:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 22:51:53 +0000
Message-Id: <20200316225153.3394-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 33 +++++++++++++------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..d2f15833c417 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -481,7 +481,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
-	ev->vma = i915_vma_get(vma);
+	ev->vma = vma;
 	ev->exec = entry;
 	ev->flags = entry->flags;
 
@@ -748,7 +748,12 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
 
@@ -770,18 +775,28 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
@@ -789,7 +804,7 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 add_vma:
 		err = eb_validate_vma(eb, &eb->exec[i], vma);
 		if (unlikely(err))
-			goto err_vma;
+			goto err_obj;
 
 		eb_add_vma(eb, i, batch, vma);
 	}
@@ -1494,9 +1509,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
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
