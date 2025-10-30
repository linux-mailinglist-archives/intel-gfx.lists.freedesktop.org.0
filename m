Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ADAC1F5A7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2166410E95E;
	Thu, 30 Oct 2025 09:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkLQ3AKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B54910E958;
 Thu, 30 Oct 2025 09:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817319; x=1793353319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lfHtK4lyzMcTVzJoyfsvMHZsH1WnvLRrXSWzFghM1so=;
 b=fkLQ3AKkSC/kqAI4oJbGj196so8XNvShWkH0OSvddGXEbWVgyswkzpQQ
 CiLa9DhhgBAXBvlGu3VnEUMrKOvbJ0S7SllYS4assGYM75xS0ljRkgN2h
 K45ezRM8WfBX1LZ5JH6lCTfTSbhDwhitpqGVIutpqpsFQTUuNmo8E2SlB
 OjrOq8/trwyeiWr8bgNcJzlqsHkjvk8bKKtN/ZIGhApJSmDXuMAOo6lhb
 hotY7Ii8SjNMrvjDRRkRIU8xn6hA+b2dRrZJ0qsYMar0QWYCKJ6Kh4fBk
 VOYG4r6T8o+raFd86WyIknGnKyXb9PxSRW0lPY/KQrlBB/0hN6vxBlfzW g==;
X-CSE-ConnectionGUID: MIJXu5wASU6q/O+eDBrqJQ==
X-CSE-MsgGUID: wtVMUnfRSOq0lebcs4gQqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63651902"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63651902"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:59 -0700
X-CSE-ConnectionGUID: YyYYE3qyQTqrxfSk3ySppg==
X-CSE-MsgGUID: C/ar7NsMRN6oPuPyaauWHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="189983064"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/6] drm/i915/dp: Allow AS_SDP only if panel replay + auxless
 alpm is supported
Date: Thu, 30 Oct 2025 14:58:54 +0530
Message-ID: <20251030092857.3090072-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
References: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
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
index 81d694122e7a..2836d390a1d8 100644
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

