Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F2278701
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 14:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67206ECC2;
	Fri, 25 Sep 2020 12:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A5A6ECBE;
 Fri, 25 Sep 2020 12:21:06 +0000 (UTC)
IronPort-SDR: FVuzr65QR8+nnON0UI1DW++i5f55oUgGipzzXK+tCuzjw1t45I4xmUNCeioHcBWE/PQLYXIex3
 m5ac2TdfsNjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="149163871"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="149163871"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 05:21:06 -0700
IronPort-SDR: e/gVa4lPD0Yd952e+2oJfBhTDRCyeBycoCwbkkS7oDdmidllFjwM9Yt4iVF04mayI0aJPBNo/P
 Fxf3FyikTG9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="383460378"
Received: from unknown (HELO linux-akn.iind.intel.com) ([10.223.34.148])
 by orsmga001.jf.intel.com with ESMTP; 25 Sep 2020 05:21:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 17:43:36 +0530
Message-Id: <20200925121340.29497-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200925121340.29497-1-ankit.k.nautiyal@intel.com>
References: <20200925121340.29497-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [RFC 3/7] drm/dp_helper: Add FRL training support for a
 DP-HDMI2.1 PCON
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
Cc: dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds support for configuring a PCON device,
connected as a DP branched device to enable FRL Link training
with a HDMI2.1 + sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 305 ++++++++++++++++++++++++++++++++
 include/drm/drm_dp_helper.h     |  81 +++++++++
 2 files changed, 386 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 478dd51f738d..36302d4924f4 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -2366,3 +2366,308 @@ void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
 #undef DP_SDP_LOG
 }
 EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
