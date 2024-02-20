Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EFC85C828
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 22:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5048B10E592;
	Tue, 20 Feb 2024 21:18:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YfUExsVp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E7310E572;
 Tue, 20 Feb 2024 21:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708463922; x=1739999922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LqkYl0zfmBuoP6ue5jQFNdiqxgJEByGKgYo9MN5RmcY=;
 b=YfUExsVp5uboaU8VvlSs5irW0cVQdfSLBpOm/7gi8wyGhzbMeWY1hs2r
 QxoAstxNvMx0YRdxt2d8yYViVW97FEAh9vBwr05s4+wLCLF4GWKeAHbOJ
 LJ39C5s6mUwo0lAGF5XI/VdIF+HM9sxodlqdDbmau/uFSUlROBB04QYuC
 Mg2HRFbF4Nlce2LoKX/0unTyF9HibN5PQtgf52ZP1qj+nJP77JfCgrbD1
 IHWAs4AQns3q5pCCjWR6ow1CNuzbRDq1b8DWrHD6ljcR63Mc7KHkdM/lT
 Wr+OxrFcQmq67Aov3P5JuMuLGYpznj+49GObOjUziackDXbAJAk8YCxC6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2738669"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2738669"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:18:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5061623"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:18:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 14/21] drm/i915/dp: Account for tunnel BW limit in
 intel_dp_max_link_data_rate()
Date: Tue, 20 Feb 2024 23:18:34 +0200
Message-Id: <20240220211841.448846-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220211841.448846-1-imre.deak@intel.com>
References: <20240220211841.448846-1-imre.deak@intel.com>
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

Take any link BW limitation into account in
intel_dp_max_link_data_rate(). Such a limitation can be due to multiple
displays on (Thunderbolt) links with DP tunnels sharing the link BW.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d0452d3e534a7..f4f748d95ad17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -63,6 +63,7 @@
 #include "intel_dp_hdcp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_fifo_underrun.h"
@@ -152,6 +153,22 @@ int intel_dp_link_symbol_clock(int rate)
 	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
 }
 
+static int max_dprx_rate(struct intel_dp *intel_dp)
+{
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
+
+	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+}
+
+static int max_dprx_lane_count(struct intel_dp *intel_dp)
+{
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return drm_dp_tunnel_max_dprx_lane_count(intel_dp->tunnel);
+
+	return drm_dp_max_lane_count(intel_dp->dpcd);
+}
+
 static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
 {
 	intel_dp->sink_rates[0] = 162000;
@@ -180,7 +197,7 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 	/*
 	 * Sink rates for 8b/10b.
 	 */
-	max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+	max_rate = max_dprx_rate(intel_dp);
 	max_lttpr_rate = drm_dp_lttpr_max_link_rate(intel_dp->lttpr_common_caps);
 	if (max_lttpr_rate)
 		max_rate = min(max_rate, max_lttpr_rate);
@@ -259,7 +276,7 @@ static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
 
-	intel_dp->max_sink_lane_count = drm_dp_max_lane_count(intel_dp->dpcd);
+	intel_dp->max_sink_lane_count = max_dprx_lane_count(intel_dp);
 
 	switch (intel_dp->max_sink_lane_count) {
 	case 1:
@@ -389,14 +406,21 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
  * @max_dprx_rate: Maximum data rate of the DPRX
  * @max_dprx_lanes: Maximum lane count of the DPRX
  *
- * Calculate the maximum data rate for the provided link parameters.
+ * Calculate the maximum data rate for the provided link parameters taking into
+ * account any BW limitations by a DP tunnel attached to @intel_dp.
  *
  * Returns the maximum data rate in kBps units.
  */
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes)
 {
-	return drm_dp_max_dprx_data_rate(max_dprx_rate, max_dprx_lanes);
+	int max_rate = drm_dp_max_dprx_data_rate(max_dprx_rate, max_dprx_lanes);
+
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		max_rate = min(max_rate,
+			       drm_dp_tunnel_available_bw(intel_dp->tunnel));
+
+	return max_rate;
 }
 
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
-- 
2.39.2

