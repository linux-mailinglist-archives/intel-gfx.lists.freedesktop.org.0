Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35172521278
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687C010E16B;
	Tue, 10 May 2022 10:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8140210E16B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179407; x=1683715407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0N1XS1A24zszocIFNKKFCebjmErGRbbcFCVagQu7MYU=;
 b=P4RTDvUPx+ZNiEVjts+1n2eBgRTjKF65Ppb/5DoSYgCqV2eYG7slknmb
 73NfmYDOcp/vbVssaCD0X2A/gI7Mbg3lihVnkcCodOidknBynS1RdLU0c
 iaEyUtLpVM+ntJWcU0Qlcx11Y5GIuVqSaP40IMA07N65aWVm91dBSRoL6
 pR+RZkmiqVG7DdNe1YIpf3r9+QjDsEDPhyfPv5DWTrRyf9KO97ZIsyBlb
 Qty8+f1ikr29e30wP86bp64hLWcCTHHHPRHSy2AO+ptsmsivJG+bRX6io
 Lp9fY6s8j63QGuzyiEMVE/ePhD4WgMqvZdkChzjEbLi/wCcaIjQDwrEch g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249236190"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="249236190"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="669826086"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 10 May 2022 03:43:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:40 +0300
Message-Id: <20220510104242.6099-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/bios: Determine panel type via
 PNPID match
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently when the VBT panel_type==0xff we should trawl through
the PNPID table and check for a match against the EDID. If a
match is found the index gives us the panel_type.

Tried to match the Windows behaviour here with first looking
for an exact match, and if one isn't found we fall back to
looking for a match w/o the mfg year/week.

v2: Rebase due to vlv_dsi changes
v3: Adjust to .get_panel_type() vfunc

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5545
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 98 ++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_bios.h |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c    |  2 +-
 7 files changed, 95 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2798c4af0c6d..3b5305c219ba 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
 
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 68cff9ddd729..a6d59b320888 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -585,6 +585,14 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
 	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
 }
 
+static const struct lvds_pnp_id *
+get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
+		const struct bdb_lvds_lfp_data_ptrs *ptrs,
+		int index)
+{
+	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
+}
+
 static const struct bdb_lvds_lfp_data_tail *
 get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
@@ -595,12 +603,14 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
-static int opregion_get_panel_type(struct drm_i915_private *i915)
+static int opregion_get_panel_type(struct drm_i915_private *i915,
+				   const struct edid *edid)
 {
 	return intel_opregion_get_panel_type(i915);
 }
 
