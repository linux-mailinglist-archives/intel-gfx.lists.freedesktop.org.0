Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC1464F4A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:58:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5146F546;
	Wed,  1 Dec 2021 13:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B976FC9C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:58:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="235191032"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="235191032"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:58:06 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="602119805"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:58:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:12 +0200
Message-Id: <ee740f494e416d875e057c2eda585f4e66d65500.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/10] drm/i915/display: stop including
 i915_drv.h from intel_display_types.h
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

Break the dependency on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h    |  9 ++++++++-
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c |  1 +
 drivers/gpu/drm/i915/display/intel_dp_link_training.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c              |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c               |  1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c           | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_plane_initial.c    |  5 +++--
 drivers/gpu/drm/i915/display/intel_quirks.c           |  1 +
 8 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f6e76b4d377d..974af6c01cca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -36,6 +36,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_dp_dual_mode_helper.h>
 #include <drm/drm_dp_mst_helper.h>
+#include <drm/drm_dsc.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
@@ -46,13 +47,19 @@
 #include <drm/i915_mei_hdcp_interface.h>
 #include <media/cec-notifier.h>
 
-#include "i915_drv.h"
+#include "i915_vma.h"
+#include "i915_vma_types.h"
+#include "intel_bios.h"
+#include "intel_display.h"
+#include "intel_display_power.h"
+#include "intel_dpll_mgr.h"
 #include "intel_pm_types.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
 struct intel_ddi_buf_trans;
 struct intel_fbc;
+struct intel_connector;
 
 /*
  * Display related stuff
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 62c112daacf2..97cf3cac0105 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -34,6 +34,7 @@
  * for some reason.
  */
 
+#include "i915_drv.h"
 #include "intel_backlight.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e264467de8ed..9451f336f28f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,11 +21,11 @@
  * IN THE SOFTWARE.
  */
 
+#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 
-
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 6b0301ba046e..a50422e03a7e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -4,6 +4,8 @@
  */
 
 #include <drm/drm_mipi_dsi.h>
+
+#include "i915_drv.h"
 #include "intel_dsi.h"
 #include "intel_panel.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 99769132c35b..23cfe2e5ce2a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -6,6 +6,7 @@
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_modeset_helper.h>
 
+#include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 3b20f69e0240..31c15e5fca95 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -7,13 +7,13 @@
  * DOC: display pinning helpers
  */
 
-#include "intel_display_types.h"
-#include "intel_fb_pin.h"
-#include "intel_fb.h"
+#include "gem/i915_gem_object.h"
 
+#include "i915_drv.h"
+#include "intel_display_types.h"
 #include "intel_dpt.h"
-
-#include "gem/i915_gem_object.h"
+#include "intel_fb.h"
+#include "intel_fb_pin.h"
 
 static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index dcd698a02da2..01ce1d72297f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -3,11 +3,12 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#include "intel_display_types.h"
-#include "intel_plane_initial.h"
+#include "i915_drv.h"
 #include "intel_atomic_plane.h"
 #include "intel_display.h"
+#include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_plane_initial.h"
 
 static bool
 intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 8a52b7a16774..c8488f5ebd04 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -5,6 +5,7 @@
 
 #include <linux/dmi.h>
 
+#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_quirks.h"
 
-- 
2.30.2

