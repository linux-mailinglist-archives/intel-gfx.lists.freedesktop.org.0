Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F18D9F3712
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 18:11:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E0B10E721;
	Mon, 16 Dec 2024 17:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BDFoAtRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C410610E714;
 Mon, 16 Dec 2024 17:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734369100; x=1765905100;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1c7rF0UAOQfHc2on3O/NTAotl5WeHykYmM9Kh2H99ow=;
 b=BDFoAtRUD5/GT4rGj5Wd3VuhM3K1mFbujOW4MrXnNRVDNwq8APey8EcL
 wyoFNyA3kItZvVZ7MZpD90j7UdC4sgV5QshJE1f8+rraK4/mq5FGepUOj
 fj4qzcWXAhY8dxhqgtPzIfv6zczSbzxXE0iwFiOBm5SijGtiaRDUfEHBj
 deluRXjGdDGkxHJ8rgV1cvPH7Sj8SORwae88WvUS1RvUdB/MpSK0V2hi0
 ev4xbsXSWM0TQY6jV3WCg2DmJa2ftmmMKNKkSVZxyxbIHrWLoD19RXW3d
 xg2xO3bBo0zZpQC472BUWvbEGX+0j4bA8QO4XvwaBl5BMXaqbSZj0/z4x g==;
X-CSE-ConnectionGUID: MNrSeoOkQsyWi0Cs7Sd8jA==
X-CSE-MsgGUID: qiACZcx8T52hh5sXmJXvvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34086899"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="34086899"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 09:11:39 -0800
X-CSE-ConnectionGUID: 9jaUOduTQaW0/I23qcnSjg==
X-CSE-MsgGUID: 8apZ9SSIR8mf6BR4BHg8LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102250465"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 09:11:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: drop unnecessary i915_drv.h includes
Date: Mon, 16 Dec 2024 19:11:33 +0200
Message-Id: <20241216171133.1511619-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Now that we don't include i915_drv.h via any headers from display, we
can reliably remove unnecessary i915_drv.h includes and be sure they're
not indirectly included. Add other includes where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ns2501.c                   | 1 -
 drivers/gpu/drm/i915/display/i9xx_display_sr.c              | 3 ++-
 drivers/gpu/drm/i915/display/intel_acpi.c                   | 3 ++-
 drivers/gpu/drm/i915/display/intel_alpm.c                   | 1 -
 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_params.c         | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display_power_map.c      | 6 ++----
 drivers/gpu/drm/i915/display/intel_display_snapshot.c       | 4 +++-
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c                | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_training.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_test.c                | 1 -
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c              | 3 +--
 drivers/gpu/drm/i915/display/intel_hti.c                    | 3 ++-
 drivers/gpu/drm/i915/display/intel_link_bw.c                | 3 +--
 drivers/gpu/drm/i915/display/intel_load_detect.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c                 | 4 ++--
 drivers/gpu/drm/i915/display/intel_panel.c                  | 1 -
 drivers/gpu/drm/i915/display/intel_pfit.c                   | 2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c                    | 1 -
 21 files changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index 9d47f8a93e94..686393dfbbf5 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -26,7 +26,6 @@
  *
  */
 
-#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index f7d4a6cfce5f..32abe9743014 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -3,7 +3,8 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_device.h>
+
 #include "i915_reg.h"
 #include "i9xx_display_sr.h"
 #include "i9xx_wm_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index c3b29a331d72..bbf8c5a8fdbd 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -9,8 +9,9 @@
 #include <linux/acpi.h>
 #include <acpi/video.h>
 
-#include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_acpi.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 
 #define INTEL_DSM_REVISION_ID 1 /* For Calpella anyway... */
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c7ccd5a10012..55f3ae1e68c9 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -5,7 +5,6 @@
 
 #include <linux/debugfs.h>
 
-#include "i915_drv.h"
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
index ec3ed29a83c9..88914a1f3f62 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -7,9 +7,10 @@
 #include <linux/kernel.h>
 
 #include <drm/drm_drv.h>
+#include <drm/drm_file.h>
 
+#include "intel_display_core.h"
 #include "intel_display_debugfs_params.h"
-#include "i915_drv.h"
 #include "intel_display_params.h"
 
 /* int param */
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index dc666aefa362..7bfcd05d9161 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -3,8 +3,12 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/moduleparam.h>
+#include <linux/string_choices.h>
+
+#include <drm/drm_print.h>
+
 #include "intel_display_params.h"
-#include "i915_drv.h"
 
 #define intel_display_param_named(name, T, perm, desc) \
 	module_param_named(name, intel_display_modparams.name, T, perm); \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index fb2df5c382d8..0c8ac1af6db7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -3,14 +3,12 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
-
-#include "vlv_sideband_reg.h"
-
+#include "intel_display_core.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
+#include "vlv_sideband_reg.h"
 
 #define __LIST_INLINE_ELEMS(__elem_type, ...) \
 	((__elem_type[]) { __VA_ARGS__ })
diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index 030c4f873da1..25ba043cbb65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -3,7 +3,9 @@
 
 #include <linux/slab.h>
 
-#include "i915_drv.h"
+#include <drm/drm_drv.h>
+
+#include "intel_display_core.h"
 #include "intel_display_device.h"
 #include "intel_display_params.h"
 #include "intel_display_snapshot.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 33f72db99b58..c846ef4acf5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -34,8 +34,9 @@
  * for some reason.
  */
 
-#include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_backlight.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 6cea66069abd..00c493cc8a4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -11,7 +11,6 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 02ad0fbb1859..8b1977cfec50 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -25,7 +25,8 @@
 
 #include <drm/display/drm_dp_helper.h>
 
-#include "i915_drv.h"
+#include "i915_utils.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index e05819300d77..380b359b0420 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -8,7 +8,6 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 94198bc04939..589872babdd7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -3,11 +3,10 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
-
 #include <drm/display/drm_dp_tunnel.h>
 
 #include "intel_atomic.h"
+#include "intel_display_core.h"
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
index 19d1f196d9fb..fb6b84f6a81d 100644
--- a/drivers/gpu/drm/i915/display/intel_hti.c
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -3,7 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_device.h>
+
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_hti.h"
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index c87cd1d16d0a..29705c159119 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -5,10 +5,9 @@
 
 #include <drm/drm_fixed.h>
 
-#include "i915_drv.h"
-
 #include "intel_atomic.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
index b457c69dc0be..86cc03a4413c 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.c
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -7,9 +7,9 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
 
-#include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_load_detect.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 16a7d888f1ee..d75dd17fad32 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -28,13 +28,13 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
-#include "intel_lspcon.h"
 #include "intel_hdmi.h"
+#include "intel_lspcon.h"
 
 /* LSPCON OUI Vendor ID(signatures) */
 #define LSPCON_VENDOR_PARADE_OUI 0x001CF8
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 8aa93c2bf801..4e6c5592c7ae 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -33,7 +33,6 @@
 
 #include <drm/drm_edid.h>
 
-#include "i915_drv.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 50861aa78a89..4ee03d9d14ad 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -3,8 +3,8 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 28f497ae785b..8b30e9fd936e 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -5,7 +5,7 @@
 
 #include <linux/dmi.h>
 
-#include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_quirks.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b386e62d1664..70088e355055 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -4,7 +4,6 @@
  *
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
-- 
2.39.5

