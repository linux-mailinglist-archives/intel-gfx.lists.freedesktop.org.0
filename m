Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD73197D50A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BC910E821;
	Fri, 20 Sep 2024 11:57:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9AcPmKv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C53F10E81A;
 Fri, 20 Sep 2024 11:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833441; x=1758369441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=opZ3v1lvcZxJjegH7dLRu3zVWUh/m83IyER7cWBNA/s=;
 b=P9AcPmKvDUcD+7HsVyOqvCLey6F2Quga1FrX04qKvmt5+Jpyolo8kR1v
 a3Re6OmZ2g1h+Lw6Ngt+USMqivGFSZS8ygNN6C7KlAzkFS0hVF/WaxHsH
 JlsnEAAlHZMvswNKj9diP4SKmb+uZ9SbHpL4vBWtXCmauLWDVH5AFPhPG
 JELKou7WJBdMS/hp69E48JRsLIFrJpTId2Wybm6dk3OvjNAXhVNzgiZmk
 bJwYeAiQaZ4fMQDT4TGEagaC9Qh3WlpTLG1JuqCwPHpd1GDV9ZtUn/ZzR
 KEhuGl/It8808R1XcbwG21pbcSLEwDGxUJhXjdSeBFDiWO8HSVeV/t17A A==;
X-CSE-ConnectionGUID: tEtQsp8hSNiHYOrl4xOR1Q==
X-CSE-MsgGUID: NkXQl9teRCC37JhPUO9vCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984563"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984563"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:21 -0700
X-CSE-ConnectionGUID: oUm/RinlTFOkBQ0dZT6K6A==
X-CSE-MsgGUID: u68TPSMDSmm+eZ7pSC9WrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519162"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/9] drm/i915/dp: clean up intel_dp_test.[ch] interface
Date: Fri, 20 Sep 2024 14:56:46 +0300
Message-Id: <c2905006d2d47040032153ca69052898529a95d5.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Conform to uniform function naming. Use intel_dp. Hide checks on
intel_dp->compliance within intel_dp_test.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  6 +-----
 drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +-----
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_test.h | 13 +++++++------
 6 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index ac9dce8213a3..440fb3002f28 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1169,12 +1169,8 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	enum intel_hotplug_state state;
 
-	if (intel_dp->compliance.test_active &&
-	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
-		intel_dp_phy_test(encoder);
-		/* just do the PHY test and nothing else */
+	if (intel_dp_test_phy(intel_dp))
 		return INTEL_HOTPLUG_UNCHANGED;
-	}
 
 	state = intel_encoder_hotplug(encoder, connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c0ade280d816..fe1ded6707f9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4551,12 +4551,8 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	enum intel_hotplug_state state;
 	int ret;
 
-	if (intel_dp->compliance.test_active &&
-	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
-		intel_dp_phy_test(encoder);
-		/* just do the PHY test and nothing else */
+	if (intel_dp_test_phy(intel_dp))
 		return INTEL_HOTPLUG_UNCHANGED;
-	}
 
 	state = intel_encoder_hotplug(encoder, connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1cc73e2bf1fe..38aeb337ef53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2455,7 +2455,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		limits->min_rate = limits->max_rate;
 	}
 
-	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
+	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
 						       crtc_state,
@@ -5108,7 +5108,7 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
 
 	if (val & DP_AUTOMATED_TEST_REQUEST)
-		intel_dp_handle_test_request(intel_dp);
+		intel_dp_test_request(intel_dp);
 
 	if (val & DP_CP_IRQ)
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c91e1e241a67..732d7543ad06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -542,7 +542,7 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	 */
 	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
 
-	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
+	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
 						     crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index efdf25dfef51..4608aa34df42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -16,8 +16,7 @@
 #include "intel_dp_test.h"
 
 /* Adjust link config limits based on compliance test requests. */
-void
-intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
+void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
@@ -339,7 +338,7 @@ static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 	return DP_TEST_ACK;
 }
 
-void intel_dp_handle_test_request(struct intel_dp *intel_dp)
+void intel_dp_test_request(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 response = DP_TEST_NAK;
@@ -477,11 +476,17 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 	return 0;
 }
 
-void intel_dp_phy_test(struct intel_encoder *encoder)
+bool intel_dp_test_phy(struct intel_dp *intel_dp)
 {
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
+	if (!intel_dp->compliance.test_active ||
+	    intel_dp->compliance.test_type != DP_TEST_LINK_PHY_TEST_PATTERN)
+		return false;
+
 	drm_modeset_acquire_init(&ctx, 0);
 
 	for (;;) {
@@ -499,4 +504,6 @@ void intel_dp_phy_test(struct intel_encoder *encoder)
 	drm_modeset_acquire_fini(&ctx);
 	drm_WARN(encoder->base.dev, ret,
 		 "Acquiring modeset locks failed with %i\n", ret);
+
+	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/drm/i915/display/intel_dp_test.h
index e865e6a3aaa3..cfd3dccdd91d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
@@ -4,15 +4,16 @@
 #ifndef __INTEL_DP_TEST_H__
 #define __INTEL_DP_TEST_H__
 
+#include <linux/types.h>
+
 struct intel_crtc_state;
 struct intel_dp;
-struct intel_encoder;
 struct link_config_limits;
 
-void intel_dp_handle_test_request(struct intel_dp *intel_dp);
-void intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
-				       struct intel_crtc_state *pipe_config,
-				       struct link_config_limits *limits);
-void intel_dp_phy_test(struct intel_encoder *encoder);
+void intel_dp_test_request(struct intel_dp *intel_dp);
+void intel_dp_test_compute_config(struct intel_dp *intel_dp,
+				  struct intel_crtc_state *pipe_config,
+				  struct link_config_limits *limits);
+bool intel_dp_test_phy(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_DP_TEST_H__ */
-- 
2.39.2

