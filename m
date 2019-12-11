Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3811AC2A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 14:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62F46EB4F;
	Wed, 11 Dec 2019 13:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3A86EB4F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 13:38:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19541272-1500050 
 for multiple; Wed, 11 Dec 2019 13:37:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:37:56 +0000
Message-Id: <20191211133756.60392-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211133756.60392-1-chris@chris-wilson.co.uk>
References: <20191211133756.60392-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Mark ring->vma as active while
 pinned
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

As we use the active state to keep the vma alive while we are reading
its contents during GPU error capture, we need to mark the
ring->vma as active during execution if we want to include the rinbuffer
in the error state.

Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 374b28f13ca0..7a27264150b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -45,6 +45,10 @@ int intel_ring_pin(struct intel_ring *ring)
 	if (unlikely(ret))
 		goto err_unpin;
 
+	ret = i915_active_acquire(&vma->active);
+	if (ret)
+		goto err_ring;
+
 	if (i915_vma_is_map_and_fenceable(vma))
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	else
@@ -52,7 +56,7 @@ int intel_ring_pin(struct intel_ring *ring)
 					       i915_coherent_map_type(vma->vm->i915));
 	if (IS_ERR(addr)) {
 		ret = PTR_ERR(addr);
-		goto err_ring;
+		goto err_active;
 	}
 
 	i915_vma_make_unshrinkable(vma);
@@ -63,6 +67,8 @@ int intel_ring_pin(struct intel_ring *ring)
 	ring->vaddr = addr;
 	return 0;
 
+err_active:
+	i915_active_release(&vma->active);
 err_ring:
 	i915_vma_unpin(vma);
 err_unpin:
@@ -93,6 +99,8 @@ void intel_ring_unpin(struct intel_ring *ring)
 		i915_gem_object_unpin_map(vma->obj);
 
 	i915_vma_make_purgeable(vma);
+
+	i915_active_release(&vma->active);
 	i915_vma_unpin(vma);
 }
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
