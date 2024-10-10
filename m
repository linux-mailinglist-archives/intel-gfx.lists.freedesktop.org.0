Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B02997BA1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A92910E850;
	Thu, 10 Oct 2024 04:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TEAXFHNZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3F510E84D;
 Thu, 10 Oct 2024 04:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533324; x=1760069324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VR4IpKht+W4IRFrycEMKUUPqrXWc3vLJ9dLVJauqJ2E=;
 b=TEAXFHNZvyRgw9PoFx0mwFd6B7fetI/KP5Z1WE+J/vgjgeUeq3HIRJAm
 DPaG/IXJwUuPjMJAujwCO+NthDAScVekokkZAMKgTzWDD+/+9kLSZD1S+
 bJQnCio2EMVfO3BwqcFgP1/qkIoerLY94ejpbAbqlcrTNEzXcpLhUMKoD
 Jo6DcvjgPTiNXtpU7MdLbBiOIjcGpaTbQ5RFmvODR3s+2ylQkxwa/Gets
 ehTBiwL4vsPcPybdh8OEdV2GmUIkMmKvhCFQ71lxEeuyblNlm4shgDRY6
 s7WL2eXdHsqOnnv2AFtnPK0drh6E9szH8h/Yk6KRLrvzL3ZOfhpbFkpIU A==;
X-CSE-ConnectionGUID: I0HpwKDGR0W/sB9MDShDkA==
X-CSE-MsgGUID: Wg5Fzv0DQ5+oas5uIPywxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986955"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986955"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:44 -0700
X-CSE-ConnectionGUID: XSqC3RUgSGKWPMgNWy8gww==
X-CSE-MsgGUID: qPsyY6ZhRAiYhI28srX88A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782652"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 2/4] drm/i915/display: Limit m/n ratio to 10 for display > 12
Date: Thu, 10 Oct 2024 09:40:43 +0530
Message-ID: <20241010041045.2014069-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
References: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
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

As per Bspec:49266 for DISPLAY > 12 which support higher
link rates have a limitation:
If the CEILING( Link M / Link N ) ratio is greater than 10.0, then
hardware cannot support the given resolution / refresh rate at the given
configuration.

Modify the helper to compute m_n, to check for the max link_m/n ratio
for the given platforms, and return error code in case the
resolution/refresh rate is not supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  9 +++--
 drivers/gpu/drm/i915/display/intel_dp.c      | 39 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 34 ++++++++++-------
 drivers/gpu/drm/i915/display/intel_fdi.c     | 15 ++++----
 5 files changed, 89 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2a7fa0013b44..9407eebf731b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2658,8 +2658,15 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
-void
-intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
+static int
+get_max_link_m_n_ratio(void)
+{
+	return 10;
+}
+
+int
+intel_link_compute_m_n(struct intel_display *display,
+		       u16 bits_per_pixel_x16, int nlanes,
 		       int pixel_clock, int link_clock,
 		       int bw_overhead,
 		       struct intel_link_m_n *m_n)
@@ -2668,6 +2675,7 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 	u32 data_m = intel_dp_effective_data_rate(pixel_clock, bits_per_pixel_x16,
 						  bw_overhead);
 	u32 data_n = drm_dp_max_dprx_data_rate(link_clock, nlanes);
+	int link_m_n_ratio, max_link_m_n_ratio;
 
 	/*
 	 * Windows/BIOS uses fixed M/N values always. Follow suit.
@@ -2684,6 +2692,26 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 	compute_m_n(&m_n->link_m, &m_n->link_n,
 		    pixel_clock, link_symbol_clock,
 		    0x80000);
+
+	if (DISPLAY_VER(display) < 12)
+		return 0;
+
+	/* Check for Link M/N ratio for Display >= 12 */
+	max_link_m_n_ratio = get_max_link_m_n_ratio();
+
+	if (!m_n->link_n)
+		return -EINVAL;
+
+	link_m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (link_m_n_ratio > max_link_m_n_ratio) {
+		drm_dbg_kms(display->drm,
+			    "Cannot support Link_m/Link_n ratio : %d > %d\n",
+			    link_m_n_ratio, max_link_m_n_ratio);
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 61e1df878de9..61f6943443a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -420,10 +420,11 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
-void intel_link_compute_m_n(u16 bpp, int nlanes,
-			    int pixel_clock, int link_clock,
-			    int bw_overhead,
-			    struct intel_link_m_n *m_n);
+int intel_link_compute_m_n(struct intel_display *display,
+			   u16 bpp, int nlanes,
+			   int pixel_clock, int link_clock,
+			   int bw_overhead,
+			   struct intel_link_m_n *m_n);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..45ab903a31b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2890,15 +2890,17 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
-static void
+static int
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
 			     int link_bpp_x16)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
