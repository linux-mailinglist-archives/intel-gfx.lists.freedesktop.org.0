Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AC61517A8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33D26EE19;
	Tue,  4 Feb 2020 09:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36DE6EE19
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:49 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id g1so2342613wmh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RUyzC+c8vYroRHi3fnSKNMOgu+oThz6MUfasTxTX8hg=;
 b=pcfo8K0Nbn9qoDSpXkZUHZeZJm7G8IvaSq8tRTp6BCXAYDLJC/pwYqase2+StJrrmm
 LtmPP7D0AC+ANwnmTUE7/YOoUfbwH+smFXPs6mnpzZxkD2VnbDEwu/m8OlV2uwPpshGy
 D0onDahfPVazvr6TE8bgGfxnMQM/7qsomE3W3bQgesAMj6HnCi4MYGiJSwDEhwxmvNpm
 TWisuABdSQ4AP1GdvJhvHd9rU0X/HqcSu81teNhJ6Xgkebn74nKssdzgXGP6xBMEXQaR
 pMlR9OFUYfdcNT4hqsOPHI7u1FUJ4rC8gni5nIG/K1H9pGPAou9KxcZJrfI+wzWbj6tW
 TApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUyzC+c8vYroRHi3fnSKNMOgu+oThz6MUfasTxTX8hg=;
 b=NV66hY4xScZs3rWYdxV2nG0WnetXGIQzQw118ZWtyxOLRp5CciHusGi7sXuc++iBN6
 Qns0knKXgRys4Bmc8Xrqmhvl/5CJ6Vz3AZ6vOdFFierYBiatulDvRWB/ImL4s2SHuXsw
 eTQcbT+5l7yjAX7gIZVIy9mwEtcsidb9hNa6jjjbCx1vEm9ZMPjVhQyAFLnAjWy3wruh
 3enOG7UjErUNBiJoP9dVsCxXo9Y1fqW1SMImOIkryME7CEW92Wdz2gRPAB8tgwiEbafz
 /ughFJutdADhfu0qV8BqEMRxmhypPxLAMI6NYq9eNiq+GccbcYVdI2MRzsMd8xuZ1ZpZ
 QMlg==
X-Gm-Message-State: APjAAAUygrS6tE6B4zBnTgVh+A0fY7pb6GQQrP4nRud/J3HXlud9YhgY
 iIWGXGWcbjsQ2orfuKHgFv0=
X-Google-Smtp-Source: APXvYqx3MfsLAta/t/DtC8nJWNAp/YGv0+UMBS7SwUAihfQDvWR5qil0Qbk9Oz7xtIiR68cnh4odCg==
X-Received: by 2002:a1c:a515:: with SMTP id o21mr4737564wme.85.1580807988222; 
 Tue, 04 Feb 2020 01:19:48 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:47 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:54 +0300
Message-Id: <20200204091855.24259-12-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/i915/hdmi: convert to struct
 drm_device based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of various instances of the printk based drm logging macros
to the struct drm_device based logging macros in
i915/display/intel_hdmi.c.
This also involves extraction of the drm_i915_private device from
various intel/drm types for use in the logging macros.

Note that this converts DRM_DEBUG_DRIVER() to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 193 ++++++++++++++--------
 1 file changed, 128 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ab13cf834cc4..90ceea5eaa9c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -685,6 +685,7 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 			  union hdmi_infoframe *frame)
 {
 	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 buffer[VIDEO_DIP_DATA_SIZE];
 	int ret;
 
@@ -701,13 +702,15 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 	/* see comment above for the reason for this offset */
 	ret = hdmi_infoframe_unpack(frame, buffer + 1, sizeof(buffer) - 1);
 	if (ret) {
-		DRM_DEBUG_KMS("Failed to unpack infoframe type 0x%02x\n", type);
+		drm_dbg_kms(&i915->drm,
+			    "Failed to unpack infoframe type 0x%02x\n", type);
 		return;
 	}
 
 	if (frame->any.type != type)
-		DRM_DEBUG_KMS("Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
-			      frame->any.type, type);
+		drm_dbg_kms(&i915->drm,
+			    "Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
+			    frame->any.type, type);
 }
 
 static bool
@@ -847,7 +850,8 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 
 	ret = drm_hdmi_infoframe_set_hdr_metadata(frame, conn_state);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("couldn't set HDR metadata in infoframe\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "couldn't set HDR metadata in infoframe\n");
 		return false;
 	}
 
