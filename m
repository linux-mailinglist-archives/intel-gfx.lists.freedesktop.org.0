Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3368C9648F7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C611A10E6DE;
	Thu, 29 Aug 2024 14:48:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Twi8A5mK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E39610E6DE;
 Thu, 29 Aug 2024 14:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942891; x=1756478891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bKri/2zhpMYG/jvbif/WaEA2VpoNrt8b1d7Xqjuq+ps=;
 b=Twi8A5mKRgoM0CAfSjy9YZiYM6iBGqfDAPQL8Rgss3mGKO6g94io3WVK
 KkFUFZ7bHN6gVFk2DjhWNQ8FlBtY8oBn0dwQfUOa5wM/rRQ8QNdIOOAtk
 sUTAOfsV4QqQ27yaoh6b/2855bWgzUfjmKeEoYY4V3btYejkWtoP/P6i7
 HvTPZwM0K3sQ6D3WQpgOOKNjYUYUtqNu+l12fxsk0H1ho2eUQ231Kdc40
 kEg2bPvBAZ5/Hw8amfUg/ekgvNrCgb3rAUDMgIQRuLzcBlze5QlL2Tvmx
 mT6Z2YS4YggJ2LWFLHV2dOxcSfYISGmLDLxwDOUE8pARwagVK0FCo20bA w==;
X-CSE-ConnectionGUID: sA3yas1jQtqCgf5BylT4gw==
X-CSE-MsgGUID: jx3F7ZhQS4KmfYSgxUZDYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23059230"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23059230"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:11 -0700
X-CSE-ConnectionGUID: fvfB0oWhRB6DpUialfOnYA==
X-CSE-MsgGUID: 2VXC2htoTYGtYHCjCqaVpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63923355"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 1/6] drm/i915 & drm/xe: save struct drm_device to drvdata
Date: Thu, 29 Aug 2024 17:47:43 +0300
Message-Id: <946805b32e38d4785880cc7857e01e6a309126a9.1724942754.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
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
index ccdd2983cfb5..71ca02f7df9d 100644
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
index d772cbe15fec..39f6614a0a99 100644
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
index b7b12b20e390..becb6a7ec9d7 100644
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
index f052c06a2d2f..894f04770454 100644
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
index 330cd2d785bc..c05ca61787be 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -798,7 +798,7 @@ static int xe_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(xe))
 		return PTR_ERR(xe);
 
-	pci_set_drvdata(pdev, xe);
+	pci_set_drvdata(pdev, &xe->drm);
 
 	xe_pm_assert_unbounded_bridge(xe);
 	subplatform_desc = find_subplatform(xe, desc);
-- 
2.39.2

