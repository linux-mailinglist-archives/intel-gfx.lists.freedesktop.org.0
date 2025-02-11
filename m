Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AA8A2FEB6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 01:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3880410E40D;
	Tue, 11 Feb 2025 00:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n31/veU0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A4010E40D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 00:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739232104; x=1770768104;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=q6KHequKNAj++TJ9WOu/+xQ9nR0AZmqr/75RjZ9tqEg=;
 b=n31/veU0uHrlLb98IgVarG38UPZ/lx1SzTm92lIjH3rUVenrZfZ+4FSR
 lObGi4LNPndxJZE8HyFHH+HLDI8Q9ETSjM3Y9rG7v6tm8iGf8EoTAE2k6
 q5pCblXuVOiW006/zJcT++Dp6vbkHQaU56+QfqmNnePDPn1Ba05FEpa7Z
 o6iN/1joEaX8TnklPPhulme5l0HwwnsqMxs4F3hasaHtC4y7jf5O8RFLT
 Fm4jBLyq/mpl2PTMdXbC5o88N9QazS7ZQnZ1SBxIoKuN2sPVNMWlRrEuQ
 e4PZOUqP0osGJ9i7O661rcexGtI4gSPmp0KFviDDE4o1da6eCrAs6v3zH w==;
X-CSE-ConnectionGUID: SYtQDZF9SmKBr/GOnqAsJw==
X-CSE-MsgGUID: gGfAE1hAR0mBJILND+PR3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27434860"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="27434860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 16:01:43 -0800
X-CSE-ConnectionGUID: gyr32cBUQ3GyOjKv+JI+OA==
X-CSE-MsgGUID: h+MGTYZWTjSMzNCClQWuOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112558913"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 16:01:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 02:01:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Continue intel_display_power struct
 intel_display conversion
Date: Tue, 11 Feb 2025 02:01:33 +0200
Message-ID: <20250211000135.6096-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
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

Convert the remaining intel_display_power.h interfaces to
take struct intel_display instead of struct drm_i915_private.
intel_display_power.c still has some internal uses due to
i915->runtime_pm.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 +++----
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++--
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 .../drm/i915/display/intel_display_power.c    | 30 +++++++------------
 .../drm/i915/display/intel_display_power.h    | 15 +++++-----
 .../i915/display/intel_display_power_well.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 12 ++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  | 16 +++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |  3 +-
 11 files changed, 46 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 7eb5b4915f2c..d3b5ead188ba 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1389,7 +1389,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port->max_lanes = 4;
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
-	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
+	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
 			intel_encoder->pipe_mask = BIT(PIPE_C);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 7f13cf9b1a2e..9e1ca7767392 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -763,7 +763,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	intel_encoder->shutdown = intel_hdmi_encoder_shutdown;
 
 	intel_encoder->type = INTEL_OUTPUT_HDMI;
-	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
+	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
 	intel_encoder->port = port;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6e09dfcbaa7d..8e319399205a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -935,7 +935,7 @@ static enum intel_display_power_domain
 intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	/*
 	 * ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
@@ -951,8 +951,8 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 * extra wells.
 	 */
 	if (intel_psr_needs_aux_io_power(&dig_port->base, crtc_state))
-		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (DISPLAY_VER(i915) < 14 &&
+		return intel_display_power_aux_io_domain(display, dig_port->aux_ch);
+	else if (DISPLAY_VER(display) < 14 &&
 		 (intel_crtc_has_dp_encoder(crtc_state) ||
 		  intel_encoder_is_tc(&dig_port->base)))
 		return intel_aux_power_domain(dig_port);
@@ -5261,7 +5261,7 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->get_power_domains = intel_ddi_get_power_domains;
 
 	encoder->type = INTEL_OUTPUT_DDI;
-	encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
+	encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
 	encoder->port = port;
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
@@ -5412,7 +5412,7 @@ void intel_ddi_init(struct intel_display *display,
 	}
 
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
-	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
+	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(display, port);
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		if (intel_encoder_is_tc(encoder))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9f8a8c94cf4c..2d7ac53bb924 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2112,12 +2112,12 @@ enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		return intel_display_power_tbt_aux_domain(i915, dig_port->aux_ch);
+		return intel_display_power_tbt_aux_domain(display, dig_port->aux_ch);
 
-	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+	return intel_display_power_legacy_aux_domain(display, dig_port->aux_ch);
 }
 
 static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 89e5eea90be8..09a8f667366d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -158,8 +158,9 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 static int i915_power_domain_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_display *display = &i915->display;
 