@@ -887,8 +891,9 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 		if (!(val & VIDEO_DIP_ENABLE))
 			return;
 		if (port != (val & VIDEO_DIP_PORT_MASK)) {
-			DRM_DEBUG_KMS("video DIP still enabled on port %c\n",
-				      (val & VIDEO_DIP_PORT_MASK) >> 29);
+			drm_dbg_kms(&dev_priv->drm,
+				    "video DIP still enabled on port %c\n",
+				    (val & VIDEO_DIP_PORT_MASK) >> 29);
 			return;
 		}
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
@@ -900,8 +905,9 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 
 	if (port != (val & VIDEO_DIP_PORT_MASK)) {
 		if (val & VIDEO_DIP_ENABLE) {
-			DRM_DEBUG_KMS("video DIP already enabled on port %c\n",
-				      (val & VIDEO_DIP_PORT_MASK) >> 29);
+			drm_dbg_kms(&dev_priv->drm,
+				    "video DIP already enabled on port %c\n",
+				    (val & VIDEO_DIP_PORT_MASK) >> 29);
 			return;
 		}
 		val &= ~VIDEO_DIP_PORT_MASK;
@@ -1258,8 +1264,8 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
 		return;
 
-	DRM_DEBUG_KMS("%s DP dual mode adaptor TMDS output\n",
-		      enable ? "Enabling" : "Disabling");
+	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
+		    enable ? "Enabling" : "Disabling");
 
 	drm_dp_dual_mode_set_tmds_output(hdmi->dp_dual_mode.type,
 					 adapter, enable);
@@ -1343,13 +1349,15 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 	ret = intel_hdmi_hdcp_write(intel_dig_port, DRM_HDCP_DDC_AN, an,
 				    DRM_HDCP_AN_LEN);
 	if (ret) {
-		DRM_DEBUG_KMS("Write An over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Write An over DDC failed (%d)\n",
+			    ret);
 		return ret;
 	}
 
 	ret = intel_gmbus_output_aksv(adapter);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("Failed to output aksv (%d)\n", ret);
+		drm_dbg_kms(&dev_priv->drm, "Failed to output aksv (%d)\n",
+			    ret);
 		return ret;
 	}
 	return 0;
@@ -1358,11 +1366,15 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
 				     u8 *bksv)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
+
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BKSV, bksv,
 				   DRM_HDCP_KSV_LEN);
 	if (ret)
-		DRM_DEBUG_KMS("Read Bksv over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "Read Bksv over DDC failed (%d)\n",
+			    ret);
 	return ret;
 }
 
@@ -1370,11 +1382,15 @@ static
 int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
 				 u8 *bstatus)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
+
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BSTATUS,
 				   bstatus, DRM_HDCP_BSTATUS_LEN);
 	if (ret)
-		DRM_DEBUG_KMS("Read bstatus over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "Read bstatus over DDC failed (%d)\n",
+			    ret);
 	return ret;
 }
 
@@ -1382,12 +1398,15 @@ static
 int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
 				     bool *repeater_present)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
 	u8 val;
 
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
-		DRM_DEBUG_KMS("Read bcaps over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
+			    ret);
 		return ret;
 	}
 	*repeater_present = val & DRM_HDCP_DDC_BCAPS_REPEATER_PRESENT;
@@ -1398,11 +1417,15 @@ static
 int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
 				  u8 *ri_prime)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
+
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_RI_PRIME,
 				   ri_prime, DRM_HDCP_RI_LEN);
 	if (ret)
-		DRM_DEBUG_KMS("Read Ri' over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "Read Ri' over DDC failed (%d)\n",
+			    ret);
 	return ret;
 }
 
@@ -1410,12 +1433,15 @@ static
 int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
 				   bool *ksv_ready)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
 	u8 val;
 
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
-		DRM_DEBUG_KMS("Read bcaps over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
+			    ret);
 		return ret;
 	}
 	*ksv_ready = val & DRM_HDCP_DDC_BCAPS_KSV_FIFO_READY;
@@ -1426,11 +1452,15 @@ static
 int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
 				  int num_downstream, u8 *ksv_fifo)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
+
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_KSV_FIFO,
 				   ksv_fifo, num_downstream * DRM_HDCP_KSV_LEN);
 	if (ret) {
-		DRM_DEBUG_KMS("Read ksv fifo over DDC failed (%d)\n", ret);
+		drm_dbg_kms(&i915->drm,
+			    "Read ksv fifo over DDC failed (%d)\n", ret);
 		return ret;
 	}
 	return 0;
