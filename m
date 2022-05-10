Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC0A521277
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44C610E03F;
	Tue, 10 May 2022 10:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1640A10E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179404; x=1683715404;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pB6xq6CoWPeQz/ssxkZYJdQUratBw3gcSnqfcysASxU=;
 b=cVoTH3pXuattjskr/qjmNSAa4iuHIVrzirLnHNjDrL2D+UhsrvRCYlvj
 PXAWvXKEigLvPQ1n9Xe95NJxjLCosvKiTmQrGfUIy1TNNry8i0XbxsPt3
 hP0uMyA9YJHtRbMdNcUNDhHWsIqvnMbT5v3seZdHxq7riksUlBlQ5wjn9
 hWXoBT0GUwuH/xwk76BUoAmVpzkqwW+HIPEnhlcvMF6t3vcYLWe/fVFBl
 UvClczawdL/G4fJR0vTwEb5dWx+eVpSJxXMqBnKm5Ak2wW7Aijss39FmI
 MWwIAgO7rT7uBMlzXzQCm6Sj82Q3mg69W83+XhEES7l0VqJR0X0V0RwwA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="355760330"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="355760330"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="623413890"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 10 May 2022 03:43:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:39 +0300
Message-Id: <20220510104242.6099-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915/bios: Split VBT data into
 per-panel vs. global parts
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

Move the panel specific VBT parsing to happen during the
output probing stage. Needs to be done because the VBT
parsing will need to look at the EDID to determine
the correct panel_type on some machines.

We split the parsed VBT data (i915->vbt) along the same
boundary. For the moment we just hoist all the panel
specific stuff into connector->panel.vbt since that seems
like the most convenient place for eg. the backlight code.

TODO: Lot's of cleanup to be done in the future. Eg. most of
the DSI stuff could probably be eliminated entirely and just
parsed on demand during DSI init.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  23 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 371 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_bios.h     |   5 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   1 -
 .../drm/i915/display/intel_display_types.h    |  69 ++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  21 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 .../drm/i915/display/intel_dp_aux_backlight.c |   6 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   3 -
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  56 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  30 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  14 +-
 drivers/gpu/drm/i915/i915_drv.h               |  63 ---
 21 files changed, 391 insertions(+), 331 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 19bf717fd4cb..2798c4af0c6d 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1862,7 +1862,8 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
+	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
 	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
 	u32 ths_prepare_ns, tclk_trail_ns;
@@ -2049,6 +2050,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
+	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
@@ -2062,13 +2065,13 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
-	if (dev_priv->vbt.dsi.config->dual_link)
+	if (intel_connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_B);
 	else
 		intel_dsi->ports = BIT(port);
 
-	intel_dsi->dcs_backlight_ports = dev_priv->vbt.dsi.bl_ports;
-	intel_dsi->dcs_cabc_ports = dev_priv->vbt.dsi.cabc_ports;
+	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
+	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		struct intel_dsi_host *host;
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index c8e1fc53a881..68513206a66a 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1159,9 +1159,10 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * mul);
 }
 
-static u16 get_vbt_pwm_freq(struct drm_i915_private *dev_priv)
+static u16 get_vbt_pwm_freq(struct intel_connector *connector)
 {
-	u16 pwm_freq_hz = dev_priv->vbt.backlight.pwm_freq_hz;
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	u16 pwm_freq_hz = connector->panel.vbt.backlight.pwm_freq_hz;
 
 	if (pwm_freq_hz) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1181,7 +1182,7 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u16 pwm_freq_hz = get_vbt_pwm_freq(dev_priv);
+	u16 pwm_freq_hz = get_vbt_pwm_freq(connector);
 	u32 pwm;
 
 	if (!panel->backlight.pwm_funcs->hz_to_pwm) {
@@ -1218,11 +1219,11 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 	 * against this by letting the minimum be at most (arbitrarily chosen)
 	 * 25% of the max.
 	 */
-	min = clamp_t(int, dev_priv->vbt.backlight.min_brightness, 0, 64);
-	if (min != dev_priv->vbt.backlight.min_brightness) {
+	min = clamp_t(int, connector->panel.vbt.backlight.min_brightness, 0, 64);
+	if (min != connector->panel.vbt.backlight.min_brightness) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "clamping VBT min backlight %d/255 to %d/255\n",
-			    dev_priv->vbt.backlight.min_brightness, min);
+			    connector->panel.vbt.backlight.min_brightness, min);
 	}
 
 	/* vbt value is a coefficient in range [0..255] */
@@ -1411,7 +1412,7 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl, val;
 
