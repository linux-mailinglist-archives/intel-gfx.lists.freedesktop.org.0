Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C2095F69E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFAA10E23A;
	Mon, 26 Aug 2024 16:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBsppErA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5B710E243;
 Mon, 26 Aug 2024 16:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689923; x=1756225923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H3BX5tsV9jNV4jKln8ogekw7f9E+lfIXa3VwTe6sT2A=;
 b=gBsppErABNIWvSx49x8JlkDTKB3gb8+sj49Jzj8TLEjp+EI6EpPfZYTt
 k+HETQpy3nm2PYUdm06j/5ojs6W4x1rYNqtTNc3pRrjcjqxLh0+umzjdD
 1Uh1coTZfQMKSSzWzeDgHu5uk8FCtAvGjxSIM/FCuU8+yiZGYMUR5Y+HZ
 /uW/FCl8eeYoQBdRXcPE2TT5WImBj0tYlnJeP957vYeAQA1CQmx/2IZbC
 oD43V60b5CnFdR8EQyXZFCuTCDYw97kohtEH7iCax/8wWF0mGXuoLshvW
 YLLEMb0VcTWYkXPJpeAUqRWKz80KkYaXxDzDWNRN3dsBH13E6sn5zCS2e A==;
X-CSE-ConnectionGUID: JFNXpwQTSxmvSLqb6mKggg==
X-CSE-MsgGUID: K9eF4rxSQ8ixYTRpigskHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991610"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991610"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:03 -0700
X-CSE-ConnectionGUID: KOl0YNRmQGSdanyUyddtOw==
X-CSE-MsgGUID: ss2bdwdbReK70eCdRj6AlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529220"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/i915/display: include media/cec-notifier.h and
 linux/debugfs.h where needed
Date: Mon, 26 Aug 2024 19:31:18 +0300
Message-Id: <a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

Use a forward declaration for struct cec_notifier instead of including
media/cec-notifier.h in intel_display_types.h, and only include it where
needed.

Also realize that a lot of places depend on including linux/debugfs.h
via intel_display_types.h -> media/cec-notifier.h -> media/cec.h, and
include that too where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c             | 2 ++
 drivers/gpu/drm/i915/display/intel_bios.c             | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c            | 1 +
 drivers/gpu/drm/i915/display/intel_display_debugfs.c  | 1 +
 drivers/gpu/drm/i915/display/intel_display_types.h    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 ++
 drivers/gpu/drm/i915/display/intel_drrs.c             | 2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c              | 1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c             | 2 ++
 drivers/gpu/drm/i915/display/intel_hotplug.c          | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c         | 1 +
 drivers/gpu/drm/i915/display/intel_pps.c              | 2 ++
 drivers/gpu/drm/i915/display/intel_psr.c              | 2 ++
 drivers/gpu/drm/i915/display/intel_wm.c               | 2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c          | 2 ++
 15 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 82ee778b2efe..6d0209d60de9 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -3,6 +3,8 @@
  * Copyright 2024, Intel Corporation.
  */
 
+#include <linux/debugfs.h>
+
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d49435af62c7..cd32c9cd38a9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -25,6 +25,7 @@
  *
  */
 
+#include <linux/debugfs.h>
 #include <linux/firmware.h>
 
 #include <drm/display/drm_dp_helper.h>
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index aa3ba66c5307..d6031419e32b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -21,6 +21,7 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/debugfs.h>
 #include <linux/time.h>
 
 #include <drm/drm_fixed.h>
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 74f527647aa9..a9182af43f40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/string_helpers.h>
 
 #include <drm/drm_debugfs.h>
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e0e0bf6d67bf..15fb29ef7c63 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -43,7 +43,6 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank_work.h>
 #include <drm/intel/i915_hdcp_interface.h>
-#include <media/cec-notifier.h>
 
 #include "gem/i915_gem_object_types.h" /* for to_intel_bo() */
 #include "i915_vma.h"
@@ -55,6 +54,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_wm_types.h"
 
+struct cec_notifier;
 struct drm_printer;
 struct __intel_global_objs_state;
 struct intel_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9c8738295106..f8aa77044e81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,6 +21,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <linux/debugfs.h>
+
 #include <drm/display/drm_dp_helper.h>
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3ca29afa5422..bb39eb96e812 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 52b79bacef4d..b53b38c2f19f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -38,6 +38,7 @@
  * forcibly disable it to allow proper screen updates.
  */
 
+#include <linux/debugfs.h>
 #include <linux/string_helpers.h>
 
 #include <drm/drm_blend.h>
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bd2f6ad0e76e..a671fa8e4fe7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -41,6 +41,8 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/intel_lpe_audio.h>
 
+#include <media/cec-notifier.h>
+
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 2617c5f63a07..a013b0e0ef54 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -21,6 +21,7 @@
  * IN THE SOFTWARE.
  */
 
+#include <linux/debugfs.h>
 #include <linux/kernel.h>
 
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index ff11836459de..0eaa6cd6fe80 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/acpi.h>
+#include <linux/debugfs.h>
 #include <linux/dmi.h>
 #include <acpi/video.h>
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 68141af4da54..82c76e7f8d41 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include "g4x_dp.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 257526362b39..99b0e359c634 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -21,6 +21,8 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/debugfs.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 82c4933ad507..462917bc488f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include "i915_drv.h"
 #include "i9xx_wm.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 045c7cac166b..e955e399b390 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include <drm/drm_blend.h>
 
 #include "i915_drv.h"
-- 
2.39.2

