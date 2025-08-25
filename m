Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACF6B33FF6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 14:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A4810E462;
	Mon, 25 Aug 2025 12:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuhzH0u2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178D910E462;
 Mon, 25 Aug 2025 12:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756126182; x=1787662182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HF4N5f++/CozagkyqLSFvLNhy0K69apcNY3yiN0kquw=;
 b=kuhzH0u2p+exbqNG21/1zx6EsgcPaoszKYXprgdaPtAj+ZFiwMOFJvsD
 NysaaMM7A/orPx13krZYe7HqtIljEgJ1XLXE0MQwHnJP2im4YgZy+RaJ4
 eixfBOlxrgkMcqVoj5zYPaL76B6G7axdkLpceocTP9Qk6vjf8uwww6G43
 q7Noj9Nh+Qu8KNx4Kv/cPWDY0zE2vtBjUbwM5m2rKkWwliBdkC9hCfuJ3
 Uz3cHBQBhzzac+q6JheN2bnez2O0EXet4Mod+tzOA9+mdZR2Ms5NylBP1
 EgnYBEXcOws75Q4W4Y18M5KDaW+uBFzjykc5q5ByFWDfeDuP6k8rcX941 g==;
X-CSE-ConnectionGUID: j5Ykz/s4RkihabhN8FU3xA==
X-CSE-MsgGUID: 5Qa3yNlFTF+yKbAKZQwj1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62164121"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62164121"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:42 -0700
X-CSE-ConnectionGUID: egppjfffQDaGQw4izBBreg==
X-CSE-MsgGUID: 9Cv9dSaCS5Smqm+3W4RhSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="200229938"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 05/12] drm/i915/dp: Add SDP latency computation helper
Date: Mon, 25 Aug 2025 18:05:41 +0530
Message-ID: <20250825123548.3022474-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
References: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper to compute vblank time needed for transmitting specific
DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is
based on line count per packet type and current line time.

Used to ensure adequate vblank when features like DSC/HDR are enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  1 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 996edb8deded..4dc1ce383b8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6842,3 +6842,50 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+static
+int intel_dp_get_sdp_latency(u32 type, int linetime_us)
+{
+	int lines;
+
+	switch (type) {
+	case DP_SDP_VSC_EXT_VESA:
+	case DP_SDP_VSC_EXT_CEA:
+		lines = 10;
+		break;
+	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		lines = 8;
+		break;
+	case DP_SDP_PPS:
+		lines = 6;
+		break;
+	default:
+		lines = 0;
+		break;
+	}
+
+	return lines * linetime_us;
+}
+
+int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state,
+				 bool assume_all_enabled)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int sdp_latency = 0;
+	int linetime_us;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+	if (assume_all_enabled ||
+	    crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		sdp_latency = max(sdp_latency,
+				  intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA,
+							   linetime_us));
+
+	if (assume_all_enabled || crtc_state->dsc.compression_enable)
+		sdp_latency = max(sdp_latency,
+				  intel_dp_get_sdp_latency(DP_SDP_PPS, linetime_us));
+
+	return sdp_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f90cfd1dbbd0..bfd1bd448672 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -215,5 +215,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state, bool assume_all_enabled);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

