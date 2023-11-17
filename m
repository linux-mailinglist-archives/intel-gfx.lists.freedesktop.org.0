Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E0A7EF4E6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 16:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0224F10E1A7;
	Fri, 17 Nov 2023 15:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D6810E1A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 15:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700233774; x=1731769774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Li69pqTfVPVo+Zpz1VqdfE1se6uDJKmC6nYVzUYflWk=;
 b=aA5FQ/07T2I/2/eglMKPEECzqGGhVcABLH5wHSlGoi0Msyu+/h/GeIFl
 21lLhQPvcsLfOdRTkMLxguXL9P2tnujQTYYscPCMAnmECWHB4K9dS3/Ql
 8svoCoXCY08qpVTSBAEiPi4lbqvFLzj/wA8bspETHtk3Qv5e6YXxtWtBs
 EyV4u91q9D+8kzOmT1uFOD/3gduLvNsK/ZVPL07gIHTE4cWg3YxCTY2yd
 XMD+CV3y6ayrt68MpGpueAhXr+1qIR5e/HQ58H7RMYbN5dWGhxPCh+3xt
 /sUpU1lJ3QR1RucZoo/t9s2fSenP7LwaC/wiwuYVddNt5UMnUibxfbZSX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="4398364"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4398364"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 07:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="765655652"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="765655652"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 07:09:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 17:09:29 +0200
Message-Id: <20231117150929.1767227-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-9-imre.deak@intel.com>
References: <20231116131841.1588781-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/11] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
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

Atm the allocated MST PBN value is calculated from the TU size (number
of allocated MTP slots) as

  PBN = TU * pbn_div

pbn_div being the link BW for each MTP slot. For DP 1.4 link rates this
worked, as pbn_div there is guraranteed to be an integer number, however
on UHBR this isn't the case. To get a PBN, TU pair where TU is a
properly rounded-up value covering all the BW corresponding to PBN,
calculate first PBN and from PBN the TU value.

Calculate PBN directly from the effective pixel data rate, instead of
calculating it indirectly from the corresponding TU and pbn_div values
(which are in turn derived from the pixel data rate and BW overhead).

Add a helper function to calculate the effective data rate, also adding
a note that callers of intel_dp_link_required() may also need to check
the effective data rate (vs. the data rate w/o the BW overhead).

While at it add a note to check if WA#14013163432 is applicable.

v2:
- Fix PBN calculation, deriving it from the effective data rate directly
  instead of using the indirect TU and pbn_div values for this.
- Add a note about WA#14013163432. (Arun)
v3:
- Fix rounding up quotient while calculating remote_tu. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 19 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 33 ++++++++++++++-------
 3 files changed, 44 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 521838caa1979..120d435d27ff1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -355,6 +355,9 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
+ *
+ * TODO: check if callers of this functions should use
+ * intel_dp_effective_data_rate() instead.
  */
 int
 intel_dp_link_required(int pixel_clock, int bpp)
@@ -363,6 +366,22 @@ intel_dp_link_required(int pixel_clock, int bpp)
 	return DIV_ROUND_UP(pixel_clock * bpp, 8);
 }
 
+/**
+ * intel_dp_effective_data_rate - Return the pixel data rate accounting for BW allocation overhead
+ * @pixel_clock: pixel clock in kHz
+ * @bpp_x16: bits per pixel .4 fixed point format
+ * @bw_overhead: BW allocation overhead in 1ppm units
+ *
+ * Return the effective pixel data rate in kB/sec units taking into account
+ * the provided SSC, FEC, DSC BW allocation overhead.
+ */
+int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
+				 int bw_overhead)
+{
+	return DIV_ROUND_UP_ULL(mul_u32_u32(pixel_clock * bpp_x16, bw_overhead),
+				1000000 * 16 * 8);
+}
+
 /*
  * Given a link rate and lanes, get the data bandwidth.
  *
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 777aa858f899c..05db46b111f21 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -103,6 +103,8 @@ bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
 
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
+int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
+				 int bw_overhead);
 int intel_dp_max_data_rate(int max_link_rate, int max_lanes);
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a5ddd1781969d..d3d53e1b44891 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -115,6 +115,7 @@ static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
+	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
 	intel_link_compute_m_n(bpp_x16, crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
@@ -124,6 +125,18 @@ static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
 }
 
+static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
+{
+	int effective_data_rate =
+		intel_dp_effective_data_rate(pixel_clock, bpp_x16, bw_overhead);
+
+	/*
+	 * TODO: Use drm_dp_calc_pbn_mode() instead, once it's converted
+	 * to calculate PBN with the BW overhead passed to it.
+	 */
+	return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -167,10 +180,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		    min_bpp, max_bpp);
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
-		struct intel_link_m_n remote_m_n;
 		int local_bw_overhead;
 		int remote_bw_overhead;
 		int link_bpp_x16;
+		int remote_tu;
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
@@ -191,11 +204,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
 
-		intel_dp_mst_compute_m_n(crtc_state, connector,
-					 remote_bw_overhead,
-					 link_bpp_x16,
-					 &remote_m_n);
-
 		/*
 		 * The TU size programmed to the HW determines which slots in
 		 * an MTP frame are used for this stream, which needs to match
@@ -210,9 +218,14 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
 		 * enable SSC on the corresponding link.
 		 */
-		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state->dp_m_n.tu);
-		crtc_state->dp_m_n.tu = remote_m_n.tu;
-		crtc_state->pbn = remote_m_n.tu * dfixed_trunc(mst_state->pbn_div);
+		crtc_state->pbn = intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
+							link_bpp_x16,
+							remote_bw_overhead);
+
+		remote_tu = DIV_ROUND_UP(dfixed_const(crtc_state->pbn), mst_state->pbn_div.full);
+
+		drm_WARN_ON(&i915->drm, remote_tu < crtc_state->dp_m_n.tu);
+		crtc_state->dp_m_n.tu = remote_tu;
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
@@ -221,7 +234,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 			return slots;
 
 		if (slots >= 0) {
-			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
+			drm_WARN_ON(&i915->drm, slots != crtc_state->dp_m_n.tu);
 
 			break;
 		}
-- 
2.39.2

