Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A14E51785C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 22:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D557410E66B;
	Mon,  2 May 2022 20:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEFB10E65B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 20:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651524040; x=1683060040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6r0JVEm97E0jHAoi13T87rQQoefTlX9huusCqBo66iw=;
 b=lx+cK2DmlO3GofH8SS4DegRDnidEYsJDzw/kFuqVLfTbz96fmarQnfUq
 MfH334EDfyWHuCSDr9pV69HIhZ/mhN1XKZ4wv7ZvNAOhJyhQMI/lwXIcc
 ulVJwugTUcxM0Ucj+kiAHsI+y+IYQvFjsghtLdl3XVhM9UrKAUEBM8OYW
 T0mcTOacPT7Wdx4dx8G9A+KmoWJKkfQPc5yiolruHLjX2MJfdBIw2uD/C
 3dscRytw0KGqLFYbtgAPm34of768iFYmx5h9Jci/KU+sDuiZ79SRPhO+t
 9andE2sJcn1V7599n/0XqVHFAGwD+tDOWFxQLemHANTYMYYQ9q0e9PCJs w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247873045"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="247873045"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:40:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="690670615"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:40:38 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 May 2022 13:41:16 -0700
Message-Id: <20220502204117.32938-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220502204117.32938-1-jose.souza@intel.com>
References: <20220502204117.32938-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/display/dp: Try to fallback to
 previous link config if modeset is not allowed
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

When an atomic commit has changes that allows it to go to a lower DP
link configuration it will require a modeset but userspace might not
want it, so it would not set the modeset allowed flag causing
commit to fail.

Here in such case it tries to keep previous and trained link
configuration for the new state.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 86 ++++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4a79c11fd255..cc9be82e128f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1596,6 +1596,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			return ret;
 	}
 
+	return 0;
+}
+
+static void
+intel_dp_print_link_config(struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode =
+			&pipe_config->hw.adjusted_mode;
+
 	if (pipe_config->dsc.compression_enable) {
 		drm_dbg_kms(&i915->drm,
 			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
@@ -1621,7 +1631,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    intel_dp_max_data_rate(pipe_config->port_clock,
 						   pipe_config->lane_count));
 	}
-	return 0;
 }
 
 bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
@@ -1915,6 +1924,72 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
+/*
+ * If modeset is not allowed it checks for link computed state and if different
+ * it checks if is possible to fallback to previous configuration.
+ *
+ * Returns 0 if modeset is allowed, link computed states matches or fallback is
+ * possible otherwise returns a errno.
+ */
+static int
+intel_dp_compute_link_config_no_modeset_fallback(struct intel_crtc_state *crtc_state)
+{
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	const struct intel_crtc_state *old_crtc_state;
+	int output_bpp, mode_rate, old_link_avail;
+	struct intel_crtc *crtc;
+
+	if (state->base.allow_modeset)
+		return 0;
+
+	crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+
+	/* Check if both states matches */
+	if (crtc_state->output_format == old_crtc_state->output_format &&
+	    crtc_state->port_clock == old_crtc_state->port_clock &&
+	    crtc_state->lane_count == old_crtc_state->lane_count &&
+	    crtc_state->pipe_bpp == old_crtc_state->pipe_bpp &&
+	    crtc_state->dsc.compression_enable == old_crtc_state->dsc.compression_enable &&
+	    crtc_state->dsc.compressed_bpp == old_crtc_state->dsc.compressed_bpp &&
+	    crtc_state->dsc.slice_count == old_crtc_state->dsc.slice_count &&
+	    crtc_state->bigjoiner_pipes == old_crtc_state->bigjoiner_pipes)
+		return 0;
+
+	/*
+	 * Modeset will be required if any of this changed, there is no way
+	 * around it
+	 */
+	if (crtc_state->output_format != old_crtc_state->output_format ||
+	    crtc_state->bigjoiner_pipes != old_crtc_state->bigjoiner_pipes ||
+	    crtc_state->dsc.compression_enable != old_crtc_state->dsc.compression_enable)
+		return -EINVAL;
+
+	/* TODO: Not supporting DSC fallback but it might be possible */
+	if (crtc_state->dsc.compression_enable)
+		return -EINVAL;
+
+	output_bpp = intel_dp_output_bpp(crtc_state->output_format,
+					 old_crtc_state->pipe_bpp);
+	mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock,
+					   output_bpp);
+
+	old_link_avail = intel_dp_max_data_rate(old_crtc_state->port_clock,
+						old_crtc_state->lane_count);
+
+	/* Check if old link configuration has enough bandwidth for new mode */
+	if (mode_rate > old_link_avail)
+		return -EINVAL;
+
+	/* Fallback is possible */
+	crtc_state->lane_count = old_crtc_state->lane_count;
+	crtc_state->pipe_bpp = old_crtc_state->pipe_bpp;
+	crtc_state->port_clock = old_crtc_state->port_clock;
+
+	return 0;
+}
+
 static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -1950,8 +2025,17 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->output_format = intel_dp_output_format(connector, true);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
+		if (ret)
+			return ret;
 	}
 
+	ret = intel_dp_compute_link_config_no_modeset_fallback(crtc_state);
+	if (ret)
+		drm_dbg_kms(&i915->drm, "DP link configuration requires "
+			    "changes but modeset is not allowed\n");
+
+	intel_dp_print_link_config(crtc_state);
+
 	return ret;
 }
 
-- 
2.36.0

