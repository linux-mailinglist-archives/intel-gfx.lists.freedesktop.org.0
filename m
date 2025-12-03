Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4C8C9EB5D
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F8810E76C;
	Wed,  3 Dec 2025 10:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSOyXS3J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB5B10E76D;
 Wed,  3 Dec 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757914; x=1796293914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3JBlCIyZs2NBx8C24fA7G5LKLHIOedP8eYudFq5Kkos=;
 b=mSOyXS3J0LWmMKIR150D85Y1q+5NPCvvwojLpL2Kq6pMii98DSXgt0gJ
 kHfz0ac/4Wmg6Skmp57oOle/dvP2I8o9mnCuW5aVmv0xh+iYNAiGKtnt/
 ukPkBUIQ6g0jsuepQwNDPHgcw8dKedkryl1zKkQY9wA1s4+XdBlZRPk/H
 ePZSymF65Ai8K02hOnQbH7qz9u+XIZ2580jy9I18S0hEJkbw/xuVoF/yC
 chCM4OiGcdGavMe79wCdSOXDEA6yZj87ZhLMfvnsaZBLTds04uDgLNpFw
 TQ72IJXxCZhVFrhkhUe5X2xCi4YpuxQO9dNAk3lFgVpLr3NHz8ga9xISX w==;
X-CSE-ConnectionGUID: zd+X9EDpT5i/M6ygg2ioIg==
X-CSE-MsgGUID: EfEhumxMRRe8qha5xW7Zzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912120"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912120"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:54 -0800
X-CSE-ConnectionGUID: GBqbY2wRQpCnzjwT1hcTLw==
X-CSE-MsgGUID: lJtuAT0OT9ydi1jEtaHZdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657387"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/8] drm/i915/psr: Compute Panel Replay/Adaptive Sync
 coexistence behavior
Date: Wed,  3 Dec 2025 12:31:29 +0200
Message-ID: <20251203103134.1054430-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203103134.1054430-1-jouni.hogander@intel.com>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
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

v2:
  - inline added helpers
  - use intel_dp_attached_dp instead of passing as a parameter

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     |  6 ++---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 27 ++++++++++++++-----
 3 files changed, 24 insertions(+), 11 deletions(-)

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
index 82f1aac22d50d..715161ad9e926 100644
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
index 5f8df67f9993e..d2d9ad969d9b5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1708,14 +1708,25 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool
-_panel_replay_compute_config(struct intel_dp *intel_dp,
-			     struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
+static inline bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+{
+	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
+}
+
+static inline bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel_dp)
+{
+	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
+		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
+}
+
+static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
+					 const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!CAN_PANEL_REPLAY(intel_dp))
@@ -1740,6 +1751,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(intel_dp);
+	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(intel_dp);
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -1847,8 +1861,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	/* Only used for state verification. */
 	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-								    crtc_state,
+	crtc_state->has_panel_replay = _panel_replay_compute_config(crtc_state,
 								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
-- 
2.43.0

