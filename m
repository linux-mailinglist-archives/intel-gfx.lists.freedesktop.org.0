Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE27F610C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 15:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333D610E75B;
	Thu, 23 Nov 2023 14:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFDF10E75B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 14:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700748480; x=1732284480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zOc1Db8jybgJ8BxBbq79OMfSWmQYOYmGai28Q1spsdc=;
 b=cRDAaaLrMdsOPJtH+A79JWxriSd/SQ2GPg9leTkZCuO6BBiJaUK6vv1J
 NEFjlD6Ug+RDdlTA6Oh8kIwfcr+XAYNAb8XJNEfQNPOscRDfOSsT3tCBj
 hYnHgKTI2cZTpFT6zh+CP+H2pZzZvVdikI9vwuxhIH5DhApZKakisUCPV
 p1EqbdJ/bqUWOA3Wdh/++RFZ1f+6FF6d+l9Bhag7I1z2OsPRW/6HAQA2v
 kwmHlScJe32jPW3n31ROUEp6LkBRm5hGfLmm8hvEXZG5xVFkORO0jer6S
 V5HPFDS7uf1f/SWF6xxMH0B3DG6pOybPj4CWv46penDfkkJRUvzzMpFgG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5418516"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; 
   d="scan'208";a="5418516"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 06:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767213029"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="767213029"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 23 Nov 2023 06:07:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 19:32:42 +0530
Message-Id: <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
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

Add structure representing Adaptive Sync Secondary Data
Packet (AS SDP). Also, add Adaptive Sync SDP logging in
drm_dp_helper.c to facilitate debugging.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 15 +++++++++++++
 include/drm/display/drm_dp.h            |  1 +
 include/drm/display/drm_dp_helper.h     | 30 +++++++++++++++++++++++++
 3 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index d72b6f9a352c..a205e14a6681 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2917,6 +2917,21 @@ void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
 }
 EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
 
+void drm_dp_as_sdp_log(const char *level, struct device *dev,
+		       const struct drm_dp_as_sdp *async)
+{
+#define DP_SDP_LOG(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
+	DP_SDP_LOG("DP SDP: %s, revision %u, length %u\n", "VSC",
+		   async->revision, async->length);
+	DP_SDP_LOG("	vmin: %d vmax: %d\n", async->vmin, async->vmax);
+	DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
+	DP_SDP_LOG("    duration_incr_ms: %u\n", async->duration_incr_ms);
+	DP_SDP_LOG("    duration_decr_ms: %u\n", async->duration_decr_ms);
+	DP_SDP_LOG("    operation_mode: %u\n", async->operation_mode);
+#undef DP_SDP_LOG
+}
+EXPORT_SYMBOL(drm_dp_as_sdp_log);
+
 /**
  * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
  * @dpcd: DisplayPort configuration data
diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 83d2039c018b..0575ab8ea088 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1578,6 +1578,7 @@ enum drm_dp_phy {
 #define DP_SDP_PPS			0x10 /* DP 1.4 */
 #define DP_SDP_VSC_EXT_VESA		0x20 /* DP 1.4 */
 #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
+#define DP_SDP_ADAPTIVE_SYNC	0x22 /* DP 1.4 */
 /* 0x80+ CEA-861 infoframe types */
 
 #define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 863b2e7add29..63b6bef3f21d 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -98,6 +98,36 @@ struct drm_dp_vsc_sdp {
 	enum dp_content_type content_type;
 };
 
+/**
+ * struct drm_dp_as_sdp - drm DP Adaptive Sync SDP
+ *
+ * This structure represents a DP AS SDP of drm
+ * It is based on DP 2.1 spec [Table 2-126:  Adaptive-Sync SDP Header Bytes] and
+ * [Table 2-127: Adaptive-Sync SDP Payload for DB0 through DB8]
+ *
+ * @sdp_type: secondary-data packet type
+ * @length: number of valid data bytes
+ * @vmin: minimum vtotal
+ * @vmax: maximum vtotal
+ * @duration_incr_ms: Successive frame duration increase
+ * @duration_decr_ms: Successive frame duration decrease
+ * @operation_mode: Adaptive Sync Operation Mode
+ */
+
+struct drm_dp_as_sdp {
+	unsigned char sdp_type;
+	unsigned char revision;
+	unsigned char length;
+	u16 vmin, vmax;
+	u16 target_rr;
+	u8 duration_incr_ms;
+	u8 duration_decr_ms;
+	u8 operation_mode;
+};
+
+void drm_dp_as_sdp_log(const char *level, struct device *dev,
+		       const struct drm_dp_as_sdp *async);
+
 void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
 			const struct drm_dp_vsc_sdp *vsc);
 
-- 
2.25.1