-	panel->backlight.controller = dev_priv->vbt.backlight.controller;
+	panel->backlight.controller = connector->panel.vbt.backlight.controller;
 
 	pwm_ctl = intel_de_read(dev_priv,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
@@ -1484,7 +1485,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 	u32 level;
 
 	/* Get the right PWM chip for DSI backlight according to VBT */
-	if (dev_priv->vbt.dsi.config->pwm_blc == PPS_BLC_PMIC) {
+	if (connector->panel.vbt.dsi.config->pwm_blc == PPS_BLC_PMIC) {
 		panel->backlight.pwm = pwm_get(dev->dev, "pwm_pmic_backlight");
 		desc = "PMIC";
 	} else {
@@ -1513,11 +1514,11 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 
 		drm_dbg_kms(&dev_priv->drm, "PWM already enabled at freq %ld, VBT freq %d, level %d\n",
 			    NSEC_PER_SEC / (unsigned long)panel->backlight.pwm_state.period,
-			    get_vbt_pwm_freq(dev_priv), level);
+			    get_vbt_pwm_freq(connector), level);
 	} else {
 		/* Set period from VBT frequency, leave other settings at 0. */
 		panel->backlight.pwm_state.period =
-			NSEC_PER_SEC / get_vbt_pwm_freq(dev_priv);
+			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
 	}
 
 	drm_info(&dev_priv->drm, "Using %s PWM for LCD backlight control\n",
@@ -1602,7 +1603,7 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 	struct intel_panel *panel = &connector->panel;
 	int ret;
 
-	if (!dev_priv->vbt.backlight.present) {
+	if (!connector->panel.vbt.backlight.present) {
 		if (dev_priv->quirks & QUIRK_BACKLIGHT_PRESENT) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "no backlight present per VBT, but present per quirk\n");
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b1e34b02fdc2..68cff9ddd729 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -675,7 +675,8 @@ static int get_panel_type(struct drm_i915_private *i915)
 
 /* Parse general panel options */
 static void
-parse_panel_options(struct drm_i915_private *i915)
+parse_panel_options(struct drm_i915_private *i915,
+		    struct intel_panel *panel)
 {
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
@@ -685,11 +686,11 @@ parse_panel_options(struct drm_i915_private *i915)
 	if (!lvds_options)
 		return;
 
-	i915->vbt.lvds_dither = lvds_options->pixel_dither;
+	panel->vbt.lvds_dither = lvds_options->pixel_dither;
 
 	panel_type = get_panel_type(i915);
 
-	i915->vbt.panel_type = panel_type;
+	panel->vbt.panel_type = panel_type;
 
 	drrs_mode = (lvds_options->dps_panel_type_bits
 				>> (panel_type * 2)) & MODE_MASK;
@@ -700,16 +701,16 @@ parse_panel_options(struct drm_i915_private *i915)
 	 */
 	switch (drrs_mode) {
 	case 0:
-		i915->vbt.drrs_type = DRRS_TYPE_STATIC;
+		panel->vbt.drrs_type = DRRS_TYPE_STATIC;
 		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
 		break;
 	case 2:
-		i915->vbt.drrs_type = DRRS_TYPE_SEAMLESS;
+		panel->vbt.drrs_type = DRRS_TYPE_SEAMLESS;
 		drm_dbg_kms(&i915->drm,
 			    "DRRS supported mode is seamless\n");
 		break;
 	default:
-		i915->vbt.drrs_type = DRRS_TYPE_NONE;
+		panel->vbt.drrs_type = DRRS_TYPE_NONE;
 		drm_dbg_kms(&i915->drm,
 			    "DRRS not supported (VBT input)\n");
 		break;
@@ -718,13 +719,14 @@ parse_panel_options(struct drm_i915_private *i915)
 
 static void
 parse_lfp_panel_dtd(struct drm_i915_private *i915,
+		    struct intel_panel *panel,
 		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
 		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
 {
 	const struct lvds_dvo_timing *panel_dvo_timing;
 	const struct lvds_fp_timing *fp_timing;
 	struct drm_display_mode *panel_fixed_mode;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 
 	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
 					       lvds_lfp_data_ptrs,
@@ -736,7 +738,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 
 	fill_detail_timing_data(panel_fixed_mode, panel_dvo_timing);
 
-	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
+	panel->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
 		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n",
@@ -749,20 +751,21 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	/* check the resolution, just to be sure */
 	if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
 	    fp_timing->y_res == panel_fixed_mode->vdisplay) {
-		i915->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
+		panel->vbt.bios_lvds_val = fp_timing->lvds_reg_val;
 		drm_dbg_kms(&i915->drm,
 			    "VBT initial LVDS value %x\n",
-			    i915->vbt.bios_lvds_val);
+			    panel->vbt.bios_lvds_val);
 	}
 }
 
 static void
-parse_lfp_data(struct drm_i915_private *i915)
+parse_lfp_data(struct drm_i915_private *i915,
+	       struct intel_panel *panel)
 {
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
@@ -772,24 +775,25 @@ parse_lfp_data(struct drm_i915_private *i915)
 	if (!data)
 		return;
 
-	if (!i915->vbt.lfp_lvds_vbt_mode)
-		parse_lfp_panel_dtd(i915, data, ptrs);
+	if (!panel->vbt.lfp_lvds_vbt_mode)
+		parse_lfp_panel_dtd(i915, panel, data, ptrs);
 
 	tail = get_lfp_data_tail(data, ptrs);
 	if (!tail)
 		return;
 
 	if (i915->vbt.version >= 188) {
-		i915->vbt.seamless_drrs_min_refresh_rate =
+		panel->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
 		drm_dbg_kms(&i915->drm,
 			    "Seamless DRRS min refresh rate: %d Hz\n",
-			    i915->vbt.seamless_drrs_min_refresh_rate);
+			    panel->vbt.seamless_drrs_min_refresh_rate);
 	}
 }
 
 static void
-parse_generic_dtd(struct drm_i915_private *i915)
+parse_generic_dtd(struct drm_i915_private *i915,
+		  struct intel_panel *panel)
 {
 	const struct bdb_generic_dtd *generic_dtd;
 	const struct generic_dtd_entry *dtd;
@@ -824,14 +828,14 @@ parse_generic_dtd(struct drm_i915_private *i915)
 
 	num_dtd = (get_blocksize(generic_dtd) -
 		   sizeof(struct bdb_generic_dtd)) / generic_dtd->gdtd_size;
-	if (i915->vbt.panel_type >= num_dtd) {
+	if (panel->vbt.panel_type >= num_dtd) {
 		drm_err(&i915->drm,
 			"Panel type %d not found in table of %d DTD's\n",
-			i915->vbt.panel_type, num_dtd);
+			panel->vbt.panel_type, num_dtd);
 		return;
 	}
 
-	dtd = &generic_dtd->dtd[i915->vbt.panel_type];
+	dtd = &generic_dtd->dtd[panel->vbt.panel_type];
 
 	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
 	if (!panel_fixed_mode)
@@ -874,15 +878,16 @@ parse_generic_dtd(struct drm_i915_private *i915)
 		    "Found panel mode in BIOS VBT generic dtd table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
-	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
+	panel->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 }
 
 static void
-parse_lfp_backlight(struct drm_i915_private *i915)
+parse_lfp_backlight(struct drm_i915_private *i915,
+		    struct intel_panel *panel)
 {
 	const struct bdb_lfp_backlight_data *backlight_data;
 	const struct lfp_backlight_data_entry *entry;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 	u16 level;
 
 	backlight_data = find_section(i915, BDB_LVDS_BACKLIGHT);
@@ -898,15 +903,15 @@ parse_lfp_backlight(struct drm_i915_private *i915)
 
 	entry = &backlight_data->data[panel_type];
 
-	i915->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
-	if (!i915->vbt.backlight.present) {
+	panel->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
+	if (!panel->vbt.backlight.present) {
 		drm_dbg_kms(&i915->drm,
 			    "PWM backlight not present in VBT (type %u)\n",
 			    entry->type);
 		return;
 	}
 
-	i915->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
+	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 	if (i915->vbt.version >= 191) {
 		size_t exp_size;
 
@@ -921,13 +926,13 @@ parse_lfp_backlight(struct drm_i915_private *i915)
 			const struct lfp_backlight_control_method *method;
 
 			method = &backlight_data->backlight_control[panel_type];
-			i915->vbt.backlight.type = method->type;
-			i915->vbt.backlight.controller = method->controller;
+			panel->vbt.backlight.type = method->type;
+			panel->vbt.backlight.controller = method->controller;
 		}
 	}
 
-	i915->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
-	i915->vbt.backlight.active_low_pwm = entry->active_low_pwm;
+	panel->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
+	panel->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 
 	if (i915->vbt.version >= 234) {
 		u16 min_level;
@@ -948,28 +953,29 @@ parse_lfp_backlight(struct drm_i915_private *i915)
 			drm_warn(&i915->drm, "Brightness min level > 255\n");
 			level = 255;
 		}
-		i915->vbt.backlight.min_brightness = min_level;
+		panel->vbt.backlight.min_brightness = min_level;
 
-		i915->vbt.backlight.brightness_precision_bits =
+		panel->vbt.backlight.brightness_precision_bits =
 			backlight_data->brightness_precision_bits[panel_type];
 	} else {
 		level = backlight_data->level[panel_type];
-		i915->vbt.backlight.min_brightness = entry->min_brightness;
+		panel->vbt.backlight.min_brightness = entry->min_brightness;
 	}
 
 	drm_dbg_kms(&i915->drm,
 		    "VBT backlight PWM modulation frequency %u Hz, "
 		    "active %s, min brightness %u, level %u, controller %u\n",
-		    i915->vbt.backlight.pwm_freq_hz,
-		    i915->vbt.backlight.active_low_pwm ? "low" : "high",
-		    i915->vbt.backlight.min_brightness,
+		    panel->vbt.backlight.pwm_freq_hz,
+		    panel->vbt.backlight.active_low_pwm ? "low" : "high",
+		    panel->vbt.backlight.min_brightness,
 		    level,
-		    i915->vbt.backlight.controller);
+		    panel->vbt.backlight.controller);
 }
 
 /* Try to find sdvo panel data */
 static void
-parse_sdvo_panel_data(struct drm_i915_private *i915)
+parse_sdvo_panel_data(struct drm_i915_private *i915,
+		      struct intel_panel *panel)
 {
 	const struct bdb_sdvo_panel_dtds *dtds;
 	struct drm_display_mode *panel_fixed_mode;
@@ -1002,7 +1008,7 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
 
 	fill_detail_timing_data(panel_fixed_mode, &dtds->dtds[index]);
 
-	i915->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;
+	panel->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
 		    "Found SDVO panel mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
@@ -1184,7 +1190,8 @@ parse_driver_features(struct drm_i915_private *i915)
 }
 
 static void
-parse_panel_driver_features(struct drm_i915_private *i915)
+parse_panel_driver_features(struct drm_i915_private *i915,
+			    struct intel_panel *panel)
 {
 	const struct bdb_driver_features *driver;
 
@@ -1202,17 +1209,18 @@ parse_panel_driver_features(struct drm_i915_private *i915)
 		 * driver->drrs_enabled=false
 		 */
 		if (!driver->drrs_enabled)
-			i915->vbt.drrs_type = DRRS_TYPE_NONE;
+			panel->vbt.drrs_type = DRRS_TYPE_NONE;
 
-		i915->vbt.psr.enable = driver->psr_enabled;
+		panel->vbt.psr.enable = driver->psr_enabled;
 	}
 }
 
 static void
