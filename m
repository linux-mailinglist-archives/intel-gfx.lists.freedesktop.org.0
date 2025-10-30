Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2D9C1F5AA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0B310E962;
	Thu, 30 Oct 2025 09:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kx+eZEL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAFD10E95F;
 Thu, 30 Oct 2025 09:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817322; x=1793353322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H6/2H8CG+xruT3tO3Ps1VQCbJ8zz1sE+WtvIzCvkSvo=;
 b=Kx+eZEL/HxKPLAWV51MLz2kfhr+TDD1GRqbkG2CX3/XjAhM7uMsg5ejC
 gTv97dN1FEUgxwfZ2WtEloDwhxSS/ozJnBHnHD873/UYugeGOokvV75ud
 ZI1GrVNF2abvsdjUOvIcTT2VF167tj11x46XiiCp7FOrKcOXm0qm85AoX
 1x+wz9F3MJGIedjU0pjcLodjw7O3tJHxu3eUSGpWr7J1CIH2iA4m2tL3A
 tMH6Fqv/0LhsovPrmvNg0PgsFiM4ebWn89T3NLQrz9mHb1LskGmsnk0Xe
 ZiyVnPOvyR97pb8OSIRkO4eRTNyyszXM5sbQmkjCm9kAXCMA4GthU3pT5 g==;
X-CSE-ConnectionGUID: N9r4UjFJSZKU/D7ILdLgxA==
X-CSE-MsgGUID: 8uBH9RciScCk11Qks/J9Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63651903"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63651903"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:42:01 -0700
X-CSE-ConnectionGUID: PbAT7ISsR9CizIztkIPYSQ==
X-CSE-MsgGUID: 7dcol2gbQk+yrkubgWdusA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="189983074"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:42:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Date: Thu, 30 Oct 2025 14:58:55 +0530
Message-ID: <20251030092857.3090072-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
References: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
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
index 2836d390a1d8..ae94a3f87b86 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7032,7 +7032,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 }
 
 static
-int intel_dp_get_lines_for_sdp(u32 type)
+int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
 {
 	switch (type) {
 	case DP_SDP_VSC_EXT_VESA:
@@ -7042,6 +7042,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
 		return 8;
 	case DP_SDP_PPS:
 		return 7;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return crtc_state->vrr.vsync_start + 1;
 	default:
 		break;
 	}
@@ -7058,11 +7060,18 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
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

