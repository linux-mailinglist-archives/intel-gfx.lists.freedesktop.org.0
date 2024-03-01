Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA39086E35F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5C710F08A;
	Fri,  1 Mar 2024 14:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tm0jr6+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0C610F087
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303773; x=1740839773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=op94XrQb4DbrDYBllm5hTeOAKbzhmMT82YVHE3oV/l0=;
 b=Tm0jr6+QksL9nT9T+C1oo4rQq0li6YBC+t8e3ZHKjTbxEu+ZWbK01mzT
 iVPc0/J3RlUEX4uMR1zNMfeZByA2Vo79d+JNwEPqkpJSTkLbbxSNKM/gx
 rnJFCYxA+3MwXnmY6lncL1vNp/Pz8WYX7cnWWrolZSW+ww4rGDGSFR9ph
 wWze7kgxrA1jGZIo2A9009Yl/UCvCq5iRpMZPo2Kfsb7rY3cB330u73Dv
 VLFB7nHbnjXesq/TKU3jHa8G+BmwR4gXp+Wbw8+FCvLUwWzjZntjYPbqS
 PZLuKJhlvCqgo4GUv8aaCKZv5BA25rwQZu17uRwVqX/Sa6hzw2UCyPluM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275838"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275838"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771982"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771982"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 3/8] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Date: Fri,  1 Mar 2024 16:35:55 +0200
Message-ID: <20240301143600.1334-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++++++---------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0e5834f8af6e..f3f8ecf1a87e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3095,28 +3095,26 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
 }
 
-static void intel_ddi_post_disable(struct intel_atomic_state *state,
-				   struct intel_encoder *encoder,
-				   const struct intel_crtc_state *old_master_crtc_state,
-				   const struct drm_connector_state *old_conn_state)
+static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
+					       struct intel_encoder *encoder,
+					       const struct intel_crtc_state *old_master_crtc_state,
+					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *slave_crtc;
 
-	if (!intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_DP_MST)) {
-		intel_crtc_vblank_off(old_master_crtc_state);
+	intel_crtc_vblank_off(old_master_crtc_state);
 
-		intel_disable_transcoder(old_master_crtc_state);
+	intel_disable_transcoder(old_master_crtc_state);
 
-		intel_ddi_disable_transcoder_func(old_master_crtc_state);
+	intel_ddi_disable_transcoder_func(old_master_crtc_state);
 
-		intel_dsc_disable(old_master_crtc_state);
+	intel_dsc_disable(old_master_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 9)
-			skl_scaler_disable(old_master_crtc_state);
-		else
-			ilk_pfit_disable(old_master_crtc_state);
-	}
+	if (DISPLAY_VER(dev_priv) >= 9)
+		skl_scaler_disable(old_master_crtc_state);
+	else
+		ilk_pfit_disable(old_master_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
 					 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state)) {
@@ -3128,6 +3126,16 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		intel_dsc_disable(old_slave_crtc_state);
 		skl_scaler_disable(old_slave_crtc_state);
 	}
+}
+
+static void intel_ddi_post_disable(struct intel_atomic_state *state,
+				   struct intel_encoder *encoder,
+				   const struct intel_crtc_state *old_master_crtc_state,
+				   const struct drm_connector_state *old_conn_state)
+{
+	if (!intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_DP_MST))
+		intel_ddi_post_disable_hdmi_or_sst(state, encoder,
+						   old_master_crtc_state, old_conn_state);
 
 	/*
 	 * When called from DP MST code:
-- 
2.43.0

