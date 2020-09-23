Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6242756F7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 13:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FDB6E969;
	Wed, 23 Sep 2020 11:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F8C6E967
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 11:16:41 +0000 (UTC)
IronPort-SDR: hT9mhc0adWDettajK6C55qd0gYmM5DEMTCrSLonCpziE0R8BP166qMFA0qk7bhpbsuzHrFTRzX
 lzoFV7Ks1l0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="178932845"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="178932845"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 04:16:41 -0700
IronPort-SDR: i6cy0sfO74KBcImyH69gCoD2CoIagOGrQoLR06JVfTRF7SlQADDOPegjt/tpJcG04U4KWKn1qH
 ga8LXuY7TgSg==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511610358"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 04:16:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 16:35:26 +0530
Message-Id: <20200923110527.28661-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200923110527.28661-1-anshuman.gupta@intel.com>
References: <20200923110527.28661-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/hdcp: HDCP stream encryption
 support
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both HDCP_{1.x,2.x} requires to select/deselect Multistream HDCP bit
in TRANS_DDI_FUNC_CTL in order to enable/disable stream HDCP
encryption over DP MST Transport Link.

HDCP 1.4 stream encryption requires to validate the stream encryption
status in HDCP_STATUS_{TRANSCODER,PORT} register driving that link
in order to enable/disable the stream encryption.

Both of above requirement are same for all Gen with respect to
B.Spec Documentation.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 +--
 drivers/gpu/drm/i915/display/intel_ddi.h      |  6 +-
 .../drm/i915/display/intel_display_types.h    |  4 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 80 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 14 ++--
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 6 files changed, 90 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 683b252f1dbe..c7d073ec7a14 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1849,9 +1849,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	}
 }
 
-int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
-				     enum transcoder cpu_transcoder,
-				     bool enable)
+int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
+			       enum transcoder cpu_transcoder,
+			       bool enable, u32 hdcp_mask)
 {
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -1866,9 +1866,9 @@ int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
 
 	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
 	if (enable)
-		tmp |= TRANS_DDI_HDCP_SIGNALLING;
+		tmp |= hdcp_mask;
 	else
-		tmp &= ~TRANS_DDI_HDCP_SIGNALLING;
+		tmp &= ~hdcp_mask;
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index f5fb62fc9400..69d9e495992c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -43,9 +43,9 @@ void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state);
 u32 bxt_signal_levels(struct intel_dp *intel_dp);
 u32 ddi_signal_levels(struct intel_dp *intel_dp);
-int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
-				     enum transcoder cpu_transcoder,
-				     bool enable);
+int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
+			       enum transcoder cpu_transcoder,
+			       bool enable, u32 hdcp_mask);
 void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
 
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1a9e186e4a5d..58075f63bf52 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -319,6 +319,10 @@ struct intel_hdcp_shim {
 				 enum transcoder cpu_transcoder,
 				 bool enable);
 
+	/* Enable/Disable stream encryption on DP MST Transport Link */
+	int (*stream_encryption)(struct intel_digital_port *dig_port,
+				 bool enable);
+
 	/* Ensures the link is still protected */
 	bool (*check_link)(struct intel_digital_port *dig_port,
 			   struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 03424d20e9f7..652d4645f255 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -16,6 +16,30 @@
 #include "intel_dp.h"
 #include "intel_hdcp.h"
 
+static unsigned int transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
+{
+	u32 stream_enc_mask;
+
+	switch (cpu_transcoder) {
+	case TRANSCODER_A:
+		stream_enc_mask = HDCP_STATUS_STREAM_A_ENC;
+		break;
+	case TRANSCODER_B:
+		stream_enc_mask = HDCP_STATUS_STREAM_B_ENC;
+		break;
+	case TRANSCODER_C:
+		stream_enc_mask = HDCP_STATUS_STREAM_C_ENC;
+		break;
+	case TRANSCODER_D:
+		stream_enc_mask = HDCP_STATUS_STREAM_D_ENC;
+		break;
+	default:
+		stream_enc_mask = 0;
+	}
+
+	return stream_enc_mask;
+}
+
 static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
 {
 	long ret;
@@ -622,24 +646,57 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 };
 
 static int
-intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
-				    enum transcoder cpu_transcoder,
-				    bool enable)
+intel_dp_mst_toggle_select_hdcp_stream(struct intel_digital_port *dig_port,
+				       bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	int ret;
 
-	if (!enable)
-		usleep_range(6, 60); /* Bspec says >= 6us */
-
-	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base,
-					       cpu_transcoder, enable);
+	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base,
+					 hdcp->stream_transcoder, enable,
+					 TRANS_DDI_HDCP_SELECT);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
-			      enable ? "Enable" : "Disable", ret);
+		drm_err(&i915->drm, "%s Multistream HDCP select failed (%d)\n",
+			enable ? "Enable" : "Disable", ret);
 	return ret;
 }
 
+static int
+intel_dp_mst_hdcp_strem_encryption(struct intel_digital_port *dig_port,
+				   bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
+	enum port port = dig_port->base.port;
+	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
+	u32 stream_enc_status;
+	int ret;
+
+	ret = intel_dp_mst_toggle_select_hdcp_stream(dig_port, enable);
+	if (ret)
+		return ret;
+
+	stream_enc_status =  transcoder_to_stream_enc_status(hdcp->stream_transcoder);
+	if (!stream_enc_status)
+		return -EINVAL;
+
+	/* Wait for encryption confirmation */
+	if (intel_de_wait_for_register(i915,
+				       HDCP_STATUS(i915, cpu_transcoder, port),
+				       stream_enc_status,
+				       enable ? stream_enc_status : 0,
+				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+		drm_err(&i915->drm, "Timed out waiting for stream encryption %s\n",
+			enable ? "enabled" : "disabled");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
 static
 bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
 				  struct intel_connector *connector)
@@ -673,7 +730,8 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.read_ksv_ready = intel_dp_hdcp_read_ksv_ready,
 	.read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
 	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
-	.toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
+	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
+	.stream_encryption = intel_dp_mst_hdcp_strem_encryption,
 	.check_link = intel_dp_mst_hdcp_check_link,
 	.hdcp_capable = intel_dp_hdcp_capable,
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3f2008d845c2..32ef12e9aaa3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1495,15 +1495,16 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 		usleep_range(25, 50);
 	}
 
-	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
-					       false);
+	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
+					 false, TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Disable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
-	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
-					       true);
+
+	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
+					 true, TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Enable HDCP signalling failed (%d)\n", ret);
@@ -1526,8 +1527,9 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 	if (!enable)
 		usleep_range(6, 60); /* Bspec says >= 6us */
 
-	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
-					       enable);
+	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base,
+					 cpu_transcoder, enable,
+					 TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
 		drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
 			enable ? "Enable" : "Disable", ret);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d805d4da6181..0f206ff40497 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9932,6 +9932,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_DP_VC_PAYLOAD_ALLOC	(1 << 8)
 #define  TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE (1 << 7)
 #define  TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ (1 << 6)
+#define  TRANS_DDI_HDCP_SELECT		REG_BIT(5)
 #define  TRANS_DDI_BFI_ENABLE		(1 << 4)
 #define  TRANS_DDI_HIGH_TMDS_CHAR_RATE	(1 << 4)
 #define  TRANS_DDI_HDMI_SCRAMBLING	(1 << 0)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
