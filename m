Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA89BC4CBB0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 10:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2BE10E52D;
	Tue, 11 Nov 2025 09:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M3JxiXxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505EC10E52A;
 Tue, 11 Nov 2025 09:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762854181; x=1794390181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kNHN+1qQZ/cfl4rvexQSyOg/+DlaXhu3j+UmJD4OqRk=;
 b=M3JxiXxs3U4o4svwdOY8l1z7jWTcqRy1Y+AduQj2ss262i3WmJ6Ag/3r
 /ZyGG5ZwPFvDukOjqy9qy+ZIA21PpOeC+mYJQML4eyfhWMAMTj41o558u
 t2wbAuJhKdnkClHLvdkSCR9hXvoBtEEZRH4CESTnmlVbjD2domC0G+ZWA
 NkSYWsI9ZkH8sO41WtZ/Gvx1nG0JutuACvi0RYLqDJ3cyTnXlNcAy9bof
 gINIcaFwQU+c0OUx11qkIHfDTr5XuJ03Lf0WJHeWZG+uMQZCf1xMkqZPe
 wPq3SDvjQ7NFN1fB16xUgvN2adwUeFXvc3CuHd8B4/PGFI6SUqYrJq22y A==;
X-CSE-ConnectionGUID: 5M5WeG62QWSJTT5s+Mdmbw==
X-CSE-MsgGUID: dGjRUrx6Tme3sx5ddgjoYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68773767"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="68773767"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:43:01 -0800
X-CSE-ConnectionGUID: LxR6SepTRryyi31/l6QBCg==
X-CSE-MsgGUID: pRUIdcvSR864x0nCRZzBiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193175889"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:42:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/4] drm/i915/dp: Allow AS_SDP only if panel replay + auxless
 alpm is supported
Date: Tue, 11 Nov 2025 15:00:06 +0530
Message-ID: <20251111093007.3771409-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
References: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
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
index 92a553a76b57..2852a1d9f157 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2935,7 +2935,15 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
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
@@ -2949,9 +2957,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
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

