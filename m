Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B11A30911
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 11:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B424E10E65B;
	Tue, 11 Feb 2025 10:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2G16eZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5322C10E659;
 Tue, 11 Feb 2025 10:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739270952; x=1770806952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yU42q/FbVsHE2iABS1iVpAoqA7P/CCsO4+HgVlBpvTg=;
 b=m2G16eZa/iDS9j3i1rZtWjTVcqrtQuA69UO2WxEh3wK8YAFi3p++vN+O
 +tHbOMWRr+l29p3me9mcSmq5fZmQp27n0h3q4NHGfS+RqtgzAMG0em7RB
 PpkO55kadV3d29Cke0TrMGiMOapN97b25I95MO8g2mK6Ek91wfqMQP28w
 I4kHKwbPSXVbx1e8d4pxRxVDeNaS4Zjfjrv6Atxzaom04fh5KZQpCLJ6u
 TuRgWtFG1iPAn+pEyD1YWRfW1eD8IvK6OkIhFIA1tH5Z05eOB/pNrrLzP
 C2Wb04Gj7b/VnVsb4fkEvn29KOdyQEMkCoLpBrF8hl9q/LZyTH1IDyzv4 g==;
X-CSE-ConnectionGUID: 9gTe9hUmQnSjXBHLZ4mJqQ==
X-CSE-MsgGUID: FfQG7/huSauLyc/jGqKLWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57293172"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57293172"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:49:12 -0800
X-CSE-ConnectionGUID: wWwePGeXQm6fISvFbF+S9w==
X-CSE-MsgGUID: /q6KQ4yoSzmPgnTfuLixng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112991363"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2025 02:49:10 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/9] drm/i915/dpll: Change param to intel_display in
 for_each_shared_dpll
Date: Tue, 11 Feb 2025 16:18:51 +0530
Message-Id: <20250211104857.3501566-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Change the argument of for_each_shared_dpll to take intel_display which
helps move as an ongoing effort to get rid off the dependency on
drm_i915_private. Some opportunistic changes in intel_pch_refclk done
too.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 ++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  6 ++--
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 36 +++++++++----------
 4 files changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 991c1726f522..87e6f4000101 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -642,7 +642,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   display->dpll.ref_clks.nssc,
 		   display->dpll.ref_clks.ssc);
 
-	for_each_shared_dpll(dev_priv, pll, i) {
+	for_each_shared_dpll(display, pll, i) {
 		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
 		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index cb2ef317d219..171d16e91c61 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -121,10 +121,11 @@ intel_atomic_duplicate_dpll_state(struct drm_i915_private *i915,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
 	struct intel_shared_dpll *pll;
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int i;
 
 	/* Copy shared dpll state */
-	for_each_shared_dpll(i915, pll, i)
+	for_each_shared_dpll(display, pll, i)
 		shared_dpll[pll->index] = pll->state;
 }
 
@@ -157,10 +158,11 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *i915,
 			    enum intel_dpll_id id)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(i915, pll, i) {
+	for_each_shared_dpll(display, pll, i) {
 		if (pll->info->id == id)
 			return pll;
 	}
@@ -344,12 +346,13 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 static unsigned long
 intel_dpll_mask_all(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	unsigned long dpll_mask = 0;
 	int i;
 
-	for_each_shared_dpll(i915, pll, i) {
-		drm_WARN_ON(&i915->drm, dpll_mask & BIT(pll->info->id));
+	for_each_shared_dpll(display, pll, i) {
+		drm_WARN_ON(display->drm, dpll_mask & BIT(pll->info->id));
 
 		dpll_mask |= BIT(pll->info->id);
 	}
@@ -513,7 +516,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
  */
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
 	struct intel_shared_dpll *pll;
 	int i;
@@ -521,7 +524,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for_each_shared_dpll(i915, pll, i)
+	for_each_shared_dpll(display, pll, i)
 		swap(pll->state, shared_dpll[pll->index]);
 }
 
@@ -4551,10 +4554,11 @@ void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 
 void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(i915, pll, i)
+	for_each_shared_dpll(display, pll, i)
 		readout_dpll_hw_state(i915, pll);
 }
 
@@ -4578,10 +4582,11 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 
 void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(i915, pll, i)
+	for_each_shared_dpll(display, pll, i)
 		sanitize_dpll_state(i915, pll);
 }
 
@@ -4728,10 +4733,11 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 
 void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(i915, pll, i)
+	for_each_shared_dpll(display, pll, i)
 		verify_single_dpll_state(i915, pll, NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3eee76874304..382bdf8f0b65 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -30,9 +30,9 @@
 #include "intel_display_power.h"
 #include "intel_wakeref.h"
 
-#define for_each_shared_dpll(__i915, __pll, __i) \
-	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
-		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]) ; (__i)++)
+#define for_each_shared_dpll(__display, __pll, __i) \
+	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
+		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
 
 enum tc_port;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 71471c1d7dc9..68e953d2b124 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -492,7 +492,7 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	struct intel_encoder *encoder;
 	struct intel_shared_dpll *pll;
 	int i;
