Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B4E9BF8D1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC8310E784;
	Wed,  6 Nov 2024 22:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JAatSVqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1079F10E782
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tu7cwYInbyNms5Y2hHqaDE+XD/Q0WuAOqO1YytzyiUE=;
 b=JAatSVqHvKjO09/WNCLk5byw+L3T9ymqPdGLbOP/uuqSjCA7XqR4VZal
 NQYCUEMhmBzpm1OSXkc4WXl63mt6wgUVP32RtAs/ZBSeWJXECmOtdozC0
 Q5pozO0pdMYK8BwHfCuUciLZe1cvr1fYQZp+dhm5ViHstPcGjOM5496/p
 Ujc7CXatyHK2pB9qXgZZE2bQhLWmpnjf7hlVt651Cz6zBBRlmc2KPuXGl
 +lxOlHW325laIW38+XKlWDEWf4BmFN+xJDDKdjoVD7I2nPv4eH0Cwkd1v
 vrnO8bUp5UpXkCpfNqB2lF1AV3Krfo94WQFe33gLBf/R2yp76R9OUvCV0 g==;
X-CSE-ConnectionGUID: VB1J9cYORKu+DoeTAkgxhw==
X-CSE-MsgGUID: qFqSeQk5Rp+s6RvOn6VQ0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157320"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157320"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:09 -0800
X-CSE-ConnectionGUID: cWntgSzUT56s5xFPIeb8QA==
X-CSE-MsgGUID: ZXZRRR+/RWmriehwFBDliA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915/pps: Decouple pps delays from VBT struct
 definition
Date: Wed,  6 Nov 2024 23:58:53 +0200
Message-ID: <20241106215859.25446-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We currently lack a proper struct definition for the VBT power
squecing delays, and instead we use the same struct definition
(in intel_bios.h) for both the VBT layout and our driver side
state. Decouple those two things by moving the current struct
into intel_vbt_defs.h and adding a new one for the driver's use.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++++---
 drivers/gpu/drm/i915/display/intel_bios.h     |  8 --------
 .../drm/i915/display/intel_display_types.h    | 15 +++++++++++---
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 -
 drivers/gpu/drm/i915/display/intel_pps.c      | 20 +++++++++----------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  8 ++++++++
 6 files changed, 42 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a4cdd82c4a75..31398de08e7f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1402,12 +1402,21 @@ parse_power_conservation_features(struct intel_display *display,
 					    panel_type);
 }
 
