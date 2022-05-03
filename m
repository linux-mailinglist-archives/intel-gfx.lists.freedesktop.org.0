Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3022518C43
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F4410E90C;
	Tue,  3 May 2022 18:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EBE10EB6B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602237; x=1683138237;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xLOhIfkRgoOmMc0hZK9ZIiKxSndH6ClXJfCJTuhfeCw=;
 b=B0et6e6w/+5/7HHM5Fhw8IH62liar7xk+hG2wMBfhlKKq6pB9OqsaPU3
 pekLslER39xRvxmU9Hqnubc+4FDOgxNHDeOuNyThIHnp66QenZwKBUMUf
 vgfwNeN8OcHsKWt9nWh2nUsNE+n33BYSOBe8OcB2FIzxRea4/pENYal+J
 VlDtOngiGDAfnaYz5dsForMSK2fqbzlD7gDyL+PddomvkZVFH0yHZMAVG
 xEFvbkRU5TrPhLe1NqSR2IBnBBIbxF+akZ87eCo3ZbKeRwztE4oVtFTKR
 N9lp/9VnxXP4PDE2EGnWywwfk99d3rG90WSd7OZ/PpWAS52/LzcyIcUC9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="249533073"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="249533073"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="620451281"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 03 May 2022 11:23:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:40 +0300
Message-Id: <20220503182242.18797-25-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 24/26] drm/i915: Use a fixed N value always
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

Windows/BIOS always uses fixed N values. Let's match that
behaviour.

Allows us to also get rid of that constant_n quirk stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
 5 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f30bdcdd4c84..89a7c8c1be28 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2848,19 +2848,11 @@ intel_reduce_m_n_ratio(u32 *num, u32 *den)
 	}
 }
 
-static void compute_m_n(unsigned int m, unsigned int n,
-			u32 *ret_m, u32 *ret_n,
-			bool constant_n)
+static void compute_m_n(u32 *ret_m, u32 *ret_n,
+			u32 m, u32 n, u32 constant_n)
 {
-	/*
-	 * Several DP dongles in particular seem to be fussy about
-	 * too large link M/N values. Give N value as 0x8000 that
-	 * should be acceptable by specific devices. 0x8000 is the
-	 * specified fixed N value for asynchronous clock mode,
-	 * which the devices expect also in synchronous clock mode.
-	 */
 	if (constant_n)
-		*ret_n = DP_LINK_CONSTANT_N_VALUE;
+		*ret_n = constant_n;
 	else
 		*ret_n = min_t(unsigned int, roundup_pow_of_two(n), DATA_LINK_N_MAX);
 
@@ -2872,22 +2864,28 @@ void
 intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 		       int pixel_clock, int link_clock,
 		       struct intel_link_m_n *m_n,
-		       bool constant_n, bool fec_enable)
+		       bool fec_enable)
 {
 	u32 data_clock = bits_per_pixel * pixel_clock;
 
 	if (fec_enable)
 		data_clock = intel_dp_mode_to_fec_clock(data_clock);
 
+	/*
+	 * Windows/BIOS uses fixed M/N values always. Follow suit.
+	 *
+	 * Also several DP dongles in particular seem to be fussy
+	 * about too large link M/N values. Presumably the 20bit
+	 * value used by Windows/BIOS is acceptable to everyone.
+	 */
 	m_n->tu = 64;
-	compute_m_n(data_clock,
-		    link_clock * nlanes * 8,
-		    &m_n->data_m, &m_n->data_n,
-		    constant_n);
+	compute_m_n(&m_n->data_m, &m_n->data_n,
+		    data_clock, link_clock * nlanes * 8,
+		    0x8000000);
 
-	compute_m_n(pixel_clock, link_clock,
-		    &m_n->link_m, &m_n->link_n,
-		    constant_n);
+	compute_m_n(&m_n->link_m, &m_n->link_n,
+		    pixel_clock, link_clock,
+		    0x80000);
 }
 
 static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 187910d94ec6..862338b6c4fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -546,7 +546,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
-			    bool constant_n, bool fec_enable);
+			    bool fec_enable);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9385178c7fd6..d10f05d40360 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1878,7 +1878,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 static void
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
-			     int output_bpp, bool constant_n)
+			     int output_bpp)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
@@ -1906,7 +1906,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 
 	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -1981,7 +1981,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -2060,7 +2059,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
 			       &pipe_config->dp_m_n,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2071,8 +2070,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_dp_drrs_compute_config(connector, pipe_config,
-				     output_bpp, constant_n);
+	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 061b277e5ce7..00e55555091a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -57,7 +57,6 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int bpp, slots = -EINVAL;
 
 	crtc_state->lane_count = limits->max_lane_count;
@@ -93,7 +92,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
 			       &crtc_state->dp_m_n,
-			       constant_n, crtc_state->fec_enable);
+			       crtc_state->fec_enable);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 67d2484afbaa..0dc6414a56c4 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -256,7 +256,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	pipe_config->fdi_lanes = lane;
 
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
-			       link_bw, &pipe_config->fdi_m_n, false, false);
+			       link_bw, &pipe_config->fdi_m_n, false);
 
 	ret = ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
 	if (ret == -EDEADLK)
-- 
2.35.1

