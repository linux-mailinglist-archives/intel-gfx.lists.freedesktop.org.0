Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 911327AF3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 21:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8084710E42C;
	Tue, 26 Sep 2023 19:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E3A10E151
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695755633; x=1727291633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0xZLYVldXq1Q88aIaSlotaq48gXBjJDhRu5VL9EbL4o=;
 b=WmCaCxzjNsXl3x1vVFyBWD9OllqJRbV8Zp0y5rwg5fDK8WTP/DinIYuq
 bcN366OmyCsCL90lYKd70NQRcyKxa0YnwONKME+l36BOQm6NuTWIGMKMm
 AmH9OKHJJNcXNKqjIrPm2HkKO4vMJ5vMdV4u5OEemV+Kh9mFvllkcLBmi
 CQ8lFnj+NtAklOe/Ma6cccOhZi0Vso4c2jhihunvxQr6Y1/L7bDXAzFfn
 bB6jRr9uFUYww1qkP0zpn1VLiVaurDzRIrXq4HuTiiaJ5KOx2kHoyqdWZ
 cx8mKm7abqJ4WnUP+cqNjqYiGvKAFcutZfNDK7qAQJ3dBIb7fiSwXw4aa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="378928888"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="378928888"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 12:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="864506800"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="864506800"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmsmga002.fm.intel.com with ESMTP; 26 Sep 2023 12:13:51 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 00:50:54 +0530
Message-ID: <20230926192054.1359127-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3] drm/i915/display: Created exclusive version of vga
 decode setup
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

Some of the VGA functionality is not needed by the proposed
Intel Xe driver, while this will be utilized by i915.
Created a version of the function to be used exclusively by i915.
Xe will implement it's own respective version.

v2: Addressed Jani Nikula's review comments.

v3: Dropped a duplicate function (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 18 +-----------------
 drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
 drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 286a0bdd28c6..4b98833bfa8c 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -3,11 +3,9 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include <linux/pci.h>
 #include <linux/vgaarb.h>
 
 #include <video/vga.h>
-
 #include "soc/intel_gmch.h"
 
 #include "i915_drv.h"
@@ -99,20 +97,6 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-static unsigned int
-intel_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-{
-	struct drm_i915_private *i915 = pdev_to_i915(pdev);
-
-	intel_gmch_vga_set_state(i915, enable_decode);
-
-	if (enable_decode)
-		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
-		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
-	else
-		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
-}
-
 int intel_vga_register(struct drm_i915_private *i915)
 {
 
@@ -127,7 +111,7 @@ int intel_vga_register(struct drm_i915_private *i915)
 	 * then we do not take part in VGA arbitration and the
 	 * vga_client_register() fails with -ENODEV.
 	 */
-	ret = vga_client_register(pdev, intel_vga_set_decode);
+	ret = vga_client_register(pdev, intel_gmch_vga_set_decode);
 	if (ret && ret != -ENODEV)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 49c7fb16e934..f32e9f78770a 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -5,6 +5,7 @@
 
 #include <linux/pci.h>
 #include <linux/pnp.h>
+#include <linux/vgaarb.h>
 
 #include <drm/drm_managed.h>
 #include <drm/i915_drm.h>
@@ -167,3 +168,16 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 
 	return 0;
 }
+
+unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
+{
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+
+	intel_gmch_vga_set_state(i915, enable_decode);
+
+	if (enable_decode)
+		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
+		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+	else
+		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+}
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
index d0133eedc720..23be2d113afd 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -8,11 +8,13 @@
 
 #include <linux/types.h>
 
+struct pci_dev;
 struct drm_i915_private;
 
 int intel_gmch_bridge_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_setup(struct drm_i915_private *i915);
 void intel_gmch_bar_teardown(struct drm_i915_private *i915);
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
+unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.42.0

