Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81D5829AFB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1394810E5F7;
	Wed, 10 Jan 2024 13:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D2AB10E5F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892417; x=1736428417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8C9LcnQ/rU+tGZnGo/9tQHF+B4CIoaYe7L/IPfhzCpw=;
 b=Vai8jJdZQpUbhvzBaxlIZ1cEiyDrHYug/d0dI8Bg3h3kFIEe1kr8DSzl
 F0ILYiZ325mctfyC/xP9vFmmq1mZSAD0Gw8AupPlWFhae/SkZDthdmj7g
 IiOntVpd/LkA6K636erU+9pPPIeyXCsz4iqzn1D0d3ukv343iUDOG+N9S
 EW+D0VcOTfe/Tob0d2/ah+6jZjBbIvDbusctEsC9vxwSgs2hdJXPwW47L
 Z5WST7FmJPNLQFq8P4xGGm6RBW0sOy4yUFuCExgKG0k0NmYPyPv8M+iyb
 tj9mZ1CJ6gB1S1E28W6dxLKeLcNg8rCaFJwxE57GXswBVKd27guUc/RtB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914025"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914025"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347068"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347068"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:33 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 05/13] drm/i915/psr: Rename has_psr2 as has_sel_update
Date: Wed, 10 Jan 2024 15:12:56 +0200
Message-Id: <20240110131304.2470006-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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
index c5de4561f458..433276f24ae4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5215,7 +5215,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		if (current_config->active_planes) {
 			PIPE_CONF_CHECK_BOOL(has_psr);
-			PIPE_CONF_CHECK_BOOL(has_psr2);
+			PIPE_CONF_CHECK_BOOL(has_sel_update);
 			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
 			PIPE_CONF_CHECK_I(dc3co_exitline);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6340fabd045c..8fdab2f0c546 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1211,7 +1211,7 @@ struct intel_crtc_state {
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
-	bool has_psr2;
+	bool has_sel_update;
 	bool enable_psr2_sel_fetch;
 	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e4b7d5606d4..a26db4012172 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2633,7 +2633,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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
index 8157a1eac8c2..3d00b4e396de 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1413,7 +1413,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
 		return;
 
-	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1446,7 +1446,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
 	if (!intel_dp->psr.psr2_enabled)
@@ -1661,7 +1661,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -2328,7 +2328,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
-- 
2.34.1

