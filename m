Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96161AC08FD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 11:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EFF10EEE1;
	Thu, 22 May 2025 09:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ExM9HNFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7546F10EE8A;
 Thu, 22 May 2025 09:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747907336; x=1779443336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FMYP2YJhaYUqjT0Khkvh8LUESIk6yx3I/PyCgf3DeUA=;
 b=ExM9HNFNSZFYyA4Ev6gDP0tVGhgEkhheiuTdgbCsYbVCobF5ehjCcbi+
 C1RCNxNnMqPxMsHPrlb0VlAr9/f1P33fOVMyX7k9ItAC+cO0pXUo239Hl
 QZR658mcASdN0HaB2J5Cv1bd26ZyXeQ2alkR2atBGyduJtw9d3tHuiRq4
 XeiYQsQocYQPdW7wZAjHI6dPFRLbdlq8eV3OaFa6JpHPuGtY6odxhobhY
 juYXDY6d3L4rhurGN/7kAK+oIzuBF/324Tt8MUDWSCDCdtpGfDGrMBTgX
 R7zRsFpNZDYAJT0AWeZMumXkjVbuiqrB2C+kNfglk0IxHVd8XETBJ8rSS w==;
X-CSE-ConnectionGUID: iOQMgtTQSEqBg0cZiRxgDg==
X-CSE-MsgGUID: 02Lcx1OpSu+hRjHAzGyYkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="50025557"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="50025557"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:48:56 -0700
X-CSE-ConnectionGUID: S2w0Q5f2Rn2YehlObD7QZA==
X-CSE-MsgGUID: qXjIewSnQ7Cm0QvZ3P4S3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141044305"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:48:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v2 1/3] drm/i915/display: allocate struct intel_display
 dynamically
Date: Thu, 22 May 2025 12:48:42 +0300
Message-Id: <8cd526a177061cddf71db59bd0901bd1a24e77be.1747907216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747907216.git.jani.nikula@intel.com>
References: <cover.1747907216.git.jani.nikula@intel.com>
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

Allocate struct intel_display dynamically in
intel_display_device_probe() and free in intel_display_device_remove().

v2: Remove duplicate intel_display_device_remove() on error path (Lucas)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 10 +++++++++-
 drivers/gpu/drm/i915/i915_driver.c                  | 13 +++++++------
 drivers/gpu/drm/i915/i915_drv.h                     |  1 -
 drivers/gpu/drm/i915/selftests/mock_gem_device.c    | 11 ++++++++---
 drivers/gpu/drm/xe/display/xe_display.c             |  7 ++++---
 drivers/gpu/drm/xe/xe_device_types.h                |  1 -
 6 files changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 90d714598664..1d8c2036d967 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1621,13 +1621,17 @@ static void display_platforms_or(struct intel_display_platforms *dst,
 
 struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
 {
-	struct intel_display *display = to_intel_display(pdev);
+	struct intel_display *display;
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
 	const struct platform_desc *desc;
 	const struct subplatform_desc *subdesc;
 	enum intel_step step;
 
+	display = kzalloc(sizeof(*display), GFP_KERNEL);
+	if (!display)
+		return ERR_PTR(-ENOMEM);
+
 	/* Add drm device backpointer as early as possible. */
 	display->drm = pci_get_drvdata(pdev);
 
@@ -1708,7 +1712,11 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
 
 void intel_display_device_remove(struct intel_display *display)
 {
+	if (!display)
+		return;
+
 	intel_display_params_free(&display->params);
+	kfree(display);
 }
 
 static void __intel_display_device_info_runtime_init(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 950b7ad8d675..d33b0eb83a4f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -293,6 +293,8 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	intel_sbi_fini(dev_priv);
 
 	i915_params_free(&dev_priv->params);
+
+	intel_display_device_remove(display);
 }
 
 /**
@@ -735,6 +737,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
 	struct drm_i915_private *i915;
+	struct intel_display *display;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
 				  struct drm_i915_private, drm);
@@ -749,10 +752,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	/* TODO: Allocate display dynamically. */
-	i915->display = &i915->__display;
+	display = intel_display_device_probe(pdev);
+	if (IS_ERR(display))
+		return ERR_CAST(display);
 
-	intel_display_device_probe(pdev);
+	i915->display = display;
 
 	return i915;
 }
@@ -911,7 +915,6 @@ void i915_driver_remove(struct drm_i915_private *i915)
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t wakeref;
 
@@ -934,8 +937,6 @@ static void i915_driver_release(struct drm_device *dev)
 	intel_runtime_pm_driver_release(rpm);
 
 	i915_driver_late_release(dev_priv);
-
-	intel_display_device_remove(display);
 }
 
 static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0841988c4a67..fd0274ec9c2c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -178,7 +178,6 @@ struct drm_i915_private {
 	struct drm_device drm;
 
 	struct intel_display *display;
-	struct intel_display __display; /* Transitional. Do not use directly. */
 
 	/* FIXME: Device release actions should all be moved to drmm_ */
 	bool do_release;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 0ea12c68cedb..dab2b71a2a8f 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -141,6 +141,7 @@ struct drm_i915_private *mock_gem_device(void)
 	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
 #endif
 	struct drm_i915_private *i915;
+	struct intel_display *display;
 	struct pci_dev *pdev;
 	int ret;
 
@@ -180,10 +181,11 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, &mock_info);
 
-	/* TODO: Allocate display dynamically. */
-	i915->display = &i915->__display;
+	display = intel_display_device_probe(pdev);
+	if (IS_ERR(display))
+		goto err_device;
 
-	intel_display_device_probe(pdev);
+	i915->display = display;
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
@@ -260,6 +262,7 @@ struct drm_i915_private *mock_gem_device(void)
 	intel_gt_driver_late_release_all(i915);
 	intel_memory_regions_driver_release(i915);
 	drm_mode_config_cleanup(&i915->drm);
+err_device:
 	mock_destroy_device(i915);
 
 	return NULL;
@@ -269,6 +272,8 @@ void mock_destroy_device(struct drm_i915_private *i915)
 {
 	struct device *dev = i915->drm.dev;
 
+	intel_display_device_remove(i915->display);
+
 	devres_release_group(dev, NULL);
 	put_device(dev);
 }
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 1e59b6dd2c3b..db7ef8737e1d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -529,15 +529,16 @@ int xe_display_probe(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		goto no_display;
 
-	/* TODO: Allocate display dynamically. */
-	xe->display = &xe->__display;
-
 	display = intel_display_device_probe(pdev);
+	if (IS_ERR(display))
+		return PTR_ERR(display);
 
 	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
 	if (err)
 		return err;
 
+	xe->display = display;
+
 	if (has_display(xe))
 		return 0;
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 902b2e30b3b9..7659222703d2 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -593,7 +593,6 @@ struct xe_device {
 	 * migrating to the right sub-structs
 	 */
 	struct intel_display *display;
-	struct intel_display __display; /* Transitional. Do not use directly. */
 
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
-- 
2.39.5

