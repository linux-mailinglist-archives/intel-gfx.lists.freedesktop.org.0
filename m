Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CFCA32BE0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD4410E91E;
	Wed, 12 Feb 2025 16:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoUk+rBx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8258A10E918;
 Wed, 12 Feb 2025 16:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378250; x=1770914250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vr0tidlq62DDKSuu3kbjtcBoT9c8L7ph6/5Z2aZs5/M=;
 b=AoUk+rBxWz3RefD35E5GKXzcAmBqjcghtb2XCmaOmb7uchqT4Gd0IZhv
 L4gFzh0GnOq2IyLH+o3G4SGiE/hcwlLfdd+r66Djnwf4CY7F0NRlx1w2f
 fwP3MovumAWMsKMSUIp8QAvTJtn3Lo7BY68q9FWN4Qf1t1TJC/xvOsznk
 ptNyaKNiX4OyZdmcJi1oFbf0jyauIrsjXevTt8Mt3GZUuZO4K9P4/QGzu
 eUcK73N6wIcCLqyeJ9BHYZPbhbfXSJBTBIHXKORH0658y9Rnx1g+dmBDl
 XgRMmUjoVCsdIu0pEZOY5i4aorzPQgpxZjyhVqOKrS6vdCdLV8I9QDHE3 A==;
X-CSE-ConnectionGUID: RViFFT4IQdKa8+jfj1xMQA==
X-CSE-MsgGUID: 3lujNfhxQ/OtY1ycvsIzRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51479905"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51479905"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:30 -0800
X-CSE-ConnectionGUID: lgoJP8CKRmWSD2u4TgqvEg==
X-CSE-MsgGUID: fPZwYittShC1XkoUj/UwzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080633"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/14] drm/i915/sdvo: convert intel_sdvo.[ch] to struct
 intel_display
Date: Wed, 12 Feb 2025 18:36:37 +0200
Message-Id: <2e79909f8a060d7ff1744911f8da9300eb1f225c.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_sdvo.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 281 +++++++++---------
 drivers/gpu/drm/i915/display/intel_sdvo.h     |  10 +-
 5 files changed, 150 insertions(+), 152 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 089f1a4d7720..5c5eb3d621c8 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -67,7 +67,6 @@ static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -77,7 +76,7 @@ static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
 	if (!wakeref)
 		return false;
 
-	ret = intel_sdvo_port_enabled(dev_priv, intel_hdmi->hdmi_reg, pipe);
+	ret = intel_sdvo_port_enabled(display, intel_hdmi->hdmi_reg, pipe);
 
 	intel_display_power_put(display, encoder->power_domain, wakeref);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9bcbd52f23cf..e1186f46088d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8236,7 +8236,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED) {
 			/* PCH SDVOB multiplex with HDMIB */
-			found = intel_sdvo_init(dev_priv, PCH_SDVOB, PORT_B);
+			found = intel_sdvo_init(display, PCH_SDVOB, PORT_B);
 			if (!found)
 				g4x_hdmi_init(display, PCH_HDMIB, PORT_B);
 			if (!found && (intel_de_read(dev_priv, PCH_DP_B) & DP_DETECTED))
@@ -8315,7 +8315,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
 			drm_dbg_kms(&dev_priv->drm, "probing SDVOB\n");
-			found = intel_sdvo_init(dev_priv, GEN3_SDVOB, PORT_B);
+			found = intel_sdvo_init(display, GEN3_SDVOB, PORT_B);
 			if (!found && IS_G4X(dev_priv)) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "probing HDMI on SDVOB\n");
@@ -8330,7 +8330,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
 			drm_dbg_kms(&dev_priv->drm, "probing SDVOC\n");
