Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E94C49392D3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6115710E173;
	Mon, 22 Jul 2024 16:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYI9LrAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1750110E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667304; x=1753203304;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WeTWIIMdekcp5V2ZJNs4Z5Ia8y1xBuDyQb6qZw2cTEA=;
 b=EYI9LrANUBi/b4I+QPAsWWD2NKl0HSS+y34+8NKtq3COFKf0/m9vm314
 ajzc0JTZQxEDawctCgYKTdjbI7zg/qV3F55f8eJWONLZVNfhAcyZcU7wa
 kGKhEhgpfaAmC2ePuAYywOQT5GB7koh2R42FaNX1DfDrz8K8sd8xtHIT+
 lI59P0gy6ff1Fhil8gUZBcgsXhnkQ2EQpg3rmT/BYrHPOxqeClXsiIRmS
 ZFzxnRnGgoZl+M047WWqg0ewa7K0Hg6rPPTg+RaSKYjKipSMDpSwmN5cn
 HRtqsJC9WmmMZdKfC+CadACsqZ1lqLXAl8XIU5ptbfsm5Cj+yY5bCF7Se g==;
X-CSE-ConnectionGUID: 0NePiBQ0TTmDPeJgnXC20w==
X-CSE-MsgGUID: 1VuNvDzmQIOVCiFaZgSWhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117322"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117322"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:03 -0700
X-CSE-ConnectionGUID: pFz95YDgQ+CxkTN6uAlZnw==
X-CSE-MsgGUID: kH3EdTHnRveX4yOlT6FdCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056315"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/14] drm/i915/dp_mst: Reprobe the MST topology after a link
 parameter change
Date: Mon, 22 Jul 2024 19:55:01 +0300
Message-ID: <20240722165503.2084999-13-imre.deak@intel.com>
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

The MST link BW reported by branch devices via the ENUM_PATH_RESOURCES
message depends on the channel coding and link rate/lane count
parameters programmed to DPCD. This is the case at least for some branch
devices, while for others the reported BW is independent of the link
parameters. In any case the DP standard requires the branch device to
adjust the returned value to both account for the different way the BW
for FEC is accounted for (included in the returned value for non-UHBR
and not included for UHBR rates) and to limit the returned value to the
(trained) link BW between the source and first downstreaam branch
device, see DP v2.0/v2.1 Figure 2-94, DP v2.1 5.9.7. Presumedly this is
also the reason why the standard requires the DPCD link rate/lane count
values being up-to-date before sending the ENUM_PATH_RESOURCES message,
see DP v2.1 2.14.9.4.

Based on the above reprobe the MST topology after the link is retrained
with new link parameters to make sure that the MST link BW tracked in
the MST topology state (via each topology port's full_pbn value) is
up-to-date.

The next patch will make sure that the MST link BW is also kept
up-to-date if the link is disabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 +++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 32 ++++++++++++++++++-
 3 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 51e2151315977..afd8329e3ed6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1794,6 +1794,14 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		/*
+		 * Link parameters for which the MST topology was probed.
+		 * Tracking these ensures that the MST path resources are
+		 * re-enumerated whenever the link is retrained with new link
+		 * parameters, as required by the DP standard.
+		 */
+		int mst_probed_lane_count;
+		int mst_probed_rate;
 		int force_lane_count;
 		int force_rate;
 		bool retrain_disabled;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1c6d1db1d2690..0771e4c6357ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3134,6 +3134,8 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link.mst_probed_lane_count = 0;
+	intel_dp->link.mst_probed_rate = 0;
 	intel_dp->link.retrain_disabled = false;
 	intel_dp->link.seq_train_failures = 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 57f29906fa28f..19c8b6878b030 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1113,6 +1113,33 @@ static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
 					     to_intel_crtc(pipe_config->uapi.crtc));
 }
 
+static bool intel_mst_probed_link_params_valid(struct intel_dp *intel_dp,
+					       int link_rate, int lane_count)
+{
+	return intel_dp->link.mst_probed_rate == link_rate &&
+		intel_dp->link.mst_probed_lane_count == lane_count;
+}
+
+static void intel_mst_set_probed_link_params(struct intel_dp *intel_dp,
+					     int link_rate, int lane_count)
+{
+	intel_dp->link.mst_probed_rate = link_rate;
+	intel_dp->link.mst_probed_lane_count = lane_count;
+}
+
+static void intel_mst_reprobe_topology(struct intel_dp *intel_dp,
+				       const struct intel_crtc_state *crtc_state)
+{
+	if (intel_mst_probed_link_params_valid(intel_dp,
+					       crtc_state->port_clock, crtc_state->lane_count))
+		return;
+
+	drm_dp_mst_topology_queue_probe(&intel_dp->mst_mgr);
+
+	intel_mst_set_probed_link_params(intel_dp,
+					 crtc_state->port_clock, crtc_state->lane_count);
+}
+
 static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 				    struct intel_encoder *encoder,
 				    const struct intel_crtc_state *pipe_config,
@@ -1149,10 +1176,13 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_dp_sink_enable_decompression(state, connector, pipe_config);
 
-	if (first_mst_stream)
+	if (first_mst_stream) {
 		dig_port->base.pre_enable(state, &dig_port->base,
 						pipe_config, NULL);
 
+		intel_mst_reprobe_topology(intel_dp, pipe_config);
+	}
+
 	intel_dp->active_mst_links++;
 
 	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
-- 
2.44.2

