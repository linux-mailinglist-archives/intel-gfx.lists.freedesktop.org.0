Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 058E23F4E3A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497BD6E07B;
	Mon, 23 Aug 2021 16:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E9B6E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:19:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204333189"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="204333189"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="684450714"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:12 +0300
Message-Id: <8afd8d97a04c2d86c2dcadfed9f8e1f84272a13c.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/19] drm/i915/dp: add max data rate
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

DP 2.0 UHBR link rates always use 128b/132b channel encoding, which has
a different data bandwidth efficiency from 8b/10b. The computation is
slightly convoluted due to the units we use; this is all explained in
the added comment.

v2: Clarified comment (Manasi)

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 52 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h |  2 +-
 2 files changed, 47 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1a0eb4c4d666..7e5d9b959c1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -212,6 +212,10 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 	return intel_dp->max_link_lane_count;
 }
 
+/*
+ * The required data bandwidth for a mode with given pixel clock and bpp. This
+ * is the required net bandwidth independent of the data bandwidth efficiency.
+ */
 int
 intel_dp_link_required(int pixel_clock, int bpp)
 {
@@ -219,16 +223,52 @@ intel_dp_link_required(int pixel_clock, int bpp)
 	return DIV_ROUND_UP(pixel_clock * bpp, 8);
 }
 
+/*
+ * Given a link rate and lanes, get the data bandwidth.
+ *
+ * Data bandwidth is the actual payload rate, which depends on the data
+ * bandwidth efficiency and the link rate.
+ *
+ * For 8b/10b channel encoding, SST and non-FEC, the data bandwidth efficiency
+ * is 80%. For example, for a 1.62 Gbps link, 1.62*10^9 bps * 0.80 * (1/8) =
+ * 162000 kBps. With 8-bit symbols, we have 162000 kHz symbol clock. Just by
+ * coincidence, the port clock in kHz matches the data bandwidth in kBps, and
+ * they equal the link bit rate in Gbps multiplied by 100000. (Note that this no
+ * longer holds for data bandwidth as soon as FEC or MST is taken into account!)
+ *
+ * For 128b/132b channel encoding, the data bandwidth efficiency is 96.71%. For
+ * example, for a 10 Gbps link, 10*10^9 bps * 0.9671 * (1/8) = 1208875
+ * kBps. With 32-bit symbols, we have 312500 kHz symbol clock. The value 1000000
+ * does not match the symbol clock, the port clock (not even if you think in
+ * terms of a byte clock), nor the data bandwidth. It only matches the link bit
+ * rate in units of 10000 bps.
+ */
 int
-intel_dp_max_data_rate(int max_link_clock, int max_lanes)
+intel_dp_max_data_rate(int max_link_rate, int max_lanes)
 {
-	/* max_link_clock is the link symbol clock (LS_Clk) in kHz and not the
-	 * link rate that is generally expressed in Gbps. Since, 8 bits of data
-	 * is transmitted every LS_Clk per lane, there is no need to account for
-	 * the channel encoding that is done in the PHY layer here.
+	if (max_link_rate >= 1000000) {
+		/*
+		 * UHBR rates always use 128b/132b channel encoding, and have
+		 * 97.71% data bandwidth efficiency. Consider max_link_rate the
+		 * link bit rate in units of 10000 bps.
+		 */
+		int max_link_rate_kbps = max_link_rate * 10;
+
+		max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(max_link_rate_kbps * 9671, 10000);
+		max_link_rate = max_link_rate_kbps / 8;
+	}
+
+	/*
+	 * Lower than UHBR rates always use 8b/10b channel encoding, and have
+	 * 80% data bandwidth efficiency for SST non-FEC. However, this turns
+	 * out to be a nop by coincidence, and can be skipped:
+	 *
+	 *	int max_link_rate_kbps = max_link_rate * 10;
+	 *	max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(max_link_rate_kbps * 8, 10);
+	 *	max_link_rate = max_link_rate_kbps / 8;
 	 */
 
-	return max_link_clock * max_lanes;
+	return max_link_rate * max_lanes;
 }
 
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1345d588fc6d..ae0f776bffab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -88,7 +88,7 @@ bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
 
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
-int intel_dp_max_data_rate(int max_link_clock, int max_lanes);
+int intel_dp_max_data_rate(int max_link_rate, int max_lanes);
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
-- 
2.20.1

