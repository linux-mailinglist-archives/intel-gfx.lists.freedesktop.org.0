Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D15CC1A32
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9944710E78F;
	Tue, 16 Dec 2025 08:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hj3+1MkV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20103899B7;
 Tue, 16 Dec 2025 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874813; x=1797410813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s2t39uzYu/ez0Rq/4t82YX8YiFZbMYSfbokK7NnP4HU=;
 b=Hj3+1MkV6SxXoPDsIVcQJ/H4pyEpHXPH/1MzeDKFaKAvICUxVcC/5U8C
 adUmA5xjzUvMrOztEkaQRGr6n+yDIx6LnuIuGr2oeZvLGpDXGJ4hc1mtr
 0QJrT31FvwM+6yhpCNClfs7nH0pBpyWuFNCjBK+DelCXEGGoSEe/Jv5j5
 gITYkTBIiRa3aAnBtoagq2cq4Ft20aC4rK6Z7oFSPWnLK03N8zZmKRT9h
 OfG7mVFRF9TPoK472X784VBEYTjrj1Mp8uERLtefcWPdnFpleKAS27NnQ
 CtV/bXnWFggtYCaZS5AVkSMIPIQFc+7tmnq+PVAatlBQHTTTEanx9BtFD A==;
X-CSE-ConnectionGUID: zvDxIYgTTgiC4py2FsmFvA==
X-CSE-MsgGUID: w1IbhFA+TXGfgoUhOeXO+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642328"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642328"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:53 -0800
X-CSE-ConnectionGUID: O2wftdi2R2urGYSTCQ9vFg==
X-CSE-MsgGUID: hTUqegbwTfayqbl0URSmvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448878"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:51 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 09/13] drm/i915/cx0: Verify C10/C20 pll dividers
Date: Tue, 16 Dec 2025 10:37:55 +0200
Message-Id: <20251216083759.383163-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Add verification for pll table dividers. The port clock
is computed based on pll tables and, for hdmi case, the
algorithmic model is applied to calculate pll dividers.
If port clock differs more than +-2 kHz from expected value
an drm_warn() is thrown and pll divider differences are
printed out for debugging purposes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 125 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  12 +-
 3 files changed, 136 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 12c962ffb3f5..ff76d4b8c8fd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3265,6 +3265,11 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 					  INTEL_CX0_LANE0;
 	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
 
