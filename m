Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5111121DB33
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 18:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C8C6E191;
	Mon, 13 Jul 2020 16:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01406E191
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 16:06:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21806082-1500050 
 for multiple; Mon, 13 Jul 2020 17:05:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 17:05:49 +0100
Message-Id: <20200713160549.17344-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only swap to a random sibling once
 upon creation
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

The danger in switching at random upon intel_context_pin is that the
context may still actually be inflight, as it will not be scheduled out
until a context switch after it is complete -- that is after we do a
final intel_context_unpin.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2118
Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.3+
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cd4262cc96e2..f4658849b08a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5435,13 +5435,8 @@ static void virtual_engine_initial_hint(struct virtual_engine *ve)
 	 * typically be the first we inspect for submission.
 	 */
 	swp = prandom_u32_max(ve->num_siblings);
-	if (!swp)
-		return;
-
-	swap(ve->siblings[swp], ve->siblings[0]);
-	if (!intel_engine_has_relative_mmio(ve->siblings[0]))
-		virtual_update_register_offsets(ve->context.lrc_reg_state,
-						ve->siblings[0]);
+	if (swp)
+		swap(ve->siblings[swp], ve->siblings[0]);
 }
 
 static int virtual_context_alloc(struct intel_context *ce)
@@ -5454,15 +5449,9 @@ static int virtual_context_alloc(struct intel_context *ce)
 static int virtual_context_pin(struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
-	int err;
 
 	/* Note: we must use a real engine class for setting up reg state */
-	err = __execlists_context_pin(ce, ve->siblings[0]);
-	if (err)
-		return err;
-
-	virtual_engine_initial_hint(ve);
-	return 0;
+	return __execlists_context_pin(ce, ve->siblings[0]);
 }
 
 static void virtual_context_enter(struct intel_context *ce)
@@ -5808,6 +5797,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	ve->base.flags |= I915_ENGINE_IS_VIRTUAL;
 
+	virtual_engine_initial_hint(ve);
 	return &ve->context;
 
 err_put:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
