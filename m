Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BECBA12276D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F316E967;
	Tue, 17 Dec 2019 09:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DA06E165
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 09:13:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19605312-1500050 
 for multiple; Tue, 17 Dec 2019 09:13:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 09:13:28 +0000
Message-Id: <20191217091328.3093551-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Avoid multi-LRI on Sandybridge
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

Sandybridge is the gen that didn't handle multiple registers in a single
LRI packet. Don't forget it!

Fixes: 902eb748e5c3 ("drm/i915/gt: Tidy up full-ppgtt on Ivybridge")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 00d1fb582e95..1539362fb41d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1370,17 +1370,17 @@ static int load_pd_dir(struct i915_request *rq,
 	const struct intel_engine_cs * const engine = rq->engine;
 	u32 *cs;
 
-	cs = intel_ring_begin(rq, 10);
+	cs = intel_ring_begin(rq, 12);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	*cs++ = MI_LOAD_REGISTER_IMM(3);
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
 	*cs++ = valid;
+
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
 	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
-	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
-	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
 
 	/* Stall until the page table load is complete? */
 	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
@@ -1388,6 +1388,11 @@ static int load_pd_dir(struct i915_request *rq,
 	*cs++ = intel_gt_scratch_offset(engine->gt,
 					INTEL_GT_SCRATCH_FIELD_DEFAULT);
 
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
+	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
+
+
 	intel_ring_advance(rq, cs);
 
 	return 0;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