-static int vbt_get_panel_type(struct drm_i915_private *i915)
+static int vbt_get_panel_type(struct drm_i915_private *i915,
+			      const struct edid *edid)
 {
 	const struct bdb_lvds_options *lvds_options;
 
@@ -608,7 +618,8 @@ static int vbt_get_panel_type(struct drm_i915_private *i915)
 	if (!lvds_options)
 		return -1;
 
-	if (lvds_options->panel_type > 0xf) {
+	if (lvds_options->panel_type > 0xf &&
+	    lvds_options->panel_type != 0xff) {
 		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
 			    lvds_options->panel_type);
 		return -1;
@@ -617,7 +628,54 @@ static int vbt_get_panel_type(struct drm_i915_private *i915)
 	return lvds_options->panel_type;
 }
 
-static int fallback_get_panel_type(struct drm_i915_private *i915)
+static int pnpid_get_panel_type(struct drm_i915_private *i915,
+				const struct edid *edid)
+{
+	const struct bdb_lvds_lfp_data *data;
+	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct lvds_pnp_id *edid_id;
+	struct lvds_pnp_id edid_id_nodate;
+	int i, best = -1;
+
+	if (!edid)
+		return -1;
+
+	edid_id = (const void *)&edid->mfg_id[0];
+
+	edid_id_nodate = *edid_id;
+	edid_id_nodate.mfg_week = 0;
+	edid_id_nodate.mfg_year = 0;
+
+	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	if (!ptrs)
+		return -1;
+
+	data = find_section(i915, BDB_LVDS_LFP_DATA);
+	if (!data)
+		return -1;
+
+	for (i = 0; i < 16; i++) {
+		const struct lvds_pnp_id *vbt_id =
+			get_lvds_pnp_id(data, ptrs, i);
+
+		/* full match? */
+		if (!memcmp(vbt_id, edid_id, sizeof(*vbt_id)))
+			return i;
+
+		/*
+		 * Accept a match w/o date if no full match is found,
+		 * and the VBT entry does not specify a date.
+		 */
+		if (best < 0 &&
+		    !memcmp(vbt_id, &edid_id_nodate, sizeof(*vbt_id)))
+			best = i;
+	}
+
+	return best;
+}
+
+static int fallback_get_panel_type(struct drm_i915_private *i915,
+				   const struct edid *edid)
 {
 	return 0;
 }
@@ -625,14 +683,17 @@ static int fallback_get_panel_type(struct drm_i915_private *i915)
 enum panel_type {
 	PANEL_TYPE_OPREGION,
 	PANEL_TYPE_VBT,
+	PANEL_TYPE_PNPID,
 	PANEL_TYPE_FALLBACK,
 };
 
-static int get_panel_type(struct drm_i915_private *i915)
+static int get_panel_type(struct drm_i915_private *i915,
+			  const struct edid *edid)
 {
 	struct {
 		const char *name;
-		int (*get_panel_type)(struct drm_i915_private *i915);
+		int (*get_panel_type)(struct drm_i915_private *i915,
+				      const struct edid *edid);
 		int panel_type;
 	} panel_types[] = {
 		[PANEL_TYPE_OPREGION] = {
@@ -643,6 +704,10 @@ static int get_panel_type(struct drm_i915_private *i915)
 			.name = "VBT",
 			.get_panel_type = vbt_get_panel_type,
 		},
+		[PANEL_TYPE_PNPID] = {
+			.name = "PNPID",
+			.get_panel_type = pnpid_get_panel_type,
+		},
 		[PANEL_TYPE_FALLBACK] = {
 			.name = "fallback",
 			.get_panel_type = fallback_get_panel_type,
@@ -651,9 +716,10 @@ static int get_panel_type(struct drm_i915_private *i915)
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
-		panel_types[i].panel_type = panel_types[i].get_panel_type(i915);
+		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
 
-		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
+		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
+			    panel_types[i].panel_type != 0xff);
 
 		if (panel_types[i].panel_type >= 0)
 			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
@@ -662,7 +728,11 @@ static int get_panel_type(struct drm_i915_private *i915)
 
 	if (panel_types[PANEL_TYPE_OPREGION].panel_type >= 0)
 		i = PANEL_TYPE_OPREGION;
-	else if (panel_types[PANEL_TYPE_VBT].panel_type >= 0)
+	else if (panel_types[PANEL_TYPE_VBT].panel_type == 0xff &&
+		 panel_types[PANEL_TYPE_PNPID].panel_type >= 0)
+		i = PANEL_TYPE_PNPID;
+	else if (panel_types[PANEL_TYPE_VBT].panel_type != 0xff &&
+		 panel_types[PANEL_TYPE_VBT].panel_type >= 0)
 		i = PANEL_TYPE_VBT;
 	else
 		i = PANEL_TYPE_FALLBACK;
@@ -676,7 +746,8 @@ static int get_panel_type(struct drm_i915_private *i915)
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915,
-		    struct intel_panel *panel)
+		    struct intel_panel *panel,
+		    const struct edid *edid)
 {
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
@@ -688,7 +759,7 @@ parse_panel_options(struct drm_i915_private *i915,
 
 	panel->vbt.lvds_dither = lvds_options->pixel_dither;
 
-	panel_type = get_panel_type(i915);
+	panel_type = get_panel_type(i915, edid);
 
 	panel->vbt.panel_type = panel_type;
 
@@ -2999,11 +3070,12 @@ void intel_bios_init(struct drm_i915_private *i915)
 }
 
 void intel_bios_init_panel(struct drm_i915_private *i915,
-			   struct intel_panel *panel)
+			   struct intel_panel *panel,
+			   const struct edid *edid)
 {
 	init_vbt_panel_defaults(panel);
 
-	parse_panel_options(i915, panel);
+	parse_panel_options(i915, panel, edid);
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
 	parse_lfp_backlight(i915, panel);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 86129f015718..b112200ae0a0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -33,6 +33,7 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct edid;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
 struct intel_encoder;
@@ -232,7 +233,8 @@ struct mipi_pps_data {
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
 void intel_bios_init_panel(struct drm_i915_private *dev_priv,
-			   struct intel_panel *panel);
+			   struct intel_panel *panel,
+			   const struct edid *edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b119a6508f52..1bc1f6458e81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5213,7 +5213,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+			      IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 9f250a70519a..595f03343939 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -967,7 +967,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+			      IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 14a64bd61176..d9de2c4d67a7 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel(i915, &intel_connector->panel);
+	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index be8fd3c362df..abda0888c8d4 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
 
 	if (intel_connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
-- 
2.35.1

