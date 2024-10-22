Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC3D9A9EBD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B7E10E628;
	Tue, 22 Oct 2024 09:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RAC/QdR+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B607F10E641;
 Tue, 22 Oct 2024 09:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590132; x=1761126132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KngKkRWz9EDudOXrf58WXkvP/hhRL/CmbmTO4OHKE2w=;
 b=RAC/QdR+Po7J7YMXxP5RJwq1fDrLpCvXYL2O/X+njUpedfaO3dTLDRKI
 8rGWZ1CMiQiILPeTv6CjBb9LtV7DVnE5X9hQJKfQkeQVY7nO7dbzg82XN
 cy2w++vDLaPgQQ9V5l7IBolTRvEL+HFC83Eep1lx4wRwIAk3Ul2jI7cdf
 Rof7qH9YUc08/Q4Pmx+2kPwYWT9/PoAWBfDFslQ1mLB+xSwLk06+xTy/G
 Uxjq4I7buHsKT7HAP5xiGnDgnZxtTZQmD/JGitgQZsFAfGSnFbsC17QjL
 9p/PvwgzW/gzCQ/eWwIlXkVuUYUu3O4wwlbTf+xt8A9Q4iD0i9McWi5DY g==;
X-CSE-ConnectionGUID: 78415vQaT2KBjdkr/qp2XQ==
X-CSE-MsgGUID: LMLyZSsFTvmsqhfvoAlr4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28892694"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28892694"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:11 -0700
X-CSE-ConnectionGUID: teXHvdvQQGKRHj7f1K5XhA==
X-CSE-MsgGUID: 7cEwyO1LRAahGC8jyB2dHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80621071"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v2 2/3] drm/intel/pciids: rename i915_pciids.h to just pciids.h
Date: Tue, 22 Oct 2024 12:41:50 +0300
Message-Id: <835143845faa5310e4bb58405a8a0848392bbf06.1729590029.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729590029.git.jani.nikula@intel.com>
References: <cover.1729590029.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In preparation of sharing the PCI ID macros between i915 and xe, rename
i915_pciids.h to pciids.h.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Could be intel_pciids.h too, but it's already in include/drm/intel
subdirectory.
---
 arch/x86/kernel/early-quirks.c                      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
 drivers/gpu/drm/i915/intel_device_info.c            | 2 +-
 include/drm/intel/{i915_pciids.h => pciids.h}       | 6 +++---
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename include/drm/intel/{i915_pciids.h => pciids.h} (99%)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 29d1f9104e94..6b6f32f40cbe 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -18,7 +18,7 @@
 #include <linux/bcma/bcma_regs.h>
 #include <linux/platform_data/x86/apple.h>
 #include <drm/intel/i915_drm.h>
-#include <drm/intel/i915_pciids.h>
+#include <drm/intel/pciids.h>
 #include <asm/pci-direct.h>
 #include <asm/dma.h>
 #include <asm/io_apic.h>
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..1a52b0911407 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -3,7 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/intel/i915_pciids.h>
+#include <drm/intel/pciids.h>
 #include <drm/drm_color_mgmt.h>
 #include <linux/pci.h>
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index eaf8a098e1c5..21006c7f615c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -24,7 +24,7 @@
 
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
-#include <drm/intel/i915_pciids.h>
+#include <drm/intel/pciids.h>
 
 #include "display/intel_display_driver.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3c47c625993e..ff9500194d15 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -25,7 +25,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
-#include <drm/intel/i915_pciids.h>
+#include <drm/intel/pciids.h>
 
 #include "gt/intel_gt_regs.h"
 #include "i915_drv.h"
diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/pciids.h
similarity index 99%
rename from include/drm/intel/i915_pciids.h
rename to include/drm/intel/pciids.h
index 81d4dc5d9242..7632507af166 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/pciids.h
@@ -22,8 +22,8 @@
  * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  * DEALINGS IN THE SOFTWARE.
  */
-#ifndef _I915_PCIIDS_H
-#define _I915_PCIIDS_H
+#ifndef __PCIIDS_H__
+#define __PCIIDS_H__
 
 #ifdef __KERNEL__
 #define INTEL_VGA_DEVICE(_id, _info) { \
@@ -822,4 +822,4 @@
 	MACRO__(0xB0A1, ## __VA_ARGS__), \
 	MACRO__(0xB0A2, ## __VA_ARGS__)
 
-#endif /* _I915_PCIIDS_H */
+#endif /* __PCIIDS_H__ */
-- 
2.39.5