-parse_power_conservation_features(struct drm_i915_private *i915)
+parse_power_conservation_features(struct drm_i915_private *i915,
+				  struct intel_panel *panel)
 {
 	const struct bdb_lfp_power *power;
-	u8 panel_type = i915->vbt.panel_type;
+	u8 panel_type = panel->vbt.panel_type;
 
 	if (i915->vbt.version < 228)
 		return;
@@ -1221,7 +1229,7 @@ parse_power_conservation_features(struct drm_i915_private *i915)
 	if (!power)
 		return;
 
-	i915->vbt.psr.enable = power->psr & BIT(panel_type);
+	panel->vbt.psr.enable = power->psr & BIT(panel_type);
 
 	/*
 	 * If DRRS is not supported, drrs_type has to be set to 0.
@@ -1230,19 +1238,20 @@ parse_power_conservation_features(struct drm_i915_private *i915)
 	 * power->drrs & BIT(panel_type)=false
 	 */
 	if (!(power->drrs & BIT(panel_type)))
-		i915->vbt.drrs_type = DRRS_TYPE_NONE;
+		panel->vbt.drrs_type = DRRS_TYPE_NONE;
 
 	if (i915->vbt.version >= 232)
-		i915->vbt.edp.hobl = power->hobl & BIT(panel_type);
+		panel->vbt.edp.hobl = power->hobl & BIT(panel_type);
 }
 
 static void
