Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934959C0AF5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3381410E87F;
	Thu,  7 Nov 2024 16:12:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKk+kxJD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293D010E87C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995924; x=1762531924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kwta/A+6rU9Ps4CXfqYZeJoXVnSA5w4gqoBnY6hUpzM=;
 b=iKk+kxJDPppdxIFDXjH95qjT8xg97FxgZ8nCNQVwxMLvGfxcTNeQcwUW
 AyGdu9y4o60hkdiSUhrhSW4j3QzRbkY4bjrFWZn/6QxGskSxGxKw6dvto
 OF4vQhhHEZRZw+Mbtkdp/JPPxWMiJCNo0M/zIQA/wDFjHCLsgVmGVlSBX
 DMPHEG4tFdk/JJQgM2O0Y1eqO2EQSShI9F2BLHByoTWBpzN/vNNWNO4oT
 HBjYqmSM3X5CCFaZg/uaArDk8OWAsBBuRowOavHEbqnFXnNMHS1a9fBX6
 lSeiimFovvqThuujCb6rbjDEmI22CzLg5lMgO6VHZywu48KFWiP4sP9Fo Q==;
X-CSE-ConnectionGUID: 6yZHcEeFSjC8MDZYrSAJqQ==
X-CSE-MsgGUID: Keq6J9V+SNy1Yz2VmTsOVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443284"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443284"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:45 -0800
X-CSE-ConnectionGUID: 2G3MMq58TAiB+y/BRfLoyQ==
X-CSE-MsgGUID: 6bLkKqc4R+WhnLG0bNNBUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/10] drm/i915/crt: s/pipe_config/crtc_state/
Date: Thu,  7 Nov 2024 18:11:20 +0200
Message-ID: <20241107161123.16269-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
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

Call the crtc state 'crtc_state' rather than 'pipe_config',
as is the modern style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 62 ++++++++++++------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4784a858b4a2..0962a239288b 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -150,27 +150,27 @@ static unsigned int intel_crt_get_flags(struct intel_encoder *encoder)
 }
 
 static void intel_crt_get_config(struct intel_encoder *encoder,
-				 struct intel_crtc_state *pipe_config)
+				 struct intel_crtc_state *crtc_state)
 {
-	pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_ANALOG);
 
-	pipe_config->hw.adjusted_mode.flags |= intel_crt_get_flags(encoder);
+	crtc_state->hw.adjusted_mode.flags |= intel_crt_get_flags(encoder);
 
-	pipe_config->hw.adjusted_mode.crtc_clock = pipe_config->port_clock;
+	crtc_state->hw.adjusted_mode.crtc_clock = crtc_state->port_clock;
 }
 
 static void hsw_crt_get_config(struct intel_encoder *encoder,
-			       struct intel_crtc_state *pipe_config)
+			       struct intel_crtc_state *crtc_state)
 {
-	lpt_pch_get_config(pipe_config);
+	lpt_pch_get_config(crtc_state);
 
-	hsw_ddi_get_config(encoder, pipe_config);
+	hsw_ddi_get_config(encoder, crtc_state);
 
-	pipe_config->hw.adjusted_mode.flags &= ~(DRM_MODE_FLAG_PHSYNC |
-					      DRM_MODE_FLAG_NHSYNC |
-					      DRM_MODE_FLAG_PVSYNC |
-					      DRM_MODE_FLAG_NVSYNC);
-	pipe_config->hw.adjusted_mode.flags |= intel_crt_get_flags(encoder);
+	crtc_state->hw.adjusted_mode.flags &= ~(DRM_MODE_FLAG_PHSYNC |
+						DRM_MODE_FLAG_NHSYNC |
+						DRM_MODE_FLAG_PVSYNC |
+						DRM_MODE_FLAG_NVSYNC);
+	crtc_state->hw.adjusted_mode.flags |= intel_crt_get_flags(encoder);
 }
 
 /* Note: The caller is required to filter out dpms modes not supported by the
@@ -408,48 +408,48 @@ intel_crt_mode_valid(struct drm_connector *connector,
 }
 
 static int intel_crt_compute_config(struct intel_encoder *encoder,
-				    struct intel_crtc_state *pipe_config,
+				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state)
 {
 	struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
+		&crtc_state->hw.adjusted_mode;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
 }
 
 static int pch_crt_compute_config(struct intel_encoder *encoder,
-				  struct intel_crtc_state *pipe_config,
+				  struct intel_crtc_state *crtc_state,
 				  struct drm_connector_state *conn_state)
 {
 	struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
+		&crtc_state->hw.adjusted_mode;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	pipe_config->has_pch_encoder = true;
-	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+	crtc_state->has_pch_encoder = true;
+	if (!intel_fdi_compute_pipe_bpp(crtc_state))
 		return -EINVAL;
 
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
 }
 
 static int hsw_crt_compute_config(struct intel_encoder *encoder,
-				  struct intel_crtc_state *pipe_config,
+				  struct intel_crtc_state *crtc_state,
 				  struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
+		&crtc_state->hw.adjusted_mode;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
@@ -459,30 +459,30 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	    adjusted_mode->crtc_hblank_start > 4096)
 		return -EINVAL;
 
-	pipe_config->has_pch_encoder = true;
-	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+	crtc_state->has_pch_encoder = true;
+	if (!intel_fdi_compute_pipe_bpp(crtc_state))
 		return -EINVAL;
 
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/* LPT FDI RX only supports 8bpc. */
 	if (HAS_PCH_LPT(dev_priv)) {
 		/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained */
-		if (pipe_config->bw_constrained && pipe_config->pipe_bpp < 24) {
+		if (crtc_state->bw_constrained && crtc_state->pipe_bpp < 24) {
 			drm_dbg_kms(display->drm,
 				    "LPT only supports 24bpp\n");
 			return -EINVAL;
 		}
 
-		pipe_config->pipe_bpp = 24;
+		crtc_state->pipe_bpp = 24;
 	}
 
 	/* FDI must always be 2.7 GHz */
-	pipe_config->port_clock = 135000 * 2;
+	crtc_state->port_clock = 135000 * 2;
 
-	pipe_config->enhanced_framing = true;
+	crtc_state->enhanced_framing = true;
 
-	adjusted_mode->crtc_clock = lpt_iclkip(pipe_config);
+	adjusted_mode->crtc_clock = lpt_iclkip(crtc_state);
 
 	return 0;
 }
-- 
2.45.2

