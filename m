Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A09F9785E2B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210D410E4A3;
	Wed, 23 Aug 2023 17:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A4810E424;
 Wed, 23 Aug 2023 17:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810557; x=1724346557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J8CxPpUBKSJ4zbFaTOtjCitVijb1pZfdlYRVhiuPrCc=;
 b=gNVgVD/HAKx5UebYkh3f/bD+VUodEybas9O+CdgjRBurnJSXDj5r/L5H
 3y0AjCf+WR218PKUT7YPnLFCbmIXofVOPcwJb+8iY1vZ9EHYGg0j656Dh
 KfNzyGbIfei2cwuXgXAkGQS4+vE89rsDvyOCR7RGOZhVy1d7CGIZbsqSQ
 lGOJVcUAtCuA8qZn9YeawwDfe4nznvz4L0MLuNneJmQc9whLy85TzdYyU
 9cptXvHifwXPXGN/K/j8Gya1LCGbb9e7yJh4HNcDUqS9LJvqvP+MrWfqk
 riCvUp+BACXPG8/Ms2X3rG70PZiaWLF/vYfb+amI30FfoASI0drT2rB97 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147472"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147472"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204788"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204788"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:08 -0700
Message-Id: <20230823170740.1180212-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/42] drm/i915/tc: remove "fia" from
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luca Coelho <luciano.coelho@intel.com>

It is irrelevant for the caller that the max lane count is being
derived from a FIA register, so having "fia" in the function name is
irrelevant.  Rename the function accordingly.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://lore.kernel.org/r/20230721111121.369227-5-luciano.coelho@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 26e256165b80..a5918bf30c31 100644
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
index 9f40da20e88d..84584864511b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -306,13 +306,13 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
-	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
+	int port_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, fia_max);
+	return min3(source_max, sink_max, port_max);
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
2.40.1

