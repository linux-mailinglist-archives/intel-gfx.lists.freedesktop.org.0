Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAA24D07CF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 20:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2423910E145;
	Mon,  7 Mar 2022 19:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA0010E145
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 19:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646681844; x=1678217844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F4CHzcT0Q2/48OxI5rgoHZyZfRfCg+5TES8mJdVqi/k=;
 b=IlTt31VyEZd42f+Or/hGs7vSe6JhyDVPPKiK57fhTDkHRkvzveel1chr
 ep4TWBmd4UGDQoM3LFxYGNBr/3j9TvFBFOgR4uzwJFIuZOUyAXG6Nqsbg
 9Jy5TpbjFdwkMGSWLV9inbuOIafmGf+xBNA7NDJXZ8r65kHk/YUFqJgbz
 wSWZaP1435hBGvSxtHH9+mdDG8FrFFq4KfBVvgW2ygqcil7ZWAfWl7uq3
 tPPPEIi8ZYa9mXTblWchGWrSUgB9FQa/rQhjBF0/2i8oTEY6oqjRnb1xJ
 gfyOW5+NKw93dIL1YVNLz42UyTQQsFw4NWCvyFRA0jN+mFNlok+2cOpRS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="315201314"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="315201314"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 11:37:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="537247557"
Received: from hazimham-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.27.252])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 11:37:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Mar 2022 21:36:57 +0200
Message-Id: <20220307193657.2468022-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mst: re-enable link training failure
 fallback for DP MST
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
Cc: jani.nikula@intel.com, Nikola Cornij <nikola.cornij@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 80a8cecf62a5 ("drm/i915/dp_mst: Disable link training fallback on
MST links") disabled link training failure fallback for DP MST due to
the MST manager using the DPCD directly, and generally being ignorant
about the possibility of downgrading link parameters. See the commit for
further details.

Since then, the max_lane_count and max_link_rate members have been added
to struct drm_dp_mst_topology_mgr in commit 98025a62cb00 ("drm/dp_mst:
Use Extended Base Receiver Capability DPCD space") and refined in
follow-up work.

The members perhaps aren't intended for changing the parameters during
the lifetime of the manager, as they're supposed to be passed to
drm_dp_mst_topology_mgr_init(). However, the members are only ever used
in drm_dp_mst_topology_mgr_set_mst(), and there seems to be nothing to
prevent us from adjusting them *before* enabling MST. The wouldn't have
an effect if modified while MST is enabled. This is not necessarily
pretty, though.

Cc: Nikola Cornij <nikola.cornij@amd.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

This is *untested*. I don't see why it wouldn't work, though... this
should allow us to downgrade the link to from 128b/132b to 8b/10b if the
former fails.

Thoughts? In particular, any objections for messing with the topology
manager members directly? Any chance it'll make refactoring the MST code
more difficult?
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 42 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 ++-
 2 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 619546441eae..2fad3104b40e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -600,15 +600,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int index;
 
-	/*
-	 * TODO: Enable fallback on MST links once MST link compute can handle
-	 * the fallback params.
-	 */
-	if (intel_dp->is_mst) {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
-	}
-
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		drm_dbg_kms(&i915->drm,
 			    "Retrying Link training for eDP with max parameters\n");
@@ -2785,6 +2776,8 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder =
 		&dp_to_dig_port(intel_dp)->base;
+	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
+
 	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
 
 	drm_dbg_kms(&i915->drm,
@@ -2800,8 +2793,17 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	intel_dp->is_mst = sink_can_mst &&
 		i915->params.enable_dp_mst;
 
-	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
-					intel_dp->is_mst);
+	/*
+	 * Set the source max lane count and link rate using the possibly
+	 * limited values due to failed link training.
+	 *
+	 * This is a bit hackish, as the values are supposed to be passed to
+	 * drm_dp_mst_topology_mgr_init().
+	 */
+	mgr->max_lane_count = intel_dp->max_link_lane_count;
+	mgr->max_link_rate = intel_dp->max_link_rate;
+
+	drm_dp_mst_topology_mgr_set_mst(mgr, intel_dp->is_mst);
 }
 
 static bool
@@ -4472,23 +4474,19 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out;
 	}
 
-	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (DISPLAY_VER(dev_priv) >= 11)
-		intel_dp_get_dsc_sink_cap(intel_dp);
-
-	intel_dp_configure_mst(intel_dp);
-
-	/*
-	 * TODO: Reset link params when switching to MST mode, until MST
-	 * supports link training fallback params.
-	 */
-	if (intel_dp->reset_link_params || intel_dp->is_mst) {
+	if (intel_dp->reset_link_params) {
 		intel_dp_reset_max_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
 
 	intel_dp_print_rates(intel_dp);
 
+	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
+	if (DISPLAY_VER(dev_priv) >= 11)
+		intel_dp_get_dsc_sink_cap(intel_dp);
+
+	intel_dp_configure_mst(intel_dp);
+
 	if (intel_dp->is_mst) {
 		/*
 		 * If we are in MST mode then this connector
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e30e698aa684..442dbd0ed201 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -151,8 +151,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			intel_conn_state->force_audio == HDMI_AUDIO_ON;
 
 	/*
-	 * for MST we always configure max link bw - the spec doesn't
-	 * seem to suggest we should do otherwise.
+	 * For MST we always configure max link bw - the spec doesn't seem to
+	 * suggest we should do otherwise. The values may be reduced due to link
+	 * training failures, however.
 	 */
 	limits.min_rate =
 	limits.max_rate = intel_dp_max_link_rate(intel_dp);
-- 
2.30.2