-			found = intel_sdvo_init(dev_priv, GEN3_SDVOC, PORT_C);
+			found = intel_sdvo_init(display, GEN3_SDVOC, PORT_C);
 		}
 
 		if (!found && (intel_de_read(dev_priv, GEN3_SDVOC) & SDVO_DETECTED)) {
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 98a6b57ac956..1abe0a784570 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -65,7 +65,7 @@ static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
 	enum pipe port_pipe;
 	bool state;
 
-	state = intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);
+	state = intel_sdvo_port_enabled(display, hdmi_reg, &port_pipe);
 
 	INTEL_DISPLAY_STATE_WARN(display, state && port_pipe == pipe,
 				 "PCH HDMI %c enabled on transcoder %c, should be disabled\n",
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 46203d796fcc..1ae766212e8a 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -213,29 +213,29 @@ intel_sdvo_create_enhance_property(struct intel_sdvo *intel_sdvo,
  */
 static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 {
-	struct drm_device *dev = intel_sdvo->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 bval = val, cval = val;
 	int i;
 
 	if (HAS_PCH_SPLIT(dev_priv)) {
-		intel_de_write(dev_priv, intel_sdvo->sdvo_reg, val);
-		intel_de_posting_read(dev_priv, intel_sdvo->sdvo_reg);
+		intel_de_write(display, intel_sdvo->sdvo_reg, val);
+		intel_de_posting_read(display, intel_sdvo->sdvo_reg);
 		/*
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
 		if (HAS_PCH_IBX(dev_priv)) {
-			intel_de_write(dev_priv, intel_sdvo->sdvo_reg, val);
-			intel_de_posting_read(dev_priv, intel_sdvo->sdvo_reg);
+			intel_de_write(display, intel_sdvo->sdvo_reg, val);
+			intel_de_posting_read(display, intel_sdvo->sdvo_reg);
 		}
 		return;
 	}
 
 	if (intel_sdvo->base.port == PORT_B)
-		cval = intel_de_read(dev_priv, GEN3_SDVOC);
+		cval = intel_de_read(display, GEN3_SDVOC);
 	else
-		bval = intel_de_read(dev_priv, GEN3_SDVOB);
+		bval = intel_de_read(display, GEN3_SDVOB);
 
 	/*
 	 * Write the registers twice for luck. Sometimes,
@@ -243,17 +243,17 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 	 * The BIOS does this too. Yay, magic
 	 */
 	for (i = 0; i < 2; i++) {
-		intel_de_write(dev_priv, GEN3_SDVOB, bval);
-		intel_de_posting_read(dev_priv, GEN3_SDVOB);
+		intel_de_write(display, GEN3_SDVOB, bval);
+		intel_de_posting_read(display, GEN3_SDVOB);
 
-		intel_de_write(dev_priv, GEN3_SDVOC, cval);
-		intel_de_posting_read(dev_priv, GEN3_SDVOC);
+		intel_de_write(display, GEN3_SDVOC, cval);
+		intel_de_posting_read(display, GEN3_SDVOC);
 	}
 }
 
 static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct i2c_msg msgs[] = {
 		{
 			.addr = intel_sdvo->target_addr,
@@ -273,7 +273,7 @@ static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
 	if ((ret = i2c_transfer(intel_sdvo->i2c, msgs, 2)) == 2)
 		return true;
 
-	drm_dbg_kms(&i915->drm, "i2c transfer returned %d\n", ret);
+	drm_dbg_kms(display->drm, "i2c transfer returned %d\n", ret);
 	return false;
 }
 
@@ -415,7 +415,7 @@ static const char *sdvo_cmd_name(u8 cmd)
 static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
 				   const void *args, int args_len)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	const char *cmd_name;
 	int i, pos = 0;
 	char buffer[64];
@@ -436,10 +436,10 @@ static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
 	else
 		BUF_PRINT("(%02X)", cmd);
 
-	drm_WARN_ON(&dev_priv->drm, pos >= sizeof(buffer) - 1);
+	drm_WARN_ON(display->drm, pos >= sizeof(buffer) - 1);
 #undef BUF_PRINT
 
-	drm_dbg_kms(&dev_priv->drm, "%s: W: %02X %s\n", SDVO_NAME(intel_sdvo),
+	drm_dbg_kms(display->drm, "%s: W: %02X %s\n", SDVO_NAME(intel_sdvo),
 		    cmd, buffer);
 }
 
@@ -465,7 +465,7 @@ static bool __intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
 				   const void *args, int args_len,
 				   bool unlocked)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u8 *buf, status;
 	struct i2c_msg *msgs;
 	int i, ret = true;
@@ -515,13 +515,13 @@ static bool __intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
 	else
 		ret = __i2c_transfer(intel_sdvo->i2c, msgs, i+3);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "I2c transfer returned %d\n", ret);
+		drm_dbg_kms(display->drm, "I2c transfer returned %d\n", ret);
 		ret = false;
 		goto out;
 	}
 	if (ret != i+3) {
 		/* failure in I2C transfer */
-		drm_dbg_kms(&i915->drm, "I2c transfer returned %d/%d\n", ret, i+3);
+		drm_dbg_kms(display->drm, "I2c transfer returned %d/%d\n", ret, i + 3);
 		ret = false;
 	}
 
@@ -540,7 +540,7 @@ static bool intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
 static bool intel_sdvo_read_response(struct intel_sdvo *intel_sdvo,
 				     void *response, int response_len)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	const char *cmd_status;
 	u8 retry = 15; /* 5 quick checks, followed by 10 long checks */
 	u8 status;
@@ -605,15 +605,15 @@ static bool intel_sdvo_read_response(struct intel_sdvo *intel_sdvo,
 		BUF_PRINT(" %02X", ((u8 *)response)[i]);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, pos >= sizeof(buffer) - 1);
+	drm_WARN_ON(display->drm, pos >= sizeof(buffer) - 1);
 #undef BUF_PRINT
 
