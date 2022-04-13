Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7884FFF31
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4D410E49B;
	Wed, 13 Apr 2022 19:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3583210E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878058; x=1681414058;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PUyrg6I6/BFyjphgRdjq42MoyrKhCzZMi2y86gzwrLA=;
 b=BbPsFhI650aBL/SdTM27BWSFgDJ49NyCRQXaHaaGFGHs2djpNvD9oGAw
 Cdh7qEWaTd9usfEyH0XPff0dbpUcpomChkRz2zDWXft7c5HMcpx4ELSwP
 Sq6cQo4Oj0t9siZA9FIvMBg7lWG1VbXtbeQkPMAhXkcJNQYd8lquBbofz
 YCkiC+3Cqx7QmX5/ug3jSgM9q4kcXtoIllc+FlADvrrxpDcMdcgjRAFLm
 B18TL57gGcb2OXp23CvAPxTEp5F3v++PA1Ua0D/Io/IRxsUS2luFyf8jt
 Q/MwjhJzM5S5QGnEIEkPL65mCmbc9//sWO+Di7c+IA1uD89sRH1YtCwhm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045086"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045086"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290491"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:27 -0700
Message-Id: <20220413192730.3608660-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/guc: Enable GuC based
 workarounds for DG2
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

From: John Harrison <John.C.Harrison@Intel.com>

There are some workarounds for DG2 that are implemented in the GuC
firmware. However, the KMD is required to enable these by setting the
appropriate flag as GuC does not know what platform it is running on.
  Wa_16011759253
  Wa_14012630569
  Wa_14013746162

v2: Add a couple more workarounds and drop the FIXME prefix as the
HSDs seem to be updated now. (JohnH)
v3: Add remaining parts of Wa_22011802037 (Umesh)
v4: (Daniele)
- Fix R-b versioning
- Add engine->reset.prepare hook for Wa_22011802037
- Apply Wa_22011802037 to graphics version 11 and onwards
- Fix comments on stepping validity for WAs
v5: (Daniele)
- Enable the Wa_22011802037 for 12+ platforms only for now
- Use GEM_WARN_ON to warn if ring is not idle
v6: (CI)
- Since reset_prepare(gt) is being called from VF, move the WA to GuC's
  engine reset_prepare vfunc and ensure that the vfunc is nop for VF.
v7: (Daniele, Rodrigo)
- Stop submission before stopping ring
- ORing not needed for pending forcewake
- Fix Wa_22011802037 to apply to gen12 only
v8:
- Make sure CS is resumed after reset
- Fix uninitialized MSG_IDLE access
v9: (Daniele)
- Drop cs resume as not needed in GT reset path
- Use same loop for reset.prepare and status_page.sanitize
v10: Add TODO for timeout on intel_engine_stop_cs (Umesh)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  9 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 18 ++++
 drivers/gpu/drm/i915/gt/intel_reset.c         |  5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 18 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 85 ++++++++++++++++++-
 6 files changed, 132 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index eeead40485fb..f553e2173bda 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -182,15 +182,16 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	if (intel_gt_is_wedged(gt))
 		intel_gt_unset_wedged(gt);
 