-	intel_display_power_debug(i915, m);
+	intel_display_power_debug(display, m);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cfc5c0b4f907..d93f43d145a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1056,10 +1056,9 @@ static void gen9_dbuf_slice_set(struct intel_display *display,
 		 slice, str_enable_disable(enable));
 }
 
-void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
+void gen9_dbuf_slices_update(struct intel_display *display,
 			     u8 req_slices)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	u8 slice_mask = DISPLAY_INFO(display)->dbuf.slice_mask;
 	enum dbuf_slice slice;
@@ -1090,10 +1089,9 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 
 static void gen9_dbuf_enable(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u8 slices_mask;
 
-	display->dbuf.enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
+	display->dbuf.enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
 	slices_mask = BIT(DBUF_S1) | display->dbuf.enabled_slices;
 
@@ -1104,14 +1102,12 @@ static void gen9_dbuf_enable(struct intel_display *display)
 	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
 	 */
-	gen9_dbuf_slices_update(dev_priv, slices_mask);
+	gen9_dbuf_slices_update(display, slices_mask);
 }
 
 static void gen9_dbuf_disable(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	gen9_dbuf_slices_update(dev_priv, 0);
+	gen9_dbuf_slices_update(display, 0);
 
 	if (DISPLAY_VER(display) >= 14)
 		intel_pmdemand_program_dbuf(display, 0);
@@ -2315,9 +2311,8 @@ void intel_display_power_resume(struct intel_display *display)
 	}
 }
 
-void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m)
+void intel_display_power_debug(struct intel_display *display, struct seq_file *m)
 {
-	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	int i;
 
@@ -2498,9 +2493,8 @@ intel_port_domains_for_port(struct intel_display *display, enum port port)
 }
 
 enum intel_display_power_domain
-intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
+intel_display_power_ddi_io_domain(struct intel_display *display, enum port port)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(display, port);
 
 	if (drm_WARN_ON(display->drm, !domains || domains->ddi_io == POWER_DOMAIN_INVALID))
@@ -2510,9 +2504,8 @@ intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
 }
 
 enum intel_display_power_domain
-intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port port)
+intel_display_power_ddi_lanes_domain(struct intel_display *display, enum port port)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(display, port);
 
 	if (drm_WARN_ON(display->drm, !domains || domains->ddi_lanes == POWER_DOMAIN_INVALID))
@@ -2537,9 +2530,8 @@ intel_port_domains_for_aux_ch(struct intel_display *display, enum aux_ch aux_ch)
 }
 
 enum intel_display_power_domain
-intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+intel_display_power_aux_io_domain(struct intel_display *display, enum aux_ch aux_ch)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
 	if (drm_WARN_ON(display->drm, !domains || domains->aux_io == POWER_DOMAIN_INVALID))
@@ -2549,9 +2541,8 @@ intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux
 }
 
 enum intel_display_power_domain
-intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+intel_display_power_legacy_aux_domain(struct intel_display *display, enum aux_ch aux_ch)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
 	if (drm_WARN_ON(display->drm, !domains || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID))
@@ -2561,9 +2552,8 @@ intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch
 }
 
 enum intel_display_power_domain
-intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+intel_display_power_tbt_aux_domain(struct intel_display *display, enum aux_ch aux_ch)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
 	if (drm_WARN_ON(display->drm, !domains || domains->aux_tbt == POWER_DOMAIN_INVALID))
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 1e4e113999fb..a3a5c1be8bab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -13,7 +13,6 @@
 
 enum aux_ch;
 enum port;
-struct drm_i915_private;
 struct i915_power_well;
 struct intel_display;
 struct intel_encoder;
@@ -268,18 +267,18 @@ intel_display_power_put_all_in_set(struct intel_display *display,
 	intel_display_power_put_mask_in_set(display, power_domain_set, &power_domain_set->mask);
 }
 