+
+/**
+ * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
+ * @dpcd: DisplayPort configuration data
+ * @port_cap: port capabilities
+ *
+ * Returns maximum frl bandwidth supported by PCON in GBPS.
+ **/
+int drm_dp_get_pcon_max_frl_bw(struct drm_dp_aux *aux,
+			       const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+			       const u8 port_cap[4])
+{
+	int bw;
+	u8 buf;
+
+	buf = port_cap[2];
+	bw = buf & DP_PCON_MAX_FRL_BW;
+
+	switch (bw) {
+	case DP_PCON_MAX_9GBPS:
+		return 9;
+	case DP_PCON_MAX_18GBPS:
+		return 18;
+	case DP_PCON_MAX_24GBPS:
+		return 24;
+	case DP_PCON_MAX_32GBPS:
+		return 32;
+	case DP_PCON_MAX_40GBPS:
+		return 40;
+	case DP_PCON_MAX_48GBPS:
+		return 48;
+	case DP_PCON_MAX_0GBPS:
+	default:
+		return 0;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_get_pcon_max_frl_bw);
+
+/**
+ * drm_dp_get_hdmi_max_frl_bw() - maximum frl supported by HDMI Sink
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns maximum frl bandwidth supported by HDMI in Gbps on success,
+ * else returns negative error code.
+ **/
+int drm_dp_get_hdmi_max_frl_bw(struct drm_dp_aux *aux)
+{
+	u8 buf;
+	int bw, ret;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_SINK, &buf);
+	if (ret < 0)
+		return ret;
+	bw = buf & DP_HDMI_SINK_LINK_BW;
+
+	switch (bw) {
+	case DP_HDMI_SINK_BW_9GBPS:
+		return 9;
+	case DP_HDMI_SINK_BW_18GBPS:
+		return 18;
+	case DP_HDMI_SINK_BW_24GBPS:
+		return 24;
+	case DP_HDMI_SINK_BW_32GBPS:
+		return 32;
+	case DP_HDMI_SINK_BW_40GBPS:
+		return 40;
+	case DP_HDMI_SINK_BW_48GBPS:
+		return 48;
+	case DP_HDMI_SINK_BW_0GBPS:
+	default:
+		return 0;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_get_hdmi_max_frl_bw);
+
+/**
+ * drm_dp_pcon_frl_prepare() - Prepare PCON for FRL.
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns 0 if success, else returns negative error code.
+ **/
+int drm_dp_pcon_frl_prepare(struct drm_dp_aux *aux, bool enable_frl_ready_hpd)
+{
+	int ret;
+	u8 buf = DP_PCON_ENABLE_SOURCE_CTL_MODE |
+		 DP_PCON_ENABLE_LINK_FRL_MODE;
+
+	if (enable_frl_ready_hpd)
+		buf |= DP_PCON_ENABLE_HPD_READY;
+
+	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_dp_pcon_frl_prepare);
+
+/**
+ * drm_dp_pcon_is_frl_ready() - Is PCON ready for FRL
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns true if success, else returns false.
+ **/
+bool drm_dp_pcon_is_frl_ready(struct drm_dp_aux *aux)
+{
+	int ret;
+	u8 buf;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_TX_LINK_STATUS, &buf);
+	if (ret < 0)
+		return false;
+
+	if (buf & DP_PCON_FRL_READY)
+		return true;
+
+	return false;
+}
+EXPORT_SYMBOL(drm_dp_pcon_is_frl_ready);
+
+/**
+ * drm_dp_pcon_frl_configure_1() - Set HDMI LINK Configuration-Step1
+ * @aux: DisplayPort AUX channel
+ * max_frl_mask: mask for selecting the bandwidths supported by source,
+ * to be tried by Pcon f/w.
+ * @concurrent_mode: true if concurrent mode or operation is required,
+ * false otherwise.
+ *
+ * Returns 0 if success, else returns negative error code.
+ **/
+
+int drm_dp_pcon_frl_configure_1(struct drm_dp_aux *aux, int max_frl_gbps,
+				bool concurrent_mode)
+{
+	int ret;
+	u8 buf;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_LINK_CONFIG_1, &buf);
+	if (ret < 0)
+		return ret;
+
+	if (concurrent_mode)
+		buf |= DP_PCON_ENABLE_CONCURRENT_LINK;
+	else
+		buf &= ~DP_PCON_ENABLE_CONCURRENT_LINK;
+
+	switch (max_frl_gbps) {
+	case 9:
+		buf |=  DP_PCON_ENABLE_MAX_BW_9GBPS;
+		break;
+	case 18:
+		buf |=  DP_PCON_ENABLE_MAX_BW_18GBPS;
+		break;
+	case 24:
+		buf |=  DP_PCON_ENABLE_MAX_BW_24GBPS;
+		break;
+	case 32:
+		buf |=  DP_PCON_ENABLE_MAX_BW_32GBPS;
+		break;
+	case 40:
+		buf |=  DP_PCON_ENABLE_MAX_BW_40GBPS;
+		break;
+	case 48:
+		buf |=  DP_PCON_ENABLE_MAX_BW_48GBPS;
+		break;
+	case 0:
+		buf |=  DP_PCON_ENABLE_MAX_BW_0GBPS;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_pcon_frl_configure_1);
+
+/**
+ * drm_dp_pcon_frl_configure_2() - Set HDMI Link configuration Step-2
+ * @aux: DisplayPort AUX channel
+ * @max_frl_mask : Max FRL BW to be tried by the PCON with HDMI Sink
+ * @extended_train_mode : true for Extended Mode, false for Normal Mode.
+ * In Normal mode, the PCON tries each frl bw from the max_frl_mask starting
+ * from min, and stops when link training is successful. In Extended mode, all
+ * frl bw selected in the mask are trained by the PCON.
+ *
+ * Returns 0 if success, else returns negative error code.
+ **/
+int drm_dp_pcon_frl_configure_2(struct drm_dp_aux *aux, int max_frl_mask,
+				bool extended_train_mode)
+{
+	int ret;
+	u8 buf = 0;
+
+	buf |= max_frl_mask;
+
+	if (extended_train_mode)
+		buf |= DP_PCON_FRL_LINK_TRAIN_EXTENDED;
+
+	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_2, buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_pcon_frl_configure_2);
+
+/**
+ * drm_dp_pcon_reset_frl_config() - Re-Set HDMI Link configuration.
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns 0 if success, else returns negative error code.
+ **/
+int drm_dp_pcon_reset_frl_config(struct drm_dp_aux *aux)
+{
+	int ret;
+
+	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, 0x0);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_pcon_reset_frl_config);
+
+/**
+ * drm_dp_pcon_frl_enable() - Enable HDMI link through FRL
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns 0 if success, else returns negative error code.
+ **/
+int drm_dp_pcon_frl_enable(struct drm_dp_aux *aux)
+{
+	int ret;
+	u8 buf = 0;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_LINK_CONFIG_1, &buf);
+	if (ret < 0)
+		return ret;
+	if (!(buf & DP_PCON_ENABLE_SOURCE_CTL_MODE)) {
+		DRM_DEBUG_KMS("PCON in Autonomous mode, can't enable FRL\n");
+		return -EINVAL;
+	}
+	buf |= DP_PCON_ENABLE_HDMI_LINK;
+	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_pcon_frl_enable);
+
+/**
+ * drm_dp_pcon_hdmi_link_active() - check if the PCON HDMI LINK status is active.
+ * @aux: DisplayPort AUX channel
+ *
+ * Returns true if link is active else returns false.
+ **/
+bool drm_dp_pcon_hdmi_link_active(struct drm_dp_aux *aux)
+{
+	u8 buf;
+	int ret;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_TX_LINK_STATUS, &buf);
+	if (ret < 0)
+		return false;
+
+	return buf & DP_PCON_HDMI_TX_LINK_ACTIVE;
+}
+EXPORT_SYMBOL(drm_dp_pcon_hdmi_link_active);
+
+/**
+ * drm_dp_pcon_hdmi_link_mode() - get the PCON HDMI LINK MODE
+ * @aux: DisplayPort AUX channel
+ * @frl_trained_mask: pointer to store bitmask of the trained bw configuration.
+ * Valid only if the MODE returned is FRL. For Normal Link training mode
+ * only 1 of the bits will be set, but in case of Extended mode, more than
+ * one bits can be set.
+ *
+ * Returns the link mode : TMDS or FRL on success, else retunes negative error
+ * code.
+ **/
+int drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8 *frl_trained_mask)
+{
+	u8 buf;
+	int mode;
+	int ret;
+
+	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_POST_FRL_STATUS, &buf);
+	if (ret < 0)
+		return ret;
+
+	mode = buf & DP_PCON_HDMI_LINK_MODE;
+
+	if (frl_trained_mask && DP_PCON_HDMI_MODE_FRL == mode)
+		*frl_trained_mask = (buf & DP_PCON_HDMI_FRL_TRAINED_BW) >> 1;
+
+	return mode;
+}
+EXPORT_SYMBOL(drm_dp_pcon_hdmi_link_mode);
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index e144b4b9d79a..58a6600e5698 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -411,6 +411,17 @@ struct drm_device;
 # define DP_DS_10BPC		            1
 # define DP_DS_12BPC		            2
 # define DP_DS_16BPC		            3
