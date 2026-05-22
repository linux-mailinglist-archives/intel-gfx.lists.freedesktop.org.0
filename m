Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEEyOnVdEGrbWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654055B561A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32D610F637;
	Fri, 22 May 2026 13:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ro/5QxsT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EF910F5E8;
 Fri, 22 May 2026 13:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457391; x=1810993391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hGadmOsGND9nQUmo5SvevsvFw+92v9pzEDBUnV62Mcw=;
 b=Ro/5QxsTe+7b3dqubx/M1RNZ3s8CgC8ogwZOQv9iJ3QUxrUyJf7kA4Fo
 dBCGVdGUz51pBCmrZhs65u2fdeqchld0bNwLyOjSdWZ38shzmCKHnn7mm
 Mw01O4uKu1YMe8gdXjIdqzMH0Mo/ou87HQ+06zUUI8mYRNjbt91bnrm4r
 VaeApldlUg1VahGypJdr8Oiup5j+6tDYfc6Qgu6LCBG3tYRu7vFkVeVAK
 IF1bXrcXHLO+LdUsAI31IAqbs95I2HXJ2XxUQ5iaXRWPTimahwg5wi1lx
 mpv3BXDY88dapkC51cZslNHuqRqnwaihHC5YGy9Qnq739NCTJOlysNhS4 A==;
X-CSE-ConnectionGUID: x05Q/qc8SyaqP4uCGc4C1w==
X-CSE-MsgGUID: ykQHsGJFRLiLSpWC739J8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850605"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850605"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:11 -0700
X-CSE-ConnectionGUID: XeKaZjw4TlCvQNitVFswHA==
X-CSE-MsgGUID: cnzIW9fyRNeS5+KnIoEEtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317219"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/intel_panel: Pass crtc_state to
 intel_panel_compute_config
Date: Fri, 22 May 2026 18:55:09 +0530
Message-ID: <20260522132511.321540-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 654055B561A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change intel_panel_compute_config() to take intel_crtc_state instead of
drm_display_mode, to better match the convention used by encoder
compute_config hooks. The adjusted_mode is derived internally from
crtc_state->hw.adjusted_mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_panel.h | 4 +++-
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 5 +++--
 drivers/gpu/drm/i915/display/vlv_dsi.c     | 2 +-
 8 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a549f1fac810..9f28c5a903a4 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	ret = intel_panel_compute_config(intel_connector, pipe_config, conn_state->state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1920d2f02666..3f36d92580e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3599,7 +3599,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	int ret = 0, link_bpp_x16;
 
 	if (intel_dp_is_edp(intel_dp)) {
-		ret = intel_panel_compute_config(connector, adjusted_mode);
+		ret = intel_panel_compute_config(connector, pipe_config, conn_state->state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index dd1a995c2979..5579f0072362 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -256,7 +256,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	ret = intel_panel_compute_config(connector, adjusted_mode);
+	ret = intel_panel_compute_config(connector, pipe_config, conn_state->state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c8098104d853..71a4439d4af5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -459,7 +459,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	ret = intel_panel_compute_config(connector, adjusted_mode);
+	ret = intel_panel_compute_config(connector, crtc_state, conn_state->state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 6577c6bf5a88..2765d87ddca7 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -213,8 +213,10 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 }
 
 int intel_panel_compute_config(struct intel_connector *connector,
-			       struct drm_display_mode *adjusted_mode)
+			       struct intel_crtc_state *crtc_state,
+			       const struct drm_atomic_commit *state)
 {
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, adjusted_mode);
 	int vrefresh, fixed_mode_vrefresh;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index fe4d80a41d4c..3c4ff6735c21 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -10,6 +10,7 @@
 
 enum drm_connector_status;
 enum drrs_type;
+struct drm_atomic_commit;
 struct drm_connector;
 struct drm_connector_state;
 struct drm_display_mode;
@@ -48,7 +49,8 @@ intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode,
 		       int *target_clock);
 int intel_panel_compute_config(struct intel_connector *connector,
-			       struct drm_display_mode *adjusted_mode);
+			       struct intel_crtc_state *crtc_state,
+			       const struct drm_atomic_commit *state);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
 				      bool use_alt_fixed_modes);
 void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d83d350959d8..51746e10359f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		const struct drm_display_mode *fixed_mode =
-			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
 
 		if (fixed_mode->hdisplay != args.width ||
 		    fixed_mode->vdisplay != args.height)
@@ -1399,7 +1399,8 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 		int ret;
 
 		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
-						 adjusted_mode);
+						 pipe_config,
+						 conn_state->state);
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 877eab75f19a..bce8a940aff9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	ret = intel_panel_compute_config(intel_connector, pipe_config, conn_state->state);
 	if (ret)
 		return ret;
 
-- 
2.45.2

