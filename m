Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D93A154EAA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 23:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D0786E428;
	Thu,  6 Feb 2020 22:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607456E428
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 22:08:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20142206-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Feb 2020 22:08:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 22:08:27 +0000
Message-Id: <20200206220827.2677474-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206220827.2677474-1-chris@chris-wilson.co.uk>
References: <20200206220827.2677474-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Stop invalidating the PD
 cachelines for gen7
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

Trust that the HW does the right thing after simply updating the
PD_DIR_BASE?

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index c4e6bad5e6dc..b1694741556f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1346,14 +1346,10 @@ static int load_pd_dir(struct i915_request *rq,
 	const struct intel_engine_cs * const engine = rq->engine;
 	u32 *cs;
 
-	cs = intel_ring_begin(rq, 12);
+	cs = intel_ring_begin(rq, 6);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	*cs++ = MI_LOAD_REGISTER_IMM(1);
-	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
-	*cs++ = valid;
-
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
 	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
@@ -1364,10 +1360,6 @@ static int load_pd_dir(struct i915_request *rq,
 	*cs++ = intel_gt_scratch_offset(engine->gt,
 					INTEL_GT_SCRATCH_FIELD_DEFAULT);
 
-	*cs++ = MI_LOAD_REGISTER_IMM(1);
-	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
-	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
-
 	intel_ring_advance(rq, cs);
 
 	return rq->engine->emit_flush(rq, EMIT_FLUSH);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
