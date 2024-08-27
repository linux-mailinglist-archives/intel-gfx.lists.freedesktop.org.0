Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B29607C1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 12:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FA510E2EA;
	Tue, 27 Aug 2024 10:45:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gl0hNYKF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A682D10E2EE;
 Tue, 27 Aug 2024 10:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724755528; x=1756291528;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mWU5Kh5R0R9ImTkUTPtehByo1YM882bgq0h75nDY7WM=;
 b=gl0hNYKFYuQ7aLHoNUEYW9cn60BcdYYaLYVLfuKfvCCAtExJfblBZcKC
 E7y6dTG5UFAvlG8ICDYivji3c7rmAildCj4Y1XKAh9YQwKsw0CedPYRzz
 /wFnrQ4SL/+r866LES8pZaO6rz3V7Ls27AgLF1R2YPEOaGgZVYuCBX2PR
 gTQgt1XHHiuKf/Li3n9Xio1kvW6WQf5PcwgRF+CgZ1afbazJP3Z88ayjb
 tAmHh61ooqcZMxMQK0YoC4cnWA8bqzaUAa6pl+iAdyrohSsOqqC/Vztfw
 1ooPgLAcNoL/lukM/jAQUmWord7PDedAIatvZ//vdvYx7AEevsIrapcTR w==;
X-CSE-ConnectionGUID: sLoAWxeFThu4b1b2z/iIbA==
X-CSE-MsgGUID: PnqkKAOFTeC7AntfTI4xfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="13234440"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="13234440"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:45:27 -0700
X-CSE-ConnectionGUID: ss5WaI0fSoqcoypa4Di6ZQ==
X-CSE-MsgGUID: 9xKmYRb4QQO2UapK1fyyEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="66966680"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:45:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/display: include media/cec-notifier.h and
 linux/debugfs.h where needed
Date: Tue, 27 Aug 2024 13:45:21 +0300
Message-Id: <20240827104521.4151471-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula@intel.com>
References: <a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula@intel.com>
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

v2: hsw_ips.c also needs debugfs.h (kernel test robot)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c                | 2 ++
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
 16 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 611a7d6ef80c..c571c6e76d4a 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <linux/debugfs.h>
+
 #include "hsw_ips.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
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