-	drm_dbg_kms(&dev_priv->drm, "%s: R: %s\n",
+	drm_dbg_kms(display->drm, "%s: R: %s\n",
 		    SDVO_NAME(intel_sdvo), buffer);
 	return true;
 
 log_fail:
-	drm_dbg_kms(&dev_priv->drm, "%s: R: ... failed %s\n",
+	drm_dbg_kms(display->drm, "%s: R: ... failed %s\n",
 		    SDVO_NAME(intel_sdvo), buffer);
 	return false;
 }
@@ -1009,7 +1009,7 @@ static bool intel_sdvo_write_infoframe(struct intel_sdvo *intel_sdvo,
 				       unsigned int if_index, u8 tx_rate,
 				       const u8 *data, unsigned int length)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u8 set_buf_index[2] = { if_index, 0 };
 	u8 hbuf_size, tmp[8];
 	int i;
@@ -1022,7 +1022,7 @@ static bool intel_sdvo_write_infoframe(struct intel_sdvo *intel_sdvo,
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
 		return false;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "writing sdvo hbuf: %i, length %u, hbuf_size: %i\n",
 		    if_index, length, hbuf_size);
 
@@ -1049,7 +1049,7 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 					 unsigned int if_index,
 					 u8 *data, unsigned int length)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u8 set_buf_index[2] = { if_index, 0 };
 	u8 hbuf_size, tx_rate, av_split;
 	int i;
@@ -1079,7 +1079,7 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
 		return false;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "reading sdvo hbuf: %i, length %u, hbuf_size: %i\n",
 		    if_index, length, hbuf_size);
 
@@ -1100,7 +1100,7 @@ static bool intel_sdvo_compute_avi_infoframe(struct intel_sdvo *intel_sdvo,
 					     struct intel_crtc_state *crtc_state,
 					     struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
@@ -1126,7 +1126,7 @@ static bool intel_sdvo_compute_avi_infoframe(struct intel_sdvo *intel_sdvo,
 					   HDMI_QUANTIZATION_RANGE_FULL);
 
 	ret = hdmi_avi_infoframe_check(frame);
-	if (drm_WARN_ON(&dev_priv->drm, ret))
+	if (drm_WARN_ON(display->drm, ret))
 		return false;
 
 	return true;
@@ -1135,7 +1135,7 @@ static bool intel_sdvo_compute_avi_infoframe(struct intel_sdvo *intel_sdvo,
 static bool intel_sdvo_set_avi_infoframe(struct intel_sdvo *intel_sdvo,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u8 sdvo_data[HDMI_INFOFRAME_SIZE(AVI)];
 	const union hdmi_infoframe *frame = &crtc_state->infoframes.avi;
 	ssize_t len;
@@ -1144,12 +1144,12 @@ static bool intel_sdvo_set_avi_infoframe(struct intel_sdvo *intel_sdvo,
 	     intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI)) == 0)
 		return true;
 
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			frame->any.type != HDMI_INFOFRAME_TYPE_AVI))
 		return false;
 
 	len = hdmi_infoframe_pack_only(frame, sdvo_data, sizeof(sdvo_data));
-	if (drm_WARN_ON(&dev_priv->drm, len < 0))
+	if (drm_WARN_ON(display->drm, len < 0))
 		return false;
 
 	return intel_sdvo_write_infoframe(intel_sdvo, SDVO_HBUF_INDEX_AVI_IF,
@@ -1160,7 +1160,7 @@ static bool intel_sdvo_set_avi_infoframe(struct intel_sdvo *intel_sdvo,
 static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 					 struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u8 sdvo_data[HDMI_INFOFRAME_SIZE(AVI)];
 	union hdmi_infoframe *frame = &crtc_state->infoframes.avi;
 	ssize_t len;
@@ -1172,7 +1172,7 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 	len = intel_sdvo_read_infoframe(intel_sdvo, SDVO_HBUF_INDEX_AVI_IF,
 					sdvo_data, sizeof(sdvo_data));
 	if (len < 0) {
-		drm_dbg_kms(&i915->drm, "failed to read AVI infoframe\n");
+		drm_dbg_kms(display->drm, "failed to read AVI infoframe\n");
 		return;
 	} else if (len == 0) {
 		return;
@@ -1183,12 +1183,12 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 
 	ret = hdmi_infoframe_unpack(frame, sdvo_data, len);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "Failed to unpack AVI infoframe\n");
+		drm_dbg_kms(display->drm, "Failed to unpack AVI infoframe\n");
 		return;
 	}
 
 	if (frame->any.type != HDMI_INFOFRAME_TYPE_AVI)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
 			    frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
 }
@@ -1196,7 +1196,7 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
 			       struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	ssize_t len;
 	u8 val;
 
@@ -1212,7 +1212,7 @@ static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
 	len = intel_sdvo_read_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
 					crtc_state->eld, sizeof(crtc_state->eld));
 	if (len < 0)
-		drm_dbg_kms(&i915->drm, "failed to read ELD\n");
+		drm_dbg_kms(display->drm, "failed to read ELD\n");
 }
 
 static bool intel_sdvo_set_tv_format(struct intel_sdvo *intel_sdvo,
@@ -1282,7 +1282,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
 
 static int i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(pipe_config);
 	unsigned int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
 	struct dpll *clock = &pipe_config->dpll;
 
@@ -1303,7 +1303,7 @@ static int i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 		clock->m1 = 12;
 		clock->m2 = 8;
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "SDVO TV clock out of range: %i\n", dotclock);
 		return -EINVAL;
 	}
@@ -1359,6 +1359,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	struct intel_sdvo_connector *intel_sdvo_connector =
@@ -1366,13 +1367,13 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_display_mode *mode = &pipe_config->hw.mode;
 
