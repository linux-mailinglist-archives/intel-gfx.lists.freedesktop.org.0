Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 729F684E3CD
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620C910E889;
	Thu,  8 Feb 2024 15:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlpGUJzc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0436010E886
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405450; x=1738941450;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Bu/M6eEx8jySKm/GvIQdbGmfoU4HD16CXVYUmZCy4Ms=;
 b=MlpGUJzczHxyfdjlQR4BE5qSgsE+YkN1Dcxaww3JYNCCfUn+n+IgItBL
 t3LLLV+zhN91kwpMDlYiYbPXw4pP5ajMy626dkJjag1RwnRuGzRJ7t7HM
 AX3qPBBtnOykMm/upT91T30hnbzkZFUsl/CVX5OoBDuXzAYEsdIPTygtR
 x5cR9MQwLYQVhTUEO0vJxy43TgcOKJWGyzZHf38nBDX0TE/cRDaumj1Jc
 v4ug+Qy0cnrU2h9wKGBlz3OrH7JXvafZoLt9bLlItfdkGVeLDt8dxWFJX
 xWEDkRLaMCHw00e4aHm0l1ZH2N5SpvmA/bKxxi8Lo6PfSk/l7G5XYc5zf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219167"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219167"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863652"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915/sdvo: Convert to per-device debugs
Date: Thu,  8 Feb 2024 17:17:09 +0200
Message-ID: <20240208151720.7866-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

Use drm_dbg_kms() instead of DRM_DEBUG_KMS() in the sdvo code
to get the device name into the debug prints.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 113 +++++++++++++---------
 1 file changed, 66 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2571ef5a1b21..a6724447ca17 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -252,6 +252,7 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 
 static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct i2c_msg msgs[] = {
 		{
 			.addr = intel_sdvo->slave_addr,
@@ -271,7 +272,7 @@ static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
 	if ((ret = i2c_transfer(intel_sdvo->i2c, msgs, 2)) == 2)
 		return true;
 
-	DRM_DEBUG_KMS("i2c transfer returned %d\n", ret);
+	drm_dbg_kms(&i915->drm, "i2c transfer returned %d\n", ret);
 	return false;
 }
 
@@ -437,7 +438,8 @@ static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
 	drm_WARN_ON(&dev_priv->drm, pos >= sizeof(buffer) - 1);
 #undef BUF_PRINT
 
-	DRM_DEBUG_KMS("%s: W: %02X %s\n", SDVO_NAME(intel_sdvo), cmd, buffer);
+	drm_dbg_kms(&dev_priv->drm, "%s: W: %02X %s\n", SDVO_NAME(intel_sdvo),
+		    cmd, buffer);
 }
 
 static const char * const cmd_status_names[] = {
@@ -462,6 +464,7 @@ static bool __intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
 				   const void *args, int args_len,
 				   bool unlocked)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u8 *buf, status;
 	struct i2c_msg *msgs;
 	int i, ret = true;
@@ -511,13 +514,13 @@ static bool __intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
 	else
 		ret = __i2c_transfer(intel_sdvo->i2c, msgs, i+3);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("I2c transfer returned %d\n", ret);
+		drm_dbg_kms(&i915->drm, "I2c transfer returned %d\n", ret);
 		ret = false;
 		goto out;
 	}
 	if (ret != i+3) {
 		/* failure in I2C transfer */
-		DRM_DEBUG_KMS("I2c transfer returned %d/%d\n", ret, i+3);
+		drm_dbg_kms(&i915->drm, "I2c transfer returned %d/%d\n", ret, i+3);
 		ret = false;
 	}
 
