Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E4154FBB7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC0E10F3F3;
	Fri, 17 Jun 2022 16:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F6F10EBA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484959; x=1687020959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LtXbeMKVeRz0VsnG39uQNdqx3Iv8E07zYcXeUCE2G84=;
 b=A2i/3JABaRXWZPIhT65kzrZ4l6T+PFFq8dLc17aWXa76XWR/GB4fhxE7
 rM4j31t5a0hlN3LdyiWnpR/+nzos4rdw+bSOQLk5OLJbhCmKH8A6diDUM
 ow1x3ybZB7602s2q8GyczmZNWyY4SYdkOZXpEASyTUWYVaNbl2PcOG/2F
 jPGK9E5c8htgLwrYzQ8oOddbwoKW/u+UPpFUVGqQYAXl/6XXTfRyi1wl7
 tqRC3On3a/eoQ9zwwcLl+rHYxzH96uyEBo+hbVmWUTh0XXhjAu/D0MaJu
 r1bj7YfADMTrpoZzmaQSCqdPBGzqqpD1fpn2rGRvhpOlQQNmdeBXfYtj6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279544708"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279544708"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="688343541"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 17 Jun 2022 09:05:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:09 +0300
Message-Id: <20220617160510.2082-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/16] drm/i915: Use a fixed N value always
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Windows/BIOS always uses fixed N values. Let's match that
behaviour.

Allows us to also get rid of that constant_n quirk stuff.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
 5 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4e33ce635112..7e45dd99d03c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2817,19 +2817,11 @@ intel_reduce_m_n_ratio(u32 *num, u32 *den)
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
 
@@ -2841,22 +2833,28 @@ void
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
index 44c88aadfc30..ee02fe4d43a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -547,7 +547,7 @@ bool has_double_buffered_m_n(struct drm_i915_private *i915);
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
-			    bool constant_n, bool fec_enable);
+			    bool fec_enable);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7c091c601e30..6750a359a555 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1904,7 +1904,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 static void
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
-			     int output_bpp, bool constant_n)
+			     int output_bpp)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
@@ -1931,7 +1931,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 
 	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2006,7 +2006,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -2085,7 +2084,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
 			       &pipe_config->dp_m_n,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2096,8 +2095,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
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

