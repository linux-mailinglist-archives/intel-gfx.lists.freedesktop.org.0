Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768F464F48
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEED72D9A;
	Wed,  1 Dec 2021 13:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7169D72D9A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:57:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="299849816"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="299849816"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="596333315"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:10 +0200
Message-Id: <9f882eff78cdc6b28c18e73f5e53f57e413240dc.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/10] drm/i915: move enum hpd_pin to
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

