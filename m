Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE217E3219
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC74710E485;
	Tue,  7 Nov 2023 00:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2AF210E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316111; x=1730852111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w44LXLN+IIGqLyhV/zKcpHWWWCrcvR7Mfk+g56GHGTo=;
 b=DaN442/8eW0cZ0CFVagYgTqztLp6rUBtSbr3Y89ywW8B7hi0pwN7A5vB
 p7s1rwY0vR31FSi1a9NXWqDrvHT9QMcTCiypC35NwO+/zbQnycsyAwTTi
 nWcd2t9H2YEnNgTRK9zdEwh4BDdqIgg4CnlIp2zTt56weUpOei8DYs4lh
 hz+CO0kaMeEsNGXIAIpPXC6gF2sjk0JSzTHpEgLFS+nLkO82bmyaQRCsI
 wittIZMyBanLVhWLcD8vOeynOW9aAX741pb1zFAaepmYj1Kmqu487Deqm
 ydtZlTmqNyB55xXiuSP2JUd3nQzeGLCs656QQ035IDyku7MvTNGK2reN4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596198"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596198"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853177985"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853177985"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:10 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:14:59 +0200
Message-Id: <20231107001505.3370108-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-14-imre.deak@intel.com>
References: <20231030155843.2251023-14-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 13/30] drm/i915/dp_mst: Account for FEC and
 DSC overhead during BW allocation
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

Atm, the BW allocated for an MST stream doesn't take into account the
DSC control symbol (EOC) and data alignment overhead on the local (first
downstream) MST link (reflected by the data M/N/TU values) and - besides
the above overheads - the FEC symbol overhead on 8b/10b remote
(after a downstream branch device) MST links.

In addition the FEC overhead used on the local link is a fixed amount,
which only applies to certain modes, but not enough for all modes; add a
code comment clarifying this.

Fix the above by calculating the data M/N values with the total BW
overhead (not including the SSC overhead, since this isn't enabled by
the source device) and using this the PBN and TU values for the local
link and PBN for remote links (including SSC, since this is mandatory
for links after downstream branch devices).

For now keep the current fixed FEC overhead as a minimum, since this is
what bspec requires for audio functionality.

Calculate the effective link BW in a clearer way, applying the channel
coding efficiency based on the coding type. The calculation was correct
for 8b/10b, but not for 128b/132b links; this patch leaves the behavior
for this unchanged, leaving the fix for a follow-up.

v2:
- Fix TU size programmed to the HW, making it match the payload size
  programmed to the payload table.
v3:
- Add code comment about the connection between the payload's size in
  the payload table and the corresponding PBN value. (Ville)
- Add WARN_ON(remote_m_n.tu < dp_m_n.tu). (Ville)
- Add code comment about factors not accounted for by the BW
  calculation in intel_dp_mst_mode_valid_ctx() (and compute config).
  (Ville)
- Simplify calculation of PBN to remote_m_n.tu * mst_state->pbn_div.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 124 ++++++++++++++++----
 1 file changed, 99 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1f6fbab7d4ada..9d6b76d1a52a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -67,6 +67,63 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 	return 0;
 }
 
+static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
+				    const struct intel_connector *connector,
+				    bool ssc, bool dsc, int bpp)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
+	int dsc_slice_count = 0;
+	int overhead;
+
+	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
+	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
+	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+
+	if (dsc) {
+		flags |= DRM_DP_BW_OVERHEAD_DSC;
+		/* TODO: add support for bigjoiner */
+		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+							       adjusted_mode->clock,
+							       adjusted_mode->hdisplay,
+							       false);
+	}
+
+	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
+				      adjusted_mode->hdisplay,
+				      dsc_slice_count,
+				      to_bpp_x16(bpp),
+				      flags);
+
+	/*
+	 * TODO: clarify whether a minimum required by the fixed FEC overhead
+	 * in the bspec audio programming sequence is required here.
+	 */
+	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
+}
+
+static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
+				     const struct intel_connector *connector,
+				     bool ssc, bool dsc,
+				     int bpp,
+				     struct intel_link_m_n *m_n)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int overhead = intel_dp_mst_bw_overhead(crtc_state,
+						connector,
+						ssc, dsc, bpp);
+
+	intel_link_compute_m_n(bpp, crtc_state->lane_count,
+			       adjusted_mode->crtc_clock,
+			       crtc_state->port_clock,
+			       overhead,
+			       m_n);
+
+	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -107,14 +164,40 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						      crtc_state->lane_count);
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
+		struct intel_link_m_n remote_m_n;
+		int link_bpp;
+
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
 		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
 		if (ret)
 			continue;
 
