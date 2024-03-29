Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D1D89103B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B1110E9B6;
	Fri, 29 Mar 2024 01:13:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lbHYH5ZC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E3010EC42
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674825; x=1743210825;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V+AoFsnYVxlbnkZAh0CkqeDraN72qfql9r/IrGbQxgo=;
 b=lbHYH5ZCQdhIQ8sclNW6jRHvuV3m8lECqtKtcj2BS65dIeJ0Vd9K975p
 FH3chY3EwauZROS4kAoQJxA1aUddnLBBb6q9Nwko+uQQmCCfZ/i4Ltkm2
 VCbj0nZdwgkMeh1rlKzEwSVaJm3Qnf0+tBoP55yNkr5dRsTKdYSDWmcQ/
 oGfEF3P4mQeCeTFIWBOQJ1dGadneopaW0jGi/6xHgmB06VOTFfO0/bqBF
 l80Dfd5lcIfkFZBsFPhs1Lq7QP3FjVMOOuS4zeQXyk1++Etr1JxTevhxv
 3MccnKBrqMrE9tp9Kmw+aFpulB8IP85vcbuO902rLvLN/ZBaHIhKP8rHY A==;
X-CSE-ConnectionGUID: AXi4HuqbRzytVpVeJOuUQQ==
X-CSE-MsgGUID: 6ztJBDBaSA2zI0oq1ul2Dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756330"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756330"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786780"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786780"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/22] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Date: Fri, 29 Mar 2024 03:12:48 +0200
Message-ID: <20240329011254.24160-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Extract the "not-MST" stuff from intel_ddi_post_disable() so that
the whole thing isn't so cluttered.

The bigjoiner slave handling was outside of the !MST check,
but it really should have been inside it as its the counterpart
to the master handling inside the check. So we pull that
in as well. There is no functional change here as we don't
currently support bigjoiner+MST anyway.

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 52 +++++++++++-------------
 1 file changed, 24 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 24a9be2a217f..1130bfb7363c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3092,39 +3092,35 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
 }
 
+static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
+					       struct intel_encoder *encoder,
+					       const struct intel_crtc_state *old_crtc_state,
+					       const struct drm_connector_state *old_conn_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	intel_crtc_vblank_off(old_crtc_state);
+
+	intel_disable_transcoder(old_crtc_state);
+
+	intel_ddi_disable_transcoder_func(old_crtc_state);
+
+	intel_dsc_disable(old_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		skl_scaler_disable(old_crtc_state);
+	else
+		ilk_pfit_disable(old_crtc_state);
+}
+
 static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *slave_crtc;
-
-	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
-		intel_crtc_vblank_off(old_crtc_state);
-
-		intel_disable_transcoder(old_crtc_state);
-
-		intel_ddi_disable_transcoder_func(old_crtc_state);
-
-		intel_dsc_disable(old_crtc_state);
-
-		if (DISPLAY_VER(dev_priv) >= 9)
-			skl_scaler_disable(old_crtc_state);
-		else
-			ilk_pfit_disable(old_crtc_state);
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
-		const struct intel_crtc_state *old_slave_crtc_state =
-			intel_atomic_get_old_crtc_state(state, slave_crtc);
-
-		intel_crtc_vblank_off(old_slave_crtc_state);
-
-		intel_dsc_disable(old_slave_crtc_state);
-		skl_scaler_disable(old_slave_crtc_state);
-	}
+	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
+		intel_ddi_post_disable_hdmi_or_sst(state, encoder,
+						   old_crtc_state, old_conn_state);
 
 	/*
 	 * When called from DP MST code:
-- 
2.43.2

