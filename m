Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E28989907F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF23113576;
	Thu,  4 Apr 2024 21:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYRLmaio";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36658113575
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266526; x=1743802526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LZsHYyZ4zECzyC0bqe4RNzzu9MOxa80sNjURKMmfW50=;
 b=CYRLmaioJRLRM+StqRwLfMl4i0mGSgQxRaFvKW9JfigGA1RsactyepYW
 D0s1hQbHAxZMWNKV0sGcetvEyLHSBOiudI/NpX2aLtn7TNzp+vfp+6ito
 KjbIa7nQNBxAp/Yx+UMkegd8JNE6jdM4+FwnqXYGTJFkFia+52E0ubeT7
 unC+8haik8kvey3+7BAJid37Cl0mqGPuYSu8ebFFGl0XQVXgsINQBwQvc
 qecit6LwMutf4orNpFv7qHSty+lpcDyJkkedjPmdSNbxnz3peRNym5UK7
 O4E5k8JqYwkWqTcnHoVQ83j13ZJjzLc82VxyFS+81V31dFAuAxT+4M2To g==;
X-CSE-ConnectionGUID: h8tbdH3RR1etxbVCPi3kJg==
X-CSE-MsgGUID: od0Ah9iVSu2DMIxJr9prVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710838"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710838"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790633"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790633"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 12/17] drm/i915: Extract
 intel_ddi_post_disable_hdmi_or_sst()
Date: Fri,  5 Apr 2024 00:34:36 +0300
Message-ID: <20240404213441.17637-13-ville.syrjala@linux.intel.com>
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

Extract the "not-MST" stuff from intel_ddi_post_disable() so that
the whole thing isn't so cluttered.

The bigjoiner slave handling was outside of the !MST check,
but it really should have been inside it as its the counterpart
to the master handling inside the check. So we pull that
in as well. There is no functional change here as we don't
currently support bigjoiner+MST anyway.

v2: Rebase

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 52 +++++++++++-------------
 1 file changed, 24 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9bfe0fd3cffc..0846d005fa16 100644
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

