Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FB87D4492
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB37210E2BB;
	Tue, 24 Oct 2023 01:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F39710E2B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109754; x=1729645754;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9eiC/qgumvCNdIBcHFN3M5VID1mbynMrf7MExWq/M0Y=;
 b=aBFpPNpWldKOdIrSMgGaD/JrO3y42cmn6cOpVvF4c0d66XDZrErq7uON
 AcWQB3AV+9gYIrYX/OHYFs/YR0RWWp6yYKRZqYB5mcSc8WMAw+xBd9oZL
 SvTApHm8cV+ODOKODl33Rx0w1x2tW5xz4YzAr6IXHqK8n9XenwDCfjXc6
 w+0nzyVDVgMmOR6Ny/HHjcpFK7SArg3WnjJ/cs3LTRC+KoBt1yeuAbL6f
 Ih9j6kbFjsoDAaMmDX25/EdNKnVCoY5FbLIxVUgGEBpWgX0b3fNpiYC3C
 I9u9Ehiipyat3jgNf3NV/08QlGyS1MbJwK3rRBXU5929NTWd217vCl397 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304361"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304361"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870048"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870048"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:07 +0300
Message-Id: <20231024010925.3949910-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/29] drm/i915/dp: Pass actual BW overhead to
 m_n calculation
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
index 28d85e1e858ea..de352d9c43439 100644
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
index 0e5dffe8f0189..dea3202849e72 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -395,8 +395,8 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
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
index 0c0f026fb3161..0235de5bb8cd1 100644
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
index 98d775d862ac4..da496f383f163 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -172,8 +172,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       intel_dp_bw_fec_overhead(crtc_state),
+			       &crtc_state->dp_m_n);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
@@ -267,8 +267,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       intel_dp_bw_fec_overhead(crtc_state),
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

