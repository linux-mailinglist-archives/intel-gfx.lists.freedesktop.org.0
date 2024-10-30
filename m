Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A338C9B6CD3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3541010E7F4;
	Wed, 30 Oct 2024 19:23:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FY0LcecG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B00B10E0CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=feZrERrK12YXAKoW1Ul05/EjOHowxM+1fsbaeVQTZOE=;
 b=FY0LcecGLMlg/glM9xsMnpnGWVzcfs918fj/m54kc6U3eqjvG2pA43cg
 FXisJ2xOuMTnS6b2ao6wNSOn64o+a9QrZVomaJ0J0helRKcHqKZ+7PEwf
 utUKH/tfje+alp83zrOOh2UW3sgbhnQ0Jfq425UzcVsF1gdPWiu4dTmMZ
 D6Tc9+XtAoG0wpIYFnr9v44rbnPKSZTI2aAqJxsR12bHU26uC8DOB46KG
 3lj3yMvU1ChpBw2Nxg7HmXC3xhd1jgnTXYPoKQKsFwsIpWXeIE8ObJkpS
 NuENz5YUjTEy4KKwZS7YFI5RBnF5V4+4O49AJJ6CdNiE3KhyCygw8x4lw Q==;
X-CSE-ConnectionGUID: GqfmpXvqQ427Y9qYjY2vWg==
X-CSE-MsgGUID: Um4Pip7xRJuIIusSUyTjmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435007"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435007"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:42 -0700
X-CSE-ConnectionGUID: KH21p8LiRkSFq8n5kwyDvA==
X-CSE-MsgGUID: XjMu2veZSDG4/f1YwviMGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521942"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/5] drm/i915/ptl/dp_mst: Fix slave transcoder enabling
 wrt. DDI function
Date: Wed, 30 Oct 2024 21:23:09 +0200
Message-ID: <20241030192313.4030617-2-imre.deak@intel.com>
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

On PTL during modeset enabling configure the DDI function without
enabling it for MST slave transcoders before programming the data and
link M/N values. The DDI function gets enabled separately later in the
transcoder enabling sequence.

This fixes a slave transcoder getting stuck during enabling, leading
to page flip timeout errors on the corresponding pipe.

The spec requires the same programming step for ADLP+ platforms, that
will be addressed separately (on those platforms the above transcoder
getting stuck issue was not observed).

Bspec: 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.h    | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2bd14e2134be9..069cca4b38b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -619,7 +619,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
  * Same as intel_ddi_enable_transcoder_func(), but it does not set the enable
  * bit.
  */
-static void
+void
 intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 6d85422bdefef..1aa2e3a190aee 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -57,6 +57,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
+void intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a2ff3e1cb68f..7c16406883594 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1224,6 +1224,9 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
+		intel_ddi_config_transcoder_func(encoder, pipe_config);
+
 	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
-- 
2.44.2

