Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3FB9392D1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF9610E209;
	Mon, 22 Jul 2024 16:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4onqYIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8855B10E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667300; x=1753203300;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KMzCVimy50sKj3PEFpY2hO4GeA65WR1GNHUD4MQm64s=;
 b=O4onqYIRHcxxCJV7BdRFXY23MQ7kj0FaAqDOpEVpNfWh3c8FbHn0fu0q
 2eFltmjleYXROzZDItJQKSVvz3CCWtbEhLZpN+m+u9pLy87mJ/A9mk9FT
 TxSjz41Apug87RHVaa8f2cu2Mqg2VxycuIolwp/KDPJpqwHWJKJ25srhM
 LewvUzc+JM1sdjpMtxMHccrDflqPg9htjUFdWIL/5r0vhj1SrLge2AI0D
 CrPxE+/bcM6dlHK/EGYOArr2ZfTcySpYEsYruILkj12hLnuXCja9fPzp8
 6ZzAIbP/3sIdsUsGsFnObWwBiKkyqBu6oFQ0walmfZ6gNAC9CrRV3q5Aj A==;
X-CSE-ConnectionGUID: 0O3cF513Ru20bkaEgQNBig==
X-CSE-MsgGUID: 4T79AXjaT7eoptyRxsDaVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117316"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117316"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:00 -0700
X-CSE-ConnectionGUID: qGfXe8sKTxWuIZ2MSl2naA==
X-CSE-MsgGUID: AjvoGccvSYSFelLmqrxvvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056247"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW order
 after LT failures
Date: Mon, 22 Jul 2024 19:54:58 +0300
Message-ID: <20240722165503.2084999-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

On MST links - at least for some MST branch devices - the list of modes
returned to users on an enabled link depends on the current link
rate/lane count parameters (besides the DPRX link capabilities, any MST
branch BW limit and the maximum link parameters reduced after LT
failures). In particular the MST branch BW limit may depend on the link
rate/lane count parameters programmed to DPCD. After an LT failure and
limiting the maximum link parameters accordingly, users should see a
mode list reflecting these new limits. However with the current fallback
order this isn't ensured, as the new limit could allow for modes
requiring a higher link BW, but these modes will be filtered out due to
the enabled link's lower link BW.

Ensure that the mode list changes in a consistent way after a link
training failure and reducing the link parameters by changing the
fallback order on MST links to happen in BW order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  12 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 111 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_link_training.c |  43 ++++++-
 4 files changed, 166 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3501125c55158..51e2151315977 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1778,6 +1778,18 @@ struct intel_dp {
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	struct {
 		/* TODO: move the rest of link specific fields to here */
+		/* common rate,lane_count configs in bw order */
+		int num_configs;
+#define INTEL_DP_MAX_LANE_COUNT			4
+#define INTEL_DP_MAX_SUPPORTED_LANE_COUNTS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
+#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
+#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
+						 INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
+		struct intel_dp_link_config {
+			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
+			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+		} configs[INTEL_DP_MAX_LINK_CONFIGS];
 		/* Max lane count for the current link */
 		int max_lane_count;
 		/* Max rate for the current link */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0882dddd97206..d3529c5836393 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -29,6 +29,7 @@
 #include <linux/i2c.h>
 #include <linux/notifier.h>
 #include <linux/slab.h>
+#include <linux/sort.h>
 #include <linux/string_helpers.h>
 #include <linux/timekeeping.h>
 #include <linux/types.h>
@@ -634,6 +635,114 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 	return -1;
 }
 
+static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+				     const struct intel_dp_link_config *lc)
+{
+	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+}
+
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
+{
+	return 1 << lc->lane_count_exp;
+}
+
+static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+				   const struct intel_dp_link_config *lc)
+{
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+					 intel_dp_link_config_lane_count(lc));
+}
+
+static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
+{
+	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	const struct intel_dp_link_config *lc_a = a;
+	const struct intel_dp_link_config *lc_b = b;
+	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
+	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+
+	if (bw_a != bw_b)
+		return bw_a - bw_b;
+
+	return intel_dp_link_config_rate(intel_dp, lc_a) -
+	       intel_dp_link_config_rate(intel_dp, lc_b);
+}
+
+static void link_config_swap(void *a, void *b, int size, const void * __always_unused p)
+{
+	struct intel_dp_link_config *lc_a = a;
+	struct intel_dp_link_config *lc_b = b;
+
+	swap(*lc_a, *lc_b);
+}
+
+static void intel_dp_link_config_init(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_dp_link_config *lc;
+	int num_common_lane_counts;
+	int i;
+	int j;
+
+	if (drm_WARN_ON(&i915->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+		return;
+
+	num_common_lane_counts = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
+
+	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates * num_common_lane_counts >
+				    ARRAY_SIZE(intel_dp->link.configs)))
+		return;
+
+	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_counts;
+
+	lc = &intel_dp->link.configs[0];
+	for (i = 0; i < intel_dp->num_common_rates; i++) {
+		for (j = 0; j < num_common_lane_counts; j++) {
+			lc->lane_count_exp = j;
+			lc->link_rate_idx = i;
+
+			lc++;
+		}
+	}
+
+	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
+	       sizeof(intel_dp->link.configs[0]),
+	       link_config_cmp_by_bw, link_config_swap,
+	       intel_dp);
+}
+
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	const struct intel_dp_link_config *lc;
+
+	if (drm_WARN_ON(&i915->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+		idx = 0;
+
+	lc = &intel_dp->link.configs[idx];
+
+	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*lane_count = intel_dp_link_config_lane_count(lc);
+}
+
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+{
+	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+						link_rate);
+	int lane_count_exp = ilog2(lane_count);
+	int i;
+
+	for (i = 0; i < intel_dp->link.num_configs; i++) {
+		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
+
+		if (lc->lane_count_exp == lane_count_exp &&
+		    lc->link_rate_idx == link_rate_idx)
+			return i;
+	}
+
+	return -1;
+}
+
 static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -652,6 +761,8 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+
+	intel_dp_link_config_init(intel_dp);
 }
 
 static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9be539edf817b..1b9aaddd8c35c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -107,6 +107,8 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 214c8858b8a94..0c8e0d6437b5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1170,6 +1170,41 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
+					   const struct intel_crtc_state *crtc_state,
+					   int *new_link_rate, int *new_lane_count)
+{
+	int link_rate;
+	int lane_count;
+	int i;
+
+	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+	for (i--; i >= 0; i--) {
+		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
+
+		if ((intel_dp->link.force_rate &&
+		     intel_dp->link.force_rate != link_rate) ||
+		    (intel_dp->link.force_lane_count &&
+		     intel_dp->link.force_lane_count != lane_count))
+			continue;
+
+		/* TODO: Make switching from UHBR to non-UHBR rates work. */
+		if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=
+		    drm_dp_is_uhbr_rate(link_rate))
+			continue;
+
+		break;
+	}
+
+	if (i < 0)
+		return false;
+
+	*new_link_rate = link_rate;
+	*new_lane_count = lane_count;
+
+	return true;
+}
+
 static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 {
 	int rate_index;
@@ -1231,8 +1266,12 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state,
 			       int *new_link_rate, int *new_lane_count)
 {
-	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
-						     new_link_rate, new_lane_count);
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		return reduce_link_params_in_bw_order(intel_dp, crtc_state,
+						      new_link_rate, new_lane_count);
+	else
+		return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
+							     new_link_rate, new_lane_count);
 }
 
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-- 
2.44.2