-parse_edp(struct drm_i915_private *i915)
+parse_edp(struct drm_i915_private *i915,
+	  struct intel_panel *panel)
 {
 	const struct bdb_edp *edp;
 	const struct edp_power_seq *edp_pps;
 	const struct edp_fast_link_params *edp_link_params;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 
 	edp = find_section(i915, BDB_EDP);
 	if (!edp)
@@ -1250,13 +1259,13 @@ parse_edp(struct drm_i915_private *i915)
 
 	switch ((edp->color_depth >> (panel_type * 2)) & 3) {
 	case EDP_18BPP:
-		i915->vbt.edp.bpp = 18;
+		panel->vbt.edp.bpp = 18;
 		break;
 	case EDP_24BPP:
-		i915->vbt.edp.bpp = 24;
+		panel->vbt.edp.bpp = 24;
 		break;
 	case EDP_30BPP:
-		i915->vbt.edp.bpp = 30;
+		panel->vbt.edp.bpp = 30;
 		break;
 	}
 
@@ -1264,14 +1273,14 @@ parse_edp(struct drm_i915_private *i915)
 	edp_pps = &edp->power_seqs[panel_type];
 	edp_link_params = &edp->fast_link_params[panel_type];
 
-	i915->vbt.edp.pps = *edp_pps;
+	panel->vbt.edp.pps = *edp_pps;
 
 	switch (edp_link_params->rate) {
 	case EDP_RATE_1_62:
-		i915->vbt.edp.rate = DP_LINK_BW_1_62;
+		panel->vbt.edp.rate = DP_LINK_BW_1_62;
 		break;
 	case EDP_RATE_2_7:
-		i915->vbt.edp.rate = DP_LINK_BW_2_7;
+		panel->vbt.edp.rate = DP_LINK_BW_2_7;
 		break;
 	default:
 		drm_dbg_kms(&i915->drm,
@@ -1282,13 +1291,13 @@ parse_edp(struct drm_i915_private *i915)
 
 	switch (edp_link_params->lanes) {
 	case EDP_LANE_1:
-		i915->vbt.edp.lanes = 1;
+		panel->vbt.edp.lanes = 1;
 		break;
 	case EDP_LANE_2:
-		i915->vbt.edp.lanes = 2;
+		panel->vbt.edp.lanes = 2;
 		break;
 	case EDP_LANE_4:
-		i915->vbt.edp.lanes = 4;
+		panel->vbt.edp.lanes = 4;
 		break;
 	default:
 		drm_dbg_kms(&i915->drm,
@@ -1299,16 +1308,16 @@ parse_edp(struct drm_i915_private *i915)
 
 	switch (edp_link_params->preemphasis) {
 	case EDP_PREEMPHASIS_NONE:
-		i915->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_0;
+		panel->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_0;
 		break;
 	case EDP_PREEMPHASIS_3_5dB:
-		i915->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_1;
+		panel->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_1;
 		break;
 	case EDP_PREEMPHASIS_6dB:
-		i915->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_2;
+		panel->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_2;
 		break;
 	case EDP_PREEMPHASIS_9_5dB:
-		i915->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_3;
+		panel->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_3;
 		break;
 	default:
 		drm_dbg_kms(&i915->drm,
@@ -1319,16 +1328,16 @@ parse_edp(struct drm_i915_private *i915)
 
 	switch (edp_link_params->vswing) {
 	case EDP_VSWING_0_4V:
-		i915->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
+		panel->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
 		break;
 	case EDP_VSWING_0_6V:
-		i915->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
+		panel->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
 		break;
 	case EDP_VSWING_0_8V:
-		i915->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
+		panel->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
 		break;
 	case EDP_VSWING_1_2V:
-		i915->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
+		panel->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
 		break;
 	default:
 		drm_dbg_kms(&i915->drm,
@@ -1342,24 +1351,25 @@ parse_edp(struct drm_i915_private *i915)
 
 		/* Don't read from VBT if module parameter has valid value*/
 		if (i915->params.edp_vswing) {
-			i915->vbt.edp.low_vswing =
+			panel->vbt.edp.low_vswing =
 				i915->params.edp_vswing == 1;
 		} else {
 			vswing = (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
-			i915->vbt.edp.low_vswing = vswing == 0;
+			panel->vbt.edp.low_vswing = vswing == 0;
 		}
 	}
 
-	i915->vbt.edp.drrs_msa_timing_delay =
+	panel->vbt.edp.drrs_msa_timing_delay =
 		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
 }
 
 static void
-parse_psr(struct drm_i915_private *i915)
+parse_psr(struct drm_i915_private *i915,
+	  struct intel_panel *panel)
 {
 	const struct bdb_psr *psr;
 	const struct psr_table *psr_table;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 
 	psr = find_section(i915, BDB_PSR);
 	if (!psr) {
@@ -1369,11 +1379,11 @@ parse_psr(struct drm_i915_private *i915)
 
 	psr_table = &psr->psr_table[panel_type];
 
-	i915->vbt.psr.full_link = psr_table->full_link;
-	i915->vbt.psr.require_aux_wakeup = psr_table->require_aux_to_wakeup;
+	panel->vbt.psr.full_link = psr_table->full_link;
+	panel->vbt.psr.require_aux_wakeup = psr_table->require_aux_to_wakeup;
 
 	/* Allowed VBT values goes from 0 to 15 */
-	i915->vbt.psr.idle_frames = psr_table->idle_frames < 0 ? 0 :
+	panel->vbt.psr.idle_frames = psr_table->idle_frames < 0 ? 0 :
 		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
 
 	/*
@@ -1384,13 +1394,13 @@ parse_psr(struct drm_i915_private *i915)
 	    (DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915))) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
-			i915->vbt.psr.tp1_wakeup_time_us = 500;
+			panel->vbt.psr.tp1_wakeup_time_us = 500;
 			break;
 		case 1:
-			i915->vbt.psr.tp1_wakeup_time_us = 100;
+			panel->vbt.psr.tp1_wakeup_time_us = 100;
 			break;
 		case 3:
-			i915->vbt.psr.tp1_wakeup_time_us = 0;
+			panel->vbt.psr.tp1_wakeup_time_us = 0;
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
@@ -1398,19 +1408,19 @@ parse_psr(struct drm_i915_private *i915)
 				    psr_table->tp1_wakeup_time);
 			fallthrough;
 		case 2:
-			i915->vbt.psr.tp1_wakeup_time_us = 2500;
+			panel->vbt.psr.tp1_wakeup_time_us = 2500;
 			break;
 		}
 
 		switch (psr_table->tp2_tp3_wakeup_time) {
 		case 0:
-			i915->vbt.psr.tp2_tp3_wakeup_time_us = 500;
+			panel->vbt.psr.tp2_tp3_wakeup_time_us = 500;
 			break;
 		case 1:
-			i915->vbt.psr.tp2_tp3_wakeup_time_us = 100;
+			panel->vbt.psr.tp2_tp3_wakeup_time_us = 100;
 			break;
 		case 3:
-			i915->vbt.psr.tp2_tp3_wakeup_time_us = 0;
+			panel->vbt.psr.tp2_tp3_wakeup_time_us = 0;
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
@@ -1418,12 +1428,12 @@ parse_psr(struct drm_i915_private *i915)
 				    psr_table->tp2_tp3_wakeup_time);
 			fallthrough;
 		case 2:
-			i915->vbt.psr.tp2_tp3_wakeup_time_us = 2500;
+			panel->vbt.psr.tp2_tp3_wakeup_time_us = 2500;
 		break;
 		}
 	} else {
-		i915->vbt.psr.tp1_wakeup_time_us = psr_table->tp1_wakeup_time * 100;
-		i915->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
+		panel->vbt.psr.tp1_wakeup_time_us = psr_table->tp1_wakeup_time * 100;
+		panel->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 	}
 
 	if (i915->vbt.version >= 226) {
@@ -1445,62 +1455,64 @@ parse_psr(struct drm_i915_private *i915)
 			wakeup_time = 2500;
 			break;
 		}
-		i915->vbt.psr.psr2_tp2_tp3_wakeup_time_us = wakeup_time;
+		panel->vbt.psr.psr2_tp2_tp3_wakeup_time_us = wakeup_time;
 	} else {
 		/* Reusing PSR1 wakeup time for PSR2 in older VBTs */
-		i915->vbt.psr.psr2_tp2_tp3_wakeup_time_us = i915->vbt.psr.tp2_tp3_wakeup_time_us;
+		panel->vbt.psr.psr2_tp2_tp3_wakeup_time_us = panel->vbt.psr.tp2_tp3_wakeup_time_us;
 	}
 }
 
 static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
-				      u16 version, enum port port)
+				      struct intel_panel *panel,
+				      enum port port)
 {
-	if (!i915->vbt.dsi.config->dual_link || version < 197) {
-		i915->vbt.dsi.bl_ports = BIT(port);
-		if (i915->vbt.dsi.config->cabc_supported)
-			i915->vbt.dsi.cabc_ports = BIT(port);
+	if (!panel->vbt.dsi.config->dual_link || i915->vbt.version < 197) {
+		panel->vbt.dsi.bl_ports = BIT(port);
+		if (panel->vbt.dsi.config->cabc_supported)
+			panel->vbt.dsi.cabc_ports = BIT(port);
 
 		return;
 	}
 
-	switch (i915->vbt.dsi.config->dl_dcs_backlight_ports) {
+	switch (panel->vbt.dsi.config->dl_dcs_backlight_ports) {
 	case DL_DCS_PORT_A:
-		i915->vbt.dsi.bl_ports = BIT(PORT_A);
+		panel->vbt.dsi.bl_ports = BIT(PORT_A);
 		break;
 	case DL_DCS_PORT_C:
-		i915->vbt.dsi.bl_ports = BIT(PORT_C);
+		panel->vbt.dsi.bl_ports = BIT(PORT_C);
 		break;
 	default:
 	case DL_DCS_PORT_A_AND_C:
-		i915->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(PORT_C);
+		panel->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(PORT_C);
 		break;
 	}
 
-	if (!i915->vbt.dsi.config->cabc_supported)
+	if (!panel->vbt.dsi.config->cabc_supported)
 		return;
 
-	switch (i915->vbt.dsi.config->dl_dcs_cabc_ports) {
+	switch (panel->vbt.dsi.config->dl_dcs_cabc_ports) {
 	case DL_DCS_PORT_A:
-		i915->vbt.dsi.cabc_ports = BIT(PORT_A);
+		panel->vbt.dsi.cabc_ports = BIT(PORT_A);
 		break;
 	case DL_DCS_PORT_C:
-		i915->vbt.dsi.cabc_ports = BIT(PORT_C);
+		panel->vbt.dsi.cabc_ports = BIT(PORT_C);
 		break;
 	default:
 	case DL_DCS_PORT_A_AND_C:
-		i915->vbt.dsi.cabc_ports =
+		panel->vbt.dsi.cabc_ports =
 					BIT(PORT_A) | BIT(PORT_C);
 		break;
 	}
 }
 
 static void
-parse_mipi_config(struct drm_i915_private *i915)
+parse_mipi_config(struct drm_i915_private *i915,
+		  struct intel_panel *panel)
 {
 	const struct bdb_mipi_config *start;
 	const struct mipi_config *config;
 	const struct mipi_pps_data *pps;
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 	enum port port;
 
 	/* parse MIPI blocks only if LFP type is MIPI */
@@ -1508,7 +1520,7 @@ parse_mipi_config(struct drm_i915_private *i915)
 		return;
 
 	/* Initialize this to undefined indicating no generic MIPI support */
-	i915->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
+	panel->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
 
 	/* Block #40 is already parsed and panel_fixed_mode is
 	 * stored in i915->lfp_lvds_vbt_mode
@@ -1535,17 +1547,17 @@ parse_mipi_config(struct drm_i915_private *i915)
 	pps = &start->pps[panel_type];
 
 	/* store as of now full data. Trim when we realise all is not needed */
-	i915->vbt.dsi.config = kmemdup(config, sizeof(struct mipi_config), GFP_KERNEL);
-	if (!i915->vbt.dsi.config)
+	panel->vbt.dsi.config = kmemdup(config, sizeof(struct mipi_config), GFP_KERNEL);
+	if (!panel->vbt.dsi.config)
 		return;
 
-	i915->vbt.dsi.pps = kmemdup(pps, sizeof(struct mipi_pps_data), GFP_KERNEL);
-	if (!i915->vbt.dsi.pps) {
-		kfree(i915->vbt.dsi.config);
+	panel->vbt.dsi.pps = kmemdup(pps, sizeof(struct mipi_pps_data), GFP_KERNEL);
+	if (!panel->vbt.dsi.pps) {
+		kfree(panel->vbt.dsi.config);
 		return;
 	}
 
-	parse_dsi_backlight_ports(i915, i915->vbt.version, port);
+	parse_dsi_backlight_ports(i915, panel, port);
 
 	/* FIXME is the 90 vs. 270 correct? */
 	switch (config->rotation) {
@@ -1554,25 +1566,25 @@ parse_mipi_config(struct drm_i915_private *i915)
 		 * Most (all?) VBTs claim 0 degrees despite having
 		 * an upside down panel, thus we do not trust this.
 		 */
-		i915->vbt.dsi.orientation =
+		panel->vbt.dsi.orientation =
 			DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 		break;
 	case ENABLE_ROTATION_90:
-		i915->vbt.dsi.orientation =
+		panel->vbt.dsi.orientation =
 			DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
 		break;
 	case ENABLE_ROTATION_180:
-		i915->vbt.dsi.orientation =
+		panel->vbt.dsi.orientation =
 			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
 		break;
 	case ENABLE_ROTATION_270:
-		i915->vbt.dsi.orientation =
+		panel->vbt.dsi.orientation =
 			DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
 		break;
 	}
 
 	/* We have mandatory mipi config blocks. Initialize as generic panel */
-	i915->vbt.dsi.panel_id = MIPI_DSI_GENERIC_PANEL_ID;
+	panel->vbt.dsi.panel_id = MIPI_DSI_GENERIC_PANEL_ID;
 }
 
 /* Find the sequence block and size for the given panel. */
@@ -1735,13 +1747,14 @@ static int goto_next_sequence_v3(const u8 *data, int index, int total)
  * Get len of pre-fixed deassert fragment from a v1 init OTP sequence,
  * skip all delay + gpio operands and stop at the first DSI packet op.
  */
-static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915)
+static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915,
+					      struct intel_panel *panel)
 {
-	const u8 *data = i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
+	const u8 *data = panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
 	int index, len;
 
 	if (drm_WARN_ON(&i915->drm,
-			!data || i915->vbt.dsi.seq_version != 1))
+			!data || panel->vbt.dsi.seq_version != 1))
 		return 0;
 
 	/* index = 1 to skip sequence byte */
@@ -1769,7 +1782,8 @@ static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915)
  * these devices we split the init OTP sequence into a deassert sequence and
  * the actual init OTP part.
  */
-static void fixup_mipi_sequences(struct drm_i915_private *i915)
+static void fixup_mipi_sequences(struct drm_i915_private *i915,
+				 struct intel_panel *panel)
 {
 	u8 *init_otp;
 	int len;
@@ -1779,18 +1793,18 @@ static void fixup_mipi_sequences(struct drm_i915_private *i915)
 		return;
 
 	/* Limit this to v1 vid-mode sequences */
-	if (i915->vbt.dsi.config->is_cmd_mode ||
-	    i915->vbt.dsi.seq_version != 1)
+	if (panel->vbt.dsi.config->is_cmd_mode ||
+	    panel->vbt.dsi.seq_version != 1)
 		return;
 
 	/* Only do this if there are otp and assert seqs and no deassert seq */
-	if (!i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] ||
-	    !i915->vbt.dsi.sequence[MIPI_SEQ_ASSERT_RESET] ||
-	    i915->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET])
+	if (!panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] ||
+	    !panel->vbt.dsi.sequence[MIPI_SEQ_ASSERT_RESET] ||
+	    panel->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET])
 		return;
 
 	/* The deassert-sequence ends at the first DSI packet */
-	len = get_init_otp_deassert_fragment_len(i915);
+	len = get_init_otp_deassert_fragment_len(i915, panel);
 	if (!len)
 		return;
 
@@ -1798,25 +1812,26 @@ static void fixup_mipi_sequences(struct drm_i915_private *i915)
 		    "Using init OTP fragment to deassert reset\n");
 
 	/* Copy the fragment, update seq byte and terminate it */
-	init_otp = (u8 *)i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
-	i915->vbt.dsi.deassert_seq = kmemdup(init_otp, len + 1, GFP_KERNEL);
-	if (!i915->vbt.dsi.deassert_seq)
+	init_otp = (u8 *)panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
+	panel->vbt.dsi.deassert_seq = kmemdup(init_otp, len + 1, GFP_KERNEL);
+	if (!panel->vbt.dsi.deassert_seq)
 		return;
-	i915->vbt.dsi.deassert_seq[0] = MIPI_SEQ_DEASSERT_RESET;
-	i915->vbt.dsi.deassert_seq[len] = MIPI_SEQ_ELEM_END;
+	panel->vbt.dsi.deassert_seq[0] = MIPI_SEQ_DEASSERT_RESET;
+	panel->vbt.dsi.deassert_seq[len] = MIPI_SEQ_ELEM_END;
 	/* Use the copy for deassert */
-	i915->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET] =
-		i915->vbt.dsi.deassert_seq;
+	panel->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET] =
+		panel->vbt.dsi.deassert_seq;
 	/* Replace the last byte of the fragment with init OTP seq byte */
 	init_otp[len - 1] = MIPI_SEQ_INIT_OTP;
 	/* And make MIPI_MIPI_SEQ_INIT_OTP point to it */
