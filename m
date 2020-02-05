Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25308153ADB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 23:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C5C6E25C;
	Wed,  5 Feb 2020 22:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 984BA6E25E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 22:21:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20129953-1500050 
 for multiple; Wed, 05 Feb 2020 22:21:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 22:21:35 +0000
Message-Id: <20200205222135.2052703-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205222135.2052703-1-chris@chris-wilson.co.uk>
References: <20200205222135.2052703-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Stop invalidating the PD
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
index f70b903a98bc..b5a4b3d4ba6a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1333,14 +1333,10 @@ static int load_pd_dir(struct i915_request *rq,
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
@@ -1351,10 +1347,6 @@ static int load_pd_dir(struct i915_request *rq,
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