@@ -604,12 +607,13 @@ static bool intel_sdvo_read_response(struct intel_sdvo *intel_sdvo,
 	drm_WARN_ON(&dev_priv->drm, pos >= sizeof(buffer) - 1);
 #undef BUF_PRINT
 
-	DRM_DEBUG_KMS("%s: R: %s\n", SDVO_NAME(intel_sdvo), buffer);
+	drm_dbg_kms(&dev_priv->drm, "%s: R: %s\n",
+		    SDVO_NAME(intel_sdvo), buffer);
 	return true;
 
 log_fail:
-	DRM_DEBUG_KMS("%s: R: ... failed %s\n",
-		      SDVO_NAME(intel_sdvo), buffer);
+	drm_dbg_kms(&dev_priv->drm, "%s: R: ... failed %s\n",
+		    SDVO_NAME(intel_sdvo), buffer);
 	return false;
 }
 
@@ -1004,6 +1008,7 @@ static bool intel_sdvo_write_infoframe(struct intel_sdvo *intel_sdvo,
 				       unsigned int if_index, u8 tx_rate,
 				       const u8 *data, unsigned int length)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u8 set_buf_index[2] = { if_index, 0 };
 	u8 hbuf_size, tmp[8];
 	int i;
@@ -1016,8 +1021,9 @@ static bool intel_sdvo_write_infoframe(struct intel_sdvo *intel_sdvo,
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
 		return false;
 
-	DRM_DEBUG_KMS("writing sdvo hbuf: %i, length %u, hbuf_size: %i\n",
-		      if_index, length, hbuf_size);
+	drm_dbg_kms(&i915->drm,
+		    "writing sdvo hbuf: %i, length %u, hbuf_size: %i\n",
+		    if_index, length, hbuf_size);
 
 	if (hbuf_size < length)
 		return false;
@@ -1042,6 +1048,7 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 					 unsigned int if_index,
 					 u8 *data, unsigned int length)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u8 set_buf_index[2] = { if_index, 0 };
 	u8 hbuf_size, tx_rate, av_split;
 	int i;
@@ -1071,8 +1078,9 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
 		return false;
 
-	DRM_DEBUG_KMS("reading sdvo hbuf: %i, length %u, hbuf_size: %i\n",
-		      if_index, length, hbuf_size);
+	drm_dbg_kms(&i915->drm,
+		    "reading sdvo hbuf: %i, length %u, hbuf_size: %i\n",
+		    if_index, length, hbuf_size);
 
 	hbuf_size = min_t(unsigned int, length, hbuf_size);
 
@@ -1151,6 +1159,7 @@ static bool intel_sdvo_set_avi_infoframe(struct intel_sdvo *intel_sdvo,
 static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 					 struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u8 sdvo_data[HDMI_INFOFRAME_SIZE(AVI)];
 	union hdmi_infoframe *frame = &crtc_state->infoframes.avi;
 	ssize_t len;
@@ -1162,7 +1171,7 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 	len = intel_sdvo_read_infoframe(intel_sdvo, SDVO_HBUF_INDEX_AVI_IF,
 					sdvo_data, sizeof(sdvo_data));
 	if (len < 0) {
-		DRM_DEBUG_KMS("failed to read AVI infoframe\n");
+		drm_dbg_kms(&i915->drm, "failed to read AVI infoframe\n");
 		return;
 	} else if (len == 0) {
 		return;
@@ -1173,13 +1182,14 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 
 	ret = hdmi_infoframe_unpack(frame, sdvo_data, len);
 	if (ret) {
-		DRM_DEBUG_KMS("Failed to unpack AVI infoframe\n");
+		drm_dbg_kms(&i915->drm, "Failed to unpack AVI infoframe\n");
 		return;
 	}
 
 	if (frame->any.type != HDMI_INFOFRAME_TYPE_AVI)
-		DRM_DEBUG_KMS("Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
-			      frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
+		drm_dbg_kms(&i915->drm,
+			    "Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
+			    frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
 }
 
 static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
@@ -1348,6 +1358,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(conn_state->connector);
@@ -1360,7 +1371,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 			return -EINVAL;
 	}
 
-	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
+	drm_dbg_kms(&i915->drm, "forcing bpc to 8 for SDVO\n");
 	/* FIXME: Don't increase pipe_bpp */
 	pipe_config->pipe_bpp = 8*3;
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1439,7 +1450,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	if (!intel_sdvo_compute_avi_infoframe(intel_sdvo,
 					      pipe_config, conn_state)) {
-		DRM_DEBUG_KMS("bad AVI infoframe\n");
+		drm_dbg_kms(&i915->drm, "bad AVI infoframe\n");
 		return -EINVAL;
 	}
 
@@ -1916,8 +1927,8 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	 */
 	if (success && !input1) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "First %s output reported failure to "
-			    "sync\n", SDVO_NAME(intel_sdvo));
+			    "First %s output reported failure to sync\n",
+			    SDVO_NAME(intel_sdvo));
 	}
 
 	if (0)
