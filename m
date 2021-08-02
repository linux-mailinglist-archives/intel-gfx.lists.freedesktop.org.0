Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5143DDFC7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 21:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1397189D9B;
	Mon,  2 Aug 2021 19:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A71789D9B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 19:02:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="213503471"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="213503471"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 12:01:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="520665936"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 12:01:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Mon,  2 Aug 2021 22:01:48 +0300
Message-Id: <20210802190148.2099625-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Apply CMTG clock disabling WA while
 DPLL0 is enabled
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

CI test results/further experiments show that the workaround added in

commit 573d7ce4f69a ("drm/i915/adlp: Add workaround to disable CMTG clock gating")

can be applied only while DPLL0 is enabled. If it's disabled the
TRANS_CMTG_CHICKEN register is not accessible. Accordingly move the WA
to DPLL0 HW state sanitization and enabling.

This fixes an issue where the WA won't get applied (and a WARN is thrown
due to an unexpected value in TRANS_CMTG_CHICKEN) if the driver is
loaded without DPLL0 being enabled: booting without BIOS enabling an
output with this PLL, or reloading the driver.

While at it also add a debug print for the unexpected register value.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 18 ----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 34 ++++++++++++++++++-
 2 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4ca354f154215..98f7fbede6226 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13284,24 +13284,6 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
 			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
 			     KBL_ARB_FILL_SPARE_14);
 	}
-
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
-		u32 val;
-
-		/*
-		 * Wa_16011069516:adl-p[a0]
-		 *
-		 * All CMTG regs are unreliable until CMTG clock gating is
-		 * disabled, so we can only assume the default CMTG_CHICKEN
-		 * reg value and sanity check this assumption with a double
-		 * read, which presumably returns the correct value even with
-		 * clock gating on.
-		 */
-		val = intel_de_read(dev_priv, TRANS_CMTG_CHICKEN);
-		val = intel_de_read(dev_priv, TRANS_CMTG_CHICKEN);
-		intel_de_write(dev_priv, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
-		drm_WARN_ON(&dev_priv->drm, val & ~DISABLE_DPT_CLK_GATING);
-	}
 }
 
 static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 0d72917e5670f..5c91d125a3371 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3735,6 +3735,31 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
 		drm_err(&dev_priv->drm, "PLL %d not locked\n", pll->info->id);
 }
 
+static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct intel_shared_dpll *pll)
+{
+	u32 val;
+
+	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
+	    pll->info->id != DPLL_ID_ICL_DPLL0)
+		return;
+	/*
+	 * Wa_16011069516:adl-p[a0]
+	 *
+	 * All CMTG regs are unreliable until CMTG clock gating is disabled,
+	 * so we can only assume the default TRANS_CMTG_CHICKEN reg value and
+	 * sanity check this assumption with a double read, which presumably
+	 * returns the correct value even with clock gating on.
+	 *
+	 * Instead of the usual place for workarounds we apply this one here,
+	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
+	 */
+	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
+	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
+	intel_de_write(i915, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
+	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
+		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
+}
+
 static void combo_pll_enable(struct drm_i915_private *dev_priv,
 			     struct intel_shared_dpll *pll)
 {
@@ -3764,6 +3789,8 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 
 	icl_pll_enable(dev_priv, pll, enable_reg);
 
+	adlp_cmtg_clock_gating_wa(dev_priv, pll);
+
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
@@ -4273,7 +4300,12 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 static void sanitize_dpll_state(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
-	if (!pll->on || pll->active_mask)
+	if (!pll->on)
+		return;
+
+	adlp_cmtg_clock_gating_wa(i915, pll);
+
+	if (pll->active_mask)
 		return;
 
 	drm_dbg_kms(&i915->drm,
-- 
2.27.0