@@ -505,7 +505,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	bool using_ssc_source = false;
 
 	/* We need to take the global config into account */
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		switch (encoder->type) {
 		case INTEL_OUTPUT_LVDS:
 			has_panel = true;
@@ -522,7 +522,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	if (HAS_PCH_IBX(dev_priv)) {
-		has_ck505 = dev_priv->display.vbt.display_clock_mode;
+		has_ck505 = display->vbt.display_clock_mode;
 		can_ssc = has_ck505;
 	} else {
 		has_ck505 = false;
@@ -530,10 +530,10 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for_each_shared_dpll(dev_priv, pll, i) {
+	for_each_shared_dpll(display, pll, i) {
 		u32 temp;
 
-		temp = intel_de_read(dev_priv, PCH_DPLL(pll->info->id));
+		temp = intel_de_read(display, PCH_DPLL(pll->info->id));
 
 		if (!(temp & DPLL_VCO_ENABLE))
 			continue;
@@ -545,7 +545,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "has_panel %d has_lvds %d has_ck505 %d using_ssc_source %d\n",
 		    has_panel, has_lvds, has_ck505, using_ssc_source);
 
@@ -554,7 +554,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	 * PCH B stepping, previous chipset stepping should be
 	 * ignoring this setting.
 	 */
-	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
+	val = intel_de_read(display, PCH_DREF_CONTROL);
 
 	/* As we must carefully and slowly disable/enable each source in turn,
 	 * compute the final state we want first and check if we need to
@@ -614,8 +614,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		}
 
 		/* Get SSC going before enabling the outputs */
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		intel_de_write(display, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(display, PCH_DREF_CONTROL);
 		udelay(200);
 
 		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
@@ -633,23 +633,23 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 			val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
 		}
 
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		intel_de_write(display, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(display, PCH_DREF_CONTROL);
 		udelay(200);
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "Disabling CPU source output\n");
+		drm_dbg_kms(display->drm, "Disabling CPU source output\n");
 
 		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
 
 		/* Turn off CPU output */
 		val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
 
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		intel_de_write(display, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(display, PCH_DREF_CONTROL);
 		udelay(200);
 
 		if (!using_ssc_source) {
-			drm_dbg_kms(&dev_priv->drm, "Disabling SSC source\n");
+			drm_dbg_kms(display->drm, "Disabling SSC source\n");
 
 			/* Turn off the SSC source */
 			val &= ~DREF_SSC_SOURCE_MASK;
@@ -658,13 +658,13 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 			/* Turn off SSC1 */
 			val &= ~DREF_SSC1_ENABLE;
 
-			intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-			intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+			intel_de_write(display, PCH_DREF_CONTROL, val);
+			intel_de_posting_read(display, PCH_DREF_CONTROL);
 			udelay(200);
 		}
 	}
 
-	drm_WARN_ON(&dev_priv->drm, val != final);
+	drm_WARN_ON(display->drm, val != final);
 }
 
 /*
-- 
2.34.1

