Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D842F2F2C3F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 11:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F26D6E1A2;
	Tue, 12 Jan 2021 10:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86FAB6E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 10:08:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23567452-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 10:08:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 10:07:59 +0000
Message-Id: <20210112100759.32698-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210112100759.32698-1-chris@chris-wilson.co.uk>
References: <20210112100759.32698-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Perform an arbitration check
 before busywaiting
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

During igt_reset_nop_engine, it was observed that an unexpected failed
engine reset lead to us busywaiting on the stop-ring semaphore (set
during the reset preparations) on the first request afterwards. There was
no explicit MI_ARB_CHECK in this sequence as the presumption was that
the failed MI_SEMAPHORE_WAIT would itself act as an arbitration point.
It did not in this circumstance, so force it.

This patch is based on the assumption that the MI_SEMAPHORE_WAIT failure
to arbitrate is a rare Tigerlake bug, similar to the lite-restore vs
semaphore issues previously seen in the CS. The explicit MI_ARB_CHECK
should always ensure that there is at least one arbitration point in the
request before the MI_SEMAPHORE_WAIT to trigger the IDLE->ACTIVE event.
Upon processing that event, we will clear the stop-ring flag and release
the semaphore from its busywait.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 1ed9f572c8a4..8066b93e6dc4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -578,6 +578,7 @@ u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 
 static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
 {
+	*cs++ = MI_ARB_CHECK; /* trigger IDLE->ACTIVE first */
 	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
 		MI_SEMAPHORE_GLOBAL_GTT |
 		MI_SEMAPHORE_POLL |
@@ -586,7 +587,6 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
 	*cs++ = preempt_address(rq->engine);
 	*cs++ = 0;
 	*cs++ = 0;
-	*cs++ = MI_NOOP;
 
 	return cs;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
