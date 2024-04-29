Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A668B8B576A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1865710F003;
	Mon, 29 Apr 2024 12:08:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MapmMDG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4787610E3CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392495; x=1745928495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zti4bNp7B6XROUtVW0IevcqAFph9DrFy2qKtgwzZKXA=;
 b=MapmMDG+962DlUgzidIGrC3EZNY56Mi8AlTuGVQz3aunJoagGzAqvLK0
 fFbpt+ZnxXnnZnEQY9G75ixDkgPRhf5s7B5gPsl+V5pg/0Q40CgJZdoit
 dSXaYqBq7jDfBsmwpp0E6oiIG4MWgk3znOtTxD8D8yrGpASK+Ma9jogEJ
 YhI4NL6wbsJLBhvSMAkdT4jgcnGndbczakotL1MyaNCrmNM9JpUVa9b1C
 nRrctbGqUP7lLi8R5Xy7mrAbh3grDHNfye0zbSOCYj01YyAT6BUCbjOkx
 7/l6HYtam7CQMJyuMjwXSnRsSplVAqRIKNG3MN3s7PrGmh5GbtY4YR9n8 g==;
X-CSE-ConnectionGUID: I5INFnrNSeK5CdHzD3k3sA==
X-CSE-MsgGUID: uLNU/1BkTieO2aJ8P6l42w==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455438"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455438"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:15 -0700
X-CSE-ConnectionGUID: /ctZBh5GQ5aZhRuPGnlAYw==
X-CSE-MsgGUID: EtuqfBu+T52BZrTbCTDDqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074407"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 01/11] drm/i915/psr: Rename has_psr2 as has_sel_update
Date: Mon, 29 Apr 2024 15:07:45 +0300
Message-Id: <20240429120755.3990652-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
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

v2: Rebase

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c              |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c             | 10 +++++-----
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index ccaa4cb2809b..2c391714f28e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -251,11 +251,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_printf(&p, "sdp split: %s\n",
 			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
-		drm_printf(&p, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
-			   str_enabled_disabled(pipe_config->has_psr),
-			   str_enabled_disabled(pipe_config->has_psr2),
-			   str_enabled_disabled(pipe_config->has_panel_replay),
-			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),
+			    str_enabled_disabled(pipe_config->has_sel_update),
+			    str_enabled_disabled(pipe_config->has_panel_replay),
+			    str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
 
 	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f45e5f02096d..c1aba4e8ac54 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5319,7 +5319,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index e05e25cd4a94..a7c406a9695f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2660,7 +2660,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_psr2) {
+	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
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

