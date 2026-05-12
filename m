Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHioHHMvA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D48521955
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9451910EAB4;
	Tue, 12 May 2026 13:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZFZmgqhJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745FD10E276;
 Tue, 12 May 2026 13:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593649; x=1810129649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ClWSiEbVqQxrYO6e/wNFx5hn4lKxhzLGIbOStAM67Q=;
 b=ZFZmgqhJvBuO9hg4frcovXUfsyJl2Xbrhaas69+P2hr1yzJXpF3xGuuw
 Kti7mdXwo9nkpZdhv6t3qqQubSGBvqKRTacfD4044y9uqdt/47kJ+wdCK
 ExnRNA2ITcW2gmSjKliA3vHTUm1oAmWAz+6NIalwLRhl5pBHXr0ZKDLE8
 MmqffKYSNaptlYfFF7ddAHXC5q7K8+Z3PnMJ+BcTLsu8Ekzz+3SxOOLmf
 ii+p04FHtbFRf8EWrr4x+b2ITO/ji7LmsRoL41o0uAemDnGRi1KLe3aYh
 Qy2AXAAW6ZPGZqSz5/YrXdm5WWmQTDLTJ2RWpj39hgiALFmLGp4IX/iCu g==;
X-CSE-ConnectionGUID: TBTi/bfsSYK2YM9EFe/SAw==
X-CSE-MsgGUID: Ev5E5XQ7TAaIsmeAhCjh9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604342"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604342"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:28 -0700
X-CSE-ConnectionGUID: LPX6GOY4T/qlqGc8D2lRDA==
X-CSE-MsgGUID: Ru9DNMGoR8W8GsMsVT7V6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257390"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/intel_panel: Pass crtc_state to
 intel_panel_compute_config
Date: Tue, 12 May 2026 19:02:47 +0530
Message-ID: <20260512133249.2475882-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 22D48521955
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

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
index afbaa0465842..b8ec8c1d9865 100644
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
index 2151766546e6..284b1b7a6af3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3598,7 +3598,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
index ab6ba08ac091..b74ad1bd4069 100644
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
index 23c511a9a2ad..e11c1dfc602a 100644
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
index 76e8cd0f65a4..13ea5b4f57ad 100644
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