@@ -1976,13 +1987,14 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 
 static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct intel_sdvo_caps *caps)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	BUILD_BUG_ON(sizeof(*caps) != 8);
 	if (!intel_sdvo_get_value(intel_sdvo,
 				  SDVO_CMD_GET_DEVICE_CAPS,
 				  caps, sizeof(*caps)))
 		return false;
 
-	DRM_DEBUG_KMS("SDVO capabilities:\n"
+	drm_dbg_kms(&i915->drm, "SDVO capabilities:\n"
 		      "  vendor_id: %d\n"
 		      "  device_id: %d\n"
 		      "  device_rev_id: %d\n"
@@ -2121,8 +2133,9 @@ intel_sdvo_connector_matches_edid(struct intel_sdvo_connector *sdvo,
 	bool monitor_is_digital = drm_edid_is_digital(drm_edid);
 	bool connector_is_digital = !!IS_DIGITAL(sdvo);
 
-	DRM_DEBUG_KMS("connector_is_digital? %d, monitor_is_digital? %d\n",
-		      connector_is_digital, monitor_is_digital);
+	drm_dbg_kms(sdvo->base.base.dev,
+		    "connector_is_digital? %d, monitor_is_digital? %d\n",
+		    connector_is_digital, monitor_is_digital);
 	return connector_is_digital == monitor_is_digital;
 }
 
@@ -2135,8 +2148,8 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	enum drm_connector_status ret;
 	u16 response;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
 
 	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
@@ -2153,9 +2166,9 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 				  &response, 2))
 		return connector_status_unknown;
 
-	DRM_DEBUG_KMS("SDVO response %d %d [%x]\n",
-		      response & 0xff, response >> 8,
-		      intel_sdvo_connector->output_flag);
+	drm_dbg_kms(&i915->drm, "SDVO response %d %d [%x]\n",
+		    response & 0xff, response >> 8,
+		    intel_sdvo_connector->output_flag);
 
 	if (response == 0)
 		return connector_status_disconnected;
@@ -2192,8 +2205,8 @@ static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 	int num_modes = 0;
 	const struct drm_edid *drm_edid;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
 
 	/* set the bus switch and get the modes */
 	drm_edid = intel_sdvo_get_edid(connector);
