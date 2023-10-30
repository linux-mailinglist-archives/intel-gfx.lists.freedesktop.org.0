Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FE47DBD23
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9A310E31F;
	Mon, 30 Oct 2023 15:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F5110E312
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681515; x=1730217515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SlMIDrWv7PaRI3BxcxeihXWud4j+USokCj6fRq1jW+8=;
 b=ccID/UtrloCbg4ylb07ETVaZm5s/U6htdSyJg4UD6agL7TaUm40oHDYa
 4mQ4a02luvJy6YeQFccCdQ8C5RfKZWx4CPORaxV35EoQDZ9tjuTy24PKw
 uezYTGumMr+UdP6coeWDerpKUGxBnmMnNfXtUYqLjX8eORZoADAqiuklG
 f3YumYjpe0Ya7Igy3FZY8Tv+hAUjoNbnIualO/c4wP7GziVgAf8U2jruc
 JAZmvskP14c+X4pI0Ja1R/SfSKoR3uL5pD/6bhYwLedvC8WU8Mw04l7z6
 5bj4j3JyMG9aI/k407HuayNepXQ9mIhi9aqW+jPH5JJP1b7yiBM6UP0By g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974463"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974463"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493986"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493986"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:25 +0200
Message-Id: <20231030155843.2251023-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/30] drm/i915/dp: Pass actual BW overhead
 to m_n calculation
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

A follow-up MST patch will need to specify the total BW allocation
overhead, prepare for that here by passing the amount of overhead
to intel_link_compute_m_n(), keeping the existing behavior.

v2:
- Fix passing the correct crtc_state->fec_enable param in
  intel_dp_mst_compute_link_config() /
  intel_dp_dsc_mst_compute_link_config().

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 40 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 30 ++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  8 ++--
 drivers/gpu/drm/i915/display/intel_fdi.c     |  5 ++-
 6 files changed, 71 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1caf46e3e5692..1133c2893bb38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2396,17 +2396,45 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
+static void
+add_bw_alloc_overhead(int link_clock, int bw_overhead,
+		      int pixel_data_rate, int link_data_rate,
+		      u32 *data_m, u32 *data_n)
+{
+	bool is_uhbr = intel_dp_is_uhbr_rate(link_clock);
+	int ch_coding_efficiency =
+		drm_dp_bw_channel_coding_efficiency(is_uhbr);
+
+	/*
+	 * TODO: adjust for actual UHBR channel coding efficiency and BW
+	 * overhead.
+	 */
+	if (is_uhbr) {
+		*data_m = pixel_data_rate;
+		*data_n = link_data_rate * 8 / 10;
+		return;
+	}
+
+	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
+				   1000000);
+	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
+				     1000000);
+}
+
 void
 intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 		       int pixel_clock, int link_clock,
-		       struct intel_link_m_n *m_n,
-		       bool fec_enable)
+		       int bw_overhead,
+		       struct intel_link_m_n *m_n)
 {
 	u32 data_clock = bits_per_pixel * pixel_clock;
+	u32 data_m;
+	u32 data_n;
 
-	if (fec_enable)
-		data_clock = intel_dp_mode_to_fec_clock(data_clock);
-
+	add_bw_alloc_overhead(link_clock, bw_overhead,
+			      data_clock,
+			      link_clock * 10 * nlanes,
+			      &data_m, &data_n);
 	/*
 	 * Windows/BIOS uses fixed M/N values always. Follow suit.
 	 *
@@ -2416,7 +2444,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 	 */
 	m_n->tu = 64;
 	compute_m_n(&m_n->data_m, &m_n->data_n,
-		    data_clock, link_clock * nlanes * 8,
+		    data_m, data_n,
 		    0x8000000);
 
 	compute_m_n(&m_n->link_m, &m_n->link_n,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index cae2a3b12e20d..6d0636acb7250 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -394,8 +394,8 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
-			    struct intel_link_m_n *m_n,
-			    bool fec_enable);
+			    int bw_overhead,
+			    struct intel_link_m_n *m_n);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4d8f068218ea3..34da403fa512b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -121,10 +121,15 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
+bool intel_dp_is_uhbr_rate(int rate)
+{
+	return rate >= 1000000;
+}
+
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->port_clock >= 1000000;
+	return intel_dp_is_uhbr_rate(crtc_state->port_clock);
 }
 
 static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
@@ -684,6 +689,20 @@ u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 		       1000000U);
 }
 
+int intel_dp_bw_fec_overhead(bool fec_enabled)
+{
+	/*
+	 * TODO: Calculate the actual overhead for a given mode.
+	 * The hard-coded 1/0.972261=2.853% overhead factor
+	 * corresponds (for instance) to the 8b/10b DP FEC 2.4% +
+	 * 0.453% DSC overhead. This is enough for a 3840 width mode,
+	 * which has a DSC overhead of up to ~0.2%, but may not be
+	 * enough for a 1024 width mode where this is ~0.8% (on a 4
+	 * lane DP link, with 2 DSC slices and 8 bpp color depth).
+	 */
+	return fec_enabled ? DP_DSC_FEC_OVERHEAD_FACTOR : 1000000;
+}
+
 static int
 small_joiner_ram_size_bits(struct drm_i915_private *i915)
 {
@@ -2655,8 +2674,9 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		pixel_clock /= pipe_config->splitter.link_count;
 
 	intel_link_compute_m_n(link_bpp, pipe_config->lane_count, pixel_clock,
-			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       pipe_config->fec_enable);
+			       pipe_config->port_clock,
+			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+			       &pipe_config->dp_m2_n2);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2837,8 +2857,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
-			       &pipe_config->dp_m_n,
-			       pipe_config->fec_enable);
+			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+			       &pipe_config->dp_m_n);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0258580a6aadc..2080575fef69a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -77,6 +77,7 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
+bool intel_dp_is_uhbr_rate(int rate);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
@@ -137,6 +138,7 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 }
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
+int intel_dp_bw_fec_overhead(bool fec_enabled);
 
 bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8177e19e53ac8..dcbc5d3aa7bc3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -179,8 +179,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
+			       &crtc_state->dp_m_n);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
@@ -274,8 +274,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
+			       &crtc_state->dp_m_n);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index e6429dfebe159..1d87fbc1e8138 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -10,6 +10,7 @@
 #include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_dp.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
@@ -339,7 +340,9 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	pipe_config->fdi_lanes = lane;
 
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
-			       link_bw, &pipe_config->fdi_m_n, false);
+			       link_bw,
+			       intel_dp_bw_fec_overhead(false),
+			       &pipe_config->fdi_m_n);
 
 	return 0;
 }
-- 
2.39.2

