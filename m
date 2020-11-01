Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD032A1D1B
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Nov 2020 11:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1186EA8B;
	Sun,  1 Nov 2020 10:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842AF6EA88;
 Sun,  1 Nov 2020 10:13:56 +0000 (UTC)
IronPort-SDR: 4BAOWXsdM/b4vFbmXYkRoYnIoQrFr4goKE1KMw8NM8J0qP6LKgzqpzm/gBrIrlMqK6dnz/u05N
 BrWrC4i0srmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9791"; a="156558800"
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="156558800"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 02:13:55 -0800
IronPort-SDR: 7O919kOKPCGHTkN++IWfO1rQOnEum2S3j8cZuMZB6f6T1w4g/TvA1OdDXMflsZ75xbDlQgJGzg
 55VK9ky64cwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="425738578"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2020 02:13:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Nov 2020 15:36:49 +0530
Message-Id: <20201101100657.12087-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
References: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v2 05/13] drm/dp_helper: Add support for link
 failure detection
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

From: Swati Sharma <swati2.sharma@intel.com>

There are specific DPCDs defined for detecting link failures between
the PCON and HDMI sink and check the link status. In case of link
failure, PCON will communicate the same using an IRQ_HPD to source.
HDMI sink would have indicated the same to PCON using SCDC interrupt
mechanism. While source can always read final HDMI sink's status using
I2C over AUX, it is easier and faster to read the PCONs already read
HDMI sink status registers.

This patch adds the DPCDs required for link failure detection and
provide a helper function for printing error count/lane which might
help in debugging the link failure issues.

v2: Addressed comments from Uma Shankar:
-rephrased the commit message, as per the code.
-fixed styling issues
-added documentation for the helper function.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 39 +++++++++++++++++++++++++++++++++
 include/drm/drm_dp_helper.h     | 17 ++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index b67580294c4e..05782091e7e1 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -2893,3 +2893,42 @@ int drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8 *frl_trained_mask)
 	return mode;
 }
 EXPORT_SYMBOL(drm_dp_pcon_hdmi_link_mode);
+
+/**
+ * drm_dp_pcon_hdmi_frl_link_error_count() - print the error count per lane
+ * during link failure between PCON and HDMI sink
+ * @aux: DisplayPort AUX channel
+ * @connector: DRM connector
+ * code.
+ **/
+
+void drm_dp_pcon_hdmi_frl_link_error_count(struct drm_dp_aux *aux,
+					   struct drm_connector *connector)
+{
+	u8 buf, error_count;
+	int i, num_error;
+	struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;
+
+	for (i = 0; i < hdmi->max_lanes; i++) {
+		if (drm_dp_dpcd_readb(aux, DP_PCON_HDMI_ERROR_STATUS_LN0 + i, &buf) < 0)
+			return;
+
+		error_count = buf & DP_PCON_HDMI_ERROR_COUNT_MASK;
+		switch (error_count) {
+		case DP_PCON_HDMI_ERROR_COUNT_HUNDRED_PLUS:
+			num_error = 100;
+			break;
+		case DP_PCON_HDMI_ERROR_COUNT_TEN_PLUS:
+			num_error = 10;
+			break;
+		case DP_PCON_HDMI_ERROR_COUNT_THREE_PLUS:
+			num_error = 3;
+			break;
+		default:
+			num_error = 0;
+		}
+
+		DRM_ERROR("More than %d errors since the last read for lane %d", num_error, i);
+	}
+}
+EXPORT_SYMBOL(drm_dp_pcon_hdmi_frl_link_error_count);
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index e2ed6bfaae89..bdbe9bbdb244 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -946,6 +946,11 @@ struct drm_device;
 # define DP_CEC_IRQ                          (1 << 2)
 
 #define DP_LINK_SERVICE_IRQ_VECTOR_ESI0     0x2005   /* 1.2 */
+# define RX_CAP_CHANGED                      (1 << 0)
+# define LINK_STATUS_CHANGED                 (1 << 1)
+# define STREAM_STATUS_CHANGED               (1 << 2)
+# define HDMI_LINK_STATUS_CHANGED            (1 << 3)
+# define CONNECTED_OFF_ENTRY_REQUESTED       (1 << 4)
 
 #define DP_PSR_ERROR_STATUS                 0x2006  /* XXX 1.2? */
 # define DP_PSR_LINK_CRC_ERROR              (1 << 0)
@@ -1130,6 +1135,16 @@ struct drm_device;
 #define DP_PROTOCOL_CONVERTER_CONTROL_2		0x3052 /* DP 1.3 */
 # define DP_CONVERSION_TO_YCBCR422_ENABLE	(1 << 0) /* DP 1.3 */
 
+/* PCON Downstream HDMI ERROR Status per Lane */
+#define DP_PCON_HDMI_ERROR_STATUS_LN0          0x3037
+#define DP_PCON_HDMI_ERROR_STATUS_LN1          0x3038
+#define DP_PCON_HDMI_ERROR_STATUS_LN2          0x3039
+#define DP_PCON_HDMI_ERROR_STATUS_LN3          0x303A
+# define DP_PCON_HDMI_ERROR_COUNT_MASK         (0x7 << 0)
+# define DP_PCON_HDMI_ERROR_COUNT_THREE_PLUS   (1 << 0)
+# define DP_PCON_HDMI_ERROR_COUNT_TEN_PLUS     (1 << 1)
+# define DP_PCON_HDMI_ERROR_COUNT_HUNDRED_PLUS (1 << 2)
+
 /* HDCP 1.3 and HDCP 2.2 */
 #define DP_AUX_HDCP_BKSV		0x68000
 #define DP_AUX_HDCP_RI_PRIME		0x68005
@@ -2047,5 +2062,7 @@ int drm_dp_pcon_frl_enable(struct drm_dp_aux *aux);
 
 bool drm_dp_pcon_hdmi_link_active(struct drm_dp_aux *aux);
 int drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8 *frl_trained_mask);
+void drm_dp_pcon_hdmi_frl_link_error_count(struct drm_dp_aux *aux,
+					  struct drm_connector *connector);
 
 #endif /* _DRM_DP_HELPER_H_ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