-	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev))) {
+	if (HAS_PCH_SPLIT(i915)) {
 		pipe_config->has_pch_encoder = true;
 		if (!intel_fdi_compute_pipe_bpp(pipe_config))
 			return -EINVAL;
 	}
 
-	drm_dbg_kms(&i915->drm, "forcing bpc to 8 for SDVO\n");
+	drm_dbg_kms(display->drm, "forcing bpc to 8 for SDVO\n");
 	/* FIXME: Don't increase pipe_bpp */
 	pipe_config->pipe_bpp = 8*3;
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1451,7 +1452,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	if (!intel_sdvo_compute_avi_infoframe(intel_sdvo,
 					      pipe_config, conn_state)) {
-		drm_dbg_kms(&i915->drm, "bad AVI infoframe\n");
+		drm_dbg_kms(display->drm, "bad AVI infoframe\n");
 		return -EINVAL;
 	}
 
@@ -1525,6 +1526,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(intel_encoder);
 	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
@@ -1570,7 +1572,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 		intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
 	}
 	if (!intel_sdvo_set_output_timing(intel_sdvo, &output_dtd))
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "Setting output timings on %s failed\n",
 			 SDVO_NAME(intel_sdvo));
 
@@ -1600,13 +1602,13 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	if (IS_TV(intel_sdvo_connector) || IS_LVDS(intel_sdvo_connector))
 		input_dtd.part2.sdvo_flags = intel_sdvo->dtd_sdvo_flags;
 	if (!intel_sdvo_set_input_timing(intel_sdvo, &input_dtd))
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "Setting input timings on %s failed\n",
 			 SDVO_NAME(intel_sdvo));
 
 	switch (crtc_state->pixel_multiplier) {
 	default:
-		drm_WARN(&dev_priv->drm, 1,
+		drm_WARN(display->drm, 1,
 			 "unknown pixel multiplier specified\n");
 		fallthrough;
 	case 1: rate = SDVO_CLOCK_RATE_MULT_1X; break;
@@ -1617,14 +1619,14 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 		return;
 
 	/* Set the SDVO control regs. */
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		/* The real mode polarity is set by the SDVO commands, using
 		 * struct intel_sdvo_dtd. */
 		sdvox = SDVO_VSYNC_ACTIVE_HIGH | SDVO_HSYNC_ACTIVE_HIGH;
-		if (DISPLAY_VER(dev_priv) < 5)
+		if (DISPLAY_VER(display) < 5)
 			sdvox |= SDVO_BORDER_ENABLE;
 	} else {
-		sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
+		sdvox = intel_de_read(display, intel_sdvo->sdvo_reg);
 		if (intel_sdvo->base.port == PORT_B)
 			sdvox &= SDVOB_PRESERVE_MASK;
 		else
@@ -1637,10 +1639,10 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	else
 		sdvox |= SDVO_PIPE_SEL(crtc->pipe);
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		/* done in crtc_mode_set as the dpll_md reg must be written early */
-	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
-		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.i945g || display->platform.i945gm ||
+		   display->platform.g33 || display->platform.pineview) {
 		/* done in crtc_mode_set as it lives inside the dpll register */
 	} else {
 		sdvox |= (crtc_state->pixel_multiplier - 1)
@@ -1648,7 +1650,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	}
 
 	if (input_dtd.part2.sdvo_flags & SDVO_NEED_TO_STALL &&
-	    DISPLAY_VER(dev_priv) < 5)
+	    DISPLAY_VER(display) < 5)
 		sdvox |= SDVO_STALL_SELECT;
 	intel_sdvo_write_sdvox(intel_sdvo, sdvox);
 }
@@ -1665,17 +1667,18 @@ static bool intel_sdvo_connector_get_hw_state(struct intel_connector *connector)
 	return active_outputs & intel_sdvo_connector->output_flag;
 }
 
-bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_sdvo_port_enabled(struct intel_display *display,
 			     i915_reg_t sdvo_reg, enum pipe *pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	val = intel_de_read(dev_priv, sdvo_reg);
+	val = intel_de_read(display, sdvo_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
 		*pipe = (val & SDVO_PIPE_SEL_MASK_CPT) >> SDVO_PIPE_SEL_SHIFT_CPT;
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.cherryview)
 		*pipe = (val & SDVO_PIPE_SEL_MASK_CHV) >> SDVO_PIPE_SEL_SHIFT_CHV;
 	else
 		*pipe = (val & SDVO_PIPE_SEL_MASK) >> SDVO_PIPE_SEL_SHIFT;
@@ -1686,14 +1689,14 @@ bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
 static bool intel_sdvo_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	u16 active_outputs = 0;
 	bool ret;
 
 	intel_sdvo_get_active_outputs(intel_sdvo, &active_outputs);
 
-	ret = intel_sdvo_port_enabled(dev_priv, intel_sdvo->sdvo_reg, pipe);
+	ret = intel_sdvo_port_enabled(display, intel_sdvo->sdvo_reg, pipe);
 
 	return ret || active_outputs;
 }