+static void vbt_edp_to_pps_delays(struct intel_pps_delays *pps,
+				  const struct edp_power_seq *edp_pps)
+{
+	pps->t1_t3 = edp_pps->t1_t3;
+	pps->t8 = edp_pps->t8;
+	pps->t9 = edp_pps->t9;
+	pps->t10 = edp_pps->t10;
+	pps->t11_t12 = edp_pps->t11_t12;
+}
+
 static void
 parse_edp(struct intel_display *display,
 	  struct intel_panel *panel)
 {
 	const struct bdb_edp *edp;
-	const struct edp_power_seq *edp_pps;
 	const struct edp_fast_link_params *edp_link_params;
 	int panel_type = panel->vbt.panel_type;
 
@@ -1428,10 +1437,10 @@ parse_edp(struct intel_display *display,
 	}
 
 	/* Get the eDP sequencing and link info */
-	edp_pps = &edp->power_seqs[panel_type];
 	edp_link_params = &edp->fast_link_params[panel_type];
 
-	panel->vbt.edp.pps = *edp_pps;
+	vbt_edp_to_pps_delays(&panel->vbt.edp.pps,
+			      &edp->power_seqs[panel_type]);
 
 	if (display->vbt.version >= 224) {
 		panel->vbt.edp.rate =
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 8b703f6cfe17..f9841f0498c6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -50,14 +50,6 @@ enum intel_backlight_type {
 	INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE,
 };
 
-struct edp_power_seq {
-	u16 t1_t3;
-	u16 t8;
-	u16 t9;
-	u16 t10;
-	u16 t11_t12;
-} __packed;
-
 /*
  * MIPI Sequence Block definitions
  *
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d3a1aa7c919f..62cf5d007872 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -301,6 +301,15 @@ struct intel_panel_bl_funcs {
 	u32 (*hz_to_pwm)(struct intel_connector *connector, u32 hz);
 };
 
+/* in 100us units */
+struct intel_pps_delays {
+	u16 t1_t3;
+	u16 t8;
+	u16 t9;
+	u16 t10;
+	u16 t11_t12;
+};
+
 enum drrs_type {
 	DRRS_TYPE_NONE,
 	DRRS_TYPE_STATIC,
@@ -328,7 +337,7 @@ struct intel_vbt_panel_data {
 		int preemphasis;
 		int vswing;
 		int bpp;
-		struct edp_power_seq pps;
+		struct intel_pps_delays pps;
 		u8 drrs_msa_timing_delay;
 		bool low_vswing;
 		bool hobl;
@@ -1568,8 +1577,8 @@ struct intel_pps {
 	 * requiring a reinitialization. Only relevant on BXT+.
 	 */
 	bool bxt_pps_reset;
-	struct edp_power_seq pps_delays;
-	struct edp_power_seq bios_pps_delays;
+	struct intel_pps_delays pps_delays;
+	struct intel_pps_delays bios_pps_delays;
 };
 
 struct intel_psr {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 04a7acd7f73c..7daa8a95dc70 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -6,7 +6,6 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_trace.h"
-#include "intel_bios.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 83d65105f32b..c57b9aca5a31 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1387,7 +1387,7 @@ static void pps_init_timestamps(struct intel_dp *intel_dp)
 }
 
 static void
-intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
+intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct intel_pps_delays *seq)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u32 pp_on, pp_off, pp_ctl, power_cycle_delay;
@@ -1426,7 +1426,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 
 static void
 intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
-		     const struct edp_power_seq *seq)
+		     const struct intel_pps_delays *seq)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1440,8 +1440,8 @@ static void
 intel_pps_verify_state(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct edp_power_seq hw;
-	struct edp_power_seq *sw = &intel_dp->pps.pps_delays;
+	struct intel_pps_delays hw;
+	struct intel_pps_delays *sw = &intel_dp->pps.pps_delays;
 
 	intel_pps_readout_hw_state(intel_dp, &hw);
 
@@ -1453,14 +1453,14 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 	}
 }
 
-static bool pps_delays_valid(struct edp_power_seq *delays)
+static bool pps_delays_valid(struct intel_pps_delays *delays)
 {
 	return delays->t1_t3 || delays->t8 || delays->t9 ||
 		delays->t10 || delays->t11_t12;
 }
 
 static void pps_init_delays_bios(struct intel_dp *intel_dp,
-				 struct edp_power_seq *bios)
+				 struct intel_pps_delays *bios)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1475,7 +1475,7 @@ static void pps_init_delays_bios(struct intel_dp *intel_dp,
 }
 
 static void pps_init_delays_vbt(struct intel_dp *intel_dp,
-				struct edp_power_seq *vbt)
+				struct intel_pps_delays *vbt)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
@@ -1501,7 +1501,7 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 }
 
 static void pps_init_delays_spec(struct intel_dp *intel_dp,
-				 struct edp_power_seq *spec)
+				 struct intel_pps_delays *spec)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1521,7 +1521,7 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 static void pps_init_delays(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct edp_power_seq cur, vbt, spec,
+	struct intel_pps_delays cur, vbt, spec,
 		*final = &intel_dp->pps.pps_delays;
 
 	lockdep_assert_held(&display->pps.mutex);
@@ -1589,7 +1589,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	int div = DISPLAY_RUNTIME_INFO(display)->rawclk_freq / 1000;
 	struct pps_registers regs;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
-	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
+	const struct intel_pps_delays *seq = &intel_dp->pps.pps_delays;
 
 	lockdep_assert_held(&display->pps.mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 42022756bbd5..e9b809568cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1014,6 +1014,14 @@ struct bdb_tv_options {
  * Block 27 - eDP VBT Block
  */
 
+struct edp_power_seq {
+	u16 t1_t3;
+	u16 t8;
+	u16 t9;
+	u16 t10;
+	u16 t11_t12;
+} __packed;
+
 #define EDP_18BPP	0
 #define EDP_24BPP	1
 #define EDP_30BPP	2
-- 
2.45.2

