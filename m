Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03D92A1D1A
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Nov 2020 11:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1311D6EA8C;
	Sun,  1 Nov 2020 10:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6ED6EA87;
 Sun,  1 Nov 2020 10:13:51 +0000 (UTC)
IronPort-SDR: V5R1uJKbNiu9h+gXYYAnQLMR/zYCyBnxJeAkPVW1REIwPCsxM6asvYFMD29xItps++0/vAaCZ1
 djOVWAY31gqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9791"; a="166190491"
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="166190491"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 02:13:50 -0800
IronPort-SDR: 3uKBX6QfrU45mOCFRKjV19LHl8amJGGioT4v0+68jAd5aRwCNLS0o98mk8yOA36pjOjp9y93h+
 cmNbsED5tPqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="425738562"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2020 02:13:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Nov 2020 15:36:47 +0530
Message-Id: <20201101100657.12087-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
References: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v2 03/13] drm/edid: Parse DSC1.2 cap fields from
 HFVSDB block
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

This patch parses HFVSDB fields for DSC1.2 capabilities of an
HDMI2.1 sink. These fields are required by a source to understand the
DSC capability of the sink, to set appropriate PPS parameters,
before transmitting compressed data stream.

v2: Addressed following issues as suggested by Uma Shankar:
-Added a new struct for hdmi dsc cap
-Fixed bugs in macros usage.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c  | 59 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h | 43 +++++++++++++++++++++++++++
 2 files changed, 102 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 26797868ea5b..feaf2d7659a4 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4939,11 +4939,70 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 
 	if (hf_vsdb[7]) {
 		u8 max_frl_rate;
+		u8 dsc_max_frl_rate;
+		u8 dsc_max_slices;
+		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
 		max_frl_rate = (hf_vsdb[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				&hdmi->max_frl_rate_per_lane);
+		hdmi_dsc->v_1p2 = hf_vsdb[11] & DRM_EDID_DSC_1P2;
+
+		if (hdmi_dsc->v_1p2) {
+			hdmi_dsc->native_420 = hf_vsdb[11] & DRM_EDID_DSC_NATIVE_420;
+			hdmi_dsc->all_bpp = hf_vsdb[11] & DRM_EDID_DSC_ALL_BPP;
+
+			if (hf_vsdb[11] & DRM_EDID_DSC_16BPC)
+				hdmi_dsc->bpc_supported = 16;
+			else if (hf_vsdb[11] & DRM_EDID_DSC_12BPC)
+				hdmi_dsc->bpc_supported = 12;
+			else if (hf_vsdb[11] & DRM_EDID_DSC_10BPC)
+				hdmi_dsc->bpc_supported = 10;
+			else
+				hdmi_dsc->bpc_supported = 0;
+
+			dsc_max_frl_rate = (hf_vsdb[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
+			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+					&hdmi_dsc->max_frl_rate_per_lane);
+			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
+
+			dsc_max_slices = hf_vsdb[12] & DRM_EDID_DSC_MAX_SLICES;
+			switch (dsc_max_slices) {
+			case 1:
+				hdmi_dsc->max_slices = 1;
+				hdmi_dsc->clk_per_slice = 340;
+				break;
+			case 2:
+				hdmi_dsc->max_slices = 2;
+				hdmi_dsc->clk_per_slice = 340;
+				break;
+			case 3:
+				hdmi_dsc->max_slices = 4;
+				hdmi_dsc->clk_per_slice = 340;
+				break;
+			case 4:
+				hdmi_dsc->max_slices = 8;
+				hdmi_dsc->clk_per_slice = 340;
+				break;
+			case 5:
+				hdmi_dsc->max_slices = 8;
+				hdmi_dsc->clk_per_slice = 400;
+				break;
+			case 6:
+				hdmi_dsc->max_slices = 12;
+				hdmi_dsc->clk_per_slice = 400;
+				break;
+			case 7:
+				hdmi_dsc->max_slices = 16;
+				hdmi_dsc->clk_per_slice = 400;
+				break;
+			case 0:
+			default:
+				hdmi_dsc->max_slices = 0;
+				hdmi_dsc->clk_per_slice = 0;
+			}
+		}
 	}
 
 	drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index f351bf10c076..06d24e36268e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -175,6 +175,46 @@ struct drm_scdc {
 	struct drm_scrambling scrambling;
 };
 
+/**
+ * struct drm_hdmi_dsc_cap - DSC capabilities of HDMI sink
+ *
+ * Describes the DSC support provided by HDMI 2.1 sink.
+ * The information is fetched fom additional HFVSDB blocks defined
+ * for HDMI 2.1.
+ */
+struct drm_hdmi_dsc_cap {
+	/** @v_1p2: flag for dsc1.2 version support by sink */
+	bool v_1p2;
+
+	/** @native_420: Does sink support DSC with 4:2:0 compression */
+	bool native_420;
+
+	/**
+	 * @all_bpp: Does sink support all bpp with 4:4:4: or 4:2:2
+	 * compressed formats
+	 */
+	bool all_bpp;
+
+	/**
+	 * @bpc_supported: compressed bpc supported by sink : 10, 12 or 16 bpc
+	 */
+	u8 bpc_supported;
+
+	/** @max_slices: maximum number of Horizontal slices supported by */
+	u8 max_slices;
+
+	/** @clk_per_slice : max pixel clock in MHz supported per slice */
+	int clk_per_slice;
+
+	/** @max_lanes : dsc max lanes supported for Fixed rate Link training */
+	u8 max_lanes;
+
+	/** @max_frl_rate_per_lane : maximum frl rate with DSC per lane */
+	u8 max_frl_rate_per_lane;
+
+	/** @total_chunk_kbytes: max size of chunks in KBs supported per line*/
+	u8 total_chunk_kbytes;
+};
 
 /**
  * struct drm_hdmi_info - runtime information about the connected HDMI sink
@@ -213,6 +253,9 @@ struct drm_hdmi_info {
 
 	/** @max_lanes: supported by sink */
 	u8 max_lanes;
+
+	/** @dsc_cap: DSC capabilities of the sink */
+	struct drm_hdmi_dsc_cap dsc_cap;
 };
 
 /**
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
