Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6DB8237C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 00:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6818010E5AE;
	Wed, 17 Sep 2025 22:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKrl4AtY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC9E10E5A8;
 Wed, 17 Sep 2025 22:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758149982; x=1789685982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r/pyh3j+cRx3POxvb036E8cRSPatR1CZzpxObVaZA3o=;
 b=KKrl4AtYXKs6CM0XCDE46ks/2fuW0UFaJBYrNX0rBiMRg1x4JZyl2Z1u
 rcBRdLhD2cFdT6hGwaQO5b2fWGHzc+Zv/CR9GrFl/nxE5XGYdSSulYkPo
 UylkZOhj9H3UeObkJLYxQrXpTgpWeFxitwmO51ca3I4bu8NEuS6C7Ynbg
 2vq8op/Luvugm5QD/ARGAJnb/f2EnF+3LGZ5aM09VnP4DcmUX/kcYLsVS
 HPyPbY4UJItGlhhvg/GSEYMhZg8YNnuhgg4YFpBWL7+luyCxEszwnR7om
 Lb99JJ5pF6/p1nrI250WB0NbP3YWegp3xHXJEZm0bZ3OTigOxSAbrXUvS g==;
X-CSE-ConnectionGUID: PlHbmhsuQRuzFb7KcZ/THg==
X-CSE-MsgGUID: tmj47nVlT/67J6Ngo79fvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60578902"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60578902"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 15:59:42 -0700
X-CSE-ConnectionGUID: jDe3FBN2TTyOvzokmNObTg==
X-CSE-MsgGUID: x54NQyh7QWuvT2Rl0s+DSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="176153766"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa010.fm.intel.com with ESMTP; 17 Sep 2025 15:59:42 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Uma Shankar <uma.shankar@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: Simplify Link/PHY CTS flow and process
Date: Wed, 17 Sep 2025 15:59:37 -0700
Message-ID: <20250917225937.1796620-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The current PHY CTS flow relies on the intel_dp_compliance IGT
tool solely to trigger modeset and Link training for adjusting
link rates and lane counts. However, configuring PHY patterns
and voltage swing/pre-emphasis does not require link training
and can instead be applied directly from the short_pulse
function.

This reliance on intel_dp_compliance makes PHY CTS execution
more complex compared to Windows and other vendors. OEMs and
ODMs frequently request a simpler plug-and-play approach for
running PHY CTS.

On Android, using intel_dp_compliance is even more difficult
due to incompatibilities with Android's UI framework and build
systems.

To address these issues, this patch leverages debugfs hooks for
Link Training (force_lane_count, force_link_rate,
force_link_retrain). This removes the intel_dp_compliance
dependency and enables a plug-and-play solution for PHY CTS.

The patch has been validated on both MTL and PTL platforms
using Ubuntu (UI and console) and Android UI, showing more
stable and consistent results than before. It was also
validated with a Unigraf UCD500 running LL CTS test 4.3.1.1
with TEST_LINK_TRAINING enabled.

Now, testers only need to connect the fixture to the DUT and
start the tests, greatly simplifying the PHY CTS workflow.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  3 --
 drivers/gpu/drm/i915/display/intel_dp_test.c | 46 ++++----------------
 2 files changed, 9 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 08083ac83a74..b86717c174e2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4764,9 +4764,6 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	enum intel_hotplug_state state;
 	int ret;
 
-	if (intel_dp_test_phy(intel_dp))
-		return INTEL_HOTPLUG_UNCHANGED;
-
 	state = intel_encoder_hotplug(encoder, connector);
 
 	if (!intel_tc_port_link_reset(dig_port)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 5cfa1dd411da..6103e843aa70 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -17,6 +17,7 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
+#include "intel_hotplug.h"
 
 void intel_dp_test_reset(struct intel_dp *intel_dp)
 {
@@ -45,26 +46,6 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm, "Setting pipe_bpp to %d\n", bpp);
 	}
 
-	/* Use values requested by Compliance Test Request */
-	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
-		int index;
-
-		/* Validate the compliance test data since max values
-		 * might have changed due to link train fallback.
-		 */
-		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
-					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_rate_index(intel_dp->common_rates,
-						    intel_dp->num_common_rates,
-						    intel_dp->compliance.test_link_rate);
-			if (index >= 0) {
-				limits->min_rate = intel_dp->compliance.test_link_rate;
-				limits->max_rate = intel_dp->compliance.test_link_rate;
-			}
-			limits->min_lane_count = intel_dp->compliance.test_lane_count;
-			limits->max_lane_count = intel_dp->compliance.test_lane_count;
-		}
-	}
 }
 
 /* Compliance test status bits  */
@@ -104,8 +85,8 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 					test_lane_count))
 		return DP_TEST_NAK;
 
-	intel_dp->compliance.test_lane_count = test_lane_count;
-	intel_dp->compliance.test_link_rate = test_link_rate;
+	intel_dp->link.force_lane_count = test_lane_count;
+	intel_dp->link.force_rate = test_link_rate;
 
 	return DP_TEST_ACK;
 }
@@ -344,9 +325,6 @@ static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 		return DP_TEST_NAK;
 	}
 
-	/* Set test active flag here so userspace doesn't interrupt things */
-	intel_dp->compliance.test_active = true;
-
 	return DP_TEST_ACK;
 }
 
@@ -363,6 +341,8 @@ void intel_dp_test_request(struct intel_dp *intel_dp)
 			    "Could not read test request from sink\n");
 		goto update_status;
 	}
+	intel_dp->link.force_lane_count = 0;
+	intel_dp->link.force_rate =  0;
 
 	switch (request) {
 	case DP_TEST_LINK_TRAINING:
@@ -495,10 +475,6 @@ bool intel_dp_test_phy(struct intel_dp *intel_dp)
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
-	if (!intel_dp->compliance.test_active ||
-	    intel_dp->compliance.test_type != DP_TEST_LINK_PHY_TEST_PATTERN)
-		return false;
-
 	drm_modeset_acquire_init(&ctx, 0);
 
 	for (;;) {
@@ -530,18 +506,14 @@ bool intel_dp_test_short_pulse(struct intel_dp *intel_dp)
 		drm_dbg_kms(display->drm,
 			    "Link Training Compliance Test requested\n");
 		/* Send a Hotplug Uevent to userspace to start modeset */
-		drm_kms_helper_hotplug_event(display->drm);
+		intel_dp->link.force_retrain = 1;
+		intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
 		break;
 	case DP_TEST_LINK_PHY_TEST_PATTERN:
 		drm_dbg_kms(display->drm,
 			    "PHY test pattern Compliance Test requested\n");
-		/*
-		 * Schedule long hpd to do the test
-		 *
-		 * FIXME get rid of the ad-hoc phy test modeset code
-		 * and properly incorporate it into the normal modeset.
-		 */
-		reprobe_needed = true;
+		intel_dp_test_phy(intel_dp);
+		break;
 	}
 
 	return reprobe_needed;
-- 
2.43.0