@@ -1701,8 +1704,7 @@ static bool intel_sdvo_get_hw_state(struct intel_encoder *encoder,
 static void intel_sdvo_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	struct intel_sdvo_dtd dtd;
 	int encoder_pixel_multiplier = 0;
@@ -1713,7 +1715,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_SDVO);
 
-	sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
+	sdvox = intel_de_read(display, intel_sdvo->sdvo_reg);
 
 	ret = intel_sdvo_get_input_timing(intel_sdvo, &dtd);
 	if (!ret) {
@@ -1721,7 +1723,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 		 * Some sdvo encoders are not spec compliant and don't
 		 * implement the mandatory get_timings function.
 		 */
-		drm_dbg(&dev_priv->drm, "failed to retrieve SDVO DTD\n");
+		drm_dbg_kms(display->drm, "failed to retrieve SDVO DTD\n");
 		pipe_config->quirks |= PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS;
 	} else {
 		if (dtd.part2.dtd_flags & DTD_FLAG_HSYNC_POSITIVE)
@@ -1744,7 +1746,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	 * encoder->get_config we so already have a valid pixel multiplier on all
 	 * other platforms.
 	 */
-	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
+	if (display->platform.i915g || display->platform.i915gm) {
 		pipe_config->pixel_multiplier =
 			((sdvox & SDVO_PORT_MULTIPLY_MASK)
 			 >> SDVO_PORT_MULTIPLY_SHIFT) + 1;
@@ -1773,7 +1775,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 		}
 	}
 
-	drm_WARN(dev,
+	drm_WARN(display->drm,
 		 encoder_pixel_multiplier != pipe_config->pixel_multiplier,
 		 "SDVO pixel multiplier mismatch, port: %i, encoder: %i\n",
 		 pipe_config->pixel_multiplier, encoder_pixel_multiplier);
@@ -1849,7 +1851,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 		intel_sdvo_set_encoder_power_state(intel_sdvo,
 						   DRM_MODE_DPMS_OFF);
 
-	temp = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
+	temp = intel_de_read(display, intel_sdvo->sdvo_reg);
 
 	temp &= ~SDVO_ENABLE;
 	intel_sdvo_write_sdvox(intel_sdvo, temp);
@@ -1900,8 +1902,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *pipe_config,
 			      const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(conn_state->connector);
@@ -1911,7 +1912,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	int i;
 	bool success;
 
-	temp = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
+	temp = intel_de_read(display, intel_sdvo->sdvo_reg);
 	temp |= SDVO_ENABLE;
 	intel_sdvo_write_sdvox(intel_sdvo, temp);
 
@@ -1926,7 +1927,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	 * a given it the status is a success, we succeeded.
 	 */
 	if (success && !input1) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "First %s output reported failure to sync\n",
 			    SDVO_NAME(intel_sdvo));
 	}
@@ -1941,12 +1942,13 @@ static enum drm_mode_status
 intel_sdvo_mode_valid(struct drm_connector *connector,
 		      const struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, connector->state);
-	int max_dotclk = i915->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 	int clock = mode->clock;
 
@@ -1982,14 +1984,15 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 
 static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct intel_sdvo_caps *caps)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
+
 	BUILD_BUG_ON(sizeof(*caps) != 8);
 	if (!intel_sdvo_get_value(intel_sdvo,
 				  SDVO_CMD_GET_DEVICE_CAPS,
 				  caps, sizeof(*caps)))
 		return false;
 
-	drm_dbg_kms(&i915->drm, "SDVO capabilities:\n"
+	drm_dbg_kms(display->drm, "SDVO capabilities:\n"
 		    "  vendor_id: %d\n"
 		    "  device_id: %d\n"
 		    "  device_rev_id: %d\n"
@@ -2031,17 +2034,17 @@ static u8 intel_sdvo_get_colorimetry_cap(struct intel_sdvo *intel_sdvo)
 
 static u16 intel_sdvo_get_hotplug_support(struct intel_sdvo *intel_sdvo)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u16 hotplug;
 
-	if (!I915_HAS_HOTPLUG(dev_priv))
+	if (!I915_HAS_HOTPLUG(display))
 		return 0;
 
 	/*
 	 * HW Erratum: SDVO Hotplug is broken on all i945G chips, there's noise
 	 * on the line.
 	 */
-	if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
+	if (display->platform.i945g || display->platform.i945gm)
 		return 0;
 
 	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_HOT_PLUG_SUPPORT,
@@ -2138,13 +2141,12 @@ static enum drm_connector_status
 intel_sdvo_detect(struct drm_connector *connector, bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);
 	enum drm_connector_status ret;
 	u16 response;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	if (!intel_display_device_enabled(display))
@@ -2162,7 +2164,7 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 				  &response, 2))
 		return connector_status_unknown;
 
