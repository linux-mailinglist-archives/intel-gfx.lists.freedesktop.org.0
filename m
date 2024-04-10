Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8908489E8DE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 06:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44DC113109;
	Wed, 10 Apr 2024 04:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLVfaLc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2169113109
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 04:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712723344; x=1744259344;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1ffGdjGmdxD8ansAghTXiQv0BCLsrxGle1X5havjKt8=;
 b=BLVfaLc+iyX35a/+iDGr8k8lJhRqFpm70U6zmGzCOaBYdBLNN5F7Gcqj
 9lu9s3gAzmoZvSHHujim1UdsObYQOXM4qgilJHT4uqTno94L7+W1guVa1
 tPV1OX5y8V/ytJ2BR18oaOK1WJkLwKgnMKuei4VOgm9/YTmRiknj3Vc+h
 GYxx6Bf0HeZMCZpwl6aHNrY5Yk5uFp9ihOlYB/gOYo0xWhoDJf8WGnhtO
 toaLMBtEMsfBuKKE8IfMKMmihZehjd2MjceyEgPPnHEHSQrgYWGN9fKUT
 wG4hLS4K4lvZtuk+IDguf4gQpGy5Aw5BCQpDUpeQplAACUSFqXqC4EGET g==;
X-CSE-ConnectionGUID: TnxzBsGOSvepF6UV4twHBQ==
X-CSE-MsgGUID: CAJEuq1uTn2hSSXUeBg/yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7923454"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7923454"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 21:29:03 -0700
X-CSE-ConnectionGUID: 36R3TewWRw+vvdle/uN4rw==
X-CSE-MsgGUID: uH4NICFVTruAZc6C3vW5Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="24911581"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 21:29:03 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH] drm/i915: Don't enable hwmon for selftests
Date: Tue,  9 Apr 2024 21:28:55 -0700
Message-ID: <20240410042855.130262-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
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

There are no hwmon selftests so there is no need to enable hwmon for
selftests. So enable hwmon only for real driver load.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9ee902d5b72c..6fa6d2c8109f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -94,6 +94,7 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
+#include "i915_selftest.h"
 #include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
@@ -589,6 +590,15 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 		pci_disable_msi(pdev);
 }
 
+static bool is_selftest(void)
+{
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
+#else
+	return false;
+#endif
+}
+
 /**
  * i915_driver_register - register the driver with the rest of the system
  * @dev_priv: device private
@@ -624,7 +634,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_pxp_debugfs_register(dev_priv->pxp);
 
-	i915_hwmon_register(dev_priv);
+	if (!is_selftest())
+		i915_hwmon_register(dev_priv);
 
 	intel_display_driver_register(dev_priv);
 
@@ -660,7 +671,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_unregister(gt);
 
-	i915_hwmon_unregister(dev_priv);
+	if (!is_selftest())
+		i915_hwmon_unregister(dev_priv);
 
 	i915_perf_unregister(dev_priv);
 	i915_pmu_unregister(dev_priv);
-- 
2.41.0

