Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BBD7B24EB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1FE10E6A9;
	Thu, 28 Sep 2023 18:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54F410E6B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924604; x=1727460604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvUOJJt/5H0XbraAIS8PwPhrzfQed1oHMQ3e8pawIWQ=;
 b=Rcn3QBNSecYvPNEmwONlnIzwciu/r5RDwMRL2vZjNFNNmWBUlOJ+NC5r
 sM+LAFs7lr9TT/M95SajfhJE+X4+UqObmjvfKnm0cDHPr1nXuOoaAtBsX
 97Ng3vz7u27lHnu2mYPN0CjtyHRYfQ7kKjUqOGx7pb5aUE3a2KWb4tw5b
 Vtgscw9eFNTWpnubkN2l0wNvZuz49PNxluDluA+EpQjZhv9C9HF/jUAyH
 1k9fLxLSBX04dJ6zvZt0XcSG8zeQV3f7c/e3atmWWw780aovedyGHcxak
 slsiN7WxYyWPZl6eK0ud2gtDrsViB/ZsLNIeDJnDZlpgB7D4NT1yDsWtV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="448627882"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="448627882"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865366672"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="865366672"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:57 +0300
Message-Id: <21523402971f9ec8d5b22c947cf1b321a80055cd.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915: stop including
 gt/intel_engine.h and gt/intel_gt_types.h from i915_drv.h
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

i915_drv.h no longer needs the headers, and they are not included
indirectly either. Removing them reveals a ton of places that implicitly
depend on the includes. Make them explicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_rps.c         | 1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c               | 1 +
 drivers/gpu/drm/i915/display/intel_plane_initial.c       | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c               | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c              | 1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c             | 3 ++-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c              | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c                      | 1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c                     | 1 +
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c             | 2 +-
 drivers/gpu/drm/i915/gt/intel_wopcm.c                    | 3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c                | 5 +++--
 drivers/gpu/drm/i915/gvt/execlist.c                      | 3 ++-
 drivers/gpu/drm/i915/gvt/gvt.h                           | 1 +
 drivers/gpu/drm/i915/i915_drv.h                          | 2 --
 drivers/gpu/drm/i915/i915_getparam.c                     | 1 +
 drivers/gpu/drm/i915/i915_mm.c                           | 4 ++--
 drivers/gpu/drm/i915/i915_pci.c                          | 3 ++-
 drivers/gpu/drm/i915/i915_query.c                        | 6 ++++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c              | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c             | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c                  | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c             | 3 ++-
 drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c | 2 +-
 25 files changed, 35 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 17178d5d7788..107f0d398df6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic_helper.h>
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "intel_clock_gating.h"
 #include "intel_display_driver.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 918d0327169a..92b19adf0939 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -6,6 +6,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_vblank.h>
 
+#include "gt/intel_gt_types.h"
 #include "gt/intel_rps.h"
 #include "i915_drv.h"
 #include "intel_display_rps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 31d0d695d567..b246ff2afc7a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -45,6 +45,7 @@
 
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_mman.h"
+#include "gt/intel_gt_types.h"
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 451a642e106e..83a355cb4218 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -4,6 +4,7 @@
  */
 
 #include "gem/i915_gem_region.h"
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index a049ca0b7980..5ca651623d83 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -7,6 +7,7 @@
 #include <linux/string.h>
 #include <linux/bitops.h>
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "i915_gem.h"
 #include "i915_gem_ioctls.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 1d3ebdf4069b..69bff60e44ee 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -39,6 +39,7 @@
 #include <linux/swap.h>
 #include <linux/sched/mm.h>
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 40371b8a9bbb..8c036baaea3c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -7,11 +7,12 @@
 
 #include "display/intel_display.h"
 #include "i915_drv.h"
+#include "i915_pvinfo.h"
 #include "i915_reg.h"
 #include "i915_scatterlist.h"
-#include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 #include "intel_gt_regs.h"
+#include "intel_gt_types.h"
 #include "intel_mchbar_regs.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index d1a382dfaa1d..c681a7a04315 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h" /* for_each_engine() */
 #include "i915_request.h"
+#include "intel_engine.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_execlists_submission.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4feef874e6d6..b53118495cb6 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -13,6 +13,7 @@
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_breadcrumbs.h"
+#include "intel_engine.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index f602895f6d0d..13a2749cfb45 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -9,6 +9,7 @@
 #include "i915_perf_types.h"
 #include "intel_engine_regs.h"
 #include "intel_gt_regs.h"
+#include "intel_gt_types.h"
 #include "intel_sseu.h"
 
 void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index c2ee5e1826b5..8b54bad0f5ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: MIT
-
 /*
  * Copyright © 2020 Intel Corporation
  */
@@ -10,6 +9,7 @@
 #include "i915_drv.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_regs.h"
