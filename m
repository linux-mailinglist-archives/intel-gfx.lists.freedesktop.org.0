Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BE3A6BA01
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E8310E7B3;
	Fri, 21 Mar 2025 11:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzeafuRV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE0210E7B2;
 Fri, 21 Mar 2025 11:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742557126; x=1774093126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uDQB4LTiSXe5/Uyfxwuog28DxZlLLQ/q4vV4GYlrnVQ=;
 b=kzeafuRVC9HFH5oZfOvFkuMear9q1m8vQSO/jFBHLGuKadlVdnI4W3gU
 E2pY44QgPb6u7C24JXIEa9DJ4RV015RGZg5Cu/0BvUkV0MHxvqdnj237j
 OYBUPKp4CzFKqcgk2CmKwCB3Fv0lGOVGyG3+SWnGBRcQiNZFGaABLzdfX
 MP1OolM1QMgUcH9YoL3nH2sAdwt6aWBTVkxO/Y0iSRZLPqfZx2euIxGN1
 gSi3ecp63buQbjoUWcOMgOIi65WnfqTFSKWc9kTf0UmGgfxYtFncbW/JW
 HZxa2z8zMWK58VePFcusyjqZ17JFSGHCfyK3mzZfPo3vB+YK7Pc7Hb+ct A==;
X-CSE-ConnectionGUID: 5x0JjcWOQRe0a+SDJi5JUw==
X-CSE-MsgGUID: MnKwwJ9WTb+9+N+XNaw+iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61216883"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="61216883"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:46 -0700
X-CSE-ConnectionGUID: zjfwR0P2T1GGhCVKEGUG/g==
X-CSE-MsgGUID: KPgWh+XYTeKCPRXAVKsK9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128206586"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 2/4] drm/i915/display: Limit m/n ratio to 10 for display > 12
Date: Fri, 21 Mar 2025 16:56:48 +0530
Message-ID: <20250321112650.3594298-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h |  9 ++---
 drivers/gpu/drm/i915/display/intel_dp.c      | 37 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 32 ++++++++++-------
 drivers/gpu/drm/i915/display/intel_fdi.c     | 14 ++++----
 5 files changed, 85 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8fb0df388571..c50dce9afd9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2518,8 +2518,15 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
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
@@ -2528,6 +2535,7 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 	u32 data_m = intel_dp_effective_data_rate(pixel_clock, bits_per_pixel_x16,
 						  bw_overhead);
 	u32 data_n = drm_dp_max_dprx_data_rate(link_clock, nlanes);
+	int link_m_n_ratio, max_link_m_n_ratio;
 
 	/*
 	 * Windows/BIOS uses fixed M/N values always. Follow suit.
@@ -2544,6 +2552,26 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
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
 
 void intel_panel_sanitize_ssc(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3b54a62c290a..7a33c57d5abe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -413,10 +413,6 @@ enum phy_fia {
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
-void intel_link_compute_m_n(u16 bpp, int nlanes,
-			    int pixel_clock, int link_clock,
-			    int bw_overhead,
-			    struct intel_link_m_n *m_n);
 u32 intel_plane_fb_max_stride(struct drm_device *drm,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
@@ -573,5 +569,10 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+int intel_link_compute_m_n(struct intel_display *display,
+			   u16 bpp, int nlanes,
+			   int pixel_clock, int link_clock,
+			   int bw_overhead,
+			   struct intel_link_m_n *m_n);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a236b5fc7a3d..49a8f105ba26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2937,7 +2937,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
-static void
+static int
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
 			     int link_bpp_x16)
@@ -2946,6 +2946,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
+	int ret;
 
 	/*
 	 * FIXME all joined pipes share the same transcoder.
@@ -2957,7 +2958,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(display, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
-		return;
+		return 0;
 	}
 
 	if (display->platform.ironlake || display->platform.sandybridge ||
@@ -2970,14 +2971,18 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
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
@@ -3176,12 +3181,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
 	if (!intel_dp_is_uhbr(pipe_config)) {
-		intel_link_compute_m_n(link_bpp_x16,
-				       pipe_config->lane_count,
-				       adjusted_mode->crtc_clock,
-				       pipe_config->port_clock,
-				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
-				       &pipe_config->dp_m_n);
+		ret = intel_link_compute_m_n(display, link_bpp_x16,
+					     pipe_config->lane_count,
+					     adjusted_mode->crtc_clock,
+					     pipe_config->port_clock,
+					     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+					     &pipe_config->dp_m_n);
+		if (ret)
+			return ret;
 	}
 
 	/* FIXME: abstract this better */
@@ -3192,7 +3199,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
index 02f95108c637..18d75634f902 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -167,22 +167,27 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
 }
 
-static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-				     int overhead,
-				     int bpp_x16,
-				     struct intel_link_m_n *m_n)
+static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
+				    int overhead,
+				    int bpp_x16,
+				    struct intel_link_m_n *m_n)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct intel_display *display = to_intel_display(crtc_state);
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
@@ -302,10 +307,11 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		intel_dp_mst_compute_min_hblank(crtc_state, link_bpp_x16);
 
-		intel_dp_mst_compute_m_n(crtc_state,
-					 local_bw_overhead,
-					 link_bpp_x16,
-					 &crtc_state->dp_m_n);
+		if (!intel_dp_mst_compute_m_n(crtc_state,
+					      local_bw_overhead,
+					      link_bpp_x16,
+					      &crtc_state->dp_m_n))
+			continue;
 
 		if (is_mst) {
 			int remote_bw_overhead;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 40deee0769ae..e6b11a61f6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -323,7 +323,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int lane, link_bw, fdi_dotclock;
+	int lane, link_bw, fdi_dotclock, ret;
 
 	/* FDI is a binary signal running at ~2.7GHz, encoding
 	 * each output octet as 10 bits. The actual frequency
@@ -341,13 +341,13 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 
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

