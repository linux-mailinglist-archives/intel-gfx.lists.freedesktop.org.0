Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9FE55231C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F2710EDDA;
	Mon, 20 Jun 2022 17:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AC910EDDA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747583; x=1687283583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=okAzGFS77a2ULJRi71UsY4uCNJClWIFvT+59e8k59vY=;
 b=b7aaGp3rnBjBO8cZnxNPWWB2fTtcTDEAWjREzAFUqT/3Kk4BSrcMKyVa
 Cl6JUyB0O6u/Nb6ODOy+Yie3/hsr4PtkKGB7sQYH8pRjDj2fqw6YIck5c
 pzj3hhyqrT0RamSRilMneM6niJZp4sly3kh0hc05qX2nU3NepJmSCkNWE
 cjZ/UD1ygM6rxq6Z7+LqBaVQeaEBR2e+obnwiX88+8DcP0PZ+oiL8DLXH
 510yN74BqprWtrncSS6vcge6Bn/2MkUqkP/9FsFJQ4dfIsDZFYiR7yugn
 BIzZnMm2MbaClqvQC302EcxuYfs6Aa35mvbylnEW3UQRuQdLf9yYOTKlA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259770575"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="259770575"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="584757297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 20 Jun 2022 10:53:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:09 +0300
Message-Id: <20220620175210.28788-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/17] drm/i915: Use a fixed N value always
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
index 43c00f8b4057..5ec954b293a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2726,19 +2726,11 @@ intel_reduce_m_n_ratio(u32 *num, u32 *den)
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
 
@@ -2750,22 +2742,28 @@ void
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
index 8610e17cc593..e00a6022acf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -547,7 +547,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
-			    bool constant_n, bool fec_enable);
+			    bool fec_enable);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 90fa8eda6911..40c451d1ee85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1930,7 +1930,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 static void
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
-			     int output_bpp, bool constant_n)
+			     int output_bpp)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
@@ -1957,7 +1957,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 
 	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2032,7 +2032,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -2111,7 +2110,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
 			       &pipe_config->dp_m_n,
-			       constant_n, pipe_config->fec_enable);
+			       pipe_config->fec_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2122,8 +2121,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
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

