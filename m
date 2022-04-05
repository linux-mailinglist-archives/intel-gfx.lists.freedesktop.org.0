Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FD64F3CF0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F2A10EBE2;
	Tue,  5 Apr 2022 17:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2729010ED94
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180108; x=1680716108;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HEWK/wQqMI/Y2ZfiUPn0XoWz/KJy+vYC/h2urkjtSD8=;
 b=EqzdBC4+X4gDxBobQjUE5mU5PLLJ4KC6oKBD1Yj49jHUi+T23dy5bR2Q
 t5Wo9qDBaApEI0gvKqaLQBtw1+9wWMJlqU7npShRQiV/yRPeVopp4hkZy
 su2r+G36A6KgsT26Vkxe6v3sysdEILwPYGWpkzjBtPbF2NV8lQes2xeC+
 mzaBi4aHqqpaNYhmY3xgxTsoRWVPgtq5Qr2BVNPbXBd0g9jywTmnNQvQS
 Ew5DNBhz7CgYc0B2la9R/7deJwXqTH+QDyj9hdhHdcwOvLgnL5ZghrWTX
 qrQ3Zr/OR94VsGgDY+4bE3NS2VmdwC/RF7/0WXQZdaRErJFM73K685pDj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="240753135"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="240753135"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="641702377"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 05 Apr 2022 10:35:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:35:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:06 +0300
Message-Id: <20220405173410.11436-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 18/22] drm/i915/bios: Determine panel type
 via PNPID match
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

Apparently when the VBT panel_type==0xff we should trawl through
the PNPID table and check for a match against the EDID. If a
match is found the index gives us the panel_type.

Tried to match the Windows behaviour here with first looking
for an exact match, and if one isn't found we fall back to
looking for a match w/o the mfg year/week.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5545
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_bios.h |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c    |  2 +-
 7 files changed, 82 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 688176d4a54a..49715485a3a6 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2048,7 +2048,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_bios_init_panel(dev_priv);
+	intel_bios_init_panel(dev_priv, NULL);
 
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index feef5aa97398..cfdfe91d4ccf 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -579,6 +579,14 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
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
@@ -589,6 +597,52 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
+static int pnp_id_panel_type(struct drm_i915_private *i915,
+			     const struct edid *edid)
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
 static int vbt_panel_type(struct drm_i915_private *i915)
 {
 	const struct bdb_lvds_options *lvds_options;
@@ -597,7 +651,8 @@ static int vbt_panel_type(struct drm_i915_private *i915)
 	if (!lvds_options)
 		return -1;
 
-	if (lvds_options->panel_type > 0xf) {
+	if (lvds_options->panel_type > 0xf &&
+	    lvds_options->panel_type != 0xff) {
 		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
 			    lvds_options->panel_type);
 		return -1;
@@ -609,10 +664,12 @@ static int vbt_panel_type(struct drm_i915_private *i915)
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
@@ -620,15 +677,18 @@ static int get_panel_type(struct drm_i915_private *i915)
 	} panel_types[] = {
 		[PANEL_TYPE_OPREGION] = { .name = "OpRegion", .panel_type = -1, },
 		[PANEL_TYPE_VBT] = { .name = "VBT", .panel_type = -1, },
+		[PANEL_TYPE_PNPID] = { .name = "PNPID", .panel_type = -1, },
 		[PANEL_TYPE_FALLBACK] = { .name = "fallback", .panel_type = 0, },
 	};
 	int i;
 
 	panel_types[PANEL_TYPE_OPREGION].panel_type = intel_opregion_get_panel_type(i915);
 	panel_types[PANEL_TYPE_VBT].panel_type = vbt_panel_type(i915);
+	panel_types[PANEL_TYPE_PNPID].panel_type = pnp_id_panel_type(i915, edid);
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
-		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
+		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
+			    panel_types[i].panel_type != 0xff);
 
 		if (panel_types[i].panel_type >= 0)
 			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
@@ -637,7 +697,11 @@ static int get_panel_type(struct drm_i915_private *i915)
 
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
@@ -650,7 +714,8 @@ static int get_panel_type(struct drm_i915_private *i915)
 
 /* Parse general panel options */
 static void
-parse_panel_options(struct drm_i915_private *i915)
+parse_panel_options(struct drm_i915_private *i915,
+		    const struct edid *edid)
 {
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
@@ -662,7 +727,7 @@ parse_panel_options(struct drm_i915_private *i915)
 
 	i915->vbt.lvds_dither = lvds_options->pixel_dither;
 
-	panel_type = get_panel_type(i915);
+	panel_type = get_panel_type(i915, edid);
 
 	i915->vbt.panel_type = panel_type;
 
@@ -2950,9 +3015,10 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
-void intel_bios_init_panel(struct drm_i915_private *i915)
+void intel_bios_init_panel(struct drm_i915_private *i915,
+			   const struct edid *edid)
 {
-	parse_panel_options(i915);
+	parse_panel_options(i915, edid);
 	/*
 	 * Older VBTs provided DTD information for internal displays through
 	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index c744d75fa435..be6d57bd0f5a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -33,6 +33,7 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct edid;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
 struct intel_encoder;
@@ -230,7 +231,8 @@ struct mipi_pps_data {
 } __packed;
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
-void intel_bios_init_panel(struct drm_i915_private *dev_priv);
+void intel_bios_init_panel(struct drm_i915_private *dev_priv,
+			   const struct edid *edid);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1b5d7f5388b..41ac55a700e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5179,7 +5179,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv);
+	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 554badf041f2..660bb95f2bf7 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv);
+	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 661a1057a073..25195bc1edca 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2900,7 +2900,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel(i915);
+	intel_bios_init_panel(i915, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 7849836355f9..606869d0c982 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1944,7 +1944,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		intel_dsi->dsi_hosts[port] = host;
 	}
 
-	intel_bios_init_panel(dev_priv);
+	intel_bios_init_panel(dev_priv, NULL);
 
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
 		drm_dbg_kms(&dev_priv->drm, "no device found\n");
-- 
2.35.1

