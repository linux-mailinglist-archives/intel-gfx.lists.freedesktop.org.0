Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5670C78B97
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 713D910E097;
	Fri, 21 Nov 2025 11:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C6qsAPk9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A73010E851;
 Fri, 21 Nov 2025 11:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723835; x=1795259835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fFvgIjDJgtTfxIojNUtMOyq18iLED/q+uTxcGnR6x6U=;
 b=C6qsAPk9CvYTU7/LsSjDww87GoQJS9GwoKyQxMsdh/2fXIZN/BPBUTUk
 04S0zAs7hZRQp6SC4/RhKQS6Kdr0uWXGfJBHIKoxdDShzQK9pPydx2s3R
 zBOM3IDFgU/1S+Ip11SpPIxDbWkyazzW27cn6UqTeMbgkoBwksj9MVpOq
 ya9rlpKQ90H2RFS9OOBTn7QHFfxhg3cGsxhfS6RKWJdZMvoAfBC8pBVg1
 VmsV61hVRawwTn5vHpL7g7RZVMS1vd9umQW3vOlaBpvo9zTlhEWevhNRM
 wxZoRPpSConB9GEAasKxpkFyzKOaFE7w72JSt9ouxXRmL3rljItR+OWPS A==;
X-CSE-ConnectionGUID: YzUBfJdHSDWM+pIZTT5ctA==
X-CSE-MsgGUID: FYV6krjGQ1+iG/FEmKopCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845523"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845523"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:15 -0800
X-CSE-ConnectionGUID: hgGEeF/qT7SINcsPVnzaRA==
X-CSE-MsgGUID: zo6kNCb8QnSS+Pdn4pPOqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801987"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:13 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/8] drm/i915/psr: Compute Panel Replay/Adaptive coexistence
 behavior
Date: Fri, 21 Nov 2025 13:16:50 +0200
Message-ID: <20251121111655.164830-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121111655.164830-1-jouni.hogander@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
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

Currently we are checking Panel Replay capability DPCD register in
intel_alpm.c and writing PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
and PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE in PR_ALPM_CTL
register base on the informaion. Instead of directly accessing
intel_dp->pr_dpcd compute the behavior during psr_compute_config and store
it in intel_crtc_state.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     |  6 ++---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 22 +++++++++++++++----
 3 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 6372f533f65b5..7ce8c674bb030 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -326,11 +326,9 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		if (intel_dp->as_sdp_supported) {
 			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
 
-			if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
-			    DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)
+			if (crtc_state->link_off_after_as_sdp_when_pr_active)
 				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
-			if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
-						DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))
+			if (crtc_state->disable_as_sdp_when_pr_active)
 				pr_alpm_ctl |= PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
 
 			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f39d62aa99246..d8a222689a35b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1161,6 +1161,8 @@ struct intel_crtc_state {
 	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
+	bool link_off_after_as_sdp_when_pr_active;
+	bool disable_as_sdp_when_pr_active;
 	bool wm_level_disabled;
 	bool pkg_c_latency_used;
 	/* Only used for state verification. */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4c5883bed612b..9d2ba39423826 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1715,10 +1715,21 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool
-_panel_replay_compute_config(struct intel_dp *intel_dp,
-			     struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
+static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+{
+	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
+}
+
+static bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+{
+	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
+}
+
+static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *crtc_state,
+					 const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
@@ -1747,6 +1758,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(intel_dp);
+	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(intel_dp);
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
-- 
2.43.0

