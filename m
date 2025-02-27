Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F47A4799C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 10:53:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C8810EA8C;
	Thu, 27 Feb 2025 09:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwTnWUwP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B56510EA89;
 Thu, 27 Feb 2025 09:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740650021; x=1772186021;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eBzebZpVfBg/87sWHQnQiHtrlUlDX8mfuIm4T7nw4qI=;
 b=lwTnWUwP2VYp38gcbsG9T5zeo3P4VN948LX2HpMBPLnu94AxzS6mO21V
 tORco+eXKa8tcmk3rXrLlQgujHTe4JXXCp9iMUTg0faZu63Bog1ZXmHAq
 /4HMbxh+S3+W0ya4xLzQ9kWyZx2p8EnRlN4hTq5+W5RnPlWDltO4nVu91
 pAeHCXEITzo+t6W+tO2DZjcfvfQ87NymIQN0hkE8Nmum0Jij+ILzGBmh4
 9F4Hmi4BZVnzlpjo379njBCOglc7Tf12HfUn66zaLNi/Tu0Tf6cFhk+z1
 P+UGzLT/AMOFhYML6muXMqQvniJF9wcVtdaBovzvMyyhTkFeLoGk0PU+W A==;
X-CSE-ConnectionGUID: Gxn5ehwtT1KrRvODBYAb/w==
X-CSE-MsgGUID: 7MM/s9VGRoy4U/ZwAMr65A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41728292"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41728292"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 01:53:41 -0800
X-CSE-ConnectionGUID: p9eWPYKfSEyEXV8/BlMfJA==
X-CSE-MsgGUID: kJ6HMheAQnu6qHRHY3LswQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="117154165"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 27 Feb 2025 01:53:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, william.tseng@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Date: Thu, 27 Feb 2025 15:23:37 +0530
Message-Id: <20250227095337.263091-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Some DSI panel vendors end up hardcoding PPS params because of which
it does not listen to the params sent from the source. We use the
default config tables for DSI panels when using DSC 1.1 rather than
calculate our own rc parameters.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c   | 3 ++-
 drivers/gpu/drm/i915/display/intel_vdsc.c | 7 +++++--
 drivers/gpu/drm/i915/display/intel_vdsc.h | 3 ++-
 4 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5d3d54922d62..9022692c86ef 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1607,7 +1607,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 
-	ret = intel_dsc_compute_params(crtc_state);
+	ret = intel_dsc_compute_params(crtc_state, encoder);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03ca2e02ab02..14a8cdcd1762 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1856,6 +1856,7 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	struct intel_encoder *encoder = connector->encoder;
 	int ret;
 
 	/*
@@ -1869,7 +1870,7 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 
 	vdsc_cfg->slice_height = intel_dp_get_slice_height(vdsc_cfg->pic_height);
 
-	ret = intel_dsc_compute_params(crtc_state);
+	ret = intel_dsc_compute_params(crtc_state, encoder);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6e7151346382..fd8602c1fa7d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -260,7 +260,8 @@ static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config
 	return 0;
 }
 
-int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
+int intel_dsc_compute_params(struct intel_crtc_state *pipe_config,
+			     struct intel_encoder *encoder)
 {
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -320,7 +321,9 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if (DISPLAY_VER(dev_priv) >= 13 &&
+	    (vdsc_cfg->dsc_version_minor != 1 ||
+	     encoder->type != INTEL_OUTPUT_DSI)) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..50681fb3c129 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -19,7 +19,8 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
+int intel_dsc_compute_params(struct intel_crtc_state *pipe_config,
+			     struct intel_encoder *encoder);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
-- 
2.34.1

