Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DAED22F18
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277FE10E6DE;
	Thu, 15 Jan 2026 07:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h5fz50zB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF8B10E6D6;
 Thu, 15 Jan 2026 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463482; x=1799999482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UveKh2TfGh6k3/N/tOyWjKXGk+a+Z/+brs80InpiiWw=;
 b=h5fz50zBiGzNuUBzNt6tDBET8R3847R/L6i6EybkeXogqy3zrd9ZO5Ww
 39Lp91iBRIdSWz+YZKfydZTrCajoCb4Iq3EJhhCubX3AbSPRBZCx5UjPH
 5COWYYY4APIVJgzf3jOFV2Yp86y7WdR2UXT60YFdu2x1X4TeRTQmjw4S2
 JjTLJqT6MGlC6Ba6UsD4SLajV+UZ5cj2S407ajm+BMDgFnLaiWN/x8j9f
 8YajRzV6yQeILqW2agJSq69qMjL/zz/pFkUadJHSHwUdlRzPKhwdAwMTL
 ZDQ4i51f1QW8Ab6XyPCzb9DQPayr24+pO18TEd65bIkX26fOtNBtblVD3 A==;
X-CSE-ConnectionGUID: 76mXgr/uR2SEqXdXzuXoVg==
X-CSE-MsgGUID: 0zpiTrVeSE6ozVjPqXUckQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436225"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436225"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:22 -0800
X-CSE-ConnectionGUID: tGmwIcEfRGqG8rDiUJ0P1w==
X-CSE-MsgGUID: scYtrACrSCmsEa9ENpuQjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101776"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Date: Thu, 15 Jan 2026 07:50:57 +0000
Message-ID: <20260115075101.2214842-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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
If port clock differs more than +-1 kHz from expected value
an drm_warn() is thrown and pll divider differences are
printed out for debugging purposes.

v2:
- Move clock derivation from dividers in intel_cx0pll_enable()
  earlier in the patchset.
- Keep intel_cx0_pll_power_save_wa() in intel_dpll_sanitize_state()
- Use tables[i].name != NULL as a terminating condition.
- Drop duplicate intel_cx0pll_clock_matches() declaration in header.
- Use state vs. params term consistently in intel_c10pll_verify_clock()
  and intel_c20pll_verify_clock().

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 121 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   9 +-
 3 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3b56d25c8db8..ce4b7582b737 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3838,3 +3838,124 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 		intel_cx0pll_disable(encoder);
 	}
 }
+
+static void intel_c10pll_verify_clock(struct intel_display *display,
+				      int precomputed_clock,
+				      const char *pll_state_name,
+				      const struct intel_c10pll_state *pll_state,
+				      bool is_precomputed_state)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_c10pll_calc_port_clock(pll_state);
+
+	if (intel_dpll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "PLL state %s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_state_name,
+		 is_precomputed_state ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state %s (%s):\n",
+		   pll_state_name,
+		   is_precomputed_state ? "precomputed" : "computed");
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
+				      const char *pll_state_name,
+				      const struct intel_c20pll_state *pll_state,
+				      bool is_precomputed_state)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_c20pll_calc_port_clock(pll_state);
+
+	if (intel_dpll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "PLL state %s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_state_name,
+		 is_precomputed_state ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state %s (%s):\n",
+		   pll_state_name,
+		   is_precomputed_state ? "precomputed" : "computed");
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
+				       const struct intel_cx0pll_params *tables)
+{
+	int i;
+
+	for (i = 0; tables[i].name; i++) {
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
+	intel_cx0pll_verify_tables(display, mtl_c10_edp_tables);
+	intel_cx0pll_verify_tables(display, mtl_c10_dp_tables);
+	intel_cx0pll_verify_tables(display, mtl_c10_hdmi_tables);
+
+	/* C20 */
+	intel_cx0pll_verify_tables(display, xe2hpd_c20_edp_tables);
+	intel_cx0pll_verify_tables(display, mtl_c20_dp_tables);
+	intel_cx0pll_verify_tables(display, xe2hpd_c20_dp_tables);
+	intel_cx0pll_verify_tables(display, xe3lpd_c20_dp_edp_tables);
+	intel_cx0pll_verify_tables(display, mtl_c20_hdmi_tables);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index ae98ac23ea22..347fdbc0af73 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -77,6 +77,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
 					struct intel_dpll_hw_state *hw_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 
+void intel_cx0pll_verify_plls(struct intel_display *display);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..7127bc2a0898 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4613,7 +4613,7 @@ void intel_dpll_init(struct intel_display *display)
 		dpll_mgr = &pch_pll_mgr;
 
 	if (!dpll_mgr)
-		return;
+		goto out_verify;
 
 	dpll_info = dpll_mgr->dpll_info;
 
@@ -4632,6 +4632,13 @@ void intel_dpll_init(struct intel_display *display)
 
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
-- 
2.43.0

