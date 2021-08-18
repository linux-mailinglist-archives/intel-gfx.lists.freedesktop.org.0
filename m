Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B93F0AD8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC936E89D;
	Wed, 18 Aug 2021 18:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925C66E89D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:11:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="203540050"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="203540050"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="511326145"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:40 +0300
Message-Id: <f17e82ac4f830cafb1b7baa6a3cc47514d1339f0.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/17] drm/i915/dp: use actual link rate values
 in struct link_config_limits
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

The MST code uses actual link rates in the limits struct, while the DP
code in general uses indexes to the ->common_rates[] array. Fix the
confusion by using actual link rate values everywhere. This is a better
abstraction than some obscure index.

Rename the struct members while at it to ensure all the places are
covered.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 30 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 ++---
 3 files changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75d4ebc66941..d273b3848785 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1044,7 +1044,8 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 						    intel_dp->num_common_rates,
 						    intel_dp->compliance.test_link_rate);
 			if (index >= 0)
-				limits->min_clock = limits->max_clock = index;
+				limits->min_rate = limits->max_rate =
+					intel_dp->compliance.test_link_rate;
 			limits->min_lane_count = limits->max_lane_count =
 				intel_dp->compliance.test_lane_count;
 		}
@@ -1058,8 +1059,8 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct link_config_limits *limits)
 {
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int bpp, clock, lane_count;
-	int mode_rate, link_clock, link_avail;
+	int bpp, i, lane_count;
+	int mode_rate, link_rate, link_avail;
 
 	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
 		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
@@ -1067,18 +1068,22 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 		mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock,
 						   output_bpp);
 
-		for (clock = limits->min_clock; clock <= limits->max_clock; clock++) {
+		for (i = 0; i < intel_dp->num_common_rates; i++) {
+			link_rate = intel_dp->common_rates[i];
+			if (link_rate < limits->min_rate ||
+			    link_rate > limits->max_rate)
+				continue;
+
 			for (lane_count = limits->min_lane_count;
 			     lane_count <= limits->max_lane_count;
 			     lane_count <<= 1) {
-				link_clock = intel_dp->common_rates[clock];
-				link_avail = intel_dp_max_data_rate(link_clock,
+				link_avail = intel_dp_max_data_rate(link_rate,
 								    lane_count);
 
 				if (mode_rate <= link_avail) {
 					pipe_config->lane_count = lane_count;
 					pipe_config->pipe_bpp = bpp;
-					pipe_config->port_clock = link_clock;
+					pipe_config->port_clock = link_rate;
 
 					return 0;
 				}
@@ -1212,7 +1217,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * with DSC enabled for the requested mode.
 	 */
 	pipe_config->pipe_bpp = pipe_bpp;
-	pipe_config->port_clock = intel_dp->common_rates[limits->max_clock];
+	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
 	if (intel_dp_is_edp(intel_dp)) {
@@ -1321,8 +1326,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	/* No common link rates between source and sink */
 	drm_WARN_ON(encoder->base.dev, common_len <= 0);
 
-	limits.min_clock = 0;
-	limits.max_clock = common_len - 1;
+	limits.min_rate = intel_dp->common_rates[0];
+	limits.max_rate = intel_dp->common_rates[common_len - 1];
 
 	limits.min_lane_count = 1;
 	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
@@ -1340,15 +1345,14 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		 * values correspond to the native resolution of the panel.
 		 */
 		limits.min_lane_count = limits.max_lane_count;
-		limits.min_clock = limits.max_clock;
+		limits.min_rate = limits.max_rate;
 	}
 
 	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
 
 	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
 		    "max rate %d max bpp %d pixel clock %iKHz\n",
-		    limits.max_lane_count,
-		    intel_dp->common_rates[limits.max_clock],
+		    limits.max_lane_count, limits.max_rate,
 		    limits.max_bpp, adjusted_mode->crtc_clock);
 
 	if ((adjusted_mode->crtc_clock > i915->max_dotclk_freq ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 680631b5b437..1345d588fc6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -26,7 +26,7 @@ struct intel_dp;
 struct intel_encoder;
 
 struct link_config_limits {
-	int min_clock, max_clock;
+	int min_rate, max_rate;
 	int min_lane_count, max_lane_count;
 	int min_bpp, max_bpp;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9859c0334ebc..d104441344c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -61,7 +61,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	int bpp, slots = -EINVAL;
 
 	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_clock;
+	crtc_state->port_clock = limits->max_rate;
 
 	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
 		crtc_state->pipe_bpp = bpp;
@@ -131,8 +131,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	 * for MST we always configure max link bw - the spec doesn't
 	 * seem to suggest we should do otherwise.
 	 */
-	limits.min_clock =
-	limits.max_clock = intel_dp_max_link_rate(intel_dp);
+	limits.min_rate =
+	limits.max_rate = intel_dp_max_link_rate(intel_dp);
 
 	limits.min_lane_count =
 	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
-- 
2.20.1

