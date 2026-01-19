Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA113D3A335
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FD310E3E2;
	Mon, 19 Jan 2026 09:38:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvsJryYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1EAE10E3E1;
 Mon, 19 Jan 2026 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815497; x=1800351497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UveKh2TfGh6k3/N/tOyWjKXGk+a+Z/+brs80InpiiWw=;
 b=UvsJryYjKpf2jj7z+TevO12JY4GDYMAN5wRUQx24jSwzCsAmshNP05IX
 ZBup5jXPtxSS3mlhlO7v1irllZ0oUWBvS62dTGmhOHEezLT3laQQG6+hj
 fioEM/RIUEgFcIFKJMoBNIIiVIjg2MN/svabrL/7+qB25ey28Nz9jlLPe
 gihFZPdnvKpN93mj7RGZPm1ZgIJYXq4jiVFzFTfVxfsBO1LMq8DhOhnvH
 /ffVKduwq7YxEjhnPUesP8xzq31nE+BXU7FzVDG9KJC0Fr7+dIv+BqpRj
 3ml8E2qrPDRVx0OZqNz5sKSXggqxuHMVliaG5UTi2MqKHe/M7X8qbM7Qj w==;
X-CSE-ConnectionGUID: QDfkD10XRbW2ouo9UloaSw==
X-CSE-MsgGUID: nJULO8E6QP6tmNgp2Vk2Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="87602187"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="87602187"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:16 -0800
X-CSE-ConnectionGUID: 3z/C8z8RS66LwjqjUk9C/A==
X-CSE-MsgGUID: tKfK21jSTnurEMHKN4ZfAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838457"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:15 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Date: Mon, 19 Jan 2026 09:37:52 +0000
Message-ID: <20260119093757.2850233-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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

