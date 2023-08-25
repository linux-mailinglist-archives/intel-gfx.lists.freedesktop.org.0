Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5A7881E6
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBEF10E62E;
	Fri, 25 Aug 2023 08:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3410710E62C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692951418; x=1724487418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LEF3u9/t1puECRrjgp308CR7H3LZtHdWhlWrJdNFEyk=;
 b=dARcXGgvmyljnqaydMlZk3WzFlX9mjYPAKkcE8stAL/vYAK4Cli4eqpJ
 dY4OTMKR9gj/S0Q8qiS2iKHy+qwb/ZDjrmoyQmHQE2iMnXcdiDnyuqyQ9
 8VoIIYgYsX7fpq5jpqCnNc4mH43i4oGHh9n1a5TY/LU9DEG5he8y3mpln
 fn6iVy9oCcGesGhNAUAbsaews9oXgAPlgJ+HiGP9hS6kMqNIRMB7aMajx
 EL1d09pyx0j+XKFQBPSz3+mBAy/WDcqTUtq5luqFEDbMGlo9pUSDKQ+VX
 jP9ClVPclNqdcoj5nfChM06O3B7+dRLWZ/qCZvqYw23OdnUEMLGz2dP7D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364859077"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364859077"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881107713"
Received: from teclark-mobl2.amr.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.213.100])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:17:01 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 11:16:38 +0300
Message-Id: <20230825081638.275795-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825081638.275795-1-luciano.coelho@intel.com>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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
Cc: suraj.kandpal@linux.intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is irrelevant for the caller that the max lane count is being
derived from a FIA register, so having "fia" in the function name is
irrelevant.  Rename the function accordingly.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd489b50ad60..4846f50e7cd5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -58,7 +58,7 @@ static u8 intel_cx0_get_owned_lane_mask(struct drm_i915_private *i915,
 	 * In DP-alt with pin assignment D, only PHY lane 0 is owned
 	 * by display and lane 1 is owned by USB.
 	 */
-	return intel_tc_port_fia_max_lane_count(dig_port) > 2
+	return intel_tc_port_max_lane_count(dig_port) > 2
 		? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7067ee3a4bd3..e182109a5e00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -306,13 +306,13 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
-	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
+	int lane_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, fia_max);
+	return min3(source_max, sink_max, lane_max);
 }
 
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 43b8eeba26f8..3c94bbcb5497 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -337,7 +337,7 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
@@ -589,7 +589,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 	struct intel_digital_port *dig_port = tc->dig_port;
 	int max_lanes;
 
-	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
+	max_lanes = intel_tc_port_max_lane_count(dig_port);
 	if (tc->mode == TC_PORT_LEGACY) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
 		return true;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index ffc0e2a74e43..80a61e52850e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -20,7 +20,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder);
 bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
 
-- 
2.39.2

