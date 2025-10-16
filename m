Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A66BE2780
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 11:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B94D10E997;
	Thu, 16 Oct 2025 09:43:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzjotLCe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA1810E98D;
 Thu, 16 Oct 2025 09:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760607802; x=1792143802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5QusbHEiPB9da9p5MIXyxUk9fI47hIfIOTuvvbQqAxc=;
 b=HzjotLCeyNQtUYobd4NAdI/4UqAxM00YZEYkEH4KxQ+D4vIcH9aCO3Gr
 B/Zk7RBBjLX+yfZEcbsHnL+05UlDXjoU5G5FU/+sH71KsLmLbzknNcMPP
 vet5/v6/GNexsVZLr3RgKKogwUCo4QXiUWdyCtvaaa1TSh0u68hkUGBT1
 fWFJyXrydtqjR81k3nUiZ6D+v0kXd0cCD8nZPijF3ePFP2cCWLQyc3Ymh
 U0aBlxPwbnmvV4Va8YumjiwseEgrvl/DB3nnu42CS+8FVpMhIIQZwxNbt
 Bg+lIqPc8WCjJo7qYqFVd2Z2HVvLpksCAB/ACcR8gE6HMhobDF+C1lbEU w==;
X-CSE-ConnectionGUID: f9DmTq+2SjijZY2R6nRjuA==
X-CSE-MsgGUID: Nj1bptbKQ8uVKWdJdG2sxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62725264"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62725264"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:22 -0700
X-CSE-ConnectionGUID: nW32lZB0TuWiLtP938QDaA==
X-CSE-MsgGUID: VOop1bDmQHK29DYakcXtCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="219570807"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/dp: Add helper to get min sdp guardband
Date: Thu, 16 Oct 2025 15:00:07 +0530
Message-ID: <20251016093009.2139105-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
References: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
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
based on line count per packet type.

This will be used to ensure adequate guardband when features like DSC/HDR
are enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 36 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7059d55687cf..3f2c319e3d6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6990,3 +6990,39 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 
 	return 0;
 }
+
+static
+int intel_dp_get_lines_for_sdp(u32 type)
+{
+	switch (type) {
+	case DP_SDP_VSC_EXT_VESA:
+	case DP_SDP_VSC_EXT_CEA:
+		return 10;
+	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		return 8;
+	case DP_SDP_PPS:
+		return 6;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
+			       bool assume_all_enabled)
+{
+	int sdp_guardband = 0;
+
+	if (assume_all_enabled ||
+	    crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
+
+	if (assume_all_enabled ||
+	    crtc_state->dsc.compression_enable)
+		sdp_guardband = max(sdp_guardband, intel_dp_get_lines_for_sdp(DP_SDP_PPS));
+
+	return sdp_guardband;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 281ced3a3b39..7ee5aeb28fe2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -221,5 +221,7 @@ bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state);
+int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
+			       bool assume_all_enabled);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

