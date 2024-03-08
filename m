Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25D18764C3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE9B10E931;
	Fri,  8 Mar 2024 13:11:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7ycbA3B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A55910F9DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709903514; x=1741439514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kNySRbB+ABFf3Ki+P4pHOBFdD1MBeSWVmaZfxWjiJkY=;
 b=Q7ycbA3BiMiHME1FEXVnQ7dSIDlaK06Mm2S/tmxdCA6M6e6R0TJt4kKi
 Rd4DeFczRV8D9K3O8kA37zzZVisGCPf0nu2ORyRzapXlQZK5PtEnoLFya
 +JHuG4KsAud6pP/WrpLjMLCBa4260s82LdsUV/KuPqvjlgyJh9mMTO4kC
 vgguYWUR5o+b1mKfZ3/4OjWU0R6P4TX8j127Kae8zrtNeteDac0P/Cj+/
 eub+PAz3I2ZooOizI1kQcq9QzXFzZnlQjNUfO4GBS9msjkwk6mQFXhRKE
 b9GMXNKjtXslbcKh92HtNA4GGbKwoqpLG4M+WUqZj8Tufe8mGRNX3Zf6U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4760581"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4760581"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10470381"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa010.jf.intel.com with ESMTP; 08 Mar 2024 05:11:52 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 2/6] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Date: Fri,  8 Mar 2024 15:11:42 +0200
Message-Id: <20240308131146.32714-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
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

Extract the "not-MST" stuff from intel_ddi_post_disable() so that
the whole thing isn't so cluttered.

The bigjoiner slave handling was outside of the !MST check,
but it really should have been inside it as its the counterpart
to the master handling inside the check. So we pull that
in as well. There is no functional change here as we don't
currently support bigjoiner+MST anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Credits-to: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 37 +++++++++++++++---------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bbce74f011d40..5628a4ab608d4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3095,28 +3095,26 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
 }
 
-static void intel_ddi_post_disable(struct intel_atomic_state *state,
-				   struct intel_encoder *encoder,
-				   const struct intel_crtc_state *old_crtc_state,
-				   const struct drm_connector_state *old_conn_state)
+static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
+					       struct intel_encoder *encoder,
+					       const struct intel_crtc_state *old_master_crtc_state,
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
@@ -3128,6 +3126,17 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
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
+
+	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
+		intel_ddi_post_disable_hdmi_or_sst(state, encoder,
+						   old_crtc_state, old_conn_state);
 
 	/*
 	 * When called from DP MST code:
-- 
2.37.3

