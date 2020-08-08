Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2585A23F87E
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Aug 2020 20:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFF66E03F;
	Sat,  8 Aug 2020 18:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2578B6E03F
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Aug 2020 18:45:15 +0000 (UTC)
IronPort-SDR: sjBT6A9oiOy6urTFHPIT9Snv+KYeoQdtcnZMkjjyS6dAUGVK5HzWQ7xZSpQg5KGHDKOUiv2T4P
 PGwQlCq3do3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9707"; a="133397485"
X-IronPort-AV: E=Sophos;i="5.75,450,1589266800"; d="scan'208";a="133397485"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2020 11:45:14 -0700
IronPort-SDR: c0nfbfQiP3xloWo3QlY4veSLxnIb67gskih8rUrjGZCD3Dnc77uNE9cpmJChLlfXdWyJTns7BJ
 wzbFT5ulzLjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,450,1589266800"; d="scan'208";a="397873191"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2020 11:45:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Aug 2020 11:45:11 -0700
Message-Id: <20200808184511.2594286-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/kbl: Fix revision ID checks
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

We usually assume that increasing PCI device revision ID's translates to
newer steppings; macros like IS_KBL_REVID() that we use rely on this
behavior.  Unfortunately this turns out to not be true on KBL; the
newer device 2 revision ID's sometimes go backward to older steppings.
The situation is further complicated by different GT and display
steppings associated with each revision ID.

Lets work around this by providing a table to map the revision ID to
specific GT and display steppings, and then perform our comparisons on
the mapped values.

Bspec: 18329
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  6 +--
 drivers/gpu/drm/i915/i915_drv.c             |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 49 +++++++++++++++++----
 drivers/gpu/drm/i915/intel_pm.c             |  4 +-
 5 files changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 417f6b0c6c61..82742c6f423c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4549,7 +4549,7 @@ static int gen8_emit_flush_render(struct i915_request *request,
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_REVID(request->engine->i915, 0, KBL_REVID_B0))
+		if (IS_KBL_GT_REVID(request->engine->i915, 0, KBL_REVID_B0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cef1c122696f..87937f4ed7ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -470,7 +470,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
+	if (IS_KBL_GT_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
 		WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
 				  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -1008,7 +1008,7 @@ kbl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(i915, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_REVID(i915, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(i915, 0, KBL_REVID_B0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -1923,7 +1923,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
+	if (IS_KBL_GT_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 068447f565a9..00292a849c34 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -392,7 +392,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
 	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
 	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
-	pre |= IS_KBL_REVID(dev_priv, 0, KBL_REVID_A0);
+	pre |= IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_A0);
 	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
 
 	if (pre) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 05a2624116a1..034cfe4867dc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1507,14 +1507,47 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_BXT_REVID(dev_priv, since, until) \
 	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
 
-#define KBL_REVID_A0		0x0
-#define KBL_REVID_B0		0x1
-#define KBL_REVID_C0		0x2
-#define KBL_REVID_D0		0x3
-#define KBL_REVID_E0		0x4
-
-#define IS_KBL_REVID(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && IS_REVID(dev_priv, since, until))
+/*
+ * KBL revision ID ordering is bizarre; higher revision ID's map to lower
+ * steppings in some cases.  So rather than test against the revision ID
+ * directly, let's map that into our own range of increasing ID's that we
+ * can test against in a regular manner.
+ */
+
+enum {
+	KBL_REVID_A0,
+	KBL_REVID_B0,
+	KBL_REVID_B1,
+	KBL_REVID_C0,
+	KBL_REVID_D0,
+	KBL_REVID_D1,
+	KBL_REVID_E0,
+	KBL_REVID_F0,
+	KBL_REVID_G0,
+};
+
+static const struct {
+	u8 gt_stepping;
+	u8 disp_stepping;
+} kbl_revids[] = {
+	[0] = { .gt_stepping = KBL_REVID_A0, .disp_stepping = KBL_REVID_A0 },
+	[1] = { .gt_stepping = KBL_REVID_B0, .disp_stepping = KBL_REVID_B0 },
+	[2] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B0 },
+	[3] = { .gt_stepping = KBL_REVID_D0, .disp_stepping = KBL_REVID_B0 },
+	[4] = { .gt_stepping = KBL_REVID_F0, .disp_stepping = KBL_REVID_C0 },
+	[5] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B1 },
+	[6] = { .gt_stepping = KBL_REVID_D1, .disp_stepping = KBL_REVID_B1 },
+	[7] = { .gt_stepping = KBL_REVID_G0, .disp_stepping = KBL_REVID_C0 },
+};
+
+#define IS_KBL_GT_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until)
+#define IS_KBL_DISP_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)
 
 #define GLK_REVID_A0		0x0
 #define GLK_REVID_A1		0x1
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0a1a95060f38..b4bd19266b8c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7217,12 +7217,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
 		I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
 			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
 		I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
 			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
