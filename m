Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8D6A3E931
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 01:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6642510E9F9;
	Fri, 21 Feb 2025 00:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9/DLuEo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663CC10E1D2;
 Fri, 21 Feb 2025 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740098340; x=1771634340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mG4nzyPFSZQYSuTaQlsfgFmUg68zNqckZ/XGFwVIReQ=;
 b=U9/DLuEooPa/6L6JM6tDcdjWtOLzcrOKW1z4+j5VC/+A1me0QmJHMB/5
 J2WK2vVVCbxgopCTNGdheAwVlmSYXXzCk0MzNTF9iY4dC2rQA3tsruQ05
 LPZYfTMdCsDOwEKnn3pXRT107tpNFILQq5jSnDzI7UlK/QXI8PttaNBWq
 o/tBIVUpeibtvrZF6WUBfzzXdJXcScSmUmmPpBElAnTM+wIkbYlKNCsxc
 kTlzXQcG/rFOtu2dPDWu3XAbq/QlxNd/wQiAOZg49jWLeBtcK7fbPdxan
 M9gd65KcegcKK2JAQmtqy7eu8Ljmz+2unEYNRVeV+8v6tx03EBrhye2aU A==;
X-CSE-ConnectionGUID: Q+r0Lu56SMCOOhRWf5Pw+A==
X-CSE-MsgGUID: mD1lHQGhT6SKQLRtuc5PYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44688689"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="44688689"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:39:00 -0800
X-CSE-ConnectionGUID: FklTV5skTGuuztDNHxgQUQ==
X-CSE-MsgGUID: Fm0rukoMR4qd3kzaqdMG0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120446846"
Received: from mdroper-desk1.fm.intel.com ([10.1.39.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Subject: [PATCH 3/4] drm/xe: Drop usage of TIMESTAMP_OVERRIDE
Date: Thu, 20 Feb 2025 16:38:47 -0800
Message-ID: <20250221003843.443559-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250221003843.443559-6-matthew.d.roper@intel.com>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
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

On pre-Xe2 platforms, one of the approaches to initialize the GT command
streamer frequency is to use the display reference clock.  That's no
longer relevant from Xe2 onward (i.e., all of the platforms where Xe is
officially supported).  Furthermore, use of TIMESTAMP_OVERRIDE to obtain
the display reference clock is unnecessarily roundabout; the display
driver already has a more reliable approach to obtain this value.  Let's
use the display driver's existing logic to determine the proper display
reference clock in the rare cases where the hardware indicates we should
do this.

The one problem that arises here is if the Xe driver is run on an
unsupported platform (i.e., pre-Xe2), CONFIG_DRM_XE_DISPLAY disabled
(meaning we're not expecting to touch display hardware at all), and the
platform has the rare CTC_MODE[1] setting indicating that display
reference clock should be used as the GT CS refclk.  If all of these
conditions are true, the hardcoded 38.4 MHz value will still be correct
for DG2 and MTL platforms, but there's a chance that we might not have
the right value on the older Xe_LP platforms if we're trying not to
touch the display hardware at all.

Bspec: 62395
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c |  6 ++++++
 drivers/gpu/drm/xe/display/xe_display.h |  4 ++++
 drivers/gpu/drm/xe/xe_gt_clock.c        | 28 ++++++++-----------------
 3 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 02a413a07382..e35d58079f0d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -17,6 +17,7 @@
 #include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
+#include "intel_cdclk.h"
 #include "intel_display.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
@@ -548,3 +549,8 @@ int xe_display_probe(struct xe_device *xe)
 	unset_display_features(xe);
 	return 0;
 }
+
+u32 xe_display_get_refclk(struct xe_device *xe)
+{
+	return intel_display_get_refclk(&xe->display);
+}
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 685dc74402fb..b918f5d6b53a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -41,6 +41,8 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe);
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
+u32 xe_display_get_refclk(struct xe_device *xe);
+
 #else
 
 static inline int xe_display_driver_probe_defer(struct pci_dev *pdev) { return 0; }
@@ -72,5 +74,7 @@ static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
 
+static u32 xe_display_get_refclk(struct xe_device *xe) { return 38400; }
+
 #endif /* CONFIG_DRM_XE_DISPLAY */
 #endif /* _XE_DISPLAY_H_ */
diff --git a/drivers/gpu/drm/xe/xe_gt_clock.c b/drivers/gpu/drm/xe/xe_gt_clock.c
index cc2ae159298e..b61f944a7b03 100644
--- a/drivers/gpu/drm/xe/xe_gt_clock.c
+++ b/drivers/gpu/drm/xe/xe_gt_clock.c
@@ -7,6 +7,7 @@
 
 #include "xe_gt_clock.h"
 
+#include "display/xe_display.h"
 #include "regs/xe_gt_regs.h"
 #include "regs/xe_regs.h"
 #include "xe_assert.h"
@@ -15,22 +16,6 @@
 #include "xe_macros.h"
 #include "xe_mmio.h"
 
-static u32 read_reference_ts_freq(struct xe_gt *gt)
-{
-	u32 ts_override = xe_mmio_read32(&gt->mmio, TIMESTAMP_OVERRIDE);
-	u32 base_freq, frac_freq;
-
-	base_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK,
-				  ts_override) + 1;
-	base_freq *= 1000000;
-
-	frac_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK,
-				  ts_override);
-	frac_freq = 1000000 / (frac_freq + 1);
-
-	return base_freq + frac_freq;
-}
-
 static u32 get_crystal_clock_freq(u32 rpm_config_reg)
 {
 	const u32 f19_2_mhz = 19200000;
@@ -57,14 +42,19 @@ static u32 get_crystal_clock_freq(u32 rpm_config_reg)
 
 int xe_gt_clock_init(struct xe_gt *gt)
 {
+	struct xe_device *xe = gt_to_xe(gt);
 	u32 ctc_reg = xe_mmio_read32(&gt->mmio, CTC_MODE);
 	u32 freq = 0;
 
 	/* Assuming gen11+ so assert this assumption is correct */
-	xe_gt_assert(gt, GRAPHICS_VER(gt_to_xe(gt)) >= 11);
+	xe_gt_assert(gt, GRAPHICS_VER(xe) >= 11);
 
-	if (ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
-		freq = read_reference_ts_freq(gt);
+	/*
+	 * Use of the display reference clock to determine GT CS frequency
+	 * is only relevant to pre-Xe2 platforms.
+	 */
+	if (GRAPHICS_VER(xe) < 20 && ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
+		freq = xe_display_get_refclk(xe);
 	} else {
 		u32 c0 = xe_mmio_read32(&gt->mmio, RPM_CONFIG0);
 
-- 
2.48.1