+/* HDMI2.1 PCON FRL CONFIGURATION */
+# define DP_PCON_MAX_FRL_BW                 (7 << 2)
+# define DP_PCON_MAX_0GBPS                  (0 << 2)
+# define DP_PCON_MAX_9GBPS                  (1 << 2)
+# define DP_PCON_MAX_18GBPS                 (2 << 2)
+# define DP_PCON_MAX_24GBPS                 (3 << 2)
+# define DP_PCON_MAX_32GBPS                 (4 << 2)
+# define DP_PCON_MAX_40GBPS                 (5 << 2)
+# define DP_PCON_MAX_48GBPS                 (6 << 2)
+# define DP_PCON_SOURCE_CTL_MODE            (1 << 5)
+
 /* offset 3 for DVI */
 # define DP_DS_DVI_DUAL_LINK		    (1 << 1)
 # define DP_DS_DVI_HIGH_COLOR_DEPTH	    (1 << 2)
@@ -1053,6 +1064,61 @@ struct drm_device;
 #define DP_CEC_RX_MESSAGE_BUFFER               0x3010
 #define DP_CEC_TX_MESSAGE_BUFFER               0x3020
 #define DP_CEC_MESSAGE_BUFFER_LENGTH             0x10
+/* PROTOCOL CONVERSION HDMI SINK */
+#define DP_PCON_HDMI_SINK                      0x3035
+# define DP_HDMI_SINK_LINK_BW                  (7 << 0)
+# define DP_HDMI_SINK_BW_0GBPS		       0
+# define DP_HDMI_SINK_BW_9GBPS		       1
+# define DP_HDMI_SINK_BW_18GBPS		       2
+# define DP_HDMI_SINK_BW_24GBPS		       3
+# define DP_HDMI_SINK_BW_32GBPS		       4
+# define DP_HDMI_SINK_BW_40GBPS		       5
+# define DP_HDMI_SINK_BW_48GBPS		       6
+
+/* PCON CONFIGURE-1 FRL FOR HDMI SINK */
+#define DP_PCON_HDMI_LINK_CONFIG_1             0x305A
+# define DP_PCON_ENABLE_MAX_FRL_BW             (7 << 0)
+# define DP_PCON_ENABLE_MAX_BW_0GBPS	       0
+# define DP_PCON_ENABLE_MAX_BW_9GBPS	       1
+# define DP_PCON_ENABLE_MAX_BW_18GBPS	       2
+# define DP_PCON_ENABLE_MAX_BW_24GBPS	       3
+# define DP_PCON_ENABLE_MAX_BW_32GBPS	       4
+# define DP_PCON_ENABLE_MAX_BW_40GBPS	       5
+# define DP_PCON_ENABLE_MAX_BW_48GBPS	       6
+# define DP_PCON_ENABLE_SOURCE_CTL_MODE       (1 << 3)
+# define DP_PCON_ENABLE_CONCURRENT_LINK       (1 << 4)
+# define DP_PCON_ENABLE_LINK_FRL_MODE         (1 << 5)
+# define DP_PCON_ENABLE_HPD_READY	      (1 << 6)
+# define DP_PCON_ENABLE_HDMI_LINK             (1 << 7)
+
+/* PCON CONFIGURE-2 FRL FOR HDMI SINK */
+#define DP_PCON_HDMI_LINK_CONFIG_2            0x305B
+# define DP_PCON_MAX_LINK_BW_MASK             (0x3F << 0)
+# define DP_PCON_FRL_BW_MASK_9GBPS            (1 << 0)
+# define DP_PCON_FRL_BW_MASK_18GBPS           (1 << 1)
+# define DP_PCON_FRL_BW_MASK_24GBPS           (1 << 2)
+# define DP_PCON_FRL_BW_MASK_32GBPS           (1 << 3)
+# define DP_PCON_FRL_BW_MASK_40GBPS           (1 << 4)
+# define DP_PCON_FRL_BW_MASK_48GBPS           (1 << 5)
+# define DP_PCON_FRL_LINK_TRAIN_EXTENDED      (1 << 6)
+
+/* PCON HDMI LINK STATUS */
+#define DP_PCON_HDMI_TX_LINK_STATUS           0x303B
+# define DP_PCON_HDMI_TX_LINK_ACTIVE          (1 << 0)
+# define DP_PCON_FRL_READY		      (1 << 1)
+
+/* PCON HDMI POST FRL STATUS */
+#define DP_PCON_HDMI_POST_FRL_STATUS          0x3036
+# define DP_PCON_HDMI_LINK_MODE               (1 << 0)
+# define DP_PCON_HDMI_MODE_TMDS               0
+# define DP_PCON_HDMI_MODE_FRL                1
+# define DP_PCON_HDMI_FRL_TRAINED_BW          (0x3F << 1)
+# define DP_PCON_FRL_TRAINED_BW_9GBPS	      (1 << 1)
+# define DP_PCON_FRL_TRAINED_BW_18GBPS	      (1 << 2)
+# define DP_PCON_FRL_TRAINED_BW_24GBPS	      (1 << 3)
+# define DP_PCON_FRL_TRAINED_BW_32GBPS	      (1 << 4)
+# define DP_PCON_FRL_TRAINED_BW_40GBPS	      (1 << 5)
+# define DP_PCON_FRL_TRAINED_BW_48GBPS	      (1 << 6)
 
 #define DP_PROTOCOL_CONVERTER_CONTROL_0		0x3050 /* DP 1.3 */
 # define DP_HDMI_DVI_OUTPUT_CONFIG		(1 << 0) /* DP 1.3 */