-	i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] = init_otp + len - 1;
+	panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] = init_otp + len - 1;
 }
 
 static void
-parse_mipi_sequence(struct drm_i915_private *i915)
+parse_mipi_sequence(struct drm_i915_private *i915,
+		    struct intel_panel *panel)
 {
-	int panel_type = i915->vbt.panel_type;
+	int panel_type = panel->vbt.panel_type;
 	const struct bdb_mipi_sequence *sequence;
 	const u8 *seq_data;
 	u32 seq_size;
@@ -1824,7 +1839,7 @@ parse_mipi_sequence(struct drm_i915_private *i915)
 	int index = 0;
 
 	/* Only our generic panel driver uses the sequence block. */
-	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
+	if (panel->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
 
 	sequence = find_section(i915, BDB_MIPI_SEQUENCE);
@@ -1870,7 +1885,7 @@ parse_mipi_sequence(struct drm_i915_private *i915)
 			drm_dbg_kms(&i915->drm,
 				    "Unsupported sequence %u\n", seq_id);
 
-		i915->vbt.dsi.sequence[seq_id] = data + index;
+		panel->vbt.dsi.sequence[seq_id] = data + index;
 
 		if (sequence->version >= 3)
 			index = goto_next_sequence_v3(data, index, seq_size);
@@ -1883,18 +1898,18 @@ parse_mipi_sequence(struct drm_i915_private *i915)
 		}
 	}
 
-	i915->vbt.dsi.data = data;
-	i915->vbt.dsi.size = seq_size;
-	i915->vbt.dsi.seq_version = sequence->version;
+	panel->vbt.dsi.data = data;
+	panel->vbt.dsi.size = seq_size;
+	panel->vbt.dsi.seq_version = sequence->version;
 
-	fixup_mipi_sequences(i915);
+	fixup_mipi_sequences(i915, panel);
 
 	drm_dbg(&i915->drm, "MIPI related VBT parsing complete\n");
 	return;
 
 err:
 	kfree(data);
-	memset(i915->vbt.dsi.sequence, 0, sizeof(i915->vbt.dsi.sequence));
+	memset(panel->vbt.dsi.sequence, 0, sizeof(panel->vbt.dsi.sequence));
 }
 
 static void
@@ -2648,15 +2663,6 @@ init_vbt_defaults(struct drm_i915_private *i915)
 {
 	i915->vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
 
-	/* Default to having backlight */
-	i915->vbt.backlight.present = true;
-
-	/* LFP panel data */
-	i915->vbt.lvds_dither = 1;
-
-	/* SDVO panel data */
-	i915->vbt.sdvo_lvds_vbt_mode = NULL;
-
 	/* general features */
 	i915->vbt.int_tv_support = 1;
 	i915->vbt.int_crt_support = 1;
@@ -2676,6 +2682,17 @@ init_vbt_defaults(struct drm_i915_private *i915)
 		    i915->vbt.lvds_ssc_freq);
 }
 
+/* Common defaults which may be overridden by VBT. */
+static void
+init_vbt_panel_defaults(struct intel_panel *panel)
+{
+	/* Default to having backlight */
+	panel->vbt.backlight.present = true;
+
+	/* LFP panel data */
+	panel->vbt.lvds_dither = true;
+}
+
 /* Defaults to initialize only if there is no VBT. */
 static void
 init_vbt_missing_defaults(struct drm_i915_private *i915)
