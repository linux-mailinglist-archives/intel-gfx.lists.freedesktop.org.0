Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCF7823FCF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0730810E431;
	Thu,  4 Jan 2024 10:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83DE10E431
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365373; x=1735901373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HeFbNnwT3EnvN+swWL4lCM4kfqBLX4gHKHIQ6Am1KP8=;
 b=DaGgTechcepKI61yJnmngJ6ecjrdA3wxpbSKE08y2hW5lltFNC8U7VyH
 R+AOcS7GCdTlHjnbxvKL+TAW0a7eNT7jr8sknJziQ+o7O/wlq9ZlkG4+K
 2z0QBsl5nRg5WCpP9XDWFvelBETdCVIxt8mlhGL33G8CqtvECV4WZFJud
 OMOwBCxcjjo1rlFYET7YbWBoJBPpUKdQs8cuQP3JHOj+fMI+P1CbkNSyr
 n/4OC+EO060ti6At5VzyDAe5kP+APqLNeVS/EJjv7fMwSxEmbvDXVgUkO
 /8Pm93scX9tppoKZtnEqH4yPftfpz/6/Gn+zqRSw7VS79pwqzPVwsJyQN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928110"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928110"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863607"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863607"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:31 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915/psr: Rename has_psr2 as has_sel_update
Date: Thu,  4 Jan 2024 12:48:13 +0200
Message-Id: <20240104104821.1822988-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

We are going to reuse has_psr2 for panel_replay as well. Rename it
as has_sel_update to avoid confusion.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_display.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c             | 8 ++++----
 6 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 49fd100ec98a..5edbc9b3d766 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -266,9 +266,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_dbg_kms(&i915->drm, "sdp split: %s\n",
 			    str_enabled_disabled(pipe_config->sdp_split_enable));
 
-		drm_dbg_kms(&i915->drm, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
+		drm_dbg_kms(&i915->drm,
+			    "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
 			    str_enabled_disabled(pipe_config->has_psr),
-			    str_enabled_disabled(pipe_config->has_psr2),
+			    str_enabled_disabled(pipe_config->has_sel_update),
 			    str_enabled_disabled(pipe_config->has_panel_replay),
 			    str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 927d124457b6..66e4b8229b79 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5205,7 +5205,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		if (current_config->active_planes) {
 			PIPE_CONF_CHECK_BOOL(has_psr);
-			PIPE_CONF_CHECK_BOOL(has_psr2);
+			PIPE_CONF_CHECK_BOOL(has_sel_update);
 			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
 			PIPE_CONF_CHECK_I(dc3co_exitline);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ec36f7c72dcd..cc24818e7307 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1211,7 +1211,7 @@ struct intel_crtc_state {
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
-	bool has_psr2;
+	bool has_sel_update;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ff0cbd9c0df..a9a808ad373a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2632,7 +2632,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_psr2) {
+	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
 		/*
 		 * [PSR2 without colorimetry]
 		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f17a1afb4929..647dd1b56073 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1235,7 +1235,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6bdd202ad882..8a40b537d61e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1391,7 +1391,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
 		return;
 
-	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1424,7 +1424,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
 	if (!intel_dp->psr.psr2_enabled)
@@ -1639,7 +1639,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -2264,7 +2264,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
-- 
2.34.1

