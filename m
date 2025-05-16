Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD525AB9BCB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E1510EA95;
	Fri, 16 May 2025 12:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBO+L5IO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6CD10EA96;
 Fri, 16 May 2025 12:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397848; x=1778933848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y403mq3oUHrfHXgfsxK8l2SXzuXQnYhcZYeSRRb9NUk=;
 b=fBO+L5IOnmCmNIQ0pNL+SPc5VfcOO3KDqd8dasK7gFxtazw+h/AJlWJG
 lBCIzcWITkE3dwPvF5inazpSbNkVqo+2FdVVB8vdbQ9wZO0Wh84HWla/f
 2tgWCphl2FUykeU9LPC1OBCls8jqx5Zypi3Tr24tKt3MMWAvSRvNX1bS2
 IVUeqr26SmB0ezDqyCDz5G4kT8W+2I680nZjIs0InlZi5pFByHeo6hVZL
 5z2Sh1eeWQosveAAGriBm0vacFuF6t+XRWTNnvjwhy2122UbNODrJJYzz
 h8sIK03Y4imD88S3lQCD/nxd2I+FdAcjYGXywIoii0I4jLY9MxTZEJEMJ A==;
X-CSE-ConnectionGUID: vmOooWTKQ2m7C48ceEnpCQ==
X-CSE-MsgGUID: BsDuaqxmS+a7RRwtGIO9lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766554"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766554"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:28 -0700
X-CSE-ConnectionGUID: 6eyXaRgIRruXC/NB83DPLA==
X-CSE-MsgGUID: jze6PBj2RCOvj1EkGK4IdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568579"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/xe/display: move xe->display initialization to
 xe_display_probe()
Date: Fri, 16 May 2025 15:16:58 +0300
Message-Id: <6c3075739d84cecea258d686c3ef38455a61191c.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
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

The future goal is to have intel_display_device_probe() create struct
intel_display. As the first step, postpone xe->display initialization
right before that call. This is the same location as in i915.

There's a subtle functional change here: xe->display will now be
initialized only if xe->info.probe_display.

The xe_display_create() function becomes empty, and can be removed. Move
its documentation to xe_display_probe()

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 33 +++++++++++--------------
 drivers/gpu/drm/xe/display/xe_display.h |  4 ---
 drivers/gpu/drm/xe/xe_device.c          |  4 ---
 3 files changed, 14 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b0f5624177bd..c35444637620 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -83,25 +83,6 @@ static void unset_display_features(struct xe_device *xe)
 	xe->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
 }
 
-/**
- * xe_display_create - create display struct
- * @xe: XE device instance
- *
- * Initialize all fields used by the display part.
- *
- * TODO: once everything can be inside a single struct, make the struct opaque
- * to the rest of xe and return it to be xe->display.
- *
- * Returns: 0 on success
- */
-int xe_display_create(struct xe_device *xe)
-{
-	/* TODO: Allocate display dynamically. */
-	xe->display = &xe->__display;
-
-	return 0;
-}
-
 static void xe_display_fini_early(void *arg)
 {
 	struct xe_device *xe = arg;
@@ -524,6 +505,17 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 	intel_display_device_remove(display);
 }
 
+/**
+ * xe_display_probe - probe display and create display struct
+ * @xe: XE device instance
+ *
+ * Initialize all fields used by the display part.
+ *
+ * TODO: once everything can be inside a single struct, make the struct opaque
+ * to the rest of xe and return it to be xe->display.
+ *
+ * Returns: 0 on success
+ */
 int xe_display_probe(struct xe_device *xe)
 {
 	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
@@ -533,6 +525,9 @@ int xe_display_probe(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		goto no_display;
 
+	/* TODO: Allocate display dynamically. */
+	xe->display = &xe->__display;
+
 	display = intel_display_device_probe(pdev);
 
 	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 46e14f8dee28..e533aa4750bc 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -15,8 +15,6 @@ struct drm_driver;
 bool xe_display_driver_probe_defer(struct pci_dev *pdev);
 void xe_display_driver_set_hooks(struct drm_driver *driver);
 
-int xe_display_create(struct xe_device *xe);
-
 int xe_display_probe(struct xe_device *xe);
 
 int xe_display_init_early(struct xe_device *xe);
@@ -46,8 +44,6 @@ static inline int xe_display_driver_probe_defer(struct pci_dev *pdev) { return 0
 static inline void xe_display_driver_set_hooks(struct drm_driver *driver) { }
 static inline void xe_display_driver_remove(struct xe_device *xe) {}
 
-static inline int xe_display_create(struct xe_device *xe) { return 0; }
-
 static inline int xe_display_probe(struct xe_device *xe) { return 0; }
 
 static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index d4b6e623aa48..660b0c5126dc 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -491,10 +491,6 @@ struct xe_device *xe_device_create(struct pci_dev *pdev,
 	if (err)
 		goto err;
 
-	err = xe_display_create(xe);
-	if (WARN_ON(err))
-		goto err;
-
 	return xe;
 
 err:
-- 
2.39.5