+	int ret;
 
 	/*
 	 * FIXME all joined pipes share the same transcoder.
@@ -2910,7 +2912,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
-		return;
+		return 0;
 	}
 
 	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
@@ -2922,14 +2924,18 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	if (pipe_config->splitter.enable)
 		pixel_clock /= pipe_config->splitter.link_count;
 
-	intel_link_compute_m_n(link_bpp_x16, pipe_config->lane_count, pixel_clock,
-			       pipe_config->port_clock,
-			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
-			       &pipe_config->dp_m2_n2);
+	ret = intel_link_compute_m_n(display, link_bpp_x16, pipe_config->lane_count, pixel_clock,
+				     pipe_config->port_clock,
+				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+				     &pipe_config->dp_m2_n2);
+	if (ret)
+		return ret;
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
+
+	return 0;
 }
 
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
@@ -3052,6 +3058,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -3133,12 +3140,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_link_compute_m_n(link_bpp_x16,
-			       pipe_config->lane_count,
-			       adjusted_mode->crtc_clock,
-			       pipe_config->port_clock,
-			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
-			       &pipe_config->dp_m_n);
+	ret = intel_link_compute_m_n(display, link_bpp_x16,
+				     pipe_config->lane_count,
+				     adjusted_mode->crtc_clock,
+				     pipe_config->port_clock,
+				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+				     &pipe_config->dp_m_n);
+	if (ret)
+		return ret;
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -3151,7 +3160,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
-	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
+
+	ret = intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
+	if (ret)
+		return ret;
+
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..915cf3a5cdc0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -125,23 +125,28 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
 }
 
-static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-				     const struct intel_connector *connector,
-				     int overhead,
-				     int bpp_x16,
-				     struct intel_link_m_n *m_n)
+static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
+				    const struct intel_connector *connector,
+				    int overhead,
+				    int bpp_x16,
+				    struct intel_link_m_n *m_n)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct intel_display *display = to_intel_display(connector);
+	int ret;
 
 	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
-	intel_link_compute_m_n(bpp_x16, crtc_state->lane_count,
-			       adjusted_mode->crtc_clock,
-			       crtc_state->port_clock,
-			       overhead,
-			       m_n);
+	ret = intel_link_compute_m_n(display, bpp_x16, crtc_state->lane_count,
+				     adjusted_mode->crtc_clock,
+				     crtc_state->port_clock,
+				     overhead, m_n);
+	if (ret)
+		return ret;
 
 	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
+
+	return ret;
 }
 
 static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
@@ -223,10 +228,11 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
 							      true, dsc, link_bpp_x16);
 
-		intel_dp_mst_compute_m_n(crtc_state, connector,
-					 local_bw_overhead,
-					 link_bpp_x16,
-					 &crtc_state->dp_m_n);
+		if (!intel_dp_mst_compute_m_n(crtc_state, connector,
+					      local_bw_overhead,
+					      link_bpp_x16,
+					      &crtc_state->dp_m_n))
+			continue;
 
 		/*
 		 * The TU size programmed to the HW determines which slots in
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 0168894e9cd1..0b39773a4a85 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -325,8 +325,9 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_display *display = to_intel_display(pipe_config);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int lane, link_bw, fdi_dotclock;
+	int lane, link_bw, fdi_dotclock, ret;
 
 	/* FDI is a binary signal running at ~2.7GHz, encoding
 	 * each output octet as 10 bits. The actual frequency
@@ -344,13 +345,13 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 
 	pipe_config->fdi_lanes = lane;
 
-	intel_link_compute_m_n(fxp_q4_from_int(pipe_config->pipe_bpp),
-			       lane, fdi_dotclock,
-			       link_bw,
-			       intel_dp_bw_fec_overhead(false),
-			       &pipe_config->fdi_m_n);
+	ret = intel_link_compute_m_n(display, fxp_q4_from_int(pipe_config->pipe_bpp),
+				     lane, fdi_dotclock,
+				     link_bw,
+				     intel_dp_bw_fec_overhead(false),
+				     &pipe_config->fdi_m_n);
 
-	return 0;
+	return ret;
 }
 
 static int intel_fdi_atomic_check_bw(struct intel_atomic_state *state,
-- 
2.45.2

