Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80759ABF4B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526A210E746;
	Wed, 23 Oct 2024 06:50:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5+VeKx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CC610E75B;
 Wed, 23 Oct 2024 06:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666257; x=1761202257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PyeLQF9bYqTFG4PkgIW1TmWzUtBggAvbYJzG6hEqfVA=;
 b=X5+VeKx6h4+bAUDjEU3/eSefg67fn7W9Xd8oY5m9lxNOnNgTGc5vWGeG
 m6m5/qlXIJev89Q3RwjmUbIIwWIKOqBbl88tEm6lnQExjRF/hGFeFVae7
 3BOiZYTgLeoSV6RKAXIp2ZelZ+xMizTOjD19JkmyKiT9H1S1Jbp8XGT3C
 jh08DijYBpQZtuvUYFmIoyg4CUJtmrHsBfXPt9dsynLvRJ5s0PJEnEJJa
 Xc2Yax9qrMRfXqETyUwVcjDxBR+RZ7+rsxTnXJAvxpDwXtYLFvjF/HlHZ
 2WOKPRJuRmHmcHUdiSr9ISi/bEXb9CrfoUkaNQyIqmNbVx2jX3usevVD0 g==;
X-CSE-ConnectionGUID: 8nUVdwF5QmC+wiZAkJW4Nw==
X-CSE-MsgGUID: Q1crFKi6SuazhqP1pVxndw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097481"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097481"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:57 -0700
X-CSE-ConnectionGUID: kMirfJrmTGCfCeMoVvhEIA==
X-CSE-MsgGUID: L4tF01zaRM2cZBOzkjtOqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691593"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 10/16] drm/i915/dp_mst: Account for pixel replication for MST
 overhead with DSC
Date: Wed, 23 Oct 2024 12:22:51 +0530
Message-ID: <20241023065257.190035-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Add the extra pixels to the hactive while computing overhead with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vdsc.c   | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  6 ++++++
 4 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 60baf4072dc9..e90a9dc1a8f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,6 +20,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a2ff3e1cb68..2bd33e1b318e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -92,20 +92,34 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 				    const struct intel_connector *connector,
 				    bool ssc, int dsc_slice_count, int bpp_x16)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
 	int overhead;
+	int replicated_pixels = 0;
 
 	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
 	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
-	if (dsc_slice_count)
+	if (dsc_slice_count) {
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
+		/*
+		 * When hdisplay is not divisible by dsc_slice_count, extra pixels
+		 * are added to last slice. Need to account for the extra overhead due
+		 * to these extra pixels.
+		 */
+		if (adjusted_mode->hdisplay % dsc_slice_count)
+			replicated_pixels =
+				intel_dsc_get_replicated_pixels(display,
+								adjusted_mode->hdisplay,
+								dsc_slice_count,
+								crtc_state->output_format);
+	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
-				      adjusted_mode->hdisplay,
+				      adjusted_mode->hdisplay + replicated_pixels,
 				      dsc_slice_count,
 				      bpp_x16,
 				      flags);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8b1639a94438..9eaf608995dc 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1040,3 +1040,23 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	intel_vdsc_dump_state(p, indent, crtc_state);
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
+
+int intel_dsc_get_replicated_pixels(struct intel_display *display,
+				    int mode_hdisplay,
+				    int slice_count,
+				    enum intel_output_format output_format)
+{
+	int replicated_pixels;
+	int slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	if (!HAS_PIXEL_REPLICATION(display))
+		return 0;
+
+	/* Odd slice width is not supported by YCbCr420 format */
+	if (slice_width % 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return 0;
+
+	replicated_pixels = (slice_width * slice_count) - mode_hdisplay;
+
+	return replicated_pixels;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 290b2e9b3482..41b8b5c5866e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -10,9 +10,11 @@
 
 struct drm_printer;
 
+enum intel_output_format;
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
@@ -31,5 +33,9 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
+int intel_dsc_get_replicated_pixels(struct intel_display *display,
+				    int mode_hdisplay,
+				    int slice_count,
+				    enum intel_output_format output_format);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

