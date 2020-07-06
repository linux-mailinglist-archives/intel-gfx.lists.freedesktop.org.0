Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 048EA215C7A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 19:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D9D6E26C;
	Mon,  6 Jul 2020 17:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407776E26C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 17:00:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21731734-1500050 
 for multiple; Mon, 06 Jul 2020 18:00:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 18:00:21 +0100
Message-Id: <20200706170021.8832-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Pin the rings before marking active
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On eviction, we acquire the vm->mutex and then wait on the vma->active.
Thereore when binding and pinning the vma, we must follow the same
sequennce, lock/pin the vma then mark it active. Otherwise, we mark the
vma as active, then wait for the vm->mutex, and meanwhile the evictor
waits upon us.

Fixes: 8ccfc20a7d56 ("drm/i915/gt: Mark ring->vma as active while pinned")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.6+
---
 drivers/gpu/drm/i915/gt/intel_context.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..52db2bde44a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -204,25 +204,25 @@ static int __ring_active(struct intel_ring *ring)
 {
 	int err;
 
-	err = i915_active_acquire(&ring->vma->active);
+	err = intel_ring_pin(ring);
 	if (err)
 		return err;
 
-	err = intel_ring_pin(ring);
+	err = i915_active_acquire(&ring->vma->active);
 	if (err)
-		goto err_active;
+		goto err_pin;
 
 	return 0;
 
-err_active:
-	i915_active_release(&ring->vma->active);
+err_pin:
+	intel_ring_unpin(ring);
 	return err;
 }
 
 static void __ring_retire(struct intel_ring *ring)
 {
-	intel_ring_unpin(ring);
 	i915_active_release(&ring->vma->active);
+	intel_ring_unpin(ring);
 }
 
 __i915_active_call
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
