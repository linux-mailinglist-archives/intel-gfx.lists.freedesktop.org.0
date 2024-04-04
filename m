Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAC4899081
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4677411357A;
	Thu,  4 Apr 2024 21:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3i6gmmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3FD113579
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266540; x=1743802540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hl+IT/feOEI34DoB7P3jbMpbht3UVmzp1o67MCZDjwA=;
 b=E3i6gmmt5Xh0ETYmwp8n52S273Q3eOPnl9oRdB196J+1CWCwR25eMezf
 DUh+6h9k99a49oUPo7aKbEX50DTweWv5DQb9qtb+v/RCS7VQTjUMhMTX4
 gfnywcR8exbOQY8msJtj7F07cZ7ApPcvBr2tnuyVeVVtXFHbM8O3pBX/+
 tM6+bBIhutzOiXphCtjB/UQFGMeZX+4SmgdXBhj2/hlWb4xx4XpZu8GAF
 6zegMwuJETgchrFvm3bVZLyubT0O4pPFyhxXK+1LYkPEwyGWzHwmtiePH
 z4pPuW6BJJQp/J3a+zkKRoyNAtRZ46zSu03w6DMdLhsKdSvsj7HcRu9Aw w==;
X-CSE-ConnectionGUID: agDw38D2Qh66BV1AzUzN5g==
X-CSE-MsgGUID: JD2HPXNtSP+N2Htq+BxGLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710847"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710847"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790645"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790645"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH v2 16/17] drm/i915/mst: Add bigjoiner handling to MST modeset
 sequence
Date: Fri,  5 Apr 2024 00:34:40 +0300
Message-ID: <20240404213441.17637-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Loop over all joined pipes at relevant points in the MST
modeset sequence.

Carved out from Vidya's earlier big patch, with naming/etc.
changed to match the earlier hsw_crtc_enable() stuff.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Co-developed-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 34 ++++++++++++++++-----
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index de364ed77c08..2d601d214915 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -956,6 +956,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_dp_mst_atomic_payload *new_payload =
 		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_crtc *pipe_crtc;
 	bool last_mst_stream;
 
 	intel_dp->active_mst_links--;
@@ -964,7 +965,13 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	intel_crtc_vblank_off(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_off(old_pipe_crtc_state);
+	}
 
 	intel_disable_transcoder(old_crtc_state);
 
@@ -982,12 +989,18 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	intel_dsc_disable(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_crtc_state);
-	else
-		ilk_pfit_disable(old_crtc_state);
+		intel_dsc_disable(old_pipe_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_scaler_disable(old_pipe_crtc_state);
+		else
+			ilk_pfit_disable(old_pipe_crtc_state);
+	}
 
 	/*
 	 * Power down mst path before disabling the port, otherwise we end
@@ -1133,6 +1146,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
+	struct intel_crtc *pipe_crtc;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1174,7 +1188,13 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	intel_crtc_vblank_on(pipe_config);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+						 intel_crtc_joined_pipe_mask(pipe_config)) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_on(pipe_crtc_state);
+	}
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
-- 
2.43.2