@@ -1440,6 +1470,8 @@ static
 int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
 				      int i, u32 *part)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	int ret;
 
 	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
@@ -1448,7 +1480,8 @@ int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
 	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_V_PRIME(i),
 				   part, DRM_HDCP_V_PRIME_PART_LEN);
 	if (ret)
-		DRM_DEBUG_KMS("Read V'[%d] over DDC failed (%d)\n", i, ret);
+		drm_dbg_kms(&i915->drm, "Read V'[%d] over DDC failed (%d)\n",
+			    i, ret);
 	return ret;
 }
 
@@ -1471,12 +1504,14 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
 
 	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, false);
 	if (ret) {
-		DRM_ERROR("Disable HDCP signalling failed (%d)\n", ret);
+		drm_err(&dev_priv->drm,
+			"Disable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
 	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, true);
 	if (ret) {
-		DRM_ERROR("Enable HDCP signalling failed (%d)\n", ret);
+		drm_err(&dev_priv->drm,
+			"Enable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
 
@@ -1497,8 +1532,8 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 
 	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, enable);
 	if (ret) {
-		DRM_ERROR("%s HDCP signalling failed (%d)\n",
-			  enable ? "Enable" : "Disable", ret);
+		drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
+			enable ? "Enable" : "Disable", ret);
 		return ret;
 	}
 
@@ -1537,8 +1572,9 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	/* Wait for Ri prime match */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
-		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
-			  intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
+		drm_err(&dev_priv->drm,
+			"Ri' mismatch detected, link check failed (%x)\n",
+			intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		return false;
 	}
 	return true;
@@ -1591,12 +1627,15 @@ int hdcp2_detect_msg_availability(struct intel_digital_port *intel_digital_port,
 				  u8 msg_id, bool *msg_ready,
 				  ssize_t *msg_sz)
 {
+	struct drm_i915_private *i915 =
+		intel_digital_port->base.base.dev->dev_private;
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
 	int ret;
 
 	ret = intel_hdmi_hdcp2_read_rx_status(intel_digital_port, rx_status);
 	if (ret < 0) {
-		DRM_DEBUG_KMS("rx_status read failed. Err %d\n", ret);
+		drm_dbg_kms(&i915->drm, "rx_status read failed. Err %d\n",
+			    ret);
 		return ret;
 	}
 
@@ -1616,6 +1655,8 @@ static ssize_t
 intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
 			      u8 msg_id, bool paired)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	bool msg_ready = false;
 	int timeout, ret;
 	ssize_t msg_sz = 0;
@@ -1630,8 +1671,8 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
 			 !ret && msg_ready && msg_sz, timeout * 1000,
 			 1000, 5 * 1000);
 	if (ret)
-		DRM_DEBUG_KMS("msg_id: %d, ret: %d, timeout: %d\n",
-			      msg_id, ret, timeout);
+		drm_dbg_kms(&i915->drm, "msg_id: %d, ret: %d, timeout: %d\n",
+			    msg_id, ret, timeout);
 
 	return ret ? ret : msg_sz;
 }
@@ -1650,6 +1691,8 @@ static
 int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 			      u8 msg_id, void *buf, size_t size)
 {
+	struct drm_i915_private *i915 =
+		intel_dig_port->base.base.dev->dev_private;
 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
 	struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
 	unsigned int offset;
@@ -1665,15 +1708,17 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 	 * available buffer.
 	 */
 	if (ret > size) {
-		DRM_DEBUG_KMS("msg_sz(%zd) is more than exp size(%zu)\n",
-			      ret, size);
+		drm_dbg_kms(&i915->drm,
+			    "msg_sz(%zd) is more than exp size(%zu)\n",
+			    ret, size);
 		return -1;
 	}
 
 	offset = HDCP_2_2_HDMI_REG_RD_MSG_OFFSET;
 	ret = intel_hdmi_hdcp_read(intel_dig_port, offset, buf, ret);
 	if (ret)
-		DRM_DEBUG_KMS("Failed to read msg_id: %d(%zd)\n", msg_id, ret);
+		drm_dbg_kms(&i915->drm, "Failed to read msg_id: %d(%zd)\n",
+			    msg_id, ret);
 
 	return ret;
 }
