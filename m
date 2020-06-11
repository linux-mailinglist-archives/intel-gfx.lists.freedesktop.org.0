Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388E31F6D26
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 20:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8626E929;
	Thu, 11 Jun 2020 18:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7796E92E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 18:04:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21468324-1500050 
 for multiple; Thu, 11 Jun 2020 19:04:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 19:04:21 +0100
Message-Id: <20200611180421.23262-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Leave vma intact as they are discarded
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we find ourselves trying to reuse a misplaced but active vma, we
currently try to discard it to avoid having to wait to unbind it
(upsetting the current user fo the vma). An alternative to marking it as
a dicarded vma and keeping it in both the obj->vma.list and
obj->vma.tree, is to simply remove it from the lookup rbtree.

While it remains in the list of vma, it will be unbound under eviction
pressure and freed along with the object. We will never reuse it again
for new instances. As before, with no pruning, the list may continually
grow, but eventually we will have the most constrained version of the
ggtt view that meets all requirements -- so the list of vma should not
grow without bound.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2012
Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 38 +++++----------------------------
 drivers/gpu/drm/i915/i915_vma.c |  3 ++-
 2 files changed, 7 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 41553e9e57a9..9aa3066cb75d 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -933,44 +933,16 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	}
 }
 
-static bool
-discard_ggtt_vma(struct i915_vma *vma, const struct i915_ggtt_view *view)
+static void discard_ggtt_vma(struct i915_vma *vma)
 {
-	const struct i915_ggtt_view discard = {
-		.type = I915_GGTT_VIEW_PARTIAL,
-	};
 	struct drm_i915_gem_object *obj = vma->obj;
 
 	spin_lock(&obj->vma.lock);
-	if (i915_vma_compare(vma, vma->vm, &discard)) {
-		struct rb_node *rb, **p;
-
+	if (!RB_EMPTY_NODE(&vma->obj_node)) {
 		rb_erase(&vma->obj_node, &obj->vma.tree);
-		vma->ggtt_view = discard;
-		GEM_BUG_ON(i915_vma_compare(vma, vma->vm, &discard));
-		GEM_BUG_ON(i915_vma_compare(vma, vma->vm, view) == 0);
-
-		rb = NULL;
-		p = &obj->vma.tree.rb_node;
-		while (*p) {
-			struct i915_vma *pos;
-			long cmp;
-
-			rb = *p;
-			pos = rb_entry(rb, struct i915_vma, obj_node);
-
-			cmp = i915_vma_compare(pos, vma->vm, &discard);
-			if (cmp < 0)
-				p = &rb->rb_right;
-			else
-				p = &rb->rb_left;
-		}
-		rb_link_node(&vma->obj_node, rb, p);
-		rb_insert_color(&vma->obj_node, &obj->vma.tree);
+		RB_CLEAR_NODE(&vma->obj_node);
 	}
 	spin_unlock(&obj->vma.lock);
-
-	return i915_vma_compare(vma, vma->vm, view);
 }
 
 struct i915_vma *
@@ -1035,8 +1007,8 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 		}
 
 		if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma)) {
-			if (discard_ggtt_vma(vma, view))
-				goto new_vma;
+			discard_ggtt_vma(vma);
+			goto new_vma;
 		}
 
 		ret = i915_vma_unbind(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 9b30ddc49e4b..1f63c4a1f055 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1087,7 +1087,8 @@ void i915_vma_release(struct kref *ref)
 
 		spin_lock(&obj->vma.lock);
 		list_del(&vma->obj_link);
-		rb_erase(&vma->obj_node, &obj->vma.tree);
+		if (!RB_EMPTY_NODE(&vma->obj_node))
+			rb_erase(&vma->obj_node, &obj->vma.tree);
 		spin_unlock(&obj->vma.lock);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
