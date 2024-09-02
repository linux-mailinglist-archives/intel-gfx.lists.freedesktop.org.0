Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F8968CB7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 19:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3E010E378;
	Mon,  2 Sep 2024 17:15:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5QcRNCI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3AB10E37B;
 Mon,  2 Sep 2024 17:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725297305; x=1756833305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IeidCHfIHl5X+TaTyopOJnbvQ3+sMIvW989DhbB7eGU=;
 b=N5QcRNCI0cKZFAReFJgySa0KwmpH7V8EferOF2F3stc99Wwl3Hju49MZ
 Catmohs0vmqMGc/RgTBAe1TYeK24bTZnUXDDPSiLCziIo/fAVjVA3cw8P
 q4dAt9lbHVJKaNaspySOIjzkGbAumtzi3TuVJSd4LzoaWrFsbiwZoHOr0
 eRJM6COoTxYfJy7N6dcxe9CW00SVBrNrwZq3PNUk9Jt/zWpBFEsO1M+f+
 eSmTxBsgGjPTOT+OoXSTlx5gij8R9asnEH+om60fexKZHG1+p517ATBd+
 yyo8ZXk1H5tCEeQUsrJpnlaBBzxNXmSSCpJ4oYCow+MB+Yqe6wybNb3ED Q==;
X-CSE-ConnectionGUID: GWRnkTU4TruB3+LL9Kdr5g==
X-CSE-MsgGUID: eeHI9frPTuyyVtqAIcBjpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23451225"
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="23451225"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 10:15:04 -0700
X-CSE-ConnectionGUID: nALlJE0pSdinsfTgaNHyNg==
X-CSE-MsgGUID: tx9tHnSsS6ydMgDeEIl9/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="102107324"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 10:15:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 7/8] drm/intel/pciids: rename i915_pciids.h to just pciids.h
Date: Mon,  2 Sep 2024 20:14:06 +0300
Message-Id: <b963446627e513ff7240e53fa1acde693514ec70.1725297097.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725297097.git.jani.nikula@intel.com>
References: <cover.1725297097.git.jani.nikula@intel.com>
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

In preparation of sharing the PCI ID macros between i915 and xe, rename
i915_pciids.h to pciids.h.

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
index 408c76852495..ef783648e4c3 100644
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
index 617f411feb8c..4cfe339a805b 100644
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
index 25ef0a17efbe..3c4ce82002a9 100644
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
@@ -809,4 +809,4 @@
 	MACRO__(0xE20D, ## __VA_ARGS__), \
 	MACRO__(0xE212, ## __VA_ARGS__)
 
-#endif /* _I915_PCIIDS_H */
+#endif /* __PCIIDS_H__ */
-- 
2.39.2

