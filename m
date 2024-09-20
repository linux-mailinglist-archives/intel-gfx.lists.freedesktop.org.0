Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AD497D512
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8668B10E82A;
	Fri, 20 Sep 2024 11:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPUKn4FY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE42010E828;
 Fri, 20 Sep 2024 11:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833466; x=1758369466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mIkrvM+qxlkYTnEENNNjHlp9pSjbKBrPvO+MY5N4Jk8=;
 b=WPUKn4FYNyW8Ncr75FY6NBvMOW3V9ZfTDg23V641XBuS/ztBSpRo7/jr
 yi5F44WWKZoKKFrPI1LZZUZzqqeDjxSkp04827ldoS5neOIDRXUWBhNtD
 KXFPC4PTOy6vGeUz5K1JCfzcWRkjp7wKnQKuNulA0UHOuPDXAkhQGAFD5
 KLrTNzCxelL0ste0rzkGQf+kBeFcwdc6YB9zJD2l/JN69bEYGsOzzRma6
 RPPEV7Kg1GSck+CIh8pcMn4PaVoRp2SopIHbxozUtTKdfebrDJ+b4UpyM
 CosmOB2vAmrA373e4k0iGhGu+L7n7DO2/CjaCXhHYUPhGi9oVuZraJheV w==;
X-CSE-ConnectionGUID: K2ajg3eoTy6OTs2GJu7LXA==
X-CSE-MsgGUID: mPKET/CnSiiC7eBzaStFXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25930961"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25930961"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:46 -0700
X-CSE-ConnectionGUID: Vy+6CiSfSsiQ3V+CPz2gEw==
X-CSE-MsgGUID: odAIfpPwTced5TtQLr/fwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70280564"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 9/9] drm/i915/dp: add intel_dp_test_reset() and
 intel_dp_test_short_pulse()
Date: Fri, 20 Sep 2024 14:56:51 +0300
Message-Id: <ea2ad218bdba21be30bd15a3707663508518dfa5.1726833193.git.jani.nikula@intel.com>
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

Abstract more DP test stuff. Now the only place touching
intel_dp->compliance is intel_dp_test.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c      | 27 ++------------
 drivers/gpu/drm/i915/display/intel_dp_test.c | 37 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_test.h |  2 ++
 3 files changed, 42 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 38aeb337ef53..16dc1d26d2a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5161,16 +5161,11 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 old_sink_count = intel_dp->sink_count;
 	bool reprobe_needed = false;
 	bool ret;
 
-	/*
-	 * Clearing compliance test variables to allow capturing
-	 * of values for next automated test request.
-	 */
-	memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
+	intel_dp_test_reset(intel_dp);
 
 	/*
 	 * Now read the DPCD to see if it's actually running
@@ -5195,24 +5190,8 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_psr_short_pulse(intel_dp);
 
-	switch (intel_dp->compliance.test_type) {
-	case DP_TEST_LINK_TRAINING:
-		drm_dbg_kms(&dev_priv->drm,
-			    "Link Training Compliance Test requested\n");
-		/* Send a Hotplug Uevent to userspace to start modeset */
-		drm_kms_helper_hotplug_event(&dev_priv->drm);
-		break;
-	case DP_TEST_LINK_PHY_TEST_PATTERN:
-		drm_dbg_kms(&dev_priv->drm,
-			    "PHY test pattern Compliance Test requested\n");
-		/*
-		 * Schedule long hpd to do the test
-		 *
-		 * FIXME get rid of the ad-hoc phy test modeset code
-		 * and properly incorporate it into the normal modeset.
-		 */
+	if (intel_dp_test_short_pulse(intel_dp))
 		reprobe_needed = true;
-	}
 
 	return !reprobe_needed;
 }
@@ -5569,7 +5548,7 @@ intel_dp_detect(struct drm_connector *connector,
 		status = connector_status_disconnected;
 
 	if (status == connector_status_disconnected) {
-		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
+		intel_dp_test_reset(intel_dp);
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 8426c8ef947e..e05819300d77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -6,6 +6,7 @@
 #include <drm/display/drm_dp.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -17,6 +18,15 @@
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
 
+void intel_dp_test_reset(struct intel_dp *intel_dp)
+{
+	/*
+	 * Clearing compliance test variables to allow capturing
+	 * of values for next automated test request.
+	 */
+	memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
+}
+
 /* Adjust link config limits based on compliance test requests. */
 void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
@@ -510,6 +520,33 @@ bool intel_dp_test_phy(struct intel_dp *intel_dp)
 	return true;
 }
 
+bool intel_dp_test_short_pulse(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	bool reprobe_needed = false;
+
+	switch (intel_dp->compliance.test_type) {
+	case DP_TEST_LINK_TRAINING:
+		drm_dbg_kms(display->drm,
+			    "Link Training Compliance Test requested\n");
+		/* Send a Hotplug Uevent to userspace to start modeset */
+		drm_kms_helper_hotplug_event(display->drm);
+		break;
+	case DP_TEST_LINK_PHY_TEST_PATTERN:
+		drm_dbg_kms(display->drm,
+			    "PHY test pattern Compliance Test requested\n");
+		/*
+		 * Schedule long hpd to do the test
+		 *
+		 * FIXME get rid of the ad-hoc phy test modeset code
+		 * and properly incorporate it into the normal modeset.
+		 */
+		reprobe_needed = true;
+	}
+
+	return reprobe_needed;
+}
+
 static ssize_t i915_displayport_test_active_write(struct file *file,
 						  const char __user *ubuf,
 						  size_t len, loff_t *offp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/drm/i915/display/intel_dp_test.h
index d64158b5a468..dcc167e4c7f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
@@ -11,11 +11,13 @@ struct intel_display;
 struct intel_dp;
 struct link_config_limits;
 
+void intel_dp_test_reset(struct intel_dp *intel_dp);
 void intel_dp_test_request(struct intel_dp *intel_dp);
 void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits);
 bool intel_dp_test_phy(struct intel_dp *intel_dp);
+bool intel_dp_test_short_pulse(struct intel_dp *intel_dp);
 void intel_dp_test_debugfs_register(struct intel_display *display);
 
 #endif /* __INTEL_DP_TEST_H__ */
-- 
2.39.2

