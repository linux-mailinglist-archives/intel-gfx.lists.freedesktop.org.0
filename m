Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7EB94C0C5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A1510E76F;
	Thu,  8 Aug 2024 15:16:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+nQ44LD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAF010E76E;
 Thu,  8 Aug 2024 15:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130184; x=1754666184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eejZY0mpMsQ/55gtN2EVIruioAOBdXZkanYFkfq4WeQ=;
 b=Y+nQ44LD/fvmHW5xbO5xt0p5ft6s1KBzfwr3WM62lsqoZlj8PqaE9wiv
 jRj+UjiLtwdd81au1r2GUUDCCo6IJHG7JZe62awEBz4SihgrceTxEPki7
 9u/L4jNZrzKgSm4ou73TeegN1f18acGSz2g8Awr1r7rapTkLKcMw9P5A6
 7bQ83Ve1S0ASLOZpvsI5h55qm62ae/GsghtgRzG41MY3bx2Bjl5arf18y
 Xr5b/CPjOShynA2d31LisTT25QKZZL15keJVOiDHKDrDK7jjrIDSuk1uV
 TsutLriz8MtkvX/lmYnwjF24L1pLxWg/oW3EReUK2TXYjhQFotstkRF3N w==;
X-CSE-ConnectionGUID: 02cf9zB1Rm+VLPpzumLrpg==
X-CSE-MsgGUID: 9fhyA3BNRZ+BcEvNI07SfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667070"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667070"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:23 -0700
X-CSE-ConnectionGUID: QGiPBBkKSdOemoj+6VOgXQ==
X-CSE-MsgGUID: gUGrZvK8SDq/aZqHFYn9Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920021"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 05/10] drm/i915 & drm/xe: save struct drm_device to drvdata
Date: Thu,  8 Aug 2024 18:15:50 +0300
Message-Id: <4c95d75da7e80863940f0187fbb6966522ff55a8.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

In the future, the display code shall not have any idea about struct
xe_device or struct drm_i915_private, but will need to get at the struct
drm_device via drvdata. Store the struct drm_device pointer to drvdata
instead of the driver specific pointer.

Avoid passing NULL to container_of() via to_i915()/to_xe_device(). (It
does return NULL for NULL pointers when the offset happens to be 0, but
otherwise returns garbage pointers for NULL.)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c                | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                   | 8 ++++++--
 drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +++-
 drivers/gpu/drm/xe/xe_device.h                    | 8 ++++++--
 drivers/gpu/drm/xe/xe_pci.c                       | 2 +-
 6 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fb8e9c2fcea5..176c13c2e191 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -723,7 +723,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(i915))
 		return i915;
 
-	pci_set_drvdata(pdev, i915);
+	pci_set_drvdata(pdev, &i915->drm);
 
 	/* Device parameters start as a copy of module parameters. */
 	i915_params_copy(&i915->params, &i915_modparams);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 94f7f6cc444c..ce18704f500a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -365,12 +365,16 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 {
-	return dev_get_drvdata(kdev);
+	struct drm_device *drm = dev_get_drvdata(kdev);
+
+	return drm ? to_i915(drm) : NULL;
 }
 
 static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 {
-	return pci_get_drvdata(pdev);
+	struct drm_device *drm = pci_get_drvdata(pdev);
+
+	return drm ? to_i915(drm) : NULL;
 }
 
 static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 0bd29846873b..91794ca17a58 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
 		return NULL;
 	}
 
-	pci_set_drvdata(pdev, i915);
+	pci_set_drvdata(pdev, &i915->drm);
 
 	/* Device parameters start as a copy of module parameters. */
 	i915_params_copy(&i915->params, &i915_modparams);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 2feedddf1e40..766fba88a3c8 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -23,7 +23,9 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 {
-	return dev_get_drvdata(kdev);
+	struct drm_device *drm = dev_get_drvdata(kdev);
+
+	return drm ? to_i915(drm) : NULL;
 }
 
 #define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 2c96f1b2aafd..022876eebfd5 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -17,12 +17,16 @@ static inline struct xe_device *to_xe_device(const struct drm_device *dev)
 
 static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
 {
-	return dev_get_drvdata(kdev);
+	struct drm_device *drm = dev_get_drvdata(kdev);
+
+	return drm ? to_xe_device(drm) : NULL;
 }
 
 static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
 {
-	return pci_get_drvdata(pdev);
+	struct drm_device *drm = pci_get_drvdata(pdev);
+
+	return drm ? to_xe_device(drm) : NULL;
 }
 
 static inline struct xe_device *xe_device_const_cast(const struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 7bb811b4a057..f861b8cf931a 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -800,7 +800,7 @@ static int xe_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(xe))
 		return PTR_ERR(xe);
 
-	pci_set_drvdata(pdev, xe);
+	pci_set_drvdata(pdev, &xe->drm);
 
 	xe_pm_assert_unbounded_bridge(xe);
 	subplatform_desc = find_subplatform(xe, desc);
-- 
2.39.2

