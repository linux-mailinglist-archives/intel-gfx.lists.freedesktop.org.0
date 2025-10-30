Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EA3C1E6B4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 06:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75C610E8A0;
	Thu, 30 Oct 2025 05:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YGDk8QMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B529F10E893;
 Thu, 30 Oct 2025 05:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761802256; x=1793338256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q31R7fB3EtCqm60ECTiH/1K3OLSGZZegkx4nnQvV7VQ=;
 b=YGDk8QMs1ePa/OkPXypCf37WyNBKy4MjiVZejrxXW75dwyxQmsu4JkYu
 nfPYL2rdze+lcUdT0oRXOgX7Rl+OVq+ElEjwjmC9jt1+eyC8nv0zqp11L
 9dFCsF9FjmZL1dp9XSHZ3hk06eqFmsA7ru/dNQq2jUkkdyim/Ykl5aKsL
 iUnWlJnmXiBt+AHovnT6PgM79H33W0WcSJmaI5jAlhzaGEi38/r0aYmC3
 PGHblYp4tvo2oDfL7hQ/6Y94h+fc/s+0FMmd2B5ymtle43ACdRCuHdwrH
 VOwXkzNFCDIuCmFcLQq9bDwRC+6Yt7reGSfg5nkYgutlLxCImqDiKGXn9 Q==;
X-CSE-ConnectionGUID: 5kydO2hnTmiLfIru8AgiuA==
X-CSE-MsgGUID: +XfxM0dYSIqMECbrdHVJ9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63845067"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63845067"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:56 -0700
X-CSE-ConnectionGUID: wgXMqsTeR4W6LNna4VIzZw==
X-CSE-MsgGUID: tTBUV1heRdek6w7QURJ8qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="186206851"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Date: Thu, 30 Oct 2025 10:47:53 +0530
Message-ID: <20251030051755.3071648-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
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
index b5b855453845..d68a2cde15f1 100644
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

