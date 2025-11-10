Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1791AC490EC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 20:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7840710E489;
	Mon, 10 Nov 2025 19:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THK0O1T2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BE010E384;
 Mon, 10 Nov 2025 19:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762803115; x=1794339115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K0+jLncRRROTQwwhRggsFxuUyB83C0RXnUYYQJtD3wM=;
 b=THK0O1T2bZxumt+xmnryT4qlOZ2KidcxtgcKjhjkNd71ksQgxf1HtSIW
 nJI7t68Qtpz8lr0LzD39e62fXoEU48D/kdnRfDPFyXhrd1Hm6+bwQptSC
 6Cc7pafyOmj4rZagMko+Ka/Lcx0/oR70JfBjFlpzKLVhPg7kCp7HRyna3
 RPeZE1v//o/0gIzTaeGM+ne5awBy1FGW5v16TqGMNJWwvdbnWsAxGOFsH
 4CQIpaPA7+nkar5PwwrbM5ReqxPCPAioLFcekuy1V/Zx5ZXHlVmBMMrar
 6ZegUopYZH7tYn0Ni4+Dg30dQpRcaIHtdZdTP47QUyvYfcnv2ZMk+GBOJ A==;
X-CSE-ConnectionGUID: IoGn1d9xQCOtNdTWIH7n3A==
X-CSE-MsgGUID: 4o4DSlGwQVqbvIoED6d/3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64773345"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64773345"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:54 -0800
X-CSE-ConnectionGUID: aMJFub89TLO7wPqS5grvgw==
X-CSE-MsgGUID: dMvHa6G8Qcq/MknSfuBC4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193942153"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/4] drm/{i915,
 xe}/display: duplicate gen2 irq/error init/reset in display irq
Date: Mon, 10 Nov 2025 21:31:37 +0200
Message-ID: <3ad3b264e7d2c94ad2cf812ff67d7247b1911f2c.1762803004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762803004.git.jani.nikula@intel.com>
References: <cover.1762803004.git.jani.nikula@intel.com>
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

Duplicate gen2_irq_reset(), gen2_assert_iir_is_zero(), gen2_irq_init(),
gen2_error_reset(), and gen2_error_init() in intel_display_irq.c.

This allows us to drop the duplicates from xe, drop the display
dependency on i915_drv.h, and subsequently remove the compat i915_irq.h
header. Although duplication is undesirable in general, in this case the
local duplicates are the cleaner alternative.

There's a slight wrinkle in gen2_assert_iir_is_zero(). It uses
uncore->i915->drm. Leave it out for now in the interest of properly
passing in struct intel_display in a separate change.

Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 69 ++++++++++++++++-
 drivers/gpu/drm/xe/Makefile                   |  2 -
 .../gpu/drm/xe/compat-i915-headers/i915_irq.h |  6 --
 drivers/gpu/drm/xe/display/ext/i915_irq.c     | 75 -------------------
 4 files changed, 68 insertions(+), 84 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
 delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_irq.c

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 11bc47d22aa4..62f11fac47bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -7,7 +7,6 @@
 #include <drm/drm_vblank.h>
 #include <drm/intel/display_parent_interface.h>
 
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "icl_dsi_regs.h"
 #include "intel_crtc.h"
@@ -33,6 +32,74 @@
 #include "intel_psr_regs.h"
 #include "intel_uncore.h"
 
+static void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
+{
+	intel_uncore_write(uncore, regs.imr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.imr);
+
+	intel_uncore_write(uncore, regs.ier, 0);
+
+	/* IIR can theoretically queue up two events. Be paranoid. */
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+}
+
+/*
+ * We should clear IMR at preinstall/uninstall, and just check at postinstall.
+ */
+static void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
+{
+	u32 val = intel_uncore_read(uncore, reg);
+
+	if (val == 0)
+		return;
+
+#if 0	/* FIXME */
+	drm_WARN(&uncore->i915->drm, 1,
+		 "Interrupt register 0x%x is not zero: 0x%08x\n",
+		 i915_mmio_reg_offset(reg), val);
+#endif
+	intel_uncore_write(uncore, reg, 0xffffffff);
+	intel_uncore_posting_read(uncore, reg);
+	intel_uncore_write(uncore, reg, 0xffffffff);
+	intel_uncore_posting_read(uncore, reg);
+}
+
+static void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+			  u32 imr_val, u32 ier_val)
+{
+	gen2_assert_iir_is_zero(uncore, regs.iir);
+
+	intel_uncore_write(uncore, regs.ier, ier_val);
+	intel_uncore_write(uncore, regs.imr, imr_val);
+	intel_uncore_posting_read(uncore, regs.imr);
+}
+
+static void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
+{
+	intel_uncore_write(uncore, regs.emr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.emr);
+
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+}
+
+static void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
+			    u32 emr_val)
+{
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+
+	intel_uncore_write(uncore, regs.emr, emr_val);
+	intel_uncore_posting_read(uncore, regs.emr);
+}
+
 static void
 intel_display_irq_regs_init(struct intel_display *display, struct i915_irq_regs regs,
 			    u32 imr_val, u32 ier_val)
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 7b4ca591a4ae..3bf64fdcf93a 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -189,7 +189,6 @@ endif
 
 # i915 Display compat #defines and #includes
 subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
-	-I$(src)/display/ext \
 	-I$(src)/compat-i915-headers \
 	-I$(srctree)/drivers/gpu/drm/i915/display/ \
 	-Ddrm_i915_private=xe_device
@@ -206,7 +205,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 
 # Display code specific to xe
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	display/ext/i915_irq.o \
 	display/intel_bo.o \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
deleted file mode 100644
index 61707a07f91f..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/i915_irq.h"
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
deleted file mode 100644
index b198dd1988bb..000000000000
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ /dev/null
@@ -1,75 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "i915_irq.h"
-#include "i915_reg.h"
-#include "intel_uncore.h"
-
-void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
-{
-	intel_uncore_write(uncore, regs.imr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.imr);
-
-	intel_uncore_write(uncore, regs.ier, 0);
-
-	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
-	intel_uncore_write(uncore, regs.iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.iir);
-}
-
-/*
- * We should clear IMR at preinstall/uninstall, and just check at postinstall.
- */
-void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
-{
-	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
-	u32 val = intel_uncore_read(uncore, reg);
-
-	if (val == 0)
-		return;
-
-	drm_WARN(&xe->drm, 1,
-		 "Interrupt register 0x%x is not zero: 0x%08x\n",
-		 i915_mmio_reg_offset(reg), val);
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
-	intel_uncore_write(uncore, reg, 0xffffffff);
-	intel_uncore_posting_read(uncore, reg);
-}
-
-void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
-		   u32 imr_val, u32 ier_val)
-{
-	gen2_assert_iir_is_zero(uncore, regs.iir);
-
-	intel_uncore_write(uncore, regs.ier, ier_val);
-	intel_uncore_write(uncore, regs.imr, imr_val);
-	intel_uncore_posting_read(uncore, regs.imr);
-}
-
-void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
-{
-	intel_uncore_write(uncore, regs.emr, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.emr);
-
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-}
-
-void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
-		     u32 emr_val)
-{
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-	intel_uncore_write(uncore, regs.eir, 0xffffffff);
-	intel_uncore_posting_read(uncore, regs.eir);
-
-	intel_uncore_write(uncore, regs.emr, emr_val);
-	intel_uncore_posting_read(uncore, regs.emr);
-}
-- 
2.47.3

