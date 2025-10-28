Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B832CC12E05
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 05:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D26B10E2E9;
	Tue, 28 Oct 2025 04:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VsKLPxC7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD78110E2E9;
 Tue, 28 Oct 2025 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761626886; x=1793162886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oNFeNLAQMVB8lA0vT4JffCCRF+Cl1LSXV9LXIuWX+4g=;
 b=VsKLPxC7nRjQxNCCcxWQB/3e5uTVLqPF3WsRExOghsHKS0MfnP6FWPbr
 mGbRFSYzK2LWb+Ydw2QYuFBzC4eWpe0Y5sGsX2wVDdd3eF0dKLN8pBacf
 qyJvMLw/dwjxNjq+NpRgpxbY8X2vHHnFkdo7sVw2T6yRYwvtnsOtea+XI
 t7ijQbFeP0SMFF32WQS/ZQs5UBCqxAf9y43jgzwQ0GI5g3CyY9nwU++kb
 /durHHCHdAHeZr84Elk0ZDHYR9lt61KMo7f66P3LVXIRtRehRmgRal4Yz
 iCA+dj4Gm5qkwAQZdOq8IfVFoQz4/23WMxzj7oeodvGzOW30hgpKvGUWs A==;
X-CSE-ConnectionGUID: cv4/VQGJS/K/BoUZrz7vIw==
X-CSE-MsgGUID: e5PV9D0GTieXWqWKYLKYvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75163297"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="75163297"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:06 -0700
X-CSE-ConnectionGUID: qpJDHczzSwOkabphDfp/qw==
X-CSE-MsgGUID: daSN4+6DTI67NdYXOxzthg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="190364913"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Date: Tue, 28 Oct 2025 10:05:02 +0530
Message-ID: <20251028043502.2977803-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
References: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Jouni Högander <jouni.hogander@intel.com>

We started seeing "[drm] *ERROR* Timed out waiting PSR idle state" after
taking optimized guardband into use. These are seen because VSC SDPs are
sent on same line as AS SDPs when AS SDP is enabled. AS SDP is sent on line
configured in EMP_AS_SDP_TL register. We are configuring
crtc_state->vrr.vsync_start into that register.

Fix this by ensuring AS SDP is sent on line which is within
guardband. From the bspec:

EMP_AS_SDP_TL < SCL + Guardband

v2: check HAS_AS_SDP
v3: Remove assume_all_enabled check for AS_SDP. (Ville)

Bspec: 71197
Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (#v2)
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8583cab37123..21268dae178a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7034,7 +7034,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 }
 
 static
-int intel_dp_get_lines_for_sdp(u32 type)
+int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
 {
 	switch (type) {
 	case DP_SDP_VSC_EXT_VESA:
@@ -7044,6 +7044,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
 		return 8;
 	case DP_SDP_PPS:
 		return 7;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return crtc_state->vrr.vsync_start + 1;
 	default:
 		break;
 	}
@@ -7060,11 +7062,18 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 	    crtc_state->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
 		sdp_guardband = max(sdp_guardband,
-				    intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
+				    intel_dp_get_lines_for_sdp(crtc_state,
+							       HDMI_PACKET_TYPE_GAMUT_METADATA));
 
 	if (assume_all_enabled ||
 	    crtc_state->dsc.compression_enable)
-		sdp_guardband = max(sdp_guardband, intel_dp_get_lines_for_sdp(DP_SDP_PPS));
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
+
+	if (crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
 
 	return sdp_guardband;
 }
-- 
2.45.2