@@ -1869,11 +1914,12 @@ static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *pipe_config,
 				    const struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 
 	drm_WARN_ON(encoder->base.dev, !pipe_config->has_hdmi_sink);
-	DRM_DEBUG_DRIVER("Enabling HDMI audio on pipe %c\n",
-			 pipe_name(crtc->pipe));
+	drm_dbg(&i915->drm, "Enabling HDMI audio on pipe %c\n",
+		pipe_name(crtc->pipe));
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
@@ -2293,10 +2339,12 @@ static bool
 intel_hdmi_ycbcr420_config(struct drm_connector *connector,
 			   struct intel_crtc_state *config)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(config->uapi.crtc);
 
 	if (!connector->ycbcr_420_allowed) {
-		DRM_ERROR("Platform doesn't support YCBCR420 output\n");
+		drm_err(&i915->drm,
+			"Platform doesn't support YCBCR420 output\n");
 		return false;
 	}
 
@@ -2304,7 +2352,8 @@ intel_hdmi_ycbcr420_config(struct drm_connector *connector,
 
 	/* YCBCR 420 output conversion needs a scaler */
 	if (skl_update_scaler_crtc(config)) {
-		DRM_DEBUG_KMS("Scaler allocation for output failed\n");
+		drm_dbg_kms(&i915->drm,
+			    "Scaler allocation for output failed\n");
 		return false;
 	}
 
@@ -2346,6 +2395,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 				    struct intel_crtc_state *crtc_state)
 {
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpc, clock = adjusted_mode->crtc_clock;
@@ -2369,13 +2419,15 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 	if (crtc_state->pipe_bpp > bpc * 3)
 		crtc_state->pipe_bpp = bpc * 3;
 
-	DRM_DEBUG_KMS("picking %d bpc for HDMI output (pipe bpp: %d)\n",
-		      bpc, crtc_state->pipe_bpp);
+	drm_dbg_kms(&i915->drm,
+		    "picking %d bpc for HDMI output (pipe bpp: %d)\n",
+		    bpc, crtc_state->pipe_bpp);
 
 	if (hdmi_port_clock_valid(intel_hdmi, crtc_state->port_clock,
 				  false, crtc_state->has_hdmi_sink) != MODE_OK) {
-		DRM_DEBUG_KMS("unsupported HDMI clock (%d kHz), rejecting mode\n",
-			      crtc_state->port_clock);
+		drm_dbg_kms(&i915->drm,
+			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
+			    crtc_state->port_clock);
 		return -EINVAL;
 	}
 
@@ -2438,7 +2490,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	if (drm_mode_is_420_only(&connector->display_info, adjusted_mode)) {
 		if (!intel_hdmi_ycbcr420_config(connector, pipe_config)) {
-			DRM_ERROR("Can't support YCBCR420 output\n");
+			drm_err(&dev_priv->drm,
+				"Can't support YCBCR420 output\n");
 			return -EINVAL;
 		}
 	}
@@ -2481,22 +2534,22 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config, conn_state);
 
 	if (!intel_hdmi_compute_avi_infoframe(encoder, pipe_config, conn_state)) {
-		DRM_DEBUG_KMS("bad AVI infoframe\n");
+		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_spd_infoframe(encoder, pipe_config, conn_state)) {
-		DRM_DEBUG_KMS("bad SPD infoframe\n");
+		drm_dbg_kms(&dev_priv->drm, "bad SPD infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_hdmi_infoframe(encoder, pipe_config, conn_state)) {
-		DRM_DEBUG_KMS("bad HDMI infoframe\n");
+		drm_dbg_kms(&dev_priv->drm, "bad HDMI infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_drm_infoframe(encoder, pipe_config, conn_state)) {
-		DRM_DEBUG_KMS("bad DRM infoframe\n");
+		drm_dbg_kms(&dev_priv->drm, "bad DRM infoframe\n");
 		return -EINVAL;
 	}
 
@@ -2546,7 +2599,8 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 		 */
 		if (has_edid && !connector->override_edid &&
 		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
-			DRM_DEBUG_KMS("Assuming DP dual mode adaptor presence based on VBT\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Assuming DP dual mode adaptor presence based on VBT\n");
 			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
 		} else {
 			type = DRM_DP_DUAL_MODE_NONE;
@@ -2560,9 +2614,10 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 	hdmi->dp_dual_mode.max_tmds_clock =
 		drm_dp_dual_mode_max_tmds_clock(type, adapter);
 
-	DRM_DEBUG_KMS("DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
-		      drm_dp_get_dual_mode_type_name(type),
-		      hdmi->dp_dual_mode.max_tmds_clock);
+	drm_dbg_kms(&dev_priv->drm,
+		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
+		    drm_dp_get_dual_mode_type_name(type),
+		    hdmi->dp_dual_mode.max_tmds_clock);
 }
 
 static bool
@@ -2582,7 +2637,8 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	edid = drm_get_edid(connector, i2c);
 
 	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
-		DRM_DEBUG_KMS("HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(i2c, true);
 		edid = drm_get_edid(connector, i2c);
 		intel_gmbus_force_bit(i2c, false);
@@ -2614,8 +2670,8 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 	intel_wakeref_t wakeref;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
@@ -2646,8 +2702,9 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 static void
 intel_hdmi_force(struct drm_connector *connector)
 {
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+	drm_dbg_kms(&to_i915(connector->dev)->drm,
+		    "[CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
 
 	intel_hdmi_unset_edid(connector);
 
@@ -2796,7 +2853,8 @@ static void intel_hdmi_create_i2c_symlink(struct drm_connector *connector)
 
 	ret = sysfs_create_link(connector_kobj, i2c_kobj, i2c_kobj->name);
 	if (ret)
-		DRM_ERROR("Failed to create i2c symlink (%d)\n", ret);
+		drm_err(&to_i915(connector->dev)->drm,
+			"Failed to create i2c symlink (%d)\n", ret);
 }
 
 static void intel_hdmi_remove_i2c_symlink(struct drm_connector *connector)
@@ -2925,9 +2983,10 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
 	if (!sink_scrambling->supported)
 		return true;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
-		      connector->base.id, connector->name,
-		      yesno(scrambling), high_tmds_clock_ratio ? 40 : 10);
+	drm_dbg_kms(&dev_priv->drm,
+		    "[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
+		    connector->base.id, connector->name,
+		    yesno(scrambling), high_tmds_clock_ratio ? 40 : 10);
 
 	/* Set TMDS bit clock ratio to 1/40 or 1/10, and enable/disable scrambling */
 	return drm_scdc_set_high_tmds_clock_ratio(adapter,
@@ -3069,8 +3128,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 
 	ddc_pin = intel_bios_alternate_ddc_pin(encoder);
 	if (ddc_pin) {
-		DRM_DEBUG_KMS("Using DDC pin 0x%x for port %c (VBT)\n",
-			      ddc_pin, port_name(port));
+		drm_dbg_kms(&dev_priv->drm,
+			    "Using DDC pin 0x%x for port %c (VBT)\n",
+			    ddc_pin, port_name(port));
 		return ddc_pin;
 	}
 
@@ -3087,8 +3147,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 	else
 		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
 
-	DRM_DEBUG_KMS("Using DDC pin 0x%x for port %c (platform default)\n",
-		      ddc_pin, port_name(port));
+	drm_dbg_kms(&dev_priv->drm,
+		    "Using DDC pin 0x%x for port %c (platform default)\n",
+		    ddc_pin, port_name(port));
 
 	return ddc_pin;
 }
@@ -3145,8 +3206,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	enum port port = intel_encoder->port;
 	struct cec_connector_info conn_info;
 
-	DRM_DEBUG_KMS("Adding HDMI connector on [ENCODER:%d:%s]\n",
-		      intel_encoder->base.base.id, intel_encoder->base.name);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Adding HDMI connector on [ENCODER:%d:%s]\n",
+		    intel_encoder->base.base.id, intel_encoder->base.name);
 
 	if (INTEL_GEN(dev_priv) < 12 && WARN_ON(port == PORT_A))
 		return;
@@ -3189,7 +3251,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 		int ret = intel_hdcp_init(intel_connector,
 					  &intel_hdmi_hdcp_shim);
 		if (ret)
-			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "HDCP init failed, skipping.\n");
 	}
 
 	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
@@ -3208,7 +3271,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 		cec_notifier_conn_register(dev->dev, port_identifier(port),
 					   &conn_info);
 	if (!intel_hdmi->cec_notifier)
-		DRM_DEBUG_KMS("CEC notifier get failed\n");
+		drm_dbg_kms(&dev_priv->drm, "CEC notifier get failed\n");
 }
 
 static enum intel_hotplug_state
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
