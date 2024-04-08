Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687B389BA13
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A2A112125;
	Mon,  8 Apr 2024 08:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQU0Zfy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B5610FDAB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712564558; x=1744100558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLQ8khAzzzJ1pw0r6h7TO3KXwHv0yugrBZr+iG01Hh0=;
 b=BQU0Zfy0ZUCPZ38333GN2b3KDqLBLq0OTp56LV92n9cQEo5JeGNMcwdw
 fz6q9As1gAVuJHw4ZsB6+yDtjEVdRIQ9jRs4rFsStLiL3zAnUVnV1JwY5
 drsUEIj9dVo+T8/VslFxB0zWLJqNqrTWkUYrQ8KM0zQkiQ3tz4af/6eAP
 ubad6hz/kujwRSoNK9wCzV+OY2K0R72i37qcFbzaGNILoCyVpYPIUlRsn
 xacyG8kr3shcvTegXzPj7wHnNylurHUfGK3cT1P4n9hqkl5DxEvMj84EZ
 nYC0pwZUQsLM4Sa0tTvaf/iFTeitNLK/VaDIYqoycjNSOEPZ892HpxSi1 A==;
X-CSE-ConnectionGUID: vw1suONMTm6oQnB7LFdseQ==
X-CSE-MsgGUID: i+QuLnRHQh268R3b2bahew==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25275771"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25275771"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:38 -0700
X-CSE-ConnectionGUID: b+1F6uU7TzOWJF6Wz1GbFQ==
X-CSE-MsgGUID: e8idT9qzQweRlGcAJCd2lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24444554"
Received: from rkhristx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 01/10] drm/i915/psr: Rename has_psr2 as has_sel_update
Date: Mon,  8 Apr 2024 11:22:03 +0300
Message-Id: <20240408082212.3429193-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240408082212.3429193-1-jouni.hogander@intel.com>
References: <20240408082212.3429193-1-jouni.hogander@intel.com>
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
index dc23312bc808..0e68fa6aef35 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5304,7 +5304,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	 */
 	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
 		PIPE_CONF_CHECK_BOOL(has_psr);
-		PIPE_CONF_CHECK_BOOL(has_psr2);
+		PIPE_CONF_CHECK_BOOL(has_sel_update);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
 		PIPE_CONF_CHECK_BOOL(has_panel_replay);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0f4bd5710796..328bdb96e23b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1230,7 +1230,7 @@ struct intel_crtc_state {
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
-	bool has_psr2;
+	bool has_sel_update;
 	bool enable_psr2_sel_fetch;
 	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 20f2d4d9d7b9..0d18bc7f4181 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2662,7 +2662,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_psr2) {
+	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
 		/*
 		 * [PSR2 without colorimetry]
 		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7c4d2b2bf20b..5bfce36fb892 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1250,7 +1250,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4db6c19731e9..f2ea995578f8 100644
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
@@ -1628,7 +1628,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1661,7 +1661,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
 	if (!intel_dp->psr.psr2_enabled)
@@ -1949,7 +1949,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -2677,7 +2677,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
-- 
2.34.1

