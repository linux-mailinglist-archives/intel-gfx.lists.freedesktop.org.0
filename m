Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ACFC12DFF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 05:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C010010E2AA;
	Tue, 28 Oct 2025 04:48:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJiqLwuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D5E10E2AA;
 Tue, 28 Oct 2025 04:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761626884; x=1793162884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LnnlkJVR53EWzul7zFMQyBeVVW5q4HbOev0S1wJHvBY=;
 b=bJiqLwuhZWc5cSHFjAFlMt31WWwBmkP1saLX9wzL4S7tLLDYrEJulZ0u
 zKrLzBItpJtYGqMXFrb6fJFimnZDg3Mm4JHf4b2dEkTgnetvXXcu9Z8bP
 9voVllFHJNdTjJAcG2Y92XSIddpa4CaSLUXTq4PJ9j3fnd4fBlhINQ9Ro
 ozqkMM6svODUVGD/1YjjbqfoBQDfgeZRUNdMGOuckWlnQ9mgE2hUMbr3o
 etBzT5TJndFl4v5GlbEmyMD5Zq2TcOdK2M+qnNhD2q5jnnsQAQfsj/YF5
 obBBquuldVG7qEk0iTkzKEycRkf3kHV6YjT6ECm/qAp2ndbsIQ3tNufW6 Q==;
X-CSE-ConnectionGUID: +9UXBq83TYygmuSZUTeo4w==
X-CSE-MsgGUID: HawZ4tyMSO2dg3AHd+vA5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75163295"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="75163295"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:04 -0700
X-CSE-ConnectionGUID: ltrAUWs6TgqY/kyFGxR+hA==
X-CSE-MsgGUID: EgxamsRyTk6tZteCU2NYng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="190364904"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 21:48:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/3] drm/i915/dp: Allow AS_SDP only if panel replay + auxless
 alpm is supported
Date: Tue, 28 Oct 2025 10:05:01 +0530
Message-ID: <20251028043502.2977803-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
References: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ee113e118fed..8583cab37123 100644
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
@@ -2948,9 +2956,12 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
-	} else {
+	} else if (crtc_state->vrr.enable) {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->target_rr = 0;
+	} else {
+		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		as_sdp->target_rr = 0;
 	}
 }
 
-- 
2.45.2

