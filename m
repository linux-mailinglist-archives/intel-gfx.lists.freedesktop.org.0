Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFD211DB07
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 01:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC7C6E233;
	Fri, 13 Dec 2019 00:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0176E222
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:17:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19561433-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:17:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 00:17:13 +0000
Message-Id: <20191213001713.1741810-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213001713.1741810-1-chris@chris-wilson.co.uk>
References: <20191213001713.1741810-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Mark ring->vma as active while
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
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 31 ++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index f7e2f3af007a..89b2fa81e8df 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -145,6 +145,31 @@ static void __context_unpin_state(struct i915_vma *vma)
 	__i915_vma_unpin(vma);
 }
 
+static int __ring_active(struct intel_ring *ring)
+{
+	int err;
+
+	err = i915_active_acquire(&ring->vma->active);
+	if (err)
+		return err;
+
+	err = intel_ring_pin(ring);
+	if (err)
+		goto err_active;
+
+	return 0;
+
+err_active:
+	i915_active_release(&ring->vma->active);
+	return err;
+}
+
+static void __ring_retire(struct intel_ring *ring)
+{
+	intel_ring_unpin(ring);
+	i915_active_release(&ring->vma->active);
+}
+
 __i915_active_call
 static void __intel_context_retire(struct i915_active *active)
 {
@@ -158,7 +183,7 @@ static void __intel_context_retire(struct i915_active *active)
 		__context_unpin_state(ce->state);
 
 	intel_timeline_unpin(ce->timeline);
-	intel_ring_unpin(ce->ring);
+	__ring_retire(ce->ring);
 
 	intel_context_put(ce);
 }
@@ -170,7 +195,7 @@ static int __intel_context_active(struct i915_active *active)
 
 	intel_context_get(ce);
 
-	err = intel_ring_pin(ce->ring);
+	err = __ring_active(ce->ring);
 	if (err)
 		goto err_put;
 
@@ -190,7 +215,7 @@ static int __intel_context_active(struct i915_active *active)
 err_timeline:
 	intel_timeline_unpin(ce->timeline);
 err_ring:
-	intel_ring_unpin(ce->ring);
+	__ring_retire(ce->ring);
 err_put:
 	intel_context_put(ce);
 	return err;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
