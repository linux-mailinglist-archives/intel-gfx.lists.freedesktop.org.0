Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A3289E082
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 18:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7557C112518;
	Tue,  9 Apr 2024 16:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iV5TixIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67CB610FBE2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 16:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712680508; x=1744216508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FVGWzSpnoR2sqAId1w0uZvCitwXNfdkCdds5t/q/zcE=;
 b=iV5TixIRHUTz3xQH+nf3VM9raf99Sb3bXorbOayiEVcKF+U7zbtBwZCe
 bDYrZCkU/L2GzAi/svdmOjDHAOReA4RUC6SvF9DnJ5kSv7GAOotIfmKFs
 sVd6pLkn+n1a9oIw43uFFJu+JIBF49mdsXqc4lFjIEIH+psucaZ3VjUcZ
 vYUkM4Z7E3cWRWyAYkYB/H3U9lModBgl0Wpva8D4RZDf7H5I+Tad+nE1C
 fJDr4J9rEF70letKbbcYyy8StnSi+9kA2eZs3G9ySa9syugXCHor0PfAM
 Hy0MTyZarXyyvPejm0cvJdPtSByAul7SPshIcUA+iFaqKVlkLFx9KkocF w==;
X-CSE-ConnectionGUID: W8BqXK1eSoaPIdcn+n1D2g==
X-CSE-MsgGUID: VZxOY4ZhQ26T0aox/wWjyw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18570845"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="18570845"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 09:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827792676"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="827792676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Apr 2024 09:35:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Apr 2024 19:35:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 1/6] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Date: Tue,  9 Apr 2024 19:34:57 +0300
Message-ID: <20240409163502.29633-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
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
v3: Actually extract the slave code as claimed in
    the commit message (presumably a rebase fail in v2)

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++++++---------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 312e90da78bf..6d1b3de3045b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3091,28 +3091,26 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
 }
 
-static void intel_ddi_post_disable(struct intel_atomic_state *state,
-				   struct intel_encoder *encoder,
-				   const struct intel_crtc_state *old_crtc_state,
-				   const struct drm_connector_state *old_conn_state)
+static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
+					       struct intel_encoder *encoder,
+					       const struct intel_crtc_state *old_crtc_state,
+					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *slave_crtc;
 
-	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
-		intel_crtc_vblank_off(old_crtc_state);
+	intel_crtc_vblank_off(old_crtc_state);
 
-		intel_disable_transcoder(old_crtc_state);
+	intel_disable_transcoder(old_crtc_state);
 
-		intel_ddi_disable_transcoder_func(old_crtc_state);
+	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-		intel_dsc_disable(old_crtc_state);
+	intel_dsc_disable(old_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 9)
-			skl_scaler_disable(old_crtc_state);
-		else
-			ilk_pfit_disable(old_crtc_state);
-	}
+	if (DISPLAY_VER(dev_priv) >= 9)
+		skl_scaler_disable(old_crtc_state);
+	else
+		ilk_pfit_disable(old_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
 					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
@@ -3124,6 +3122,16 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		intel_dsc_disable(old_slave_crtc_state);
 		skl_scaler_disable(old_slave_crtc_state);
 	}
+}
+
+static void intel_ddi_post_disable(struct intel_atomic_state *state,
+				   struct intel_encoder *encoder,
+				   const struct intel_crtc_state *old_crtc_state,
+				   const struct drm_connector_state *old_conn_state)
+{
+	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
+		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
+						   old_conn_state);
 
 	/*
 	 * When called from DP MST code:
-- 
2.43.2

