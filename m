Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B1B9B6CD1
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE8110E7ED;
	Wed, 30 Oct 2024 19:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQ+9RZ5t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E7F10E7E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=whKvvPrCY/6BHR1yNJyNq0UqmTfs3QlGKKVQsQPy2B8=;
 b=jQ+9RZ5tDaaa0zpVAsfcBdr/VTsip6zyO+GT4S2CqOHjOuCsT5f8lLvC
 rYTY+y0ePCETNKgFENR02y44drGc9dyWFzGU8Ws9wQTw2Or4yZHKu9ohl
 Ozz/Ny1P//nSxOUbR8CH6I6WnUqYWqAMC+9BlLi5lDkVFIJUNWhrFWis0
 At4p6ojLSbFy8VK6j5AYDovpg4V3rhsCL5R/mqFxSE6zpNqeB/5N039KX
 vZmsGVy8NjKYZLXtvh7lcAXKDHw8ZkOQFR37hcVP61+0Y89UgjVYTfnkk
 lN42CcxEbBSRcSLkVmsEfBiEh2qrdyf0/ZcXa2GNAjyNo91wzVK4dUd3d g==;
X-CSE-ConnectionGUID: UeSJTGmsRZKbKuZSzPwSDw==
X-CSE-MsgGUID: ARUKKrihRgaRrmCetKcfXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435013"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435013"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:45 -0700
X-CSE-ConnectionGUID: 8VXBGl3jTTiCCJo0WvKbCw==
X-CSE-MsgGUID: eNumDkY7TLas7PXfEqJaAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521973"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 4/5] drm/i915/adlp+/dp_mst: Align slave transcoder
 sequences with spec wrt. DP2 config
Date: Wed, 30 Oct 2024 21:23:12 +0200
Message-ID: <20241030192313.4030617-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241030192313.4030617-1-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
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

On ADLP+ during modeset enabling and disabling, enable and disable the DP2
configuration for MST slave transcoders as required by the specification.

Update the documentation of intel_ddi_config_transcoder_func() /
intel_ddi_disable_transcoder_func() based on the above. While at it also
clarify the programming steps of these functions specific to transcoder
types.

v2:
- Enable/disable the DP2 config from
  intel_ddi_config_transcoder_func()/intel_ddi_disable_transcoder_func().
  (Jani)
- Handle all ADLP+ platforms in one patch, instead of doing that
  separately wrt. PTL.

Bspec: 55424, 54128, 65448, 68849
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dcd43087fa7ed..d82bc1bf8b68f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -621,7 +621,8 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 
 /*
  * Same as intel_ddi_enable_transcoder_func(), but it does not set the enable
- * bit.
+ * bit for the DDI function and enables the DP2 configuration. Called for all
+ * transcoder types.
  */
 void
 intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
@@ -632,12 +633,20 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 ctl;
 
+	intel_ddi_config_transcoder_dp2(crtc_state, true);
+
 	ctl = intel_ddi_transcoder_func_reg_val_get(encoder, crtc_state);
 	ctl &= ~TRANS_DDI_FUNC_ENABLE;
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 		       ctl);
 }
 
+/*
+ * Disable the DDI function and port syncing.
+ * For SST, pre-TGL MST, TGL+ MST-slave transcoders: deselect the DDI port,
+ * SST/MST mode and disable the DP2 configuration. For TGL+ MST-master
+ * transcoders these are done later in intel_ddi_post_disable_dp().
+ */
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -674,6 +683,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 		       ctl);
 
+	if (intel_dp_mst_is_slave_trans(crtc_state))
+		intel_ddi_config_transcoder_dp2(crtc_state, false);
+
 	if (intel_has_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		drm_dbg_kms(display->drm, "Quirk Increase DDI disabled time\n");
@@ -2552,10 +2564,6 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	/*
 	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
-	 */
-	intel_ddi_config_transcoder_dp2(crtc_state, true);
-
-	/*
 	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
 	 * Transport Select
 	 */
@@ -2690,8 +2698,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
-	intel_ddi_config_transcoder_dp2(crtc_state, true);
-
 	/*
 	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
 	 * Transport Select
-- 
2.44.2

