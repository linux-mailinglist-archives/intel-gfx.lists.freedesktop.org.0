Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E511ABA2811
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DC010E9DF;
	Fri, 26 Sep 2025 06:13:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7Uxj90f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F0410E347;
 Fri, 26 Sep 2025 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867188; x=1790403188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lb0D99S8oRtd53uMI/T/pnwOBXor8pPYsE3ou7Afk9E=;
 b=a7Uxj90fgUZNc7vcAXhESYvZ2RWxei0ylfnIOEZvGzzfKjFQu1uBY3b0
 h52WZ5xjsd3BqAv6wJsHzHzRz9Kx1I8it28knVbkscd/G1q+/XKeVSVqN
 sNYwtPj3UJFdJK/+O6hx9vhfW6NUwaVxPM/A6qobsZ/IJE2HHa1XE+XHz
 Tamu8hzcq2Pt5zSwTz0KZH7hkyBUwPtLBGPSlt+AcdEu9Mx85fWG2pkP4
 nXrMPCH/Qan5c6b1PmbGTJFPUuKlGhnvqTwU0KacmDgm2TTvc6UJDnSYB
 zLiRA7psUi3hznG8xkjquD8p6jk0TRfb3/GsraMBUIZzJaVBYmN/6aqz7 A==;
X-CSE-ConnectionGUID: 42b32xRATBa/JbRh4HdKAw==
X-CSE-MsgGUID: Wgks640LS1GKZXMmxtmajQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007593"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007593"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:08 -0700
X-CSE-ConnectionGUID: Bm85FQ6xQPWl2Fv/4uyEOw==
X-CSE-MsgGUID: w/4Ne0T3SH6uzLMcFAXVEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092879"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 06/14] drm/i915/dp: Add SDP latency computation helper
Date: Fri, 26 Sep 2025 11:29:27 +0530
Message-ID: <20250926055935.3532568-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef5..83c46e4680b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6857,3 +6857,50 @@ void intel_dp_mst_resume(struct intel_display *display)
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
+int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
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
index f90cfd1dbbd0..d222749b191c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -215,5 +215,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
+				 bool assume_all_enabled);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