-	drm_dbg_kms(&i915->drm, "SDVO response %d %d [%x]\n",
+	drm_dbg_kms(display->drm, "SDVO response %d %d [%x]\n",
 		    response & 0xff, response >> 8,
 		    intel_sdvo_connector->output_flag);
 
@@ -2301,7 +2303,6 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	const struct drm_connector_state *conn_state = connector->state;
@@ -2310,7 +2311,7 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	int num_modes = 0;
 	int i;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	if (!intel_display_driver_check_access(display))
@@ -2352,9 +2353,9 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 
 static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	return intel_panel_get_modes(to_intel_connector(connector));
@@ -2618,14 +2619,14 @@ static struct intel_sdvo_ddc *
 intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo,
 			  struct intel_sdvo_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&sdvo->base);
 	const struct sdvo_device_mapping *mapping;
 	int ddc_bus;
 
 	if (sdvo->base.port == PORT_B)
-		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		mapping = &display->vbt.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		mapping = &display->vbt.sdvo_mappings[1];
 
 	if (mapping->initialized)
 		ddc_bus = (mapping->ddc_pin & 0xf0) >> 4;
@@ -2642,14 +2643,13 @@ static void
 intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 {
 	struct intel_display *display = to_intel_display(&sdvo->base);
-	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	const struct sdvo_device_mapping *mapping;
 	u8 pin;
 
 	if (sdvo->base.port == PORT_B)
-		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		mapping = &display->vbt.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		mapping = &display->vbt.sdvo_mappings[1];
 
 	if (mapping->initialized &&
 	    intel_gmbus_is_valid_pin(display, mapping->i2c_pin))
@@ -2657,7 +2657,7 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 	else
 		pin = GMBUS_PIN_DPB;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] I2C pin %d, target addr 0x%x\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] I2C pin %d, target addr 0x%x\n",
 		    sdvo->base.base.base.id, sdvo->base.base.name,
 		    pin, sdvo->target_addr);
 
@@ -2687,15 +2687,15 @@ intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo)
 static u8
 intel_sdvo_get_target_addr(struct intel_sdvo *sdvo)
 {
-	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&sdvo->base);
 	const struct sdvo_device_mapping *my_mapping, *other_mapping;
 
 	if (sdvo->base.port == PORT_B) {
-		my_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
-		other_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		my_mapping = &display->vbt.sdvo_mappings[0];
+		other_mapping = &display->vbt.sdvo_mappings[1];
 	} else {
-		my_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
-		other_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		my_mapping = &display->vbt.sdvo_mappings[1];
+		other_mapping = &display->vbt.sdvo_mappings[0];
 	}
 
 	/* If the BIOS described our SDVO device, take advantage of it. */
@@ -2731,7 +2731,7 @@ static int
 intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 			  struct intel_sdvo *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.base.dev);
+	struct intel_display *display = to_intel_display(&encoder->base);
 	struct intel_sdvo_ddc *ddc = NULL;
 	int ret;
 
@@ -2756,7 +2756,7 @@ intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 	intel_connector_attach_encoder(&connector->base, &encoder->base);
 
 	if (ddc)
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s\n",
+		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] using %s\n",
 			    connector->base.base.base.id, connector->base.base.name,
 			    ddc->ddc.name);
 
@@ -2799,14 +2799,14 @@ static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
 static bool
 intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
