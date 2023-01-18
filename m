Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE04E671B4B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 12:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C484210E1C5;
	Wed, 18 Jan 2023 11:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9E710E1C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 11:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674043075; x=1705579075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wAs59py09S+fqp+sw92zzCfa3pwurGdruhg0CCjo7K0=;
 b=UwMpw9ErtUo85ebTyyHjEejWBBl7hqP2nIA3nJc4zIzgeMqZkoNx8ONa
 f4QaTmC1VBulUBWa+/1mMLWg6ZfWHSpKVV+pq9wQNRJR9uzW45/4khh3E
 N+SFlehbAvwVdFKeB5jqPrQxPAUeAg6ur/mS98+L51QL6Xc7RJuZWHKJe
 dntRSL224wwYqxPH60sQBLD171WEwYTMPls+xSFRCY5zZPldkhORzZ+sb
 uA7ZCQnGIKYbimktnhUGtIEEIIFxTfQ0Kwc/MNk8nRyCpaynIVFBXfiSk
 kVvUO3Sl5MGI8lMDL5k52p/3IZIhG3sbknzLZVMA82CvqyBrOk80wYSrr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="304646983"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304646983"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 03:57:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="723054103"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="723054103"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 03:57:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 13:57:49 +0200
Message-Id: <20230118115749.3293888-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: hide mkwrite_device_info() better
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
index c1e427ba57ae..e8f84789a9af 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -851,8 +851,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
-	struct intel_device_info *device_info;
-	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
@@ -865,14 +863,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
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
index 2ed3cb7e38d7..8ef044308ce4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -965,11 +965,4 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 05e90d09b208..7fa7ed6b3f70 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -368,6 +368,13 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
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
@@ -529,6 +536,28 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
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
index d588e5fd2eea..c6e1d5eba0c2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -316,6 +316,8 @@ struct intel_driver_caps {
 
 const char *intel_platform_name(enum intel_platform platform);
 
+void intel_device_info_driver_create(struct drm_i915_private *i915, u16 device_id,
+				     const struct intel_device_info *match_info);
 void intel_device_info_runtime_init_early(struct drm_i915_private *dev_priv);
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
 
-- 
2.34.1

