Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A2FBFBD65
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E4F10E785;
	Wed, 22 Oct 2025 12:26:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWFCPV1k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4B110E77F;
 Wed, 22 Oct 2025 12:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761135967; x=1792671967;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UcB/NT3gGo5qxlaplk+bahphr2/5bCtJSCqjGm/Xen8=;
 b=jWFCPV1k3oiR7anxsyBakLtEv/UyPGAQQJszIpjr2xZML2cY/7KmJyih
 GJle2ov7b8J3HziqChLJ9OKc74LaPPBUTvr8u12edUT2/UH8KpYuzYf3T
 hWk30zvL2FEMRkeZoF2b21P3tiUTTtTDvB+JBwgoC/gtU0k0os3IwxW94
 x8wvQjg6O5uxHzHPxsAxnV+iw7mPGKH8nubvQaWAz99kvHtpWWDdMC7an
 M/lqVOYPIBM8j0KE3ns2otSOP6qfOc2FI0KTktNr6+TrIjueMy6D5MiCY
 dpmabaGsCfj1mWUNgHa2TKaOn0u4YEdW91HM4R2zBT3MCVnyG1zFSBlBq A==;
X-CSE-ConnectionGUID: RcwS/x+mQEy/XhU+KWd6Ew==
X-CSE-MsgGUID: mIDyxiInQvupoxBtijmoeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85904028"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="85904028"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:26:07 -0700
X-CSE-ConnectionGUID: UHMPIWVcQrScs+Ct5dtIWw==
X-CSE-MsgGUID: 4IrANpFfRySIiLceGGPt9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="184261462"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:26:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Date: Wed, 22 Oct 2025 15:25:52 +0300
Message-ID: <20251022122552.890090-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We started seeing "[drm] *ERROR* Timed out waiting PSR idle state" after
taking optimized guardband into use. These are seen because VSC SDPs are
sent on same line as AS SDPs when AS SDP is enabled. AS SDP is sent on line
configured in EMP_AS_SDP_TL register. We are configuring
crtc_state->vrr.vsync_start into that register.

Fix this by ensuring AS SDP is sent on line which is within
guardband. From the bspec:

EMP_AS_SDP_TL < SCL + Guardband

Bspec: 71197

Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b0aeb6c2de86c..54b5e060be82a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7026,7 +7026,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 }
 
 static
-int intel_dp_get_lines_for_sdp(u32 type)
+int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
 {
 	switch (type) {
 	case DP_SDP_VSC_EXT_VESA:
@@ -7036,6 +7036,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
 		return 8;
 	case DP_SDP_PPS:
 		return 7;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return crtc_state->vrr.vsync_start + 1;
 	default:
 		break;
 	}
@@ -7052,11 +7054,18 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
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
+	if (assume_all_enabled ||
+	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
 
 	return sdp_guardband;
 }
-- 
2.43.0

