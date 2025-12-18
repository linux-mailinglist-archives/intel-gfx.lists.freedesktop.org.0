Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5076CCCBCC4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 13:32:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEF810E3F2;
	Thu, 18 Dec 2025 12:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2IKBAcz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0C810E0B9;
 Thu, 18 Dec 2025 12:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766061138; x=1797597138;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fHGpm5RFzopDqkONEShJ5YENlKybIqiIiJNtGzoRXKU=;
 b=h2IKBAczmgQRaCwFS46T2DWd6IyISrmVeT+uXHuskcCNmcW2m+c00d5x
 xXzTckbF9HK1SFCuoVqzkCa9zQCvx689CMltbylSKmmZIz1smWiJiQZve
 r9o93GBB2ae7hc9bmVSTWuXiFDLgrDtcXNFiXoQfcysRA4hZPR+tN1Q3A
 saJGNKIrajHUkZNrtd40J+bxaC55AsQtN31we7J+Izim56yn6xvpV9tNd
 3buWJitTQ5+5GmrTSCBmGMQE+siSA87efu9Md+yp3Duk6moSlWw44CQsX
 PjFJNfGRmn3Zi2SwHov+tagOPk/0d9zy843AKvSedpfpgwwB9nIxJel7z A==;
X-CSE-ConnectionGUID: VKaHekrGTw+WT3914wRVxA==
X-CSE-MsgGUID: th0mfuOJSvavfXVDesbvyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="85597336"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="85597336"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 04:32:18 -0800
X-CSE-ConnectionGUID: L4EvtK4rRSS3O1NxWruKcg==
X-CSE-MsgGUID: GvV7JbDDRIGGEp5Purg22Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203645149"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 18 Dec 2025 04:32:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: krzysztof.karas@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2] drm/i915/cx0: Unify naming for C20 pll tables
Date: Thu, 18 Dec 2025 14:23:29 +0200
Message-Id: <20251218122329.2265139-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

To fetch pll divider tables a function name for C20
is intel_c20_pll_tables_get() but for C10 the similar
function is called intel_c10pll_tables_get(). Rename
intel_c20_pll_tables_get() to intel_c20pll_tables_get()
to be more consistent.

v2: Unify naming for all intel_cx0_pll_* to
    intel_cx0pll_* functions (Krzysztof)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 24 +++++++++----------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
 .../drm/i915/display/intel_display_reset.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f6d69627154e..3ddf7e5cae52 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2287,7 +2287,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 			    str_enabled_disabled(intel_c10pll_ssc_enabled(pll_state)));
 }
 
-static void intel_c10_pll_program(struct intel_display *display,
+static void intel_c10pll_program(struct intel_display *display,
 				  struct intel_encoder *encoder,
 				  const struct intel_c10pll_state *pll_state)
 {
@@ -2458,7 +2458,7 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 }
 
 static const struct intel_c20pll_state * const *
-intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
+intel_c20pll_tables_get(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2626,13 +2626,13 @@ static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
 }
 
 static const struct intel_c20pll_state *
-intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
+intel_c20pll_find_table(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
-	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	tables = intel_c20pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return NULL;
 
@@ -2649,7 +2649,7 @@ static int intel_c20pll_calc_state_from_table(const struct intel_crtc_state *crt
 {
 	const struct intel_c20pll_state *table;
 
-	table = intel_c20_pll_find_table(crtc_state, encoder);
+	table = intel_c20pll_find_table(crtc_state, encoder);
 	if (!table)
 		return -EINVAL;
 
@@ -2880,7 +2880,7 @@ static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
 	return intel_tc_port_in_legacy_mode(intel_dig_port);
 }
 
-static void intel_c20_pll_program(struct intel_display *display,
+static void intel_c20pll_program(struct intel_display *display,
 				  struct intel_encoder *encoder,
 				  const struct intel_c20pll_state *pll_state)
 {
@@ -3260,9 +3260,9 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 
 	/* 5. Program PHY internal PLL internal registers. */
 	if (intel_encoder_is_c10phy(encoder))
-		intel_c10_pll_program(display, encoder, &pll_state->c10);
+		intel_c10pll_program(display, encoder, &pll_state->c10);
 	else
-		intel_c20_pll_program(display, encoder, &pll_state->c20);
+		intel_c20pll_program(display, encoder, &pll_state->c20);
 
 	/*
 	 * 6. Program the enabled and disabled owned PHY lane
@@ -3558,7 +3558,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
+static bool intel_cx0pll_is_enabled(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -3645,7 +3645,7 @@ bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	if (!intel_cx0_pll_is_enabled(encoder))
+	if (!intel_cx0pll_is_enabled(encoder))
 		return false;
 
 	if (intel_encoder_is_c10phy(encoder))
@@ -3730,7 +3730,7 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
  *    to the Disable state.
  * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
  */
-void intel_cx0_pll_power_save_wa(struct intel_display *display)
+void intel_cx0pll_power_save_wa(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 
@@ -3748,7 +3748,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 		if (!intel_encoder_is_c10phy(encoder))
 			continue;
 
-		if (intel_cx0_pll_is_enabled(encoder))
+		if (intel_cx0pll_is_enabled(encoder))
 			continue;
 
 		if (intel_c10pll_calc_state_from_table(encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9f10113e2d18..e36a8a8377a0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -77,7 +77,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
 					struct intel_dpll_hw_state *hw_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 
-void intel_cx0_pll_power_save_wa(struct intel_display *display);
+void intel_cx0pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
 void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index d00ef5bdcbda..c58c9994bff6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -107,7 +107,7 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 		intel_pps_unlock_regs_wa(display);
 		intel_display_driver_init_hw(display);
 		intel_clock_gating_init(display->drm);
-		intel_cx0_pll_power_save_wa(display);
+		intel_cx0pll_power_save_wa(display);
 		intel_hpd_init(display);
 
 		ret = __intel_display_driver_resume(display, state, ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..905eeb0b4a09 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4842,7 +4842,7 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 	struct intel_dpll *pll;
 	int i;
 
-	intel_cx0_pll_power_save_wa(display);
+	intel_cx0pll_power_save_wa(display);
 
 	for_each_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
-- 
2.34.1

