Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EEE19F974
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D85889D6C;
	Mon,  6 Apr 2020 15:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D50E89CBA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 15:58:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20818126-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 16:58:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 16:58:40 +0100
Message-Id: <20200406155840.1728-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406155840.1728-1-chris@chris-wilson.co.uk>
References: <20200406155840.1728-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gem: Wait until the context is
 finally retired before releasing engines
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

If we want to percolate information back from the HW, up through the GEM
context, we need to wait until the intel_context is scheduled out for
the last time. This is handled by the retirement of the intel_context's
barrier, i.e. by listening to the pulse after the notional unpin. So
wait until the intel_context is finally retired before releasing the
engine, so that we can inspect the final context state and pass it on.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 2b6dd08de6f1..11d9135cf21a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -570,23 +570,19 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 	engines->ctx = i915_gem_context_get(ctx);
 
 	for_each_gem_engine(ce, engines, it) {
-		struct dma_fence *fence;
-		int err = 0;
+		int err;
 
 		/* serialises with execbuf */
 		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
-		fence = i915_active_fence_get(&ce->timeline->last_request);
-		if (fence) {
-			err = i915_sw_fence_await_dma_fence(&engines->fence,
-							    fence, 0,
-							    GFP_KERNEL);
-			dma_fence_put(fence);
-		}
+		/* Wait until context is finally scheduled out and retired */
+		err = i915_sw_fence_await_active(&engines->fence,
+						 &ce->active,
+						 I915_ACTIVE_AWAIT_BARRIER);
 		intel_context_unpin(ce);
-		if (err < 0)
+		if (err)
 			goto kill;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
