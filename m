Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18179C70B73
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A463F10E692;
	Wed, 19 Nov 2025 18:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ieUaRsvr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78EB10E69C;
 Wed, 19 Nov 2025 18:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578435; x=1795114435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qngojn+r2T/jEv7ROznHqsuJQCs4lUJ/JyGlNTISthQ=;
 b=ieUaRsvrPwa3jNDD5HmZmULTNVtNS7gaGEK3ZY4w/mjkSkOamRuLyMkQ
 HOIcAWeiaxnNX+vHgsbo9BHzlEKzGZUtBrFBJG5MymRnchYAtUSFlSre9
 Q8KKPiNMgC5OkPs/5ykyiu1tTU2frnPyNFTtuL1r2WpHHasZqi4nV9bnV
 yF8JKQM1+aA6HbFDKGDH2bcB7D/OK5YtsI2eqP8yZ0pGLmSTS+MuksGDC
 C8+RxXMKF7+T+KUGEKGtC17UA/jxjiir0VwqYbpvklpVxYvfOQ3x0Hf2b
 laif7dS+VcM65QBDGC1a5HGlnLYwcCk09Isyd9JhwKzo1A2lj+8wKPSpr g==;
X-CSE-ConnectionGUID: kD9kCSzYTF+u0iB+eLGH9Q==
X-CSE-MsgGUID: UxQ6n2dCS9GLj6o7lsFy1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76991082"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76991082"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:54 -0800
X-CSE-ConnectionGUID: MHBS0WiHSFWYoDY6v8/iPA==
X-CSE-MsgGUID: Ifd6vtknQLSnFTQTYr9aTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="221782955"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 12/13] drm/i915: merge soc/intel_gmch.[ch] to
 display/intel_vga.c
Date: Wed, 19 Nov 2025 20:52:51 +0200
Message-ID: <b0f853ad7eae686738defa9e8f08a8848df8f226.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

The sole user of the remaining functions in intel_gmch.[ch] is in
intel_vga.c. Move everything there.

Since intel_gmch.c hasn't been part of xe, use a dummy function
relocated from xe_display_misc.c, with #ifdef. This is purely to keep
this change non-functional.

This allows us to remove soc/intel_gmch.[ch] from i915, compat
soc/intel_gmch.h from xe, and xe_display_misc.c from xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  4 --
 drivers/gpu/drm/i915/display/intel_vga.c      | 52 ++++++++++++++++-
 drivers/gpu/drm/i915/soc/intel_gmch.c         | 56 -------------------
 drivers/gpu/drm/i915/soc/intel_gmch.h         | 15 -----
 drivers/gpu/drm/xe/Makefile                   |  1 -
 .../xe/compat-i915-headers/soc/intel_gmch.h   |  6 --
 drivers/gpu/drm/xe/display/xe_display_misc.c  | 16 ------
 7 files changed, 50 insertions(+), 100 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
 delete mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_misc.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c591e5ba47f9..2ff8938b3a7c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -57,10 +57,6 @@ i915-y += \
 	vlv_iosf_sb.o \
 	vlv_suspend.o
 
-# core peripheral code
-i915-y += \
-	soc/intel_gmch.o
-
 # core library code
 i915-y += \
 	i915_memcpy.o \
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 6e125564db34..5e516c79e2f7 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -9,12 +9,12 @@
 
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
+#include <drm/intel/i915_drm.h>
 #include <video/vga.h>
 
-#include "soc/intel_gmch.h"
-
 #include "intel_de.h"
 #include "intel_display.h"
+#include "intel_display_types.h"
 #include "intel_vga.h"
 #include "intel_vga_regs.h"
 
@@ -95,6 +95,54 @@ void intel_vga_reset_io_mem(struct intel_display *display)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
+#ifdef I915
+static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
+{
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+	u16 gmch_ctrl;
+
+	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctrl)) {
+		drm_err(display->drm, "failed to read control word\n");
+		return -EIO;
+	}
+
+	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
+		return 0;
+
+	if (enable_decode)
+		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
+	else
+		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
+
+	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctrl)) {
+		drm_err(display->drm, "failed to write control word\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
+{
+	struct intel_display *display = to_intel_display(pdev);
+
+	intel_gmch_vga_set_state(display, enable_decode);
+
+	if (enable_decode)
+		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
+		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+	else
+		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
+}
+#else
+static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
+{
+	/* ToDo: Implement the actual handling of vga decode */
+	return 0;
+}
+#endif
+
 int intel_vga_register(struct intel_display *display)
 {
 
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
deleted file mode 100644
index 4e7abe056551..000000000000
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ /dev/null
@@ -1,56 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include <linux/pci.h>
-#include <linux/vgaarb.h>
-
-#include <drm/drm_print.h>
-#include <drm/intel/i915_drm.h>
-
-#include "../display/intel_display_core.h" /* FIXME */
-#include "../display/intel_display_types.h" /* FIXME */
-
-#include "intel_gmch.h"
-#include "intel_pci_config.h"
-
-static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
-{
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
-	u16 gmch_ctrl;
-
-	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctrl)) {
-		drm_err(display->drm, "failed to read control word\n");
-		return -EIO;
-	}
-
-	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
-		return 0;
-
-	if (enable_decode)
-		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
-	else
-		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
-
-	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctrl)) {
-		drm_err(display->drm, "failed to write control word\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-{
-	struct intel_display *display = to_intel_display(pdev);
-
-	intel_gmch_vga_set_state(display, enable_decode);
-
-	if (enable_decode)
-		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
-		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
-	else
-		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
-}
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
deleted file mode 100644
index bc3421ab5ba6..000000000000
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_GMCH_H__
-#define __INTEL_GMCH_H__
-
-#include <linux/types.h>
-
-struct pci_dev;
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
-
-#endif /* __INTEL_GMCH_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 9331212117a1..b848da79a4e1 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -206,7 +206,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
-	display/xe_display_misc.o \
 	display/xe_display_rpm.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
deleted file mode 100644
index 33c5257b3a71..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_gmch.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display_misc.c b/drivers/gpu/drm/xe/display/xe_display_misc.c
deleted file mode 100644
index 242c2ef4ca93..000000000000
--- a/drivers/gpu/drm/xe/display/xe_display_misc.c
+++ /dev/null
@@ -1,16 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "intel_display_types.h"
-
-struct pci_dev;
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-{
-	/* ToDo: Implement the actual handling of vga decode */
-	return 0;
-}
-- 
2.47.3

