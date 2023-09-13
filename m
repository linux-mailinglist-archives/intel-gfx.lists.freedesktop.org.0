Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C93B79E482
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 12:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB3010E0A1;
	Wed, 13 Sep 2023 10:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E747710E0A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 10:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694599491; x=1726135491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kR6IaWN/xCtwhxFSo/xvOTO1ouNvfYl6PiwttNKWsqo=;
 b=JUbOIPWO1p+A7lxXbL4kHL54XT+1kHbPIYNiGb9Ht7wDKUez4xaJBcxI
 y+AbQdSOmZD7D0ARHKBQafoRYflhWfEs7wacyEzH9VlnehVM+5ECzjhw1
 hmh86YuLfmt/XhbYctU6ZQJFaIv0FwpEnABTpSocmFB1pP4OHDHgE2e9G
 rqfNCgg7niUWl5cvskMOWXiCOqgVYH+aVjMyPbHMqL72olxgqpXnTShhL
 bT5Vj2SQkW79a5lQ+OnuULsDAx7GTVjMXbv/31bL37bB8o4OKpMdj+zlk
 tP9racZZg9MA3Jz3iHx5jcDjBxIJnGmdtT99UAX4tAEChu1uB4N+LeDcj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363648525"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="363648525"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="773409621"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="773409621"
Received: from seanpaul-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.45.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:04:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 13:04:30 +0300
Message-Id: <20230913100430.3433969-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove runtime suspended boolean from
 intel_runtime_pm struct
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's not necessary to carry separate suspended status information in
intel_runtime_pm struct as this information is already in underlying device
structure. Remove it and use pm_runtime_suspended() to obtain suspended
status information when needed.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                 | 3 ---
 drivers/gpu/drm/i915/i915_gpu_error.c              | 2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c            | 1 -
 drivers/gpu/drm/i915/intel_runtime_pm.h            | 4 ++--
 5 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 68cf5e6b0b46..889bb26009a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -216,7 +216,7 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 	struct i915_power_well *power_well;
 	bool is_enabled;
 
-	if (dev_priv->runtime_pm.suspended)
+	if (pm_runtime_suspended(dev_priv->drm.dev))
 		return false;
 
 	is_enabled = true;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..cd98ee740976 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1569,8 +1569,6 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	rpm->suspended = true;
-
 	/*
 	 * FIXME: We really should find a document that references the arguments
 	 * used below!
@@ -1621,7 +1619,6 @@ static int intel_runtime_resume(struct device *kdev)
 	disable_rpm_wakeref_asserts(rpm);
 
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
-	rpm->suspended = false;
 
 	root_pdev = pcie_find_root_port(pdev);
 	if (root_pdev)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4008bb09fdb5..a60bab177c55 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1972,7 +1972,7 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	struct drm_i915_private *i915 = error->i915;
 
 	error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
-	error->suspended = i915->runtime_pm.suspended;
+	error->suspended = pm_runtime_suspended(i915->drm.dev);
 
 	error->iommu = i915_vtd_active(i915);
 	error->reset_count = i915_reset_count(&i915->gpu_error);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6d8e5e5c0cba..8743153fad87 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -652,7 +652,6 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 
 	rpm->kdev = kdev;
 	rpm->available = HAS_RUNTIME_PM(i915);
-	rpm->suspended = false;
 	atomic_set(&rpm->wakeref_count, 0);
 
 	init_intel_runtime_pm_wakeref(rpm);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 764b183ae452..f79cda7a2503 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_RUNTIME_PM_H__
 #define __INTEL_RUNTIME_PM_H__
 
+#include <linux/pm_runtime.h>
 #include <linux/types.h>
 
 #include "intel_wakeref.h"
@@ -43,7 +44,6 @@ struct intel_runtime_pm {
 	atomic_t wakeref_count;
 	struct device *kdev; /* points to i915->drm.dev */
 	bool available;
-	bool suspended;
 	bool irqs_enabled;
 	bool no_wakeref_tracking;
 
@@ -110,7 +110,7 @@ intel_rpm_wakelock_count(int wakeref_count)
 static inline void
 assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
 {
-	WARN_ONCE(rpm->suspended,
+	WARN_ONCE(pm_runtime_suspended(rpm->kdev),
 		  "Device suspended during HW access\n");
 }
 
-- 
2.34.1