@@ -2981,19 +2998,22 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
-void intel_bios_init_panel(struct drm_i915_private *i915)
+void intel_bios_init_panel(struct drm_i915_private *i915,
+			   struct intel_panel *panel)
 {
-	parse_panel_options(i915);
-	parse_generic_dtd(i915);
-	parse_lfp_data(i915);
-	parse_lfp_backlight(i915);
-	parse_sdvo_panel_data(i915);
-	parse_panel_driver_features(i915);
-	parse_power_conservation_features(i915);
-	parse_edp(i915);
-	parse_psr(i915);
-	parse_mipi_config(i915);
-	parse_mipi_sequence(i915);
+	init_vbt_panel_defaults(panel);
+
+	parse_panel_options(i915, panel);
+	parse_generic_dtd(i915, panel);
+	parse_lfp_data(i915, panel);
+	parse_lfp_backlight(i915, panel);
+	parse_sdvo_panel_data(i915, panel);
+	parse_panel_driver_features(i915, panel);
+	parse_power_conservation_features(i915, panel);
+	parse_edp(i915, panel);
+	parse_psr(i915, panel);
+	parse_mipi_config(i915, panel);
+	parse_mipi_sequence(i915, panel);
 }
 
 /**
@@ -3015,19 +3035,22 @@ void intel_bios_driver_remove(struct drm_i915_private *i915)
 		list_del(&entry->node);
 		kfree(entry);
 	}
+}
 
-	kfree(i915->vbt.sdvo_lvds_vbt_mode);
-	i915->vbt.sdvo_lvds_vbt_mode = NULL;
-	kfree(i915->vbt.lfp_lvds_vbt_mode);
-	i915->vbt.lfp_lvds_vbt_mode = NULL;
-	kfree(i915->vbt.dsi.data);
-	i915->vbt.dsi.data = NULL;
-	kfree(i915->vbt.dsi.pps);
-	i915->vbt.dsi.pps = NULL;
-	kfree(i915->vbt.dsi.config);
-	i915->vbt.dsi.config = NULL;
-	kfree(i915->vbt.dsi.deassert_seq);
-	i915->vbt.dsi.deassert_seq = NULL;
+void intel_bios_fini_panel(struct intel_panel *panel)
+{
+	kfree(panel->vbt.sdvo_lvds_vbt_mode);
+	panel->vbt.sdvo_lvds_vbt_mode = NULL;
+	kfree(panel->vbt.lfp_lvds_vbt_mode);
+	panel->vbt.lfp_lvds_vbt_mode = NULL;
+	kfree(panel->vbt.dsi.data);
+	panel->vbt.dsi.data = NULL;
+	kfree(panel->vbt.dsi.pps);
+	panel->vbt.dsi.pps = NULL;
+	kfree(panel->vbt.dsi.config);
+	panel->vbt.dsi.config = NULL;
+	kfree(panel->vbt.dsi.deassert_seq);
+	panel->vbt.dsi.deassert_seq = NULL;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index c744d75fa435..86129f015718 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -36,6 +36,7 @@ struct drm_i915_private;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
 struct intel_encoder;
+struct intel_panel;
 enum port;
 
 enum intel_backlight_type {
@@ -230,7 +231,9 @@ struct mipi_pps_data {
 } __packed;
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
-void intel_bios_init_panel(struct drm_i915_private *dev_priv);
+void intel_bios_init_panel(struct drm_i915_private *dev_priv,
+			   struct intel_panel *panel);
+void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 85f58dd3df72..b490acd0ab69 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1062,17 +1062,18 @@ bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 
 static bool use_edp_hobl(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
 
-	return i915->vbt.edp.hobl && !intel_dp->hobl_failed;
+	return connector->panel.vbt.edp.hobl && !intel_dp->hobl_failed;
 }
 
 static bool use_edp_low_vswing(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
 
-	return i915->vbt.edp.low_vswing;
+	return connector->panel.vbt.edp.low_vswing;
 }
 
 static const struct intel_ddi_buf_trans *
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e384db157f34..806d50b302ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9580,7 +9580,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
-	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 052ab0a4b329..a27d66fd4383 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -279,6 +279,73 @@ struct intel_panel_bl_funcs {
 	u32 (*hz_to_pwm)(struct intel_connector *connector, u32 hz);
 };
 
+enum drrs_type {
+	DRRS_TYPE_NONE,
+	DRRS_TYPE_STATIC,
+	DRRS_TYPE_SEAMLESS,
+};
+
+struct intel_vbt_panel_data {
+	struct drm_display_mode *lfp_lvds_vbt_mode; /* if any */
+	struct drm_display_mode *sdvo_lvds_vbt_mode; /* if any */
+
+	/* Feature bits */
+	unsigned int panel_type:4;
+	unsigned int lvds_dither:1;
+	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
+
+	u8 seamless_drrs_min_refresh_rate;
+	enum drrs_type drrs_type;
+
+	struct {
+		int rate;
+		int lanes;
+		int preemphasis;
+		int vswing;
+		int bpp;
+		struct edp_power_seq pps;
+		u8 drrs_msa_timing_delay;
+		bool low_vswing;
+		bool initialized;
+		bool hobl;
+	} edp;
+
+	struct {
+		bool enable;
+		bool full_link;
+		bool require_aux_wakeup;
+		int idle_frames;
+		int tp1_wakeup_time_us;
+		int tp2_tp3_wakeup_time_us;
+		int psr2_tp2_tp3_wakeup_time_us;
+	} psr;
+
+	struct {
+		u16 pwm_freq_hz;
+		u16 brightness_precision_bits;
+		bool present;
+		bool active_low_pwm;
+		u8 min_brightness;	/* min_brightness/255 of max */
+		u8 controller;		/* brightness controller number */
+		enum intel_backlight_type type;
+	} backlight;
+
+	/* MIPI DSI */
+	struct {
+		u16 panel_id;
+		struct mipi_config *config;
+		struct mipi_pps_data *pps;
+		u16 bl_ports;
+		u16 cabc_ports;
+		u8 seq_version;
+		u32 size;
+		u8 *data;
+		const u8 *sequence[MIPI_SEQ_MAX];
+		u8 *deassert_seq; /* Used by fixup_mipi_sequences() */
+		enum drm_panel_orientation orientation;
+	} dsi;
+};
+
 struct intel_panel {
 	struct list_head fixed_modes;
 
@@ -318,6 +385,8 @@ struct intel_panel {
 		const struct intel_panel_bl_funcs *pwm_funcs;
 		void (*power)(struct intel_connector *, bool enable);
 	} backlight;
+
+	struct intel_vbt_panel_data vbt;
 };
 
 struct intel_digital_port;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 53615c0ed869..b119a6508f52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1220,11 +1220,12 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	if (intel_dp_is_edp(intel_dp)) {
 		/* Get bpp from vbt only for panels that dont have bpp in edid */
 		if (intel_connector->base.display_info.bpc == 0 &&
-		    dev_priv->vbt.edp.bpp && dev_priv->vbt.edp.bpp < bpp) {
+		    intel_connector->panel.vbt.edp.bpp &&
+		    intel_connector->panel.vbt.edp.bpp < bpp) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "clamping bpp for eDP panel to BIOS-provided %i\n",
-				    dev_priv->vbt.edp.bpp);
-			bpp = dev_priv->vbt.edp.bpp;
+				    intel_connector->panel.vbt.edp.bpp);
+			bpp = intel_connector->panel.vbt.edp.bpp;
 		}
 	}
 
@@ -1880,7 +1881,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	}
 
 	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
-		pipe_config->msa_timing_delay = i915->vbt.edp.drrs_msa_timing_delay;
+		pipe_config->msa_timing_delay = connector->panel.vbt.edp.drrs_msa_timing_delay;
 
 	pipe_config->has_drrs = true;
 
@@ -2713,8 +2714,10 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
 
-	if (dev_priv->vbt.edp.bpp && pipe_bpp > dev_priv->vbt.edp.bpp) {
+	if (connector->panel.vbt.edp.bpp && pipe_bpp > connector->panel.vbt.edp.bpp) {
 		/*
 		 * This is a big fat ugly hack.
 		 *
@@ -2730,8 +2733,8 @@ void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 		 */
 		drm_dbg_kms(&dev_priv->drm,
 			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
-			    pipe_bpp, dev_priv->vbt.edp.bpp);
-		dev_priv->vbt.edp.bpp = pipe_bpp;
+			    pipe_bpp, connector->panel.vbt.edp.bpp);
+		connector->panel.vbt.edp.bpp = pipe_bpp;
 	}
 }
 
@@ -5210,8 +5213,10 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
+	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e794d910df56..a54902c713a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -29,6 +29,7 @@ struct link_config_limits {
 	int min_bpp, max_bpp;
 };
 
+void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct link_config_limits *limits);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index fb6cf30ee628..c92d5bb2326a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -370,7 +370,7 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	int ret;
 
 	ret = drm_edp_backlight_init(&intel_dp->aux, &panel->backlight.edp.vesa.info,
-				     i915->vbt.backlight.pwm_freq_hz, intel_dp->edp_dpcd,
+				     panel->vbt.backlight.pwm_freq_hz, intel_dp->edp_dpcd,
 				     &current_level, &current_mode);
 	if (ret < 0)
 		return ret;
@@ -454,7 +454,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	case INTEL_DP_AUX_BACKLIGHT_OFF:
 		return -ENODEV;
 	case INTEL_DP_AUX_BACKLIGHT_AUTO:
