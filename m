Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F788BA71C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2A4112832;
	Fri,  3 May 2024 06:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mgr76j6X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F44210F231
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718066; x=1746254066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=97uVAvlIQu+4ZibaYCj9DsAMWhz7KzkJDF3YtBgI8Qg=;
 b=Mgr76j6XZmvbE8xrbv8M8N9t1bq2VGm+zjyVdZjn6E9aM8Gi9ZSS1A6I
 tXR9M5UHmUWdX+Nz9sJPSA/7+xwBWW0ObvXwTsjcqkmTI6sj4sXIJeIle
 YDtlwvP68PEQn0YyWVVInofl3qaYdc1BbJh6CnNEUtwvZwcI2cjdlMjK+
 g7QgK19uvlWWu1nbdV34rDl6ilOWLsHJYkzgu740lbfbYoVfFKi5/d+ko
 fQT00Fa7jsdMOaN7VY/6OlQSy30BHqtp2idjGQEq79ftCqYnpOZw3Uen4
 R32wP1wtV+lcEDLj0Wge2ufXDZuBarwOAJ+9LclvlsyyPDKQ48wsCMrQt A==;
X-CSE-ConnectionGUID: WRoIE+7WRE2+/lNMvPA0Wg==
X-CSE-MsgGUID: JMtakWZdQ+S1NbUU3qYGLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302301"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302301"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:26 -0700
X-CSE-ConnectionGUID: zL4rhcfcSE+9Zkegf/NDAw==
X-CSE-MsgGUID: hQJrVoZ0SnCkdrGCgF3RbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558681"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 01/12] drm/i915/psr: Rename has_psr2 as has_sel_update
Date: Fri,  3 May 2024 09:34:02 +0300
Message-Id: <20240503063413.1008135-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503063413.1008135-1-jouni.hogander@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
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

v3: do not add has_psr check into psr2 case in intel_dp_compute_vsc_sdp
v2: Rebase

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c              |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c             | 10 +++++-----
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index ccaa4cb2809b..1da4c122c52e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -251,9 +251,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_printf(&p, "sdp split: %s\n",
 			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
-		drm_printf(&p, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
 			   str_enabled_disabled(pipe_config->has_psr),
-			   str_enabled_disabled(pipe_config->has_psr2),
+			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 273323f30ae2..0ae18b07ac87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5320,7 +5320,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	 */
 	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
 		PIPE_CONF_CHECK_BOOL(has_psr);
-		PIPE_CONF_CHECK_BOOL(has_psr2);
+		PIPE_CONF_CHECK_BOOL(has_sel_update);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
 		PIPE_CONF_CHECK_BOOL(has_panel_replay);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 62f7a30c37dc..6747c10da298 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1189,7 +1189,7 @@ struct intel_crtc_state {
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
-	bool has_psr2;
+	bool has_sel_update;
 	bool enable_psr2_sel_fetch;
 	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..0755bdfc8d3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2660,7 +2660,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_psr2) {
+	} else if (crtc_state->has_sel_update) {
 		/*
 		 * [PSR2 without colorimetry]
 		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 151dcd0c45b6..984f13d8c0c8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1251,7 +1251,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f5b33335a9ae..a2f7d998d342 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -651,7 +651,7 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	if (crtc_state->has_psr2) {
+	if (crtc_state->has_sel_update) {
 		/* Enable ALPM at sink for psr2 */
 		if (!crtc_state->has_panel_replay) {
 			drm_dp_dpcd_writeb(&intel_dp->aux,
@@ -1639,7 +1639,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1672,7 +1672,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
 	if (!intel_dp->psr.psr2_enabled)
@@ -1960,7 +1960,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -2688,7 +2688,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
-- 
2.34.1

