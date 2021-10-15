Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6819742E9E5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10206ECEA;
	Fri, 15 Oct 2021 07:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A346ECE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291350751"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291350751"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="571675400"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 15 Oct 2021 00:16:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:22 +0300
Message-Id: <20211015071625.593-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Move iCLKIP readout to the pch
 code
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

Move the lpt_get_iclkip() call from hsw_crt_get_config()
since that's where we have the lpt_program_iclkip() call
as well.

Tehcnically this isn't perhaps quite right since iCLKIP
is providing the CRT dotclock. So one can argue all of
it should be directly in intel_crt.c. But since the CRT
port is the only one on the PCH sticking it all into the
PCH code seems OK.

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c         | 4 ----
 drivers/gpu/drm/i915/display/intel_ddi.c         | 7 ++++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 ++
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 03cfae46f92f..fe807c8e793d 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -145,8 +145,6 @@ static void intel_crt_get_config(struct intel_encoder *encoder,
 static void hsw_crt_get_config(struct intel_encoder *encoder,
 			       struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	lpt_pch_get_config(pipe_config);
 
 	hsw_ddi_get_config(encoder, pipe_config);
@@ -156,8 +154,6 @@ static void hsw_crt_get_config(struct intel_encoder *encoder,
 					      DRM_MODE_FLAG_PVSYNC |
 					      DRM_MODE_FLAG_NVSYNC);
 	pipe_config->hw.adjusted_mode.flags |= intel_crt_get_flags(encoder);
-
-	pipe_config->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
 
 /* Note: The caller is required to filter out dpms modes not supported by the
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1dcfe31e6c6f..8bbbeec01607 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -321,10 +321,11 @@ static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 {
 	int dotclock;
 
+	/* CRT dotclock is determined via other means */
 	if (pipe_config->has_pch_encoder)
-		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
-						    &pipe_config->fdi_m_n);
-	else if (intel_crtc_has_dp_encoder(pipe_config))
+		return;
+
+	if (intel_crtc_has_dp_encoder(pipe_config))
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
 	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index f3edabdd0a4c..07ec43f8a7fa 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -451,4 +451,6 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
 	ilk_get_fdi_m_n_config(crtc, crtc_state);
+
+	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
-- 
2.32.0