-		switch (i915->vbt.backlight.type) {
+		switch (panel->vbt.backlight.type) {
 		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
 			try_vesa_interface = true;
 			break;
@@ -466,7 +466,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		}
 		break;
 	case INTEL_DP_AUX_BACKLIGHT_ON:
-		if (i915->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
+		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
 			try_intel_interface = true;
 
 		try_vesa_interface = true;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 166caf293f7b..7da4a9cbe4ba 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -217,9 +217,6 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 {
 	struct intel_crtc *crtc;
 
-	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
-		return;
-
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		unsigned int frontbuffer_bits;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 389a8c24cdc1..35e121cd226c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -102,7 +102,7 @@ intel_dsi_get_panel_orientation(struct intel_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	enum drm_panel_orientation orientation;
 
-	orientation = dev_priv->vbt.dsi.orientation;
+	orientation = connector->panel.vbt.dsi.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 7d234429e71e..1bc7118c56a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -160,12 +160,10 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 static int dcs_setup_backlight(struct intel_connector *connector,
 			       enum pipe unused)
 {
-	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_panel *panel = &connector->panel;
 
-	if (dev_priv->vbt.backlight.brightness_precision_bits > 8)
-		panel->backlight.max = (1 << dev_priv->vbt.backlight.brightness_precision_bits) - 1;
+	if (panel->vbt.backlight.brightness_precision_bits > 8)
+		panel->backlight.max = (1 << panel->vbt.backlight.brightness_precision_bits) - 1;
 	else
 		panel->backlight.max = PANEL_PWM_MAX_VALUE;
 
@@ -185,11 +183,10 @@ static const struct intel_panel_bl_funcs dcs_bl_funcs = {
 int intel_dsi_dcs_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct drm_device *dev = intel_connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
 	struct intel_panel *panel = &intel_connector->panel;
 
-	if (dev_priv->vbt.backlight.type != INTEL_BACKLIGHT_DSI_DCS)
+	if (panel->vbt.backlight.type != INTEL_BACKLIGHT_DSI_DCS)
 		return -ENODEV;
 
 	if (drm_WARN_ON(dev, encoder->type != INTEL_OUTPUT_DSI))
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index f370e9c4350d..d36890d0eaa1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -229,9 +229,10 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	return data;
 }
 
-static void vlv_exec_gpio(struct drm_i915_private *dev_priv,
+static void vlv_exec_gpio(struct intel_connector *connector,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct gpio_map *map;
 	u16 pconf0, padval;
 	u32 tmp;
@@ -245,7 +246,7 @@ static void vlv_exec_gpio(struct drm_i915_private *dev_priv,
 
 	map = &vlv_gpio_table[gpio_index];
 
-	if (dev_priv->vbt.dsi.seq_version >= 3) {
+	if (connector->panel.vbt.dsi.seq_version >= 3) {
 		/* XXX: this assumes vlv_gpio_table only has NC GPIOs. */
 		port = IOSF_PORT_GPIO_NC;
 	} else {
@@ -276,14 +277,15 @@ static void vlv_exec_gpio(struct drm_i915_private *dev_priv,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void chv_exec_gpio(struct drm_i915_private *dev_priv,
+static void chv_exec_gpio(struct intel_connector *connector,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u16 cfg0, cfg1;
 	u16 family_num;
 	u8 port;
 
-	if (dev_priv->vbt.dsi.seq_version >= 3) {
+	if (connector->panel.vbt.dsi.seq_version >= 3) {
 		if (gpio_index >= CHV_GPIO_IDX_START_SE) {
 			/* XXX: it's unclear whether 255->57 is part of SE. */
 			gpio_index -= CHV_GPIO_IDX_START_SE;
@@ -329,9 +331,10 @@ static void chv_exec_gpio(struct drm_i915_private *dev_priv,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void bxt_exec_gpio(struct drm_i915_private *dev_priv,
+static void bxt_exec_gpio(struct intel_connector *connector,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	/* XXX: this table is a quick ugly hack. */
 	static struct gpio_desc *bxt_gpio_table[U8_MAX + 1];
 	struct gpio_desc *gpio_desc = bxt_gpio_table[gpio_index];
@@ -355,9 +358,11 @@ static void bxt_exec_gpio(struct drm_i915_private *dev_priv,
 	gpiod_set_value(gpio_desc, value);
 }
 
-static void icl_exec_gpio(struct drm_i915_private *dev_priv,
+static void icl_exec_gpio(struct intel_connector *connector,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+
 	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
 }
 
@@ -365,18 +370,19 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_connector *connector = intel_dsi->attached_connector;
 	u8 gpio_source, gpio_index = 0, gpio_number;
 	bool value;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
-	if (dev_priv->vbt.dsi.seq_version >= 3)
+	if (connector->panel.vbt.dsi.seq_version >= 3)
 		gpio_index = *data++;
 
 	gpio_number = *data++;
 
 	/* gpio source in sequence v2 only */
-	if (dev_priv->vbt.dsi.seq_version == 2)
+	if (connector->panel.vbt.dsi.seq_version == 2)
 		gpio_source = (*data >> 1) & 3;
 	else
 		gpio_source = 0;
@@ -385,13 +391,13 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	value = *data++ & 1;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_exec_gpio(dev_priv, gpio_source, gpio_index, value);
+		icl_exec_gpio(connector, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(dev_priv))
-		vlv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
+		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(dev_priv))
-		chv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
+		chv_exec_gpio(connector, gpio_source, gpio_number, value);
 	else
-		bxt_exec_gpio(dev_priv, gpio_source, gpio_index, value);
+		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
 
 	return data;
 }
@@ -574,14 +580,15 @@ static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 			       enum mipi_seq seq_id)
 {
 	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct intel_connector *connector = intel_dsi->attached_connector;
 	const u8 *data;
 	fn_mipi_elem_exec mipi_elem_exec;
 
 	if (drm_WARN_ON(&dev_priv->drm,
-			seq_id >= ARRAY_SIZE(dev_priv->vbt.dsi.sequence)))
+			seq_id >= ARRAY_SIZE(connector->panel.vbt.dsi.sequence)))
 		return;
 
-	data = dev_priv->vbt.dsi.sequence[seq_id];
+	data = connector->panel.vbt.dsi.sequence[seq_id];
 	if (!data)
 		return;
 
@@ -594,7 +601,7 @@ static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 	data++;
 
 	/* Skip Size of Sequence. */
-	if (dev_priv->vbt.dsi.seq_version >= 3)
+	if (connector->panel.vbt.dsi.seq_version >= 3)
 		data += 4;
 
 	while (1) {
@@ -610,7 +617,7 @@ static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 			mipi_elem_exec = NULL;
 
 		/* Size of Operation. */
-		if (dev_priv->vbt.dsi.seq_version >= 3)
+		if (connector->panel.vbt.dsi.seq_version >= 3)
 			operation_size = *data++;
 
 		if (mipi_elem_exec) {
@@ -658,10 +665,10 @@ void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
 
 void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct intel_connector *connector = intel_dsi->attached_connector;
 
 	/* For v3 VBTs in vid-mode the delays are part of the VBT sequences */
-	if (is_vid_mode(intel_dsi) && dev_priv->vbt.dsi.seq_version >= 3)
+	if (is_vid_mode(intel_dsi) && connector->panel.vbt.dsi.seq_version >= 3)
 		return;
 
 	msleep(msec);
@@ -723,9 +730,10 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
-	struct mipi_pps_data *pps = dev_priv->vbt.dsi.pps;
-	struct drm_display_mode *mode = dev_priv->vbt.lfp_lvds_vbt_mode;
+	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
+	struct mipi_pps_data *pps = connector->panel.vbt.dsi.pps;
+	struct drm_display_mode *mode = connector->panel.vbt.lfp_lvds_vbt_mode;
 	u16 burst_mode_ratio;
 	enum port port;
 
@@ -861,7 +869,8 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
+	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	enum gpiod_flags flags = panel_is_on ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
 	bool want_backlight_gpio = false;
 	bool want_panel_gpio = false;
@@ -916,7 +925,8 @@ void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
+	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 
 	if (intel_dsi->gpio_panel) {
 		gpiod_put(intel_dsi->gpio_panel);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e8478161f8b9..9f250a70519a 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -809,7 +809,7 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	else
 		val &= ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK);
 	if (val == 0)
-		val = dev_priv->vbt.bios_lvds_val;
+		val = connector->panel.vbt.bios_lvds_val;
 
 	return (val & LVDS_CLKB_POWER_MASK) == LVDS_CLKB_POWER_UP;
 }
@@ -967,9 +967,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
+	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d1d1b59102d6..d055e4118558 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -75,9 +75,8 @@ const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
-	int min_vrefresh = i915->vbt.seamless_drrs_min_refresh_rate;
+	int min_vrefresh = connector->panel.vbt.seamless_drrs_min_refresh_rate;
 	int max_vrefresh = drm_mode_vrefresh(adjusted_mode);
 
 	/* pick the fixed_mode with the lowest refresh rate */
@@ -113,13 +112,11 @@ int intel_panel_get_modes(struct intel_connector *connector)
 
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-
 	if (list_empty(&connector->panel.fixed_modes) ||
 	    list_is_singular(&connector->panel.fixed_modes))
 		return DRRS_TYPE_NONE;
 
-	return i915->vbt.drrs_type;
+	return connector->panel.vbt.drrs_type;
 }
 
 int intel_panel_compute_config(struct intel_connector *connector,
@@ -260,7 +257,7 @@ void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *mode;
 
-	mode = i915->vbt.lfp_lvds_vbt_mode;
+	mode = connector->panel.vbt.lfp_lvds_vbt_mode;
 	if (!mode)
 		return;
 
@@ -274,7 +271,7 @@ void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *mode;
 
-	mode = i915->vbt.sdvo_lvds_vbt_mode;
+	mode = connector->panel.vbt.sdvo_lvds_vbt_mode;
 	if (!mode)
 		return;
 
@@ -639,6 +636,8 @@ void intel_panel_fini(struct intel_connector *connector)
 
 	intel_backlight_destroy(panel);
 
+	intel_bios_fini_panel(panel);
+
 	list_for_each_entry_safe(fixed_mode, next, &panel->fixed_modes, head) {
 		list_del(&fixed_mode->head);
 		drm_mode_destroy(connector->base.dev, fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 04e60ddbcbea..a83f758e85c2 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -209,7 +209,8 @@ static int
 bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int backlight_controller = dev_priv->vbt.backlight.controller;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	int backlight_controller = connector->panel.vbt.backlight.controller;
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
@@ -1189,8 +1190,9 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 				struct edp_power_seq *vbt)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
 
-	*vbt = dev_priv->vbt.edp.pps;
+	*vbt = connector->panel.vbt.edp.pps;
 
 	if (!pps_delays_valid(vbt))
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..195ed9631128 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -399,6 +399,7 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 
 static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = 0;
 
@@ -411,20 +412,20 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 		goto check_tp3_sel;
 	}
 
-	if (dev_priv->vbt.psr.tp1_wakeup_time_us == 0)
+	if (connector->panel.vbt.psr.tp1_wakeup_time_us == 0)
 		val |= EDP_PSR_TP1_TIME_0us;
-	else if (dev_priv->vbt.psr.tp1_wakeup_time_us <= 100)
+	else if (connector->panel.vbt.psr.tp1_wakeup_time_us <= 100)
 		val |= EDP_PSR_TP1_TIME_100us;
-	else if (dev_priv->vbt.psr.tp1_wakeup_time_us <= 500)
+	else if (connector->panel.vbt.psr.tp1_wakeup_time_us <= 500)
 		val |= EDP_PSR_TP1_TIME_500us;
 	else
 		val |= EDP_PSR_TP1_TIME_2500us;
 
-	if (dev_priv->vbt.psr.tp2_tp3_wakeup_time_us == 0)
+	if (connector->panel.vbt.psr.tp2_tp3_wakeup_time_us == 0)
 		val |= EDP_PSR_TP2_TP3_TIME_0us;
-	else if (dev_priv->vbt.psr.tp2_tp3_wakeup_time_us <= 100)
+	else if (connector->panel.vbt.psr.tp2_tp3_wakeup_time_us <= 100)
 		val |= EDP_PSR_TP2_TP3_TIME_100us;
-	else if (dev_priv->vbt.psr.tp2_tp3_wakeup_time_us <= 500)
+	else if (connector->panel.vbt.psr.tp2_tp3_wakeup_time_us <= 500)
 		val |= EDP_PSR_TP2_TP3_TIME_500us;
 	else
 		val |= EDP_PSR_TP2_TP3_TIME_2500us;
@@ -441,13 +442,14 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 
 static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	int idle_frames;
 
 	/* Let's use 6 as the minimum to cover all known cases including the
 	 * off-by-one issue that HW has in some cases.
 	 */
-	idle_frames = max(6, dev_priv->vbt.psr.idle_frames);
+	idle_frames = max(6, connector->panel.vbt.psr.idle_frames);
 	idle_frames = max(idle_frames, intel_dp->psr.sink_sync_latency + 1);
 
 	if (drm_WARN_ON(&dev_priv->drm, idle_frames > 0xf))
@@ -483,18 +485,19 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = 0;
 
 	if (dev_priv->params.psr_safest_params)
 		return EDP_PSR2_TP2_TIME_2500us;
 
-	if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
-	    dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 50)
+	if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
+	    connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 50)
 		val |= EDP_PSR2_TP2_TIME_50us;
-	else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 100)
+	else if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 100)
 		val |= EDP_PSR2_TP2_TIME_100us;
-	else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 500)
+	else if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 500)
 		val |= EDP_PSR2_TP2_TIME_500us;
 	else
 		val |= EDP_PSR2_TP2_TIME_2500us;
@@ -2344,6 +2347,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
  */
 void intel_psr_init(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -2368,13 +2372,13 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	intel_dp->psr.source_support = true;
 
 	if (dev_priv->params.enable_psr == -1)
-		if (!dev_priv->vbt.psr.enable)
+		if (!connector->panel.vbt.psr.enable)
 			dev_priv->params.enable_psr = 0;
 
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-		intel_dp->psr.link_standby = dev_priv->vbt.psr.full_link;
+		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
 	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, tgl_dc3co_disable_work);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d81855d57cdc..14a64bd61176 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2869,6 +2869,7 @@ static bool
 intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2900,6 +2901,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
+	intel_bios_init_panel(i915, &intel_connector->panel);
+
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
 	 * SDVO->LVDS transcoders can't cope with the EDID mode.
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 1954f07f0d3e..be8fd3c362df 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -782,6 +782,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum port port;
@@ -838,7 +839,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	 * the delay in that case. If there is no deassert-seq, then an
 	 * unconditional msleep is used to give the panel time to power-on.
 	 */
-	if (dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
+	if (connector->panel.vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
 		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 	} else {
@@ -1690,7 +1691,8 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
+	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns, extra_byte_count, tlpx_ui;
 	u32 ui_num, ui_den;
 	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
@@ -1924,13 +1926,15 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	if (dev_priv->vbt.dsi.config->dual_link)
+	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+
+	if (intel_connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
 	else
 		intel_dsi->ports = BIT(port);
 
-	intel_dsi->dcs_backlight_ports = dev_priv->vbt.dsi.bl_ports;
-	intel_dsi->dcs_cabc_ports = dev_priv->vbt.dsi.cabc_ports;
+	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
+	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
 
 	/* Create a DSI host (and a device) for each port. */
 	for_each_dsi_port(port, intel_dsi->ports) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6dfaf7fce915..80436e9d4600 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -194,12 +194,6 @@ struct drm_i915_display_funcs {
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
-enum drrs_type {
-	DRRS_TYPE_NONE,
-	DRRS_TYPE_STATIC,
-	DRRS_TYPE_SEAMLESS,
-};
-
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
 #define QUIRK_INVERT_BRIGHTNESS (1<<2)
 #define QUIRK_BACKLIGHT_PRESENT (1<<3)
@@ -308,76 +302,19 @@ struct intel_vbt_data {
 	/* bdb version */
 	u16 version;
 
-	struct drm_display_mode *lfp_lvds_vbt_mode; /* if any */
-	struct drm_display_mode *sdvo_lvds_vbt_mode; /* if any */
-
 	/* Feature bits */
 	unsigned int int_tv_support:1;
-	unsigned int lvds_dither:1;
 	unsigned int int_crt_support:1;
 	unsigned int lvds_use_ssc:1;
 	unsigned int int_lvds_support:1;
 	unsigned int display_clock_mode:1;
 	unsigned int fdi_rx_polarity_inverted:1;
-	unsigned int panel_type:4;
 	int lvds_ssc_freq;
-	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
 	enum drm_panel_orientation orientation;
 
 	bool override_afc_startup;
 	u8 override_afc_startup_val;
 
-	u8 seamless_drrs_min_refresh_rate;
-	enum drrs_type drrs_type;
-
-	struct {
-		int rate;
-		int lanes;
-		int preemphasis;
-		int vswing;
-		int bpp;
-		struct edp_power_seq pps;
-		u8 drrs_msa_timing_delay;
-		bool low_vswing;
-		bool initialized;
-		bool hobl;
-	} edp;
-
-	struct {
-		bool enable;
-		bool full_link;
-		bool require_aux_wakeup;
-		int idle_frames;
-		int tp1_wakeup_time_us;
-		int tp2_tp3_wakeup_time_us;
-		int psr2_tp2_tp3_wakeup_time_us;
-	} psr;
-
-	struct {
-		u16 pwm_freq_hz;
-		u16 brightness_precision_bits;
-		bool present;
-		bool active_low_pwm;
-		u8 min_brightness;	/* min_brightness/255 of max */
-		u8 controller;		/* brightness controller number */
-		enum intel_backlight_type type;
-	} backlight;
-
-	/* MIPI DSI */
-	struct {
-		u16 panel_id;
-		struct mipi_config *config;
-		struct mipi_pps_data *pps;
-		u16 bl_ports;
-		u16 cabc_ports;
-		u8 seq_version;
-		u32 size;
-		u8 *data;
-		const u8 *sequence[MIPI_SEQ_MAX];
-		u8 *deassert_seq; /* Used by fixup_mipi_sequences() */
-		enum drm_panel_orientation orientation;
-	} dsi;
-
 	int crt_ddc_pin;
 
 	struct list_head display_devices;
-- 
2.35.1

