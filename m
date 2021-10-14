Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A9642D723
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 12:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2716EC68;
	Thu, 14 Oct 2021 10:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83A66EC67
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 10:29:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="288517875"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="288517875"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="481209744"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 Oct 2021 13:28:58 +0300
Message-Id: <183423ff23b2d259e4a197e74daf6bcd750bfe14.1634207064.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634207064.git.jani.nikula@intel.com>
References: <cover.1634207064.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: rename intel_sideband.[ch] to
 intel_sbi.[ch]
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

Now that intel_sideband.[ch] has been decluttered, it's pure lpt/wpt
iosf sideband. Let's call it intel_sbi, following the function naming.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 .../i915/{intel_sideband.c => intel_sbi.c}    | 27 +++----------------
 .../i915/{intel_sideband.h => intel_sbi.h}    |  9 ++++---
 5 files changed, 13 insertions(+), 29 deletions(-)
 rename drivers/gpu/drm/i915/{intel_sideband.c => intel_sbi.c} (56%)
 rename drivers/gpu/drm/i915/{intel_sideband.h => intel_sbi.h} (75%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e44c72533a8c..660bb03de6fc 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -51,7 +51,7 @@ i915-y += i915_drv.o \
 	  intel_pm.o \
 	  intel_region_ttm.o \
 	  intel_runtime_pm.o \
-	  intel_sideband.o \
+	  intel_sbi.o \
 	  intel_step.o \
 	  intel_uncore.o \
 	  intel_wakeref.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b070cdcb3674..ff598b6cd953 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -103,7 +103,7 @@
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
-#include "intel_sideband.h"
+#include "intel_sbi.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 51d6f810e69b..dd2cf0c59921 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -8,7 +8,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
-#include "intel_sideband.h"
+#include "intel_sbi.h"
 
 static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, bool state)
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sbi.c
similarity index 56%
rename from drivers/gpu/drm/i915/intel_sideband.c
rename to drivers/gpu/drm/i915/intel_sbi.c
index 1d30273b35c1..5ba8490a31e6 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sbi.c
@@ -1,31 +1,12 @@
+// SPDX-License-Identifier: MIT
 /*
- * Copyright © 2013 Intel Corporation
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the "Software"),
- * to deal in the Software without restriction, including without limitation
- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
- * and/or sell copies of the Software, and to permit persons to whom the
- * Software is furnished to do so, subject to the following conditions:
- *
- * The above copyright notice and this permission notice (including the next
- * paragraph) shall be included in all copies or substantial portions of the
- * Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
- * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
- * IN THE SOFTWARE.
+ * Copyright © 2013-2021 Intel Corporation
  *
+ * LPT/WPT IOSF sideband.
  */
 
-#include <asm/iosf_mbi.h>
-
 #include "i915_drv.h"
-#include "intel_sideband.h"
+#include "intel_sbi.h"
 
 /* SBI access */
 static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
diff --git a/drivers/gpu/drm/i915/intel_sideband.h b/drivers/gpu/drm/i915/intel_sbi.h
similarity index 75%
rename from drivers/gpu/drm/i915/intel_sideband.h
rename to drivers/gpu/drm/i915/intel_sbi.h
index 9d937576f507..f5a862210454 100644
--- a/drivers/gpu/drm/i915/intel_sideband.h
+++ b/drivers/gpu/drm/i915/intel_sbi.h
@@ -1,7 +1,10 @@
 /* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2013-2021 Intel Corporation
+ */
 
-#ifndef _INTEL_SIDEBAND_H_
-#define _INTEL_SIDEBAND_H_
+#ifndef _INTEL_SBI_H_
+#define _INTEL_SBI_H_
 
 #include <linux/types.h>
 
@@ -17,4 +20,4 @@ u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
 void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
 		     enum intel_sbi_destination destination);
 
-#endif /* _INTEL_SIDEBAND_H */
+#endif /* _INTEL_SBI_H_ */
-- 
2.30.2

