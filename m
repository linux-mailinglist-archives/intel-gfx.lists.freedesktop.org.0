Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101DAAAC531
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19EA10E69D;
	Tue,  6 May 2025 13:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaLt27Me";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634E010E69F;
 Tue,  6 May 2025 13:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536843; x=1778072843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zje2vHyQ/644G1DNPbVw0lNj6dcQgjJLFQOZDKahUgw=;
 b=RaLt27Me1IRVULRbTTxGO6kskyD2CEjUAw/TNFXc4SuHLvchYQI9oyaG
 wqaS2YWVfXEXqTOJv1CjJXDgpLEoDzma+L+K/IUKZVdTA1FI6nafVWDwD
 IzsKG/klqNZJM0Vv++9RwcRmgZdHp1pPCCab3wZxOZwY0Dpq6xN3jh4aT
 SB9cxjQuumpO4A5MmkTgqQa0AjEqyM4HNROWxOUdymvCcdnS9Apcuqy0P
 keZ/fR+x7z6yz1epSuctgMiPgRAAki05XM+VEEAFFNVmIPjEGf9fCGwBr
 nkoHu37e7N9nMm5ha21moG7Hyf+FbNpIXoZU3QhXIY4HkhmuKx5R47uZz Q==;
X-CSE-ConnectionGUID: op5wJBsjQY6lLLEsgtOqig==
X-CSE-MsgGUID: Smvw7Y0eTVK1GIHiKhsztg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112399"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112399"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:23 -0700
X-CSE-ConnectionGUID: 6u/3zUOZTDC0yvuLwokouA==
X-CSE-MsgGUID: eWzWyYHESxeg/IrGI3XozA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588384"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 7/8] drm/i915/rps: refactor display rps support
Date: Tue,  6 May 2025 16:06:49 +0300
Message-Id: <ef2a46dc8f30b72282494f54e98cb5fed7523b58.1746536745.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Make the gt rps code and display irq code interact via
intel_display_rps.[ch], instead of direct access. Add no-op static
inline stubs for xe instead of having a separate build unit doing
nothing. All of this clarifies the interfaces between i915 core and
display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  5 ++--
 .../gpu/drm/i915/display/intel_display_rps.c  | 27 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rps.h  | 24 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.c           | 10 +++----
 drivers/gpu/drm/xe/Makefile                   |  1 -
 .../drm/xe/compat-i915-headers/gt/intel_rps.h | 11 --------
 drivers/gpu/drm/xe/display/xe_display_rps.c   | 17 ------------
 7 files changed, 56 insertions(+), 39 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rps.c

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0d72964694ce..264ddeba121b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_vblank.h>
 
-#include "gt/intel_rps.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -15,6 +14,7 @@
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_rpm.h"
+#include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dmc_wl.h"
@@ -876,7 +876,6 @@ static void ilk_gtt_fault_irq_handler(struct intel_display *display)
 
 void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 {
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
 
@@ -923,7 +922,7 @@ void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 	}
 
 	if (DISPLAY_VER(display) == 5 && de_iir & DE_PCU_EVENT)
-		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
+		ilk_display_rps_irq_handler(display);
 }
 
 void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 4074a1879828..941bff5a5eb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -8,6 +8,8 @@
 
 #include "gt/intel_rps.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_display_irq.h"
 #include "intel_display_rps.h"
 #include "intel_display_types.h"
 
@@ -81,3 +83,28 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
 	state->rps_interactive = interactive;
 }
+
+void ilk_display_rps_enable(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	spin_lock(&i915->irq_lock);
+	ilk_enable_display_irq(display, DE_PCU_EVENT);
+	spin_unlock(&i915->irq_lock);
+}
+
+void ilk_display_rps_disable(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	spin_lock(&i915->irq_lock);
+	ilk_disable_display_irq(display, DE_PCU_EVENT);
+	spin_unlock(&i915->irq_lock);
+}
+
+void ilk_display_rps_irq_handler(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	gen5_rps_irq_handler(&to_gt(i915)->rps);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
index 556891edb2dd..183d154f2c7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.h
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
@@ -13,10 +13,34 @@ struct drm_crtc;
 struct intel_atomic_state;
 struct intel_display;
 
+#ifdef I915
 void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 					  struct dma_fence *fence);
 void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive);
+void ilk_display_rps_enable(struct intel_display *display);
+void ilk_display_rps_disable(struct intel_display *display);
+void ilk_display_rps_irq_handler(struct intel_display *display);
+#else
+static inline void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
+							struct dma_fence *fence)
+{
+}
+static inline void intel_display_rps_mark_interactive(struct intel_display *display,
+						      struct intel_atomic_state *state,
+						      bool interactive)
+{
+}
+static inline void ilk_display_rps_enable(struct intel_display *display)
+{
+}
+static inline void ilk_display_rps_disable(struct intel_display *display)
+{
+}
+static inline void ilk_display_rps_irq_handler(struct intel_display *display)
+{
+}
+#endif
 
 #endif /* __INTEL_DISPLAY_RPS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b609e3aa2122..5abc5fcc2514 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -8,7 +8,7 @@
 #include <drm/intel/i915_drm.h>
 
 #include "display/intel_display.h"
-#include "display/intel_display_irq.h"
+#include "display/intel_display_rps.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -608,9 +608,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 	rps->ips.last_count2 = intel_uncore_read(uncore, GFXEC);
 	rps->ips.last_time2 = ktime_get_raw_ns();
 
-	spin_lock(&i915->irq_lock);
-	ilk_enable_display_irq(display, DE_PCU_EVENT);
-	spin_unlock(&i915->irq_lock);
+	ilk_display_rps_enable(display);
 
 	spin_unlock_irq(&mchdev_lock);
 
@@ -628,9 +626,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
 
 	spin_lock_irq(&mchdev_lock);
 
-	spin_lock(&i915->irq_lock);
-	ilk_disable_display_irq(display, DE_PCU_EVENT);
-	spin_unlock(&i915->irq_lock);
+	ilk_display_rps_disable(display);
 
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 3ecac0a38b82..e4bf484d4121 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -187,7 +187,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_display.o \
 	display/xe_display_misc.o \
 	display/xe_display_rpm.o \
-	display/xe_display_rps.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
deleted file mode 100644
index 21fec9cc837c..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_RPS_H__
-#define __INTEL_RPS_H__
-
-#define gen5_rps_irq_handler(x) ({})
-
-#endif /* __INTEL_RPS_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display_rps.c b/drivers/gpu/drm/xe/display/xe_display_rps.c
deleted file mode 100644
index fa616f9688a5..000000000000
--- a/drivers/gpu/drm/xe/display/xe_display_rps.c
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "intel_display_rps.h"
-
-void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
-					  struct dma_fence *fence)
-{
-}
-
-void intel_display_rps_mark_interactive(struct intel_display *display,
-					struct intel_atomic_state *state,
-					bool interactive)
-{
-}
-- 
2.39.5

