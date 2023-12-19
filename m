Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1068183F4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 09:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B1010E2B9;
	Tue, 19 Dec 2023 08:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFB310E2B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702976302; x=1734512302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aVAAA/Ef/W7EuyRQ9MD1cqBaANDXuzMvqqmV2z/Kmfo=;
 b=KCvLQRt3BwnWMEAQHGGpOp6MPBEZWWIQ69+ZVNRZpgqE06YwOkHNSgyw
 65Wb89AO/QQH1Erppv5X0LyIlC6KMt7bwwbh4hF12GKy6sjjRXr67f+Yk
 nXVwZN7K0dP9hWitVWXKhrHcFCFMGy8VStFFAa9nk5TqTGPEicvkWsrYw
 NvA1k4HgO5B4C8jkinyj5LhbqXG4MSSIcoc4TpDKSprvnq4tPD0yKwolA
 PGdslkeb2PuvOy1Ix0K3+/w+VvLTmOJ09YXdb1YBGUB2dKDQH42zKG0Qv
 JFBh5xzEfQH/FSaVyB7d58YUIxnrH0W2R7YVsVzbSe4wIX1GVQ1ts59S6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2857448"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2857448"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 00:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="24118504"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 19 Dec 2023 00:58:21 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm: Add Adaptive Sync SDP logging
Date: Tue, 19 Dec 2023 14:23:41 +0530
Message-Id: <20231219085343.1211864-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add structure representing Adaptive Sync Secondary Data
Packet (AS SDP). Also, add Adaptive Sync SDP logging in
drm_dp_helper.c to facilitate debugging.

--v2:
- Update logging. [Jani, Ankit]
- use as_sdp instead of async [Ankit]
- Correct define placeholders to where it is being actually used. [Jani]
- Update members in as_sdp structure and make it uniform. [Jani]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c       | 12 ++++++++
 .../drm/i915/display/intel_crtc_state_dump.c  | 12 ++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 include/drm/display/drm_dp.h                  |  2 ++
 include/drm/display/drm_dp_helper.h           | 30 +++++++++++++++++++
 5 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index d72b6f9a352c..8edd328b6bb8 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2917,6 +2917,18 @@ void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
 }
 EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
 
+void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp)
+{
+	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
+		   as_sdp->revision, as_sdp->length);
+	drm_printf(p, "	vtotal: %d\n", as_sdp->vtotal);
+	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
+	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
+	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
+	drm_printf(p, "    operation_mode: %d\n", as_sdp->operation_mode);
+}
+EXPORT_SYMBOL(drm_dp_as_sdp_log);
+
 /**
  * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
  * @dpcd: DisplayPort configuration data
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 49fd100ec98a..2b40dee19bfb 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -61,6 +61,15 @@ intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
 	drm_dp_vsc_sdp_log(KERN_DEBUG, i915->drm.dev, vsc);
 }
 
+static void
+intel_dump_dp_as_sdp(struct drm_i915_private *i915,
+		     const struct drm_dp_as_sdp *as_sdp)
+{
+	struct drm_printer p = drm_debug_printer("AS_SDP");
+
+	drm_dp_as_sdp_log(&p, as_sdp);
+}
+
 static void
 intel_dump_buffer(struct drm_i915_private *i915,
 		  const char *prefix, const u8 *buf, size_t len)
@@ -300,6 +309,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
 		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+		intel_dump_dp_as_sdp(i915, &pipe_config->infoframes.as_sdp);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b3e942f2eeb0..0c430baefbeb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1331,6 +1331,7 @@ struct intel_crtc_state {
 		union hdmi_infoframe hdmi;
 		union hdmi_infoframe drm;
 		struct drm_dp_vsc_sdp vsc;
+		struct drm_dp_as_sdp as_sdp;
 	} infoframes;
 
 	u8 eld[MAX_ELD_BYTES];
diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 3731828825bd..051f75e09920 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1577,10 +1577,12 @@ enum drm_dp_phy {
 #define DP_SDP_AUDIO_COPYMANAGEMENT	0x05 /* DP 1.2 */
 #define DP_SDP_ISRC			0x06 /* DP 1.2 */
 #define DP_SDP_VSC			0x07 /* DP 1.2 */
+#define DP_SDP_ADAPTIVE_SYNC    0x22 /* DP 1.4 */
 #define DP_SDP_CAMERA_GENERIC(i)	(0x08 + (i)) /* 0-7, DP 1.3 */
 #define DP_SDP_PPS			0x10 /* DP 1.4 */
 #define DP_SDP_VSC_EXT_VESA		0x20 /* DP 1.4 */
 #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
+
 /* 0x80+ CEA-861 infoframe types */
 
 #define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 863b2e7add29..ab75b421fdf8 100644
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
+	int vtotal;
+	int target_rr;
+	int duration_incr_ms;
+	int duration_decr_ms;
+	int operation_mode;
+};
+
+void drm_dp_as_sdp_log(struct drm_printer *p,
+		       const struct drm_dp_as_sdp *as_sdp);
+
 void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
 			const struct drm_dp_vsc_sdp *vsc);
 
-- 
2.25.1