@@ -2287,6 +2300,7 @@ static const struct drm_display_mode sdvo_tv_modes[] = {
 static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	const struct drm_connector_state *conn_state = connector->state;
@@ -2295,8 +2309,8 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	int num_modes = 0;
 	int i;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
 
 	/*
 	 * Read the list of supported input resolutions for the selected TV
@@ -2783,10 +2797,11 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
+	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising DVI type 0x%x\n", type);
+	drm_dbg_kms(&i915->drm, "initialising DVI type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2832,12 +2847,13 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 static bool
 intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising TV type 0x%x\n", type);
+	drm_dbg_kms(&i915->drm, "initialising TV type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2871,12 +2887,13 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 static bool
 intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising analog type 0x%x\n", type);
+	drm_dbg_kms(&i915->drm, "initialising analog type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2908,7 +2925,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising LVDS type 0x%x\n", type);
+	drm_dbg_kms(&i915->drm, "initialising LVDS type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2992,6 +3009,7 @@ static bool intel_sdvo_output_init(struct intel_sdvo *sdvo, u16 type)
 static bool
 intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	static const u16 probe_order[] = {
 		SDVO_OUTPUT_TMDS0,
 		SDVO_OUTPUT_TMDS1,
@@ -3010,8 +3028,9 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 	flags = intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
 
 	if (flags == 0) {
-		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%04x)\n",
-			      SDVO_NAME(intel_sdvo), intel_sdvo->caps.output_flags);
+		drm_dbg_kms(&i915->drm,
+			    "%s: Unknown SDVO output type (0x%04x)\n",
+			    SDVO_NAME(intel_sdvo), intel_sdvo->caps.output_flags);
 		return false;
 	}
 
@@ -3100,8 +3119,8 @@ static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 		state_assignment = response; \
 		drm_object_attach_property(&connector->base, \
 					   intel_sdvo_connector->name, 0); \
-		DRM_DEBUG_KMS(#name ": max %d, default %d, current %d\n", \
-			      data_value[0], data_value[1], response); \
+		drm_dbg_kms(dev, #name ": max %d, default %d, current %d\n", \
+			    data_value[0], data_value[1], response); \
 	} \
 } while (0)
 
@@ -3112,6 +3131,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 				      struct intel_sdvo_connector *intel_sdvo_connector,
 				      struct intel_sdvo_enhancements_reply enhancements)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct drm_device *dev = intel_sdvo->base.base.dev;
 	struct drm_connector *connector = &intel_sdvo_connector->base.base;
 	struct drm_connector_state *conn_state = connector->state;
@@ -3149,9 +3169,8 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		drm_object_attach_property(&connector->base,
 					      intel_sdvo_connector->right, 0);
-		DRM_DEBUG_KMS("h_overscan: max %d, "
-			      "default %d, current %d\n",
-			      data_value[0], data_value[1], response);
+		drm_dbg_kms(&i915->drm, "h_overscan: max %d, default %d, current %d\n",
+			    data_value[0], data_value[1], response);
 	}
 
 	if (enhancements.overscan_v) {
@@ -3185,9 +3204,8 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		drm_object_attach_property(&connector->base,
 					      intel_sdvo_connector->bottom, 0);
-		DRM_DEBUG_KMS("v_overscan: max %d, "
-			      "default %d, current %d\n",
-			      data_value[0], data_value[1], response);
+		drm_dbg_kms(&i915->drm, "v_overscan: max %d, default %d, current %d\n",
+			    data_value[0], data_value[1], response);
 	}
 
 	ENHANCEMENT(&sdvo_state->tv, hpos, HPOS);
@@ -3215,7 +3233,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		drm_object_attach_property(&connector->base,
 					   intel_sdvo_connector->dot_crawl, 0);
-		DRM_DEBUG_KMS("dot crawl: current %d\n", response);
+		drm_dbg_kms(&i915->drm, "dot crawl: current %d\n", response);
 	}
 
 	return true;
@@ -3240,6 +3258,7 @@ intel_sdvo_create_enhance_property_lvds(struct intel_sdvo *intel_sdvo,
 static bool intel_sdvo_create_enhance_property(struct intel_sdvo *intel_sdvo,
 					       struct intel_sdvo_connector *intel_sdvo_connector)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	union {
 		struct intel_sdvo_enhancements_reply reply;
 		u16 response;
@@ -3251,7 +3270,7 @@ static bool intel_sdvo_create_enhance_property(struct intel_sdvo *intel_sdvo,
 				  SDVO_CMD_GET_SUPPORTED_ENHANCEMENTS,
 				  &enhancements, sizeof(enhancements)) ||
 	    enhancements.response == 0) {
-		DRM_DEBUG_KMS("No enhancement is supported\n");
+		drm_dbg_kms(&i915->drm, "No enhancement is supported\n");
 		return true;
 	}
 
-- 
2.43.0