-		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
-						       bpp << 4);
+		link_bpp = dsc ? bpp :
+			intel_dp_output_bpp(crtc_state->output_format, bpp);
+
+		intel_dp_mst_compute_m_n(crtc_state, connector, false, dsc, link_bpp,
+					 &crtc_state->dp_m_n);
+		intel_dp_mst_compute_m_n(crtc_state, connector, true, dsc, link_bpp,
+					 &remote_m_n);
+
+		/*
+		 * The TU size programmed to the HW determines which slots in
+		 * an MTP frame are used for this stream, which needs to match
+		 * the payload size programmed to the first downstream branch
+		 * device's payload table.
+		 *
+		 * Note that atm the payload's PBN value DRM core sends via
+		 * the ALLOCATE_PAYLOAD side-band message matches the payload
+		 * size (which it calculates from the PBN value) it programs
+		 * to the first branch device's payload table. The allocation
+		 * in the payload table could be reduced though (to
+		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
+		 * enable SSC on the corresponding link.
+		 */
+		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state->dp_m_n.tu);
+		crtc_state->dp_m_n.tu = remote_m_n.tu;
+		crtc_state->pbn = remote_m_n.tu * mst_state->pbn_div;
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
@@ -123,6 +206,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 			return slots;
 
 		if (slots >= 0) {
+			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
+
 			ret = drm_dp_mst_atomic_check(state);
 			/*
 			 * If we got slots >= 0 and we can fit those based on check
@@ -156,10 +241,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 					    struct drm_connector_state *conn_state,
 					    struct link_config_limits *limits)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
-	int link_bpp;
 
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
@@ -174,16 +256,6 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	if (slots < 0)
 		return slots;
 
-	link_bpp = intel_dp_output_bpp(crtc_state->output_format, crtc_state->pipe_bpp);
-
-	intel_link_compute_m_n(link_bpp,
-			       crtc_state->lane_count,
-			       adjusted_mode->crtc_clock,
-			       crtc_state->port_clock,
-			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
-			       &crtc_state->dp_m_n);
-	crtc_state->dp_m_n.tu = slots;
-
 	return 0;
 }
 
@@ -195,8 +267,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
@@ -271,14 +341,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 			return slots;
 	}
 
-	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
-			       crtc_state->lane_count,
-			       adjusted_mode->crtc_clock,
-			       crtc_state->port_clock,
-			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
-			       &crtc_state->dp_m_n);
-	crtc_state->dp_m_n.tu = slots;
-
 	return 0;
 }
 static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
@@ -987,6 +1049,18 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
+	/*
+	 * TODO:
+	 * - Also check if compression would allow for the mode
+	 * - Calculate the overhead using drm_dp_bw_overhead() /
+	 *   drm_dp_bw_channel_coding_efficiency(), similarly to the
+	 *   compute config code, as drm_dp_calc_pbn_mode() doesn't
+	 *   account with all the overheads.
+	 * - Check here and during compute config the BW reported by
+	 *   DFP_Link_Available_Payload_Bandwidth_Number (or the
+	 *   corresponding link capabilities of the sink) in case the
+	 *   stream is uncompressed for it by the last branch device.
+	 */
 	if (mode_rate > max_rate || mode->clock > max_dotclk ||
 	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
-- 
2.39.2