-void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
+void intel_display_power_debug(struct intel_display *display, struct seq_file *m);
 
 enum intel_display_power_domain
-intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port port);
+intel_display_power_ddi_lanes_domain(struct intel_display *display, enum port port);
 enum intel_display_power_domain
-intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port);
+intel_display_power_ddi_io_domain(struct intel_display *display, enum port port);
 enum intel_display_power_domain
-intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+intel_display_power_aux_io_domain(struct intel_display *display, enum aux_ch aux_ch);
 enum intel_display_power_domain
-intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+intel_display_power_legacy_aux_domain(struct intel_display *display, enum aux_ch aux_ch);
 enum intel_display_power_domain
-intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+intel_display_power_tbt_aux_domain(struct intel_display *display, enum aux_ch aux_ch);
 
 /*
  * FIXME: We should probably switch this to a 0-based scheme to be consistent
@@ -293,7 +292,7 @@ enum dbuf_slice {
 	I915_MAX_DBUF_SLICES
 };
 
-void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
+void gen9_dbuf_slices_update(struct intel_display *display,
 			     u8 req_slices);
 
 #define with_intel_display_power(display, domain, wf) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f45a4f9ba23c..367f8e8d9e73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -962,8 +962,7 @@ static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
 
 static void gen9_assert_dbuf_enabled(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
+	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(display);
 	u8 enabled_dbuf_slices = display->dbuf.enabled_slices;
 
 	drm_WARN(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e9e9ee5d345a..b8d14ed8a56e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -177,11 +177,11 @@ bool intel_tc_port_handles_hpd_glitches(struct intel_digital_port *dig_port)
  */
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	return tc_phy_cold_off_domain(tc) ==
-	       intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+	       intel_display_power_legacy_aux_domain(display, dig_port->aux_ch);
 }
 
 static intel_wakeref_t
@@ -478,11 +478,11 @@ static void tc_phy_load_fia_params(struct intel_tc_port *tc, bool modular_fia)
 static enum intel_display_power_domain
 icl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 
 	if (tc->legacy_port)
-		return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+		return intel_display_power_legacy_aux_domain(display, dig_port->aux_ch);
 
 	return POWER_DOMAIN_TC_COLD_OFF;
 }
@@ -763,11 +763,11 @@ static const struct intel_tc_phy_ops tgl_tc_phy_ops = {
 static enum intel_display_power_domain
 adlp_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 
 	if (tc->mode != TC_PORT_TBT_ALT)
-		return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+		return intel_display_power_legacy_aux_domain(display, dig_port->aux_ch);
 
 	return POWER_DOMAIN_TC_COLD_OFF;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1c4510d520e8..9e97fc703903 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -52,13 +52,13 @@ struct skl_wm_params {
 	u32 dbuf_block_size;
 };
 
-u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
+u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
 {
 	u8 enabled_slices = 0;
 	enum dbuf_slice slice;
 
-	for_each_dbuf_slice(i915, slice) {
-		if (intel_de_read(i915, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
+	for_each_dbuf_slice(display, slice) {
+		if (intel_de_read(display, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
 			enabled_slices |= BIT(slice);
 	}
 
@@ -3701,7 +3701,7 @@ void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
@@ -3719,12 +3719,12 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	gen9_dbuf_slices_update(i915, new_slices);
+	gen9_dbuf_slices_update(display, new_slices);
 }
 
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
@@ -3742,7 +3742,7 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	gen9_dbuf_slices_update(i915, new_slices);
+	gen9_dbuf_slices_update(display, new_slices);
 }
 
 static void skl_mbus_sanitize(struct drm_i915_private *i915)
@@ -3875,7 +3875,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y, hw->min_ddb, hw->interim_ddb);
 
-	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
+	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
 	if (DISPLAY_VER(i915) >= 11 &&
 	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 8659f89427f2..2a93619256f8 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -16,13 +16,14 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_bw_state;
 struct intel_crtc;
+struct intel_display;
 struct intel_crtc_state;
 struct intel_plane;
 struct intel_plane_state;
 struct skl_pipe_wm;
 struct skl_wm_level;
 
-u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
+u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
-- 
2.45.3

