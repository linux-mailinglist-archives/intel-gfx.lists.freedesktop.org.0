Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCD79271A3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2024 10:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3EF10EA1C;
	Thu,  4 Jul 2024 08:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eU5CuX9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFEA510E9F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2024 08:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720081575; x=1751617575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zjzjp5+eLoLVpoPxLe5cR9U+jdD1zwHk0XD6Ky8udN0=;
 b=eU5CuX9auw6ZNP+AT6YCpKwG4iiCQwQgtLyPcWGMYL+m1uQPzYrAjrML
 fpppQ7r6owl6uOs/6W2Uh6r51+1mA9Y4VQ1hxJmdmyke0k/fOYoom8nfX
 kH3sSyH+YZs1ei9mvdXhcDZur12svL4Sr09q44+JBdhbK7CLecwBZWfPw
 X7DtpkmNRzLhxu+4oz2eERcHOYdI3OFq1leFNLJlzBvF4XqSBuAJuwvuA
 RMbpxzAwOTiwILLDBe+vjcg1uryBQX4uj9ZDscgWBhgNxgMQvSzbdsRC4
 gL+SSGC2YCef+nSIT13Sh+AFltaKR/V0oEWT6PU3qW7uffZzBDVO+SlYE g==;
X-CSE-ConnectionGUID: 40QwrsmHQHWA7H+VpSZZrA==
X-CSE-MsgGUID: ymzlIi0PRlG0EooeaE7Lqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="17215029"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="17215029"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 01:26:14 -0700
X-CSE-ConnectionGUID: cCkMqYGrTGeOKowUen422A==
X-CSE-MsgGUID: 34kpMRcCS2yDIEaON6mEZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46303625"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 04 Jul 2024 01:26:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use it
 later
Date: Thu,  4 Jul 2024 13:56:38 +0530
Message-ID: <20240704082638.2302092-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240704082638.2302092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240704082638.2302092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add new member to struct intel_dp to cache support of Adaptive Sync
SDP capabilities and use it whenever required to avoid HW access
to read capability during each atomic commit.

-v2:
- Squash both the patches

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 -
 drivers/gpu/drm/i915/display/intel_vrr.c      |  3 +--
 5 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 866b3b409c4d..f4f05a859379 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -280,7 +280,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (!intel_dp_as_sdp_supported(intel_dp))
+	if (!intel_dp->as_sdp_supported)
 		return;
 
 	if (crtc_state->has_psr)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..a9d2acdc51a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1806,6 +1806,7 @@ struct intel_dp {
 
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
+	bool as_sdp_supported;
 
 	struct drm_dp_tunnel *tunnel;
 	bool tunnel_suspended:1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e6..edfb30857479 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -129,14 +129,6 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 	return dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
-bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
-	return HAS_AS_SDP(i915) &&
-		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
-}
-
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
@@ -2625,8 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable ||
-	    !intel_dp_as_sdp_supported(intel_dp))
+	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
@@ -5900,6 +5891,15 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 					  connector);
 }
 
+static void
+intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	intel_dp->as_sdp_supported = HAS_AS_SDP(i915) &&
+		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
+}
+
 static int
 intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
@@ -5958,6 +5958,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
+	intel_dp_detect_sdp_caps(intel_dp);
+
 	intel_dp_mst_configure(intel_dp);
 
 	if (intel_dp->reset_link_params) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a0f990a95ecc..9be539edf817 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -85,7 +85,6 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
-bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_has_dsc(const struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a0da64c7db3..7e1d9c718214 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp) &&
-	    crtc_state->vrr.enable) {
+	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