-	for_each_engine(engine, gt, id)
+	/* For GuC mode, ensure submission is disabled before stopping ring */
+	intel_uc_reset_prepare(&gt->uc);
+
+	for_each_engine(engine, gt, id) {
 		if (engine->reset.prepare)
 			engine->reset.prepare(engine);
 
-	intel_uc_reset_prepare(&gt->uc);
-
-	for_each_engine(engine, gt, id)
 		if (engine->sanitize)
 			engine->sanitize(engine);
+	}
 
 	if (reset_engines(gt) || force) {
 		for_each_engine(engine, gt, id)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0a5c2648aaf0..12d892851684 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -841,6 +841,24 @@
 #define   CTC_SHIFT_PARAMETER_SHIFT		1
 #define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
 
+/* GPM MSG_IDLE */
+#define MSG_IDLE_CS		_MMIO(0x8000)
+#define MSG_IDLE_VCS0		_MMIO(0x8004)
+#define MSG_IDLE_VCS1		_MMIO(0x8008)
+#define MSG_IDLE_BCS		_MMIO(0x800C)
+#define MSG_IDLE_VECS0		_MMIO(0x8010)
+#define MSG_IDLE_VCS2		_MMIO(0x80C0)
+#define MSG_IDLE_VCS3		_MMIO(0x80C4)
+#define MSG_IDLE_VCS4		_MMIO(0x80C8)
+#define MSG_IDLE_VCS5		_MMIO(0x80CC)
+#define MSG_IDLE_VCS6		_MMIO(0x80D0)
+#define MSG_IDLE_VCS7		_MMIO(0x80D4)
+#define MSG_IDLE_VECS1		_MMIO(0x80D8)
+#define MSG_IDLE_VECS2		_MMIO(0x80DC)
+#define MSG_IDLE_VECS3		_MMIO(0x80E0)
+#define  MSG_IDLE_FW_MASK	REG_GENMASK(13, 9)
+#define  MSG_IDLE_FW_SHIFT	9
+
 #define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
 #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f52015e79fdf..5422a3b84bd4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -772,14 +772,15 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
 	intel_engine_mask_t awake = 0;
 	enum intel_engine_id id;
 
+	/* For GuC mode, ensure submission is disabled before stopping ring */
+	intel_uc_reset_prepare(&gt->uc);
+
 	for_each_engine(engine, gt, id) {
 		if (intel_engine_pm_get_if_awake(engine))
 			awake |= engine->mask;
 		reset_prepare_engine(engine);
 	}
 
-	intel_uc_reset_prepare(&gt->uc);
-
 	return awake;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index cda7e4bb8bac..fd04c4cd9d44 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -292,6 +292,24 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
 		flags |= GUC_WA_POLLCS;
 
+	/* Wa_16011759253:dg2_g10:a0 */
+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
+		flags |= GUC_WA_GAM_CREDITS;
+
+	/*
+	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
+	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
+	 *
+	 * The same WA bit is used for both and 22011391025 is applicable to
+	 * all DG2.
+	 */
+	if (IS_DG2(gt->i915))
+		flags |= GUC_WA_DUAL_QUEUE;
+
+	/* Wa_22011802037: graphics version 12 */
+	if (GRAPHICS_VER(gt->i915) == 12)
+		flags |= GUC_WA_PRE_PARSER;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index c154b5efccde..fe5751f67b19 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -98,7 +98,10 @@
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
-#define   GUC_WA_POLLCS                 BIT(18)
+#define   GUC_WA_GAM_CREDITS		BIT(10)
+#define   GUC_WA_DUAL_QUEUE		BIT(11)
+#define   GUC_WA_PRE_PARSER		BIT(14)
+#define   GUC_WA_POLLCS			BIT(18)
 
 #define GUC_CTL_FEATURE			2
 #define   GUC_CTL_ENABLE_SLPC		BIT(2)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 2bd680064942..38ba9f783312 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1540,6 +1540,89 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 	lrc_update_regs(ce, engine, head);
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
+static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
+{
+	u32 fw_pending;
+
+	if (GRAPHICS_VER(engine->i915) != 12)
+		return;
+
+	/*
+	 * Wa_22011802037
+	 * TODO: Occassionally trying to stop the cs times out, but does not
+	 * adversely affect functionality. The timeout is set as a config
+	 * parameter that defaults to 100ms. Assuming that this timeout is
+	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
+	 * timeout returned here until it is root caused.
+	 */
+	intel_engine_stop_cs(engine);
+
+	fw_pending = __cs_pending_mi_force_wakes(engine);
+	if (fw_pending)
+		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
+}
+
 static void guc_reset_nop(struct intel_engine_cs *engine)
 {
 }
@@ -3795,7 +3878,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 
 	engine->sched_engine->schedule = i915_schedule;
 
-	engine->reset.prepare = guc_reset_nop;
+	engine->reset.prepare = guc_engine_reset_prepare;
 	engine->reset.rewind = guc_rewind_nop;
 	engine->reset.cancel = guc_reset_nop;
 	engine->reset.finish = guc_reset_nop;
-- 
2.35.1

