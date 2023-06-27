Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB77F73FF6E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C28F10E308;
	Tue, 27 Jun 2023 15:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5144210E308
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878889; x=1719414889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6etgdD8bH9XGY0977xalyraZVsLERcpL02FH6I+Yug=;
 b=n6VkPfvBY3HRGHGJjTepcSwkNYQClUroz9eFjguva+kpKqFcorO/bqzA
 SOhr5rRAlfFEjN/oopA/AR9AQEX3T6VpBjRPhhnzNqLSw4f4wShinbGSW
 u21rKPylaTsamGJiyWEnL+b6XSynW1hqLoThwvPA1XgExi9hMU6jKe5FO
 IVwh4A4Lkj0nzMB0fQPusfJm0uEWh78ipBqj+2tU4Urzdh3Hqat4CgxVH
 KXDqI4/YOV9HIXy08plQ9Mg/w/z2kB5Z+XLRWcl/k2CJDr2TXhTWmrFKL
 9s392vP2AICti+uh8qE+F51flRV27jYvbKgYEYd47ZG/K90mvbWMwiGg/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="364147252"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="364147252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="840719790"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="840719790"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:14:02 +0300
Message-Id: <fc9ad69a0c7fa972380c654c3b80070ce2f4bf0f.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: move display device and
 runtime info to struct intel_display
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue moving all things display further into display files and
structures.

v2: Sort includes (Matt)

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 9 +++++++++
 drivers/gpu/drm/i915/i915_drv.h                   | 5 ++---
 drivers/gpu/drm/i915/intel_device_info.c          | 7 +++----
 drivers/gpu/drm/i915/intel_device_info.h          | 4 ----
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8d2243c71dd8..c37d2c4bbf76 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -17,6 +17,7 @@
 #include <drm/drm_modeset_lock.h>
 
 #include "intel_cdclk.h"
+#include "intel_display_device.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
@@ -429,6 +430,14 @@ struct intel_display {
 		u32 state;
 	} hti;
 
+	struct {
+		/* Access with DISPLAY_INFO() */
+		const struct intel_display_device_info *__device_info;
+
+		/* Access with DISPLAY_RUNTIME_INFO() */
+		struct intel_display_runtime_info __runtime_info;
+	} info;
+
 	struct {
 		bool false_color;
 	} ips;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 078720a52322..8947d1201298 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -205,7 +205,6 @@ struct drm_i915_private {
 
 	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
-	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */
 	struct intel_driver_caps caps;
 
 	struct i915_dsm dsm;
@@ -417,9 +416,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
 #define INTEL_INFO(i915)	(&(i915)->__info)
-#define DISPLAY_INFO(i915)	(INTEL_INFO(i915)->display)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->__display_runtime)
+#define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
 #define DRIVER_CAPS(i915)	(&(i915)->caps)
 
 #define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b93ef5fc26f1..0740922cd71f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -391,7 +391,6 @@ static const struct intel_display_device_info no_display = {};
  */
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
@@ -401,7 +400,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv)) {
 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
 						   DRIVER_ATOMIC);
-		info->display = &no_display;
+		dev_priv->display.info.__device_info = &no_display;
 	}
 
 	/* Disable nuclear pageflip by default on pre-g4x */
@@ -444,8 +443,8 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	info->display = intel_display_device_probe(i915, info->has_gmd_id,
-						   &ver, &rel, &step);
+	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
+								      &ver, &rel, &step);
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 81bfd64717cf..dbfe6443457b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -29,8 +29,6 @@
 
 #include "intel_step.h"
 
-#include "display/intel_display_device.h"
-
 #include "gt/intel_engine_types.h"
 #include "gt/intel_context_types.h"
 #include "gt/intel_sseu.h"
@@ -240,8 +238,6 @@ struct intel_device_info {
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
 
-	const struct intel_display_device_info *display;
-
 	/*
 	 * Initial runtime info. Do not access outside of i915_driver_create().
 	 */
-- 
2.39.2

