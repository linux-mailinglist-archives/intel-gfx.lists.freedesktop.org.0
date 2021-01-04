Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29A62E9448
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:49:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907B8893C9;
	Mon,  4 Jan 2021 11:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31FE3893A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:49:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495838-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Jan 2021 11:49:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:49:14 +0000
Message-Id: <20210104114914.30165-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210104114914.30165-1-chris@chris-wilson.co.uk>
References: <20210104114914.30165-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Rearrange hsw workarounds
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

Some rcs0 workarounds were being incorrectly applied to the GT, and so
we failed to restore the expected register settings after a reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 54 +++++++++++----------
 1 file changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 741ed6e9f5cb..c21a9726326a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -956,31 +956,6 @@ hsw_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 
 	/* WaVSRefCountFullforceMissDisable:hsw */
 	wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
-
-	wa_masked_dis(wal,
-		      CACHE_MODE_0_GEN7,
-		      /* WaDisable_RenderCache_OperationalFlush:hsw */
-		      RC_OP_FLUSH_ENABLE |
-		      /* enable HiZ Raw Stall Optimization */
-		      HIZ_RAW_STALL_OPT_DISABLE);
-
-	/* WaDisable4x2SubspanOptimization:hsw */
-	wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
-
-	/*
-	 * BSpec recommends 8x4 when MSAA is used,
-	 * however in practice 16x4 seems fastest.
-	 *
-	 * Note that PS/WM thread counts depend on the WIZ hashing
-	 * disable bit, which we don't touch here, but it's good
-	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-	 */
-	wa_add(wal, GEN7_GT_MODE, 0,
-	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
-	       GEN6_WIZ_HASHING_16x4);
-
-	/* WaSampleCChickenBitEnable:hsw */
-	wa_masked_en(wal, HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
 }
 
 static void
@@ -1948,6 +1923,35 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN8_LQSC_FLUSH_COHERENT_LINES);
 	}
 
+	if (IS_HASWELL(i915)) {
+		/* WaSampleCChickenBitEnable:hsw */
+		wa_masked_en(wal,
+			     HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
+
+		wa_masked_dis(wal,
+			      CACHE_MODE_0_GEN7,
+			      /* WaDisable_RenderCache_OperationalFlush:hsw */
+			      RC_OP_FLUSH_ENABLE |
+			      /* enable HiZ Raw Stall Optimization */
+			      HIZ_RAW_STALL_OPT_DISABLE);
+
+		/* WaDisable4x2SubspanOptimization:hsw */
+		wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
+
+		/*
+		 * BSpec recommends 8x4 when MSAA is used,
+		 * however in practice 16x4 seems fastest.
+		 *
+		 * Note that PS/WM thread counts depend on the WIZ hashing
+		 * disable bit, which we don't touch here, but it's good
+		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
+		 */
+		wa_add(wal, GEN7_GT_MODE, 0,
+		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK,
+				     GEN6_WIZ_HASHING_16x4),
+		       GEN6_WIZ_HASHING_16x4);
+	}
+
 	if (IS_GEN(i915, 7))
 		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
 		wa_masked_en(wal,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
