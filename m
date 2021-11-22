Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E83458FC4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D3A6E162;
	Mon, 22 Nov 2021 13:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23AC6E162
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="235021230"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="235021230"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="474349499"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:07 +0200
Message-Id: <ea50209742acfbf3abd8524b40ab484ca2c0f657.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: move enum hpd_pin to
 intel_display.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's not the ideal location, but a better alternative than
i915_drv.h. The goal is to break the intel_display_types.h to i915_drv.h
dependency.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h              | 24 --------------------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 38c15ec30ee7..8d8725b45d99 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -346,6 +346,30 @@ enum phy_fia {
 	FIA3,
 };
 
+enum hpd_pin {
+	HPD_NONE = 0,
+	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
+	HPD_CRT,
+	HPD_SDVO_B,
+	HPD_SDVO_C,
+	HPD_PORT_A,
+	HPD_PORT_B,
+	HPD_PORT_C,
+	HPD_PORT_D,
+	HPD_PORT_E,
+	HPD_PORT_TC1,
+	HPD_PORT_TC2,
+	HPD_PORT_TC3,
+	HPD_PORT_TC4,
+	HPD_PORT_TC5,
+	HPD_PORT_TC6,
+
+	HPD_NUM_PINS
+};
+
+#define for_each_hpd_pin(__pin) \
+	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
+
 #define for_each_pipe(__dev_priv, __p) \
 	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
 		for_each_if(INTEL_INFO(__dev_priv)->pipe_mask & BIT(__p))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e2ccc0696df7..27677bb18a6b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -117,30 +117,6 @@
 
 struct drm_i915_gem_object;
 
-enum hpd_pin {
-	HPD_NONE = 0,
-	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
-	HPD_CRT,
-	HPD_SDVO_B,
-	HPD_SDVO_C,
-	HPD_PORT_A,
-	HPD_PORT_B,
-	HPD_PORT_C,
-	HPD_PORT_D,
-	HPD_PORT_E,
-	HPD_PORT_TC1,
-	HPD_PORT_TC2,
-	HPD_PORT_TC3,
-	HPD_PORT_TC4,
-	HPD_PORT_TC5,
-	HPD_PORT_TC6,
-
-	HPD_NUM_PINS
-};
-
-#define for_each_hpd_pin(__pin) \
-	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
-
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
-- 
2.30.2

