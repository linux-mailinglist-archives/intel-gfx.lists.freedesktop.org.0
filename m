Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF08BFF1E0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 06:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE82310E867;
	Thu, 23 Oct 2025 04:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuTd6bjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2471C10E866;
 Thu, 23 Oct 2025 04:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761193916; x=1792729916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mYC8Slanmlq2MXjrbOPbLGZLqwPzSZZGhZbq+r/MfFU=;
 b=kuTd6bjXDvTnp8TkTzIASSX22QFr+KDXHuaTCU78eLfTLD38UOWNfnfs
 WPuDSkGrqs5LbPabv+KXVEdt8Soi+TMNgC7Ph4s9CalDGFVADQ7DxQrHE
 bI7V0sLF/OzVWQHbSUYmlUTgBCXz25OFtsgjmDI3oxwDbkOixDxJZN9Xc
 jKURzetB+NKZsDlscY6OuYgp3gdNwitL3D44FWWxk2MTUji20v55ypNaZ
 SRQrCrzq11QhxqL/CkRhx/33x1Gp4CpY2XagDU8ki7DughZjh3a9pywGi
 Vcc8Lb8E+uGZdXyYEla0ht8qFSZq/G/of42WHfP+MSIIqwJRdyTFOJ3wM g==;
X-CSE-ConnectionGUID: yUOehldRRA6eTGk29UAfgA==
X-CSE-MsgGUID: 47m+FmxgSdW8WiQ7+o7W/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62383292"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="62383292"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 21:31:56 -0700
X-CSE-ConnectionGUID: crjnDP3STHeJH1RFHQG59g==
X-CSE-MsgGUID: jj0D3o4CQOeGvQdNY7UGRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="188341066"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.141])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 21:31:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Date: Thu, 23 Oct 2025 07:31:40 +0300
Message-ID: <20251023043140.961104-1-jouni.hogander@intel.com>
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

v2: check HAS_AS_SDP

Bspec: 71197
Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 475518b4048b7..a3391b17571cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7023,7 +7023,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 }
 
 static
-int intel_dp_get_lines_for_sdp(u32 type)
+int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
 {
 	switch (type) {
 	case DP_SDP_VSC_EXT_VESA:
@@ -7033,6 +7033,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
 		return 8;
 	case DP_SDP_PPS:
 		return 7;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return crtc_state->vrr.vsync_start + 1;
 	default:
 		break;
 	}
@@ -7043,17 +7045,25 @@ int intel_dp_get_lines_for_sdp(u32 type)
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	int sdp_guardband = 0;
 
 	if (assume_all_enabled ||
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
+	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
+	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
 
 	return sdp_guardband;
 }
-- 
2.43.0