+	if (pll_state->use_c10)
+		port_clock = intel_c10pll_calc_port_clock(&pll_state->c10);
+	else
+		port_clock = intel_c20pll_calc_port_clock(&pll_state->c20);
+
 	/*
 	 * Lane reversal is never used in DP-alt mode, in that case the
 	 * corresponding lane swapping (based on the TypeC cable flip state
@@ -3804,3 +3809,123 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 		intel_cx0pll_disable(encoder);
 	}
 }
+
+static void intel_c10pll_verify_clock(struct intel_display *display,
+				      int precomputed_clock,
+				      const char *pll_params_name,
+				      const struct intel_c10pll_state *pll_state,
+				      bool pre_computed_params)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_c10pll_calc_port_clock(pll_state);
+
+	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "%s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_params_name,
+		 pre_computed_params ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state (%s):\n",
+		   pre_computed_params ? "precomputed" : "computed");
+	intel_c10pll_dump_hw_state(&p, pll_state);
+}
+
+static void intel_c10pll_verify_params(struct intel_display *display,
+				       const struct intel_cx0pll_params *pll_params)
+{
+	struct intel_c10pll_state pll_state;
+
+	intel_c10pll_verify_clock(display, pll_params->clock_rate, pll_params->name, pll_params->c10, true);
+
+	if (!pll_params->is_hdmi)
+		return;
+
+	intel_snps_hdmi_pll_compute_c10pll(&pll_state, pll_params->clock_rate);
+
+	intel_c10pll_verify_clock(display, pll_params->clock_rate, pll_params->name, &pll_state, false);
+}
+
+static void intel_c20pll_verify_clock(struct intel_display *display,
+				      int precomputed_clock,
+				      const char *pll_params_name,
+				      const struct intel_c20pll_state *pll_state,
+				      bool pre_computed_params)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_c20pll_calc_port_clock(pll_state);
+
+	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "%s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_params_name,
+		 pre_computed_params ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state (%s):\n",
+		   pre_computed_params ? "precomputed" : "computed");
+	intel_c20pll_dump_hw_state(&p, pll_state);
+}
+
+static void intel_c20pll_verify_params(struct intel_display *display,
+				       const struct intel_cx0pll_params *pll_params)
+{
+	struct intel_c20pll_state pll_state;
+
+	intel_c20pll_verify_clock(display, pll_params->clock_rate, pll_params->name, pll_params->c20, true);
+
+	if (!pll_params->is_hdmi)
+		return;
+
+	if (intel_c20_compute_hdmi_tmds_pll(display, pll_params->clock_rate, &pll_state) != 0)
+		return;
+
+	intel_c20pll_verify_clock(display, pll_params->clock_rate, pll_params->name, &pll_state, false);
+}
+
+static void intel_cx0pll_verify_tables(struct intel_display *display,
+				       const struct intel_cx0pll_params *tables,
+				       int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++) {
+		if (tables[i].is_c10)
+			intel_c10pll_verify_params(display, &tables[i]);
+		else
+			intel_c20pll_verify_params(display, &tables[i]);
+	}
+}
+
+void intel_cx0pll_verify_plls(struct intel_display *display)
+{
+	/* C10 */
+	intel_cx0pll_verify_tables(display, mtl_c10_edp_tables, ARRAY_SIZE(mtl_c10_edp_tables));
+	intel_cx0pll_verify_tables(display, mtl_c10_dp_tables, ARRAY_SIZE(mtl_c10_dp_tables));
+	intel_cx0pll_verify_tables(display, mtl_c10_hdmi_tables, ARRAY_SIZE(mtl_c10_hdmi_tables));
+
+	/* C20 */
+	intel_cx0pll_verify_tables(display, xe2hpd_c20_edp_tables, ARRAY_SIZE(xe2hpd_c20_edp_tables));
+	intel_cx0pll_verify_tables(display, mtl_c20_dp_tables, ARRAY_SIZE(mtl_c20_dp_tables));
+	intel_cx0pll_verify_tables(display, xe2hpd_c20_dp_tables, ARRAY_SIZE(xe2hpd_c20_dp_tables));
+	intel_cx0pll_verify_tables(display, xe3lpd_c20_dp_edp_tables, ARRAY_SIZE(xe3lpd_c20_dp_edp_tables));
+	intel_cx0pll_verify_tables(display, mtl_c20_hdmi_tables, ARRAY_SIZE(mtl_c20_hdmi_tables));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 3d9c580eb562..c6e4985dad88 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -78,6 +78,8 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
 					struct intel_dpll_hw_state *hw_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 
+bool intel_cx0pll_clock_matches(int clock1, int clock2);
+void intel_cx0pll_verify_plls(struct intel_display *display);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..001788174f6b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -38,6 +38,7 @@
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_hti.h"
+#include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_step.h"
@@ -4613,7 +4614,7 @@ void intel_dpll_init(struct intel_display *display)
 		dpll_mgr = &pch_pll_mgr;
 
 	if (!dpll_mgr)
-		return;
+		goto out_verify;
 
 	dpll_info = dpll_mgr->dpll_info;
 
@@ -4632,6 +4633,13 @@ void intel_dpll_init(struct intel_display *display)
 
 	display->dpll.mgr = dpll_mgr;
 	display->dpll.num_dpll = i;
+
+out_verify:
+	/*
+	 * TODO: Convert these to a KUnit test or dependent on a kconfig
+	 * debug option.
+	 */
+	intel_cx0pll_verify_plls(display);
 }
 
 /**
@@ -4842,8 +4850,6 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 	struct intel_dpll *pll;
 	int i;
 
-	intel_cx0_pll_power_save_wa(display);
-
 	for_each_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
 }
-- 
2.34.1

