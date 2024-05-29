Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8422D8D3DAC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D0110E4F9;
	Wed, 29 May 2024 17:48:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCtcEOcx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69C410EAE7;
 Wed, 29 May 2024 17:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004928; x=1748540928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2RWnQtIcemRfep1+1UjiO92xyQtrrxFmzFEXOwX0XsQ=;
 b=PCtcEOcxxHoTCJC9MCspw6gepkdbu/87VupK3EW8WNvu7H1EcgSKVXxH
 CThlZK8n6q5VN1xZaxbd87wa9NaF68OiuE37LS230JaWnQ74HZw+v+gc4
 f0lTttiPwW2rVhXWxQp8C5zD2nP5cYCr93CrGBgevojDMWaEtvvlDd1FQ
 t8597lfxLujFjUSf5POi03ANhzF9/JyrfTU1mrNqFV5xIDQNpFGKqyPdW
 +BPEViOzEdlvBNDNKaHuaP+o1Niwp9pADlZiEFyGBEOYDYiNjFv24cVgi
 u6MbJkl+GPFy5y32JoXGinr/SRkFhUZ9FU8OJfx2kWfMjo4noDJyst26v g==;
X-CSE-ConnectionGUID: SqbHrIH1QcS2jOZmbDrqUA==
X-CSE-MsgGUID: W0Qxo+iKRXS50nFmW6t8kQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="16378428"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="16378428"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:48 -0700
X-CSE-ConnectionGUID: FZ0dgEU7TwaP0dH4lQR2Kw==
X-CSE-MsgGUID: CKDB2SGYSlWVfDXdz5eh6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66393637"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 08/10] drm/xe/display: move compat runtime pm stubs to the
 correct file
Date: Wed, 29 May 2024 20:48:12 +0300
Message-Id: <edefb6ef02920528eacdf01b828cfc45ce55e061.1717004739.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
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

Move things that belong to intel_runtime_pm.h to the correct place. Add
missing header guards while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 48 -----------------
 .../xe/compat-i915-headers/intel_runtime_pm.h | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 60544633ddf7..fb37da4850c5 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -14,11 +14,9 @@
 
 #include "soc/intel_pch.h"
 #include "xe_device.h"
-#include "xe_pm.h"
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
 #include "intel_runtime_pm.h"
-#include <linux/pm_runtime.h>
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 {
@@ -113,58 +111,12 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
-#include "intel_wakeref.h"
-
-static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	return xe_pm_runtime_resume_and_get(xe);
-}
-
-static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	return xe_pm_runtime_get_if_in_use(xe);
-}
-
-static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	xe_pm_runtime_get_noresume(xe);
-	return true;
-}
-
-static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	xe_pm_runtime_put(xe);
-}
-
-static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
-{
-	if (wakeref)
-		intel_runtime_pm_put_unchecked(pm);
-}
-
-#define intel_runtime_pm_get_raw intel_runtime_pm_get
-#define intel_runtime_pm_put_raw intel_runtime_pm_put
-#define assert_rpm_wakelock_held(x) do { } while (0)
-#define assert_rpm_raw_wakeref_held(x) do { } while (0)
-
 #define I915_PRIORITY_DISPLAY 0
 struct i915_sched_attr {
 	int priority;
 };
 #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
 
-#define with_intel_runtime_pm(rpm, wf) \
-	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
-
 #define pdev_to_i915 pdev_to_xe_device
 #define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
index 89da3cc62f39..8c7b315aa8ac 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
@@ -3,7 +3,12 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#ifndef __INTEL_RUNTIME_PM_H__
+#define __INTEL_RUNTIME_PM_H__
+
 #include "intel_wakeref.h"
+#include "xe_device_types.h"
+#include "xe_pm.h"
 
 #define intel_runtime_pm xe_runtime_pm
 
@@ -14,3 +19,49 @@ static inline void disable_rpm_wakeref_asserts(void *rpm)
 static inline void enable_rpm_wakeref_asserts(void *rpm)
 {
 }
+
+static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	return xe_pm_runtime_resume_and_get(xe);
+}
+
+static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	return xe_pm_runtime_get_if_in_use(xe);
+}
+
+static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	xe_pm_runtime_get_noresume(xe);
+	return true;
+}
+
+static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	xe_pm_runtime_put(xe);
+}
+
+static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
+{
+	if (wakeref)
+		intel_runtime_pm_put_unchecked(pm);
+}
+
+#define intel_runtime_pm_get_raw intel_runtime_pm_get
+#define intel_runtime_pm_put_raw intel_runtime_pm_put
+#define assert_rpm_wakelock_held(x) do { } while (0)
+#define assert_rpm_raw_wakeref_held(x) do { } while (0)
+
+#define with_intel_runtime_pm(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+
+#endif
-- 
2.39.2

