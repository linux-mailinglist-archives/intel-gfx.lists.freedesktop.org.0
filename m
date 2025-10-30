Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3ECC1E6B1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 06:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827DA10E889;
	Thu, 30 Oct 2025 05:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1IbNkm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB6110E889;
 Thu, 30 Oct 2025 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761802254; x=1793338254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vgCfIXzYceWOg8L4L87FOfSHdGDWDcnNFQG160N91wI=;
 b=C1IbNkm6QuX+EKlJYiHC36vT1z0eOZUH3zHrq+VZWS7NmVHvkuIKOD1L
 8Q+q4+VlIRq14ph+C9ZIzJNvhTbLjZcYtc/EIqKrqvZWzsbE3lnVWPofH
 1aooYe63jiyhtYbxJm+SxaULF4o7Olz3rKwcf6cI/ozZ92O3EEZQkg3T5
 ZRjQ+QfsCycqpsCz8HcBSCDcVdWZUFvb2NtFVEWIfdAROoC4yGLdHb0uv
 um7k7fyV/OHfYcDSJ/dY1IpD8Qlnw/X5xa4rs3nhG8IHD1VoEIr8RVPsn
 vdiELrCnF7kLozecgl0RZGEY4PGRGLz1HeudsP2rPt4tEIJAopGeRvaET A==;
X-CSE-ConnectionGUID: ARyq7RK1Q2SX0n/JJPdUlw==
X-CSE-MsgGUID: nMrNloFzTiWp6Hx6X7BkKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63845065"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63845065"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:54 -0700
X-CSE-ConnectionGUID: 7tGd7QM8SHSYm9IL/jQfKA==
X-CSE-MsgGUID: U2zNDCWcSdSonHOnXcGZdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="186206842"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/dp: Allow AS_SDP only if panel replay + auxless
 alpm is supported
Date: Thu, 30 Oct 2025 10:47:52 +0530
Message-ID: <20251030051755.3071648-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
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

Adaptive Sync SDP is required when Panel replay is active and for
supporting VRR on PCON.

Since VRR on PCON still needs some effort, enable adaptive sync SDP only
when Panel replay with ALPM-Auxless is supported.

Set the AS_SDP mode for Fixed Vtotal mode for fixed refresh rate case.

v2: Remove redundant target_rr assignments. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c013eb2e18a1..b5b855453845 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2934,7 +2934,15 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_dp->as_sdp_supported)
+		return;
+
+	/*
+	 * Support Adaptive-Sync SDP only for PR+AUX-less ALPM for now.
+	 * It can be enabled for PCON + VRR, but that is currently not supported.
+	 */
+	if (!CAN_PANEL_REPLAY(intel_dp) ||
+	    !intel_alpm_aux_less_wake_supported(intel_dp))
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
@@ -2948,9 +2956,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
-	} else {
+	} else if (crtc_state->vrr.enable) {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
-		as_sdp->target_rr = 0;
+	} else {
+		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
 	}
 }
 
-- 
2.45.2

