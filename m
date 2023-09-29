Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014997B2DBE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 10:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7CB10E58B;
	Fri, 29 Sep 2023 08:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96F10E58B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 08:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695975820; x=1727511820;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LtHonzyhyUT4OUSjs8lMb9gxChXwrFCg9WKRMlTZRLQ=;
 b=TG4/aejQA6eTdwxyV8+MD2GmH3XoM65YFdPDBqgct+d5ek6seT2ErcAH
 KK77N29elAzpgxNjRn+wexAverVvqIWiRwSpz/IoVkrX1NGP341Iv4cXW
 QBkxjiLOCqQbFg4FEAZTrTNDaVZjoikstF/NrvL9in/6i9XVSmID2jQUc
 h1CHIukVNCBDdjln0W8zK6aVIyFAvpyPsYMhz4WwLVeaOrjNe0Pj/cu21
 M7uW6dQXieN7PrbrovjIlG5mycR4aHxNgaNAhUNcIYVp74h8CJ+chlBlw
 1EPcpVAktKYin9BjIJmuMXpdAHre7Zj4cxsE/qi0N7Lf8OXxII/eSHflA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="386115000"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="386115000"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 00:36:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080838405"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="1080838405"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmsmga005.fm.intel.com with ESMTP; 29 Sep 2023 00:36:02 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:13:06 +0530
Message-ID: <20230929074306.1533859-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v4] drm/i915/display: Created exclusive version of vga
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

Current vga arbiter implementation in i915 needs a re-design.
The current approach would cause real problems if anyone actually
needs to talk another GPU using legacy VGA resources.

The main issue is that X becomes a slideshow if it thinks there
are multiple GPUs that have VGA decoding enabled as it insists
on adjusting the VGA routing pretty much for every little operation
involving any of the GPUs.

The cleanup will be planned for i915. Meanwhile to focus on Xe
upstreaming and have a cleaner separation, the said functionality
is being moved to a different file exclusive for i915. Xe driver
will re-use rest of the display code from i915.

v2: Addressed Jani Nikula's review comments.

v3: Dropped a duplicate function (Jani)

v4: Updated commit message with reasoning as sugested by Ville.

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

