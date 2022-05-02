Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA05179DD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 00:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FFE10F5A7;
	Mon,  2 May 2022 22:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1E510F5A7
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 22:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651529889; x=1683065889;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=moSWMiilnIDdeOPIZFSZ/VCGZycaviE51VdHFGK0Mf4=;
 b=kSNeANKAQpyBCAbNQlQL3YTvZDzyz0r10I8GYU2Bnh4IWKKNzw3OcZYQ
 86t2YOxttNvOsA21yXLZq3DRMSLwRlVgmyor7MhU3uCrHr3+9fPFS6SiR
 UNU8wfmPAgrXaxrqDPxEp9/eVvjWag7rma5V98RQuOTyBWP3QLi76UKQi
 2gX1rrmseX3SHmEG8J2DODlVLsmO1xwX27+2WDJgOt7ucjDm/fz7RFKsx
 MZmz20Rl3OA5bcCFcf7syMKdOGVlDnIWgL83MneyIyazxon5aClah3h7s
 vFSNL3P+xWIRuizo6k+SfQ2GJCdG+DO3RlOBkGJTP6afRuRrFR1KPcDzw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="249324765"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="249324765"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 15:18:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="546670468"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 15:18:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	daniele.ceraolospurio@intel.com
Date: Mon,  2 May 2022 15:18:05 -0700
Message-Id: <20220502221805.4000039-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/reset: Add Wa_22011802037 for gen11
 and execlist backend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current implementation of Wa_22011802037 is limited to the GuC backend
and gen12. Add support for execlist backend and gen11 as well.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 81 ++++++++++++++++++-
 .../drm/i915/gt/intel_execlists_submission.c  |  7 ++
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 81 ++-----------------
 6 files changed, 103 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 1431f1e9dbee..04e435bce79b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -201,6 +201,8 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine);
 int intel_engine_stop_cs(struct intel_engine_cs *engine);
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
 
+void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine);
+
 void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask);
 
 u64 intel_engine_get_active_head(const struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 14c6ddbbfde8..0bda665a407c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1282,10 +1282,10 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
 
 	/*
-	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
+	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
 	 * stopped, set ring stop bit and prefetch disable bit to halt CS
 	 */
-	if (GRAPHICS_VER(engine->i915) == 12)
+	if (GRAPHICS_VER(engine->i915) == 11 || GRAPHICS_VER(engine->i915) == 12)
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
 				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
 
@@ -1308,6 +1308,14 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 		return -ENODEV;
 
 	ENGINE_TRACE(engine, "\n");
+	/*
+	 * TODO: Occasionally trying to stop the cs times out, but does not
+	 * adversely affect functionality. The timeout is set as a config
+	 * parameter that defaults to 100ms. Assuming that this timeout is
+	 * sufficient for any pending MI_FORCEWAKEs to complete. Once root
+	 * caused, the caller must check and handler the return from this
+	 * function.
+	 */
 	if (__intel_engine_stop_cs(engine, 1000, stop_timeout(engine))) {
 		ENGINE_TRACE(engine,
 			     "timed out on STOP_RING -> IDLE; HEAD:%04x, TAIL:%04x\n",
@@ -1334,6 +1342,75 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
 	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
 }
 
+static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
+{
+	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
+		[RCS0] = MSG_IDLE_CS,
+		[BCS0] = MSG_IDLE_BCS,
+		[VCS0] = MSG_IDLE_VCS0,
+		[VCS1] = MSG_IDLE_VCS1,
+		[VCS2] = MSG_IDLE_VCS2,
+		[VCS3] = MSG_IDLE_VCS3,
+		[VCS4] = MSG_IDLE_VCS4,
+		[VCS5] = MSG_IDLE_VCS5,
+		[VCS6] = MSG_IDLE_VCS6,
+		[VCS7] = MSG_IDLE_VCS7,
+		[VECS0] = MSG_IDLE_VECS0,
+		[VECS1] = MSG_IDLE_VECS1,
+		[VECS2] = MSG_IDLE_VECS2,
+		[VECS3] = MSG_IDLE_VECS3,
+		[CCS0] = MSG_IDLE_CS,
+		[CCS1] = MSG_IDLE_CS,
+		[CCS2] = MSG_IDLE_CS,
+		[CCS3] = MSG_IDLE_CS,
+	};
+	u32 val;
+
+	if (!_reg[engine->id].reg)
+		return 0;
+
+	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
+
+	/* bits[29:25] & bits[13:9] >> shift */
+	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
+}
+
+static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
+{
+	int ret;
+
+	/* Ensure GPM receives fw up/down after CS is stopped */
+	udelay(1);
+
+	/* Wait for forcewake request to complete in GPM */
+	ret =  __intel_wait_for_register_fw(gt->uncore,
+					    GEN9_PWRGT_DOMAIN_STATUS,
+					    fw_mask, fw_mask, 5000, 0, NULL);
+
+	/* Ensure CS receives fw ack from GPM */
+	udelay(1);
+
+	if (ret)
+		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
+}
+
+/*
+ * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
+ * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
+ * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
+ * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
+ * are concerned only with the gt reset here, we use a logical OR of pending
+ * forcewakeups from all reset domains and then wait for them to complete by
+ * querying PWRGT_DOMAIN_STATUS.
+ */
+void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine)
+{
+	u32 fw_pending = __cs_pending_mi_force_wakes(engine);
+
+	if (fw_pending)
+		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
+}
+
 static u32
 read_subslice_reg(const struct intel_engine_cs *engine,
 		  int slice, int subslice, i915_reg_t reg)
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 86f7a9ac1c39..e139dc1e44eb 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2958,6 +2958,13 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	ring_set_paused(engine, 1);
 	intel_engine_stop_cs(engine);
 