+#include "intel_gt_types.h"
 #include "intel_sseu_debugfs.h"
 
 static void cherryview_sseu_device_status(struct intel_gt *gt,
diff --git a/drivers/gpu/drm/i915/gt/intel_wopcm.c b/drivers/gpu/drm/i915/gt/intel_wopcm.c
index 7ebbcc191c2d..fcad35df0671 100644
--- a/drivers/gpu/drm/i915/gt/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/gt/intel_wopcm.c
@@ -3,8 +3,9 @@
  * Copyright © 2017-2019 Intel Corporation
  */
 
-#include "intel_wopcm.h"
 #include "i915_drv.h"
+#include "intel_gt_types.h"
+#include "intel_wopcm.h"
 
 /**
  * DOC: WOPCM Layout
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 0d3b22a74365..cf0ef467542d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -5,13 +5,14 @@
 
 #include <linux/types.h>
 
+#include "gt/intel_engine.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
+#include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_gsc_fw.h"
 #include "intel_gsc_proxy.h"
 #include "intel_gsc_uc.h"
-#include "i915_drv.h"
-#include "i915_reg.h"
 
 static void gsc_work(struct work_struct *work)
 {
diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
index 274c6ef42400..ad392c4f4e2a 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.c
+++ b/drivers/gpu/drm/i915/gvt/execlist.c
@@ -32,8 +32,9 @@
  *
  */
 
-#include "i915_drv.h"
+#include "gt/intel_engine.h"
 #include "gvt.h"
+#include "i915_drv.h"
 
 #define _EL_OFFSET_STATUS       0x234
 #define _EL_OFFSET_STATUS_BUF   0x370
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 53a0a42a50db..489f868736e0 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -39,6 +39,7 @@
 
 #include <asm/kvm_page_track.h>
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "intel_gvt.h"
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d04a9c32c44f..cd4d55f5f8de 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -43,8 +43,6 @@
 #include "gem/i915_gem_shrinker.h"
 #include "gem/i915_gem_stolen.h"
 
-#include "gt/intel_engine.h"
-#include "gt/intel_gt_types.h"
 #include "gt/intel_region_lmem.h"
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 5c3fec63cb4c..a1944382377a 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -4,6 +4,7 @@
 
 #include "gem/i915_gem_mman.h"
 #include "gt/intel_engine_user.h"
+#include "gt/intel_gt_types.h"
 
 #include "pxp/intel_pxp.h"
 
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 7998bc74ab49..e2f4ec1c29c7 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -22,9 +22,9 @@
  *
  */
 
-#include <linux/mm.h>
+#include <asm/cacheflush.h>
 #include <linux/io-mapping.h>
-
+#include <linux/mm.h>
 
 #include "i915_drv.h"
 #include "i915_mm.h"
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index df7c261410f7..4dc638e8b887 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -28,9 +28,10 @@
 
 #include "display/intel_display.h"
 #include "display/intel_display_driver.h"
+#include "gem/i915_gem_object_types.h"
 #include "gt/intel_gt_regs.h"
+#include "gt/intel_gt_types.h"
 #include "gt/intel_sa_media.h"
-#include "gem/i915_gem_object_types.h"
 
 #include "i915_driver.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 00871ef99792..84ebfe94456a 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -6,11 +6,13 @@
 
 #include <linux/nospec.h>
 
+#include <uapi/drm/i915_drm.h>
+
+#include "gt/intel_engine_user.h"
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_query.h"
-#include "gt/intel_engine_user.h"
-#include <uapi/drm/i915_drm.h>
 
 static int copy_query_item(void *query_hdr, size_t query_sz,
 			   u32 total_length,
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b3c036a54529..0e3d9a9ec4d4 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -16,6 +16,7 @@
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
+#include "gt/intel_gt_types.h"
 #include "gvt/gvt.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index e07c5b380789..c8e5b22eccff 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -9,6 +9,7 @@
 #include <drm/drm_print.h>
 
 #include "gt/intel_gt_debugfs.h"
+#include "gt/intel_gt_types.h"
 
 #include "i915_drv.h"
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 6dfd24918953..7acdecc758c0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -3,6 +3,7 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 
 #include "intel_pxp.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 0a3e66b0265e..eccb5fbe2557 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -3,15 +3,16 @@
  * Copyright(c) 2020, Intel Corporation. All rights reserved.
  */
 
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 
 #include "intel_pxp.h"
 #include "intel_pxp_cmd.h"
 #include "intel_pxp_gsccs.h"
+#include "intel_pxp_regs.h"
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
-#include "intel_pxp_regs.h"
 
 #define ARB_SESSION I915_PROTECTED_CONTENT_DEFAULT_SESSION /* shorter define */
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
index 2990dd4d4a0d..be9086da29fc 100644
--- a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
+++ b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
@@ -3,7 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
-//#include "gt/intel_engine_user.h"
+#include "gt/intel_engine.h"
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
 #include "i915_selftest.h"
-- 
2.39.2

