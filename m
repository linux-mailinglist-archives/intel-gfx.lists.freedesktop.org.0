Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBCF9C3C1D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECE310E47B;
	Mon, 11 Nov 2024 10:35:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cz3uCRCt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7516C10E47D;
 Mon, 11 Nov 2024 10:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321325; x=1762857325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bw1+qkM0FLCjgEL03KD88/+CoI6kAYYur4CzwC/66iQ=;
 b=cz3uCRCtod+mSLOd5nPbGh9OHwE8n6X2eRby5kLnFNLhxCJR8G0boRv/
 HPUZH87Rg7ieD11c+ISTzv1DaqDZ9NDmjrP8PxDI0oAeHaguwfgWOAiFh
 rIUeFTh23Z1jlP00y/HvKATaU3M3T8yrLTnFGma5nxoOgjDHabK16Q+T4
 Z+PgUTPqrPgNoqvejvWWP9iABgiME3UgJjMLN90EVkB2CCzItCHNjijjG
 EJc0s7a6uDFp4U0xcJ9hPvrJLO/wOfgHuPNpe/tjmDoDd9DnTjn3uprsw
 C06iJwHFbtYnb0/7f7UIX1sngDhBdeW9h+NFQaQD0GO1JYmNar152kKdI w==;
X-CSE-ConnectionGUID: mCku54fgQ7SoSaQLuq6Gog==
X-CSE-MsgGUID: +Ek6W11LRPigIMV9QWZRuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="42507791"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="42507791"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:35:25 -0800
X-CSE-ConnectionGUID: 1ukJmRAoRuaj7ojZiV//pQ==
X-CSE-MsgGUID: ArzcQw3nRCqoBmT4SG/OlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="87009827"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:35:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [CI v3 14/15] drm/i915/display: pass struct pci_dev * to
 intel_display_device_probe()
Date: Mon, 11 Nov 2024 12:34:03 +0200
Message-Id: <ab4e960e3fff46cbeba185882b1e554f0ccd5877.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
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

Convert intel_display_device_probe() to accept struct pci_dev * instead
of struct drm_i915_private *. Return struct intel_display * in
preparation of allocating the memory of it later.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c                  |  2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c    |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c             |  5 +++--
 5 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 45a80b358aa0..41df7a8fd32e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -16,6 +16,7 @@
 #include "intel_display_params.h"
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
+#include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_step.h"
 
@@ -1569,10 +1570,9 @@ static void display_platforms_or(struct intel_display_platforms *dst,
 	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
 }
 
-void intel_display_device_probe(struct drm_i915_private *i915)
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
 {
-	struct intel_display *display = &i915->display;
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct intel_display *display = to_intel_display(pdev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
 	const struct platform_desc *desc;
@@ -1649,10 +1649,12 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		 DISPLAY_RUNTIME_INFO(display)->ip.rel,
 		 step != STEP_NONE ? intel_step_name(step) : "N/A");
 
-	return;
+	return display;
 
 no_display:
 	DISPLAY_INFO(display) = &no_display;
+
+	return display;
 }
 
 void intel_display_device_remove(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3773d3cf7692..0dd48737804d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -12,9 +12,9 @@
 #include "intel_display_conversion.h"
 #include "intel_display_limits.h"
 
-struct drm_i915_private;
 struct drm_printer;
 struct intel_display;
+struct pci_dev;
 
 /*
  * Display platforms and subplatforms. Keep platforms in display version based
@@ -290,7 +290,7 @@ struct intel_display_device_info {
 };
 
 bool intel_display_device_enabled(struct intel_display *display);
-void intel_display_device_probe(struct drm_i915_private *i915);
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
 void intel_display_device_remove(struct intel_display *display);
 void intel_display_device_info_runtime_init(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3d775f15f9ef..65c5286c1ab7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -736,7 +736,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	intel_display_device_probe(i915);
+	intel_display_device_probe(pdev);
 
 	return i915;
 }
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index ae57eb03dfca..a77e5b26542c 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -180,7 +180,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, &mock_info);
 
-	intel_display_device_probe(i915);
+	intel_display_device_probe(pdev);
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 9b8acf2074e0..60ff48604e3b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -502,13 +502,14 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 
 int xe_display_probe(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
+	struct intel_display *display;
 	int err;
 
 	if (!xe->info.probe_display)
 		goto no_display;
 
-	intel_display_device_probe(xe);
+	display = intel_display_device_probe(pdev);
 
 	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
 	if (err)
-- 
2.39.5

