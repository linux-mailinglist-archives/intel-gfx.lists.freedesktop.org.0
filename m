Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35956DD86B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 12:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFBFF10E2AE;
	Tue, 11 Apr 2023 10:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1246610E2AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 10:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681210610; x=1712746610;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9JtqWb4Dit8P5dQ4Tt6H0XfdznwBi/yyjfkicKzgo7s=;
 b=Ho73AwgYb4/FtYwr9T+/iemQ/tBMYUM92pHccTpDMj5T/vIPOKpr4TKr
 FCRG+VFZyUytYDPRwRyYMzpAf04GjCX564x0VtaCxfdj31eV3X5eJGowQ
 cJcm8HDo+HiYjVqU+DEFyg7MyL8W6kWDBFmV+B2TqTplmzw2SMt3DigtD
 C7FX1pfuXyAZZrgGEaNDaf5N2Yf1AppZl8hELzpocaavdETaZnrJaK+21
 c/7pOVP41wOeP/qVR/bIC+FPAGinSdS9VDDwmzjEbpzjJ3Nkb1B+DmXhF
 0UC3vZ1cqjWGVdSpA2ubxtJEGPHQydYQBLC0QhjgaHxMuRr5LGtKOEdS4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="332271179"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="332271179"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 03:56:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="753095886"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="753095886"
Received: from pcarabas-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.44.227])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 03:56:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 13:56:43 +0300
Message-Id: <20230411105643.292416-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND] drm/i915: hide mkwrite_device_info() better
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

The goal has been to just make device info a pointer to static const
data, i.e. the static const structs in i915_pci.c. See [1]. However,
there were issues with intel_device_info_runtime_init() clearing the
display sub-struct of device info on the !HAS_DISPLAY() path, which
consequently disables a lot of display functionality, like it
should. Looks like we'd have to cover all those paths, and maybe
sprinkle HAS_DISPLAY() checks in them, which we haven't gotten around
to.

In the mean time, hide mkwrite_device_info() better within
intel_device_info.c by adding a intel_device_info_driver_create() for
the very early initialization of the device info and initial runtime
info. This also lets us declutter i915_drv.h a bit, and stops promoting
mkwrite_device_info() as something that could be used.

[1] https://lore.kernel.org/r/a0422f0a8ac055f65b7922bcd3119b180a41e79e.1655712106.git.jani.nikula@intel.com

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c       | 12 ++--------
 drivers/gpu/drm/i915/i915_drv.h          |  7 ------
 drivers/gpu/drm/i915/intel_device_info.c | 29 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  2 ++
 4 files changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 93fdc40d724f..2980ccdef6cd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -720,8 +720,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
-	struct intel_device_info *device_info;
-	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
@@ -734,14 +732,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Device parameters start as a copy of module parameters. */
 	i915_params_copy(&i915->params, &i915_modparams);
 
-	/* Setup the write-once "constant" device info */
-	device_info = mkwrite_device_info(i915);
-	memcpy(device_info, match_info, sizeof(*device_info));
-
-	/* Initialize initial runtime info from static const data and pdev. */
-	runtime = RUNTIME_INFO(i915);
-	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
-	runtime->device_id = pdev->device;
+	/* Set up device info and initial runtime info. */
+	intel_device_info_driver_create(i915, pdev->device, match_info);
 
 	return i915;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e771fdc3099c..fe7eeafe9cff 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -931,11 +931,4 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
-/* intel_device_info.c */
-static inline struct intel_device_info *
-mkwrite_device_info(struct drm_i915_private *dev_priv)
-{
-	return (struct intel_device_info *)INTEL_INFO(dev_priv);
-}
-
 #endif
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index fc5cd14adfcc..4e23be2995bf 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -381,6 +381,13 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
 	intel_device_info_subplatform_init(i915);
 }
 
+/* FIXME: Remove this, and make device info a const pointer to rodata. */
+static struct intel_device_info *
+mkwrite_device_info(struct drm_i915_private *i915)
+{
+	return (struct intel_device_info *)INTEL_INFO(i915);
+}
+
 /**
  * intel_device_info_runtime_init - initialize runtime info
  * @dev_priv: the i915 device
@@ -548,6 +555,28 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;
 }
 
+/*
+ * Set up device info and initial runtime info at driver create.
+ *
+ * Note: i915 is only an allocated blob of memory at this point.
+ */
+void intel_device_info_driver_create(struct drm_i915_private *i915,
+				     u16 device_id,
+				     const struct intel_device_info *match_info)
+{
+	struct intel_device_info *info;
+	struct intel_runtime_info *runtime;
+
+	/* Setup the write-once "constant" device info */
+	info = mkwrite_device_info(i915);
+	memcpy(info, match_info, sizeof(*info));
+
+	/* Initialize initial runtime info from static const data and pdev. */
+	runtime = RUNTIME_INFO(i915);
+	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
+	runtime->device_id = device_id;
+}
+
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p)
 {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 080a4557899b..f032f2500f50 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -317,6 +317,8 @@ struct intel_driver_caps {
 
 const char *intel_platform_name(enum intel_platform platform);
 
+void intel_device_info_driver_create(struct drm_i915_private *i915, u16 device_id,
+				     const struct intel_device_info *match_info);
 void intel_device_info_runtime_init_early(struct drm_i915_private *dev_priv);
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
 
-- 
2.39.2

