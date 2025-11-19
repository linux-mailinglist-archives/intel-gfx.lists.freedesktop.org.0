Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CEEC70B70
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0784710E694;
	Wed, 19 Nov 2025 18:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igDHIwRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38C610E694;
 Wed, 19 Nov 2025 18:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578430; x=1795114430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IbuLlASBtY96aLJD/ejljWsjF3V4JiDR4nAHc5Rjy/8=;
 b=igDHIwRhAkAlogCFfWCgHwuqMladsZIS3G6XpgyN9NJcRF3yOgBwrYbx
 5W2ID8z7i4uDfe8akAK6bdqC1Ju3c7Yuvx2xCnuHnx1iZFSEptxg7Wkf7
 mFnSrKDfiUIBugKseybr90vmcx9WwSsIc+ouXDRbluF5tLkGDFfeIsmMB
 hnRnxKUgqvnAAV5T7GfNJMgcBam89T8Q11yIkjnYX7Jf4ClhOE9QEiRC3
 jyflXRqeMzTQadrzrONQSUpEZwhW4YlV74aQj6L8M9xzapql4TcLW8Ter
 T1gNGF7pRR0uIoYym0f3Dg9LA1QTbwEKlWw5w67q7/T21M8b0IFrDkTay w==;
X-CSE-ConnectionGUID: Yvlx1Ks4QKWgwTFl41PKKQ==
X-CSE-MsgGUID: uTky8Y27RbC+c+v3rs0ZgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65672419"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65672419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:49 -0800
X-CSE-ConnectionGUID: FaRcJwQUTkqZTgouazLx7A==
X-CSE-MsgGUID: /aIPZolwRQulyAw7R3lwAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196279816"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 11/13] drm/i915/gmch: convert intel_gmch.c to struct
 intel_display
Date: Wed, 19 Nov 2025 20:52:50 +0200
Message-ID: <a4b317656eef0781d4f53ae337083fb05ce602bc.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

Convert intel_gmch.[ch] to struct intel_display. Remove the final
dependency on struct drm_i915_private and i915_drv.h. This is in
preparation of moving the code under display/.

intel_gmch_vga_set_state() is only used internally, make it static while
at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_gmch.c | 13 ++++++-------
 drivers/gpu/drm/i915/soc/intel_gmch.h |  2 --
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index d43b5d89cae7..4e7abe056551 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -10,20 +10,19 @@
 #include <drm/intel/i915_drm.h>
 
 #include "../display/intel_display_core.h" /* FIXME */
+#include "../display/intel_display_types.h" /* FIXME */
 
-#include "i915_drv.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
 
-int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
+static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
-	struct intel_display *display = i915->display;
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
 	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to read control word\n");
+		drm_err(display->drm, "failed to read control word\n");
 		return -EIO;
 	}
 
@@ -36,7 +35,7 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 
 	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to write control word\n");
+		drm_err(display->drm, "failed to write control word\n");
 		return -EIO;
 	}
 
@@ -45,9 +44,9 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
 {
-	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct intel_display *display = to_intel_display(pdev);
 
-	intel_gmch_vga_set_state(i915, enable_decode);
+	intel_gmch_vga_set_state(display, enable_decode);
 
 	if (enable_decode)
 		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
index 907e1ae921e0..bc3421ab5ba6 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -9,9 +9,7 @@
 #include <linux/types.h>
 
 struct pci_dev;
-struct drm_i915_private;
 
-int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.47.3