@@ -1904,4 +1970,19 @@ int drm_dp_get_phy_test_pattern(struct drm_dp_aux *aux,
 				struct drm_dp_phy_test_params *data);
 int drm_dp_set_phy_test_pattern(struct drm_dp_aux *aux,
 				struct drm_dp_phy_test_params *data, u8 dp_rev);
+int drm_dp_get_pcon_max_frl_bw(struct drm_dp_aux *aux,
+			       const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+			       const u8 port_cap[4]);
+int drm_dp_get_hdmi_max_frl_bw(struct drm_dp_aux *aux);
+int drm_dp_pcon_frl_prepare(struct drm_dp_aux *aux, bool enable_frl_ready_hpd);
+bool drm_dp_pcon_is_frl_ready(struct drm_dp_aux *aux);
+int drm_dp_pcon_frl_configure_1(struct drm_dp_aux *aux, int max_frl_gbps,
+				bool concurrent_mode);
+int drm_dp_pcon_frl_configure_2(struct drm_dp_aux *aux, int max_frl_mask,
+				bool extended_train_mode);
+int drm_dp_pcon_reset_frl_config(struct drm_dp_aux *aux);
+int drm_dp_pcon_frl_enable(struct drm_dp_aux *aux);
+
+bool drm_dp_pcon_hdmi_link_active(struct drm_dp_aux *aux);
+int drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8 *frl_trained_mask);
 #endif /* _DRM_DP_HELPER_H_ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