-	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	drm_dbg_kms(&i915->drm, "initialising DVI type 0x%x\n", type);
+	drm_dbg_kms(display->drm, "initialising DVI type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2852,13 +2852,13 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 static bool
 intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	drm_dbg_kms(&i915->drm, "initialising TV type 0x%x\n", type);
+	drm_dbg_kms(display->drm, "initialising TV type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2892,13 +2892,13 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 static bool
 intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	drm_dbg_kms(&i915->drm, "initialising analog type 0x%x\n", type);
+	drm_dbg_kms(display->drm, "initialising analog type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2926,12 +2926,11 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
 	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
-	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	drm_dbg_kms(&i915->drm, "initialising LVDS type 0x%x\n", type);
+	drm_dbg_kms(display->drm, "initialising LVDS type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2961,12 +2960,12 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	intel_panel_add_vbt_sdvo_fixed_mode(intel_connector);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
-		mutex_lock(&i915->drm.mode_config.mutex);
+		mutex_lock(&display->drm->mode_config.mutex);
 
 		intel_ddc_get_modes(connector, connector->ddc);
 		intel_panel_add_edid_fixed_modes(intel_connector, false);
 
-		mutex_unlock(&i915->drm.mode_config.mutex);
+		mutex_unlock(&display->drm->mode_config.mutex);
 	}
 
 	intel_panel_init(intel_connector, NULL);
@@ -3015,7 +3014,7 @@ static bool intel_sdvo_output_init(struct intel_sdvo *sdvo, u16 type)
 static bool
 intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	static const u16 probe_order[] = {
 		SDVO_OUTPUT_TMDS0,
 		SDVO_OUTPUT_TMDS1,
@@ -3034,7 +3033,7 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 	flags = intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
 
 	if (flags == 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "%s: Unknown SDVO output type (0x%04x)\n",
 			    SDVO_NAME(intel_sdvo), intel_sdvo->caps.output_flags);
 		return false;
@@ -3057,11 +3056,11 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 
 static void intel_sdvo_output_cleanup(struct intel_sdvo *intel_sdvo)
 {
-	struct drm_device *dev = intel_sdvo->base.base.dev;
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_connector *connector, *tmp;
 
 	list_for_each_entry_safe(connector, tmp,
-				 &dev->mode_config.connector_list, head) {
+				 &display->drm->mode_config.connector_list, head) {
 		if (intel_attached_encoder(to_intel_connector(connector)) == &intel_sdvo->base) {
 			drm_connector_unregister(connector);
 			intel_connector_destroy(connector);
@@ -3073,7 +3072,7 @@ static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 					  struct intel_sdvo_connector *intel_sdvo_connector,
 					  int type)
 {
-	struct drm_device *dev = intel_sdvo->base.base.dev;
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct intel_sdvo_tv_format format;
 	u32 format_map, i;
 
@@ -3098,7 +3097,7 @@ static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 
 
 	intel_sdvo_connector->tv_format =
-		drm_property_create(dev, DRM_MODE_PROP_ENUM,
+		drm_property_create(display->drm, DRM_MODE_PROP_ENUM,
 				    "mode", intel_sdvo_connector->format_supported_num);
 	if (!intel_sdvo_connector->tv_format)
 		return false;
@@ -3120,12 +3119,12 @@ static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 		    !intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_##NAME, &response, 2)) \
 			return false; \
 		intel_sdvo_connector->name = \
-			drm_property_create_range(dev, 0, #name, 0, data_value[0]); \
+			drm_property_create_range(display->drm, 0, #name, 0, data_value[0]); \
 		if (!intel_sdvo_connector->name) return false; \
 		state_assignment = response; \
 		drm_object_attach_property(&connector->base, \
 					   intel_sdvo_connector->name, 0); \
-		drm_dbg_kms(dev, #name ": max %d, default %d, current %d\n", \
+		drm_dbg_kms(display->drm, #name ": max %d, default %d, current %d\n", \
 			    data_value[0], data_value[1], response); \
 	} \
 } while (0)
@@ -3137,8 +3136,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 				      struct intel_sdvo_connector *intel_sdvo_connector,
 				      struct intel_sdvo_enhancements_reply enhancements)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
-	struct drm_device *dev = intel_sdvo->base.base.dev;
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_connector *connector = &intel_sdvo_connector->base.base;
 	struct drm_connector_state *conn_state = connector->state;
 	struct intel_sdvo_connector_state *sdvo_state =
@@ -3161,7 +3159,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		intel_sdvo_connector->max_hscan = data_value[0];
 		intel_sdvo_connector->left =
-			drm_property_create_range(dev, 0, "left_margin", 0, data_value[0]);
+			drm_property_create_range(display->drm, 0, "left_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->left)
 			return false;
 
@@ -3169,13 +3167,13 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 					   intel_sdvo_connector->left, 0);
 
 		intel_sdvo_connector->right =
-			drm_property_create_range(dev, 0, "right_margin", 0, data_value[0]);
+			drm_property_create_range(display->drm, 0, "right_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->right)
 			return false;
 
 		drm_object_attach_property(&connector->base,
 					   intel_sdvo_connector->right, 0);
-		drm_dbg_kms(&i915->drm, "h_overscan: max %d, default %d, current %d\n",
+		drm_dbg_kms(display->drm, "h_overscan: max %d, default %d, current %d\n",
 			    data_value[0], data_value[1], response);
 	}
 
@@ -3194,7 +3192,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		intel_sdvo_connector->max_vscan = data_value[0];
 		intel_sdvo_connector->top =
-			drm_property_create_range(dev, 0,
+			drm_property_create_range(display->drm, 0,
 						  "top_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->top)
 			return false;
@@ -3203,14 +3201,14 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 					   intel_sdvo_connector->top, 0);
 
 		intel_sdvo_connector->bottom =
-			drm_property_create_range(dev, 0,
+			drm_property_create_range(display->drm, 0,
 						  "bottom_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->bottom)
 			return false;
 
 		drm_object_attach_property(&connector->base,
 					   intel_sdvo_connector->bottom, 0);
-		drm_dbg_kms(&i915->drm, "v_overscan: max %d, default %d, current %d\n",
+		drm_dbg_kms(display->drm, "v_overscan: max %d, default %d, current %d\n",
 			    data_value[0], data_value[1], response);
 	}
 
@@ -3233,13 +3231,13 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		sdvo_state->tv.dot_crawl = response & 0x1;
 		intel_sdvo_connector->dot_crawl =
-			drm_property_create_range(dev, 0, "dot_crawl", 0, 1);
+			drm_property_create_range(display->drm, 0, "dot_crawl", 0, 1);
 		if (!intel_sdvo_connector->dot_crawl)
 			return false;
 
 		drm_object_attach_property(&connector->base,
 					   intel_sdvo_connector->dot_crawl, 0);
-		drm_dbg_kms(&i915->drm, "dot crawl: current %d\n", response);
+		drm_dbg_kms(display->drm, "dot crawl: current %d\n", response);
 	}
 
 	return true;
@@ -3250,7 +3248,7 @@ intel_sdvo_create_enhance_property_lvds(struct intel_sdvo *intel_sdvo,
 					struct intel_sdvo_connector *intel_sdvo_connector,
 					struct intel_sdvo_enhancements_reply enhancements)
 {
-	struct drm_device *dev = intel_sdvo->base.base.dev;
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	struct drm_connector *connector = &intel_sdvo_connector->base.base;
 	u16 response, data_value[2];
 
@@ -3264,7 +3262,7 @@ intel_sdvo_create_enhance_property_lvds(struct intel_sdvo *intel_sdvo,
 static bool intel_sdvo_create_enhance_property(struct intel_sdvo *intel_sdvo,
 					       struct intel_sdvo_connector *intel_sdvo_connector)
 {
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	union {
 		struct intel_sdvo_enhancements_reply reply;
 		u16 response;
@@ -3276,7 +3274,7 @@ static bool intel_sdvo_create_enhance_property(struct intel_sdvo *intel_sdvo,
 				  SDVO_CMD_GET_SUPPORTED_ENHANCEMENTS,
 				  &enhancements, sizeof(enhancements)) ||
 	    enhancements.response == 0) {
-		drm_dbg_kms(&i915->drm, "No enhancement is supported\n");
+		drm_dbg_kms(display->drm, "No enhancement is supported\n");
 		return true;
 	}
 
@@ -3351,8 +3349,8 @@ static int
 intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
 			  struct intel_sdvo *sdvo, int ddc_bus)
 {
-	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct intel_display *display = to_intel_display(&sdvo->base);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
 	ddc->sdvo = sdvo;
 	ddc->ddc_bus = ddc_bus;
@@ -3368,25 +3366,26 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
 	return i2c_add_adapter(&ddc->ddc);
 }
 
-static bool is_sdvo_port_valid(struct drm_i915_private *dev_priv, enum port port)
+static bool is_sdvo_port_valid(struct intel_display *display, enum port port)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (HAS_PCH_SPLIT(dev_priv))
 		return port == PORT_B;
 	else
 		return port == PORT_B || port == PORT_C;
 }
 
-static bool assert_sdvo_port_valid(struct drm_i915_private *dev_priv,
-				   enum port port)
+static bool assert_sdvo_port_valid(struct intel_display *display, enum port port)
 {
-	return !drm_WARN(&dev_priv->drm, !is_sdvo_port_valid(dev_priv, port),
+	return !drm_WARN(display->drm, !is_sdvo_port_valid(display, port),
 			 "Platform does not support SDVO %c\n", port_name(port));
 }
 
-bool intel_sdvo_init(struct drm_i915_private *dev_priv,
+bool intel_sdvo_init(struct intel_display *display,
 		     i915_reg_t sdvo_reg, enum port port)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *intel_encoder;
 	struct intel_sdvo *intel_sdvo;
 	int i;
@@ -3394,7 +3393,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(display, port))
 		return false;
 
-	if (!assert_sdvo_port_valid(dev_priv, port))
+	if (!assert_sdvo_port_valid(display, port))
 		return false;
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
@@ -3407,7 +3406,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	intel_encoder->port = port;
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	drm_encoder_init(display->drm, &intel_encoder->base,
 			 &intel_sdvo_enc_funcs, 0,
 			 "SDVO %c", port_name(port));
 
@@ -3421,7 +3420,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		u8 byte;
 
 		if (!intel_sdvo_read_byte(intel_sdvo, i, &byte)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "No SDVO device found on %s\n",
 				    SDVO_NAME(intel_sdvo));
 			goto err;
@@ -3459,7 +3458,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	}
 
 	if (!intel_sdvo_output_setup(intel_sdvo)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "SDVO output failed to setup on %s\n",
 			    SDVO_NAME(intel_sdvo));
 		/* Output_setup can leave behind connectors! */
@@ -3496,7 +3495,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 						    &intel_sdvo->pixel_clock_max))
 		goto err_output;
 
-	drm_dbg_kms(&dev_priv->drm, "%s device VID/DID: %02X:%02X.%02X, "
+	drm_dbg_kms(display->drm, "%s device VID/DID: %02X:%02X.%02X, "
 		    "clock range %dMHz - %dMHz, "
 		    "num inputs: %d, "
 		    "output 1: %c, output 2: %c\n",
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.h b/drivers/gpu/drm/i915/display/intel_sdvo.h
index d1815b4103d4..1a9e40fdd8a8 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.h
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.h
@@ -10,22 +10,22 @@
 
 #include "i915_reg_defs.h"
 
-struct drm_i915_private;
 enum pipe;
 enum port;
+struct intel_display;
 
 #ifdef I915
-bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_sdvo_port_enabled(struct intel_display *display,
 			     i915_reg_t sdvo_reg, enum pipe *pipe);
-bool intel_sdvo_init(struct drm_i915_private *dev_priv,
+bool intel_sdvo_init(struct intel_display *display,
 		     i915_reg_t reg, enum port port);
 #else
-static inline bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
+static inline bool intel_sdvo_port_enabled(struct intel_display *display,
 					   i915_reg_t sdvo_reg, enum pipe *pipe)
 {
 	return false;
 }
-static inline bool intel_sdvo_init(struct drm_i915_private *dev_priv,
+static inline bool intel_sdvo_init(struct intel_display *display,
 				   i915_reg_t reg, enum port port)
 {
 	return false;
-- 
2.39.5

