Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60C2D251F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 08:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5096E962;
	Tue,  8 Dec 2020 07:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C094F6E963;
 Tue,  8 Dec 2020 07:58:21 +0000 (UTC)
IronPort-SDR: B5tXnQ1uaVJ/R58CBWVq1QuhlwU8dm5TmWaIafmjuNN9keg4QtfReeT5O+NTkiTZfWVhdZUn3b
 KmqypQsnwhWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="235448674"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="235448674"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 23:58:21 -0800
IronPort-SDR: a1RY83Y7ctZReeE9xKZAdVaUsXlTypN6xlJ/w9RMgKahtQh1Rz3nnEHaouTvkDPLwt5u2syKrM
 5oMHyg/yqoZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="317686521"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2020 23:58:19 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 13:21:36 +0530
Message-Id: <20201208075145.17389-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v4 07/16] drm/dp_helper: Add helpers to
 configure PCONs RGB-YCbCr Conversion
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP Specification for DP2.0 to HDMI2.1 Pcon specifies support for conversion
of colorspace from RGB to YCbCr.
https://groups.vesa.org/wg/DP/document/previewpdf/15651

This patch adds the relavant registers and helper functions to
get the capability and set the color conversion bits for rgb->ycbcr
conversion through PCON.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 59 +++++++++++++++++++++++++++++++++
 include/drm/drm_dp_helper.h     | 10 +++++-
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index d0626f57f99c..344662d5c295 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -949,6 +949,35 @@ bool drm_dp_downstream_444_to_420_conversion(const u8 dpcd[DP_RECEIVER_CAP_SIZE]
 }
 EXPORT_SYMBOL(drm_dp_downstream_444_to_420_conversion);
 
+/**
+ * drm_dp_downstream_rgb_to_ycbcr_conversion() - determine downstream facing port
+ *                                               RGB->YCbCr conversion capability
+ * @dpcd: DisplayPort configuration data
+ * @port_cap: downstream facing port capabilities
+ *
+ * Returns: whether the downstream facing port can convert RGB->YCbCr
+ */
+bool drm_dp_downstream_rgb_to_ycbcr_conversion(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+					       const u8 port_cap[4])
+{
+	if (!drm_dp_is_branch(dpcd))
+		return false;
+
+	if (dpcd[DP_DPCD_REV] < 0x13)
+		return false;
+
+	switch (port_cap[0] & DP_DS_PORT_TYPE_MASK) {
+	case DP_DS_PORT_TYPE_HDMI:
+		if ((dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DETAILED_CAP_INFO_AVAILABLE) == 0)
+			return false;
+
+		return port_cap[3] & DP_DS_HDMI_BT601_RGB_YCBCR_CONV;
+	default:
+		return false;
+	}
+}
+EXPORT_SYMBOL(drm_dp_downstream_rgb_to_ycbcr_conversion);
+
 /**
  * drm_dp_downstream_mode() - return a mode for downstream facing port
  * @dev: DRM device
@@ -3140,3 +3169,33 @@ int drm_dp_pcon_pps_override_param(struct drm_dp_aux *aux, u8 pps_param[6])
 	return 0;
 }
 EXPORT_SYMBOL(drm_dp_pcon_pps_override_param);
+
+/*
+ * drm_dp_pcon_convert_rgb_to_ycbcr() - Configure the PCon to convert RGB to Ycbcr
+ * @aux: displayPort AUX channel
+ * @color_spc: Color space conversion type
+ *
+ * Returns 0 on success, else returns negative error code.
+ */
+int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc)
+{
+	int ret;
+	u8 buf;
+
+	if (color_spc != DP_CONVERSION_BT601_RGB_YCBCR_ENABLE ||
+	    color_spc != DP_CONVERSION_BT709_RGB_YCBCR_ENABLE ||
+	    color_spc != DP_CONVERSION_BT2020_RGB_YCBCR_ENABLE)
+		return -EINVAL;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PROTOCOL_CONVERTER_CONTROL_2, &buf);
+	if (ret < 0)
+		return ret;
+
+	buf |= color_spc;
+	ret = drm_dp_dpcd_writeb(aux, DP_PROTOCOL_CONVERTER_CONTROL_2, buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_pcon_convert_rgb_to_ycbcr);
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 347b4e1a55b4..1b3d54ed7a78 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -431,6 +431,9 @@ struct drm_device;
 # define DP_DS_HDMI_YCBCR420_PASS_THROUGH   (1 << 2)
 # define DP_DS_HDMI_YCBCR444_TO_422_CONV    (1 << 3)
 # define DP_DS_HDMI_YCBCR444_TO_420_CONV    (1 << 4)
+# define DP_DS_HDMI_BT601_RGB_YCBCR_CONV    (1 << 5)
+# define DP_DS_HDMI_BT709_RGB_YCBCR_CONV    (1 << 6)
+# define DP_DS_HDMI_BT2020_RGB_YCBCR_CONV   (1 << 7)
 
 #define DP_MAX_DOWNSTREAM_PORTS		    0x10
 
@@ -1217,7 +1220,9 @@ struct drm_device;
 # define DP_PCON_ENC_PPS_OVERRIDE_DISABLED      0
 # define DP_PCON_ENC_PPS_OVERRIDE_EN_PARAMS     1
 # define DP_PCON_ENC_PPS_OVERRIDE_EN_BUFFER     2
-
+# define DP_CONVERSION_BT601_RGB_YCBCR_ENABLE  (1 << 4)
+# define DP_CONVERSION_BT709_RGB_YCBCR_ENABLE  (1 << 5)
+# define DP_CONVERSION_BT2020_RGB_YCBCR_ENABLE (1 << 6)
 
 /* PCON Downstream HDMI ERROR Status per Lane */
 #define DP_PCON_HDMI_ERROR_STATUS_LN0          0x3037
@@ -2178,5 +2183,8 @@ int drm_dp_pcon_dsc_bpp_incr(const u8 pcon_dsc_dpcd[DP_PCON_DSC_ENCODER_CAP_SIZE
 int drm_dp_pcon_pps_default(struct drm_dp_aux *aux);
 int drm_dp_pcon_pps_override_buf(struct drm_dp_aux *aux, u8 pps_buf[128]);
 int drm_dp_pcon_pps_override_param(struct drm_dp_aux *aux, u8 pps_param[6]);
+bool drm_dp_downstream_rgb_to_ycbcr_conversion(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+					       const u8 port_cap[4]);
+int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc);
 
 #endif /* _DRM_DP_HELPER_H_ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
