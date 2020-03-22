Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A10A18EAD7
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 18:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28796E0E3;
	Sun, 22 Mar 2020 17:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4A26E0E3
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 17:28:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20653120-1500050 
 for multiple; Sun, 22 Mar 2020 17:28:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Mar 2020 17:28:17 +0000
Message-Id: <20200322172817.9010-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid live-lock with i915_vma_parked()
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

Abuse^W Take advantage that we know we are inside the GT wakeref and
that prevents any client execbuf from reopening the i915_vma in order to
claim all the vma to close without having to drop the spinlock to free
each one individually. By keeping the spinlock, we do not have to
restart if we run concurrently with i915_gem_free_objects -- which
causes them both to restart continually and make very very slow
progress.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1361
Fixes: 77853186e547 ("drm/i915: Claim vma while under closed_lock in i915_vma_parked()")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 5b3efb43a8ef..08699fa069aa 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1097,6 +1097,7 @@ void i915_vma_release(struct kref *ref)
 void i915_vma_parked(struct intel_gt *gt)
 {
 	struct i915_vma *vma, *next;
+	LIST_HEAD(closed);
 
 	spin_lock_irq(&gt->closed_lock);
 	list_for_each_entry_safe(vma, next, &gt->closed_vma, closed_link) {
@@ -1108,28 +1109,26 @@ void i915_vma_parked(struct intel_gt *gt)
 		if (!kref_get_unless_zero(&obj->base.refcount))
 			continue;
 
-		if (i915_vm_tryopen(vm)) {
-			list_del_init(&vma->closed_link);
-		} else {
+		if (!i915_vm_tryopen(vm)) {
 			i915_gem_object_put(obj);
-			obj = NULL;
+			continue;
 		}
 
-		spin_unlock_irq(&gt->closed_lock);
+		list_move(&vma->closed_link, &closed);
+	}
+	spin_unlock_irq(&gt->closed_lock);
 
-		if (obj) {
-			__i915_vma_put(vma);
-			i915_gem_object_put(obj);
-		}
+	/* As the GT is held idle, no vma can be reopened as we destroy them */
+	list_for_each_entry_safe(vma, next, &closed, closed_link) {
+		struct drm_i915_gem_object *obj = vma->obj;
+		struct i915_address_space *vm = vma->vm;
 
-		i915_vm_close(vm);
+		INIT_LIST_HEAD(&vma->closed_link);
+		__i915_vma_put(vma);
 
-		/* Restart after dropping lock */
-		spin_lock_irq(&gt->closed_lock);
-		next = list_first_entry(&gt->closed_vma,
-					typeof(*next), closed_link);
+		i915_gem_object_put(obj);
+		i915_vm_close(vm);
 	}
-	spin_unlock_irq(&gt->closed_lock);
 }
 
 static void __i915_vma_iounmap(struct i915_vma *vma)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