+	/*
+	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
+	 * to wait for any pending mi force wakeups
+	 */
+	if (GRAPHICS_VER(engine->i915) == 11 || GRAPHICS_VER(engine->i915) == 12)
+		intel_engine_wait_for_pending_mi_fw(engine);
+
 	engine->execlists.reset_ccid = active_ccid(engine);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5423bfd301ad..75884e0a552e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -323,6 +323,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "\n");
 	intel_engine_stop_cs(engine);
 
+	/*
+	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
+	 * to wait for any pending mi force wakeups
+	 */
+	if (GRAPHICS_VER(engine->i915) == 11 || GRAPHICS_VER(engine->i915) == 12)
+		intel_engine_wait_for_pending_mi_fw(engine);
+
 	if (!stop_ring(engine)) {
 		/* G45 ring initialization often fails to reset head to zero */
 		ENGINE_TRACE(engine,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 2c4ad4a65089..f69a9464585e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -310,8 +310,8 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2(gt->i915))
 		flags |= GUC_WA_DUAL_QUEUE;
 
-	/* Wa_22011802037: graphics version 12 */
-	if (GRAPHICS_VER(gt->i915) == 12)
+	/* Wa_22011802037: graphics version 11/12 */
+	if (GRAPHICS_VER(gt->i915) == 11 || GRAPHICS_VER(gt->i915) == 12)
 		flags |= GUC_WA_PRE_PARSER;
 
 	/* Wa_16011777198:dg2 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 75291e9846c5..a3fe832eff0d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1527,87 +1527,18 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 	lrc_update_regs(ce, engine, head);
 }
 
-static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
-{
-	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
-		[RCS0] = MSG_IDLE_CS,
-		[BCS0] = MSG_IDLE_BCS,
-		[VCS0] = MSG_IDLE_VCS0,
-		[VCS1] = MSG_IDLE_VCS1,
-		[VCS2] = MSG_IDLE_VCS2,
-		[VCS3] = MSG_IDLE_VCS3,
-		[VCS4] = MSG_IDLE_VCS4,
-		[VCS5] = MSG_IDLE_VCS5,
-		[VCS6] = MSG_IDLE_VCS6,
-		[VCS7] = MSG_IDLE_VCS7,
-		[VECS0] = MSG_IDLE_VECS0,
-		[VECS1] = MSG_IDLE_VECS1,
-		[VECS2] = MSG_IDLE_VECS2,
-		[VECS3] = MSG_IDLE_VECS3,
-		[CCS0] = MSG_IDLE_CS,
-		[CCS1] = MSG_IDLE_CS,
-		[CCS2] = MSG_IDLE_CS,
-		[CCS3] = MSG_IDLE_CS,
-	};
-	u32 val;
-
-	if (!_reg[engine->id].reg)
-		return 0;
-
-	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
-
-	/* bits[29:25] & bits[13:9] >> shift */
-	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
-}
-
-static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
-{
-	int ret;
-
-	/* Ensure GPM receives fw up/down after CS is stopped */
-	udelay(1);
-
-	/* Wait for forcewake request to complete in GPM */
-	ret =  __intel_wait_for_register_fw(gt->uncore,
-					    GEN9_PWRGT_DOMAIN_STATUS,
-					    fw_mask, fw_mask, 5000, 0, NULL);
-
-	/* Ensure CS receives fw ack from GPM */
-	udelay(1);
-
-	if (ret)
-		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
-}
-
-/*
- * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
- * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
- * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
- * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
- * are concerned only with the gt reset here, we use a logical OR of pending
- * forcewakeups from all reset domains and then wait for them to complete by
- * querying PWRGT_DOMAIN_STATUS.
- */
 static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 {
-	u32 fw_pending;
-
-	if (GRAPHICS_VER(engine->i915) != 12)
+	if (GRAPHICS_VER(engine->i915) != 11 && GRAPHICS_VER(engine->i915) != 12)
 		return;
 
-	/*
-	 * Wa_22011802037
-	 * TODO: Occasionally trying to stop the cs times out, but does not
-	 * adversely affect functionality. The timeout is set as a config
-	 * parameter that defaults to 100ms. Assuming that this timeout is
-	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
-	 * timeout returned here until it is root caused.
-	 */
 	intel_engine_stop_cs(engine);
 
-	fw_pending = __cs_pending_mi_force_wakes(engine);
-	if (fw_pending)
-		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
+	/*
+	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
+	 * to wait for any pending mi force wakeups
+	 */
+	intel_engine_wait_for_pending_mi_fw(engine);
 }
 
 static void guc_reset_nop(struct intel_engine_cs *engine)
-- 
2.35.1

