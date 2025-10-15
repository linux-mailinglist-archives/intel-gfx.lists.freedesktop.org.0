Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2EEBDF847
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77A710E852;
	Wed, 15 Oct 2025 16:01:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjdDcp4G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E36E10E852;
 Wed, 15 Oct 2025 16:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760544108; x=1792080108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T1f2wtqcvvQkizNYSvd6WS3HP1ZIKNBOp3rVuGG6M1Q=;
 b=mjdDcp4Gil35GldcGpsJDP1Uf/PxoMtYcRQ60BToz+b5yhHeyd1KvYJY
 X/SMNKwqUT6ppEb6FW0ff/HlfLDnkCBZD8hWER8+Wwg1O5SGi0cHcIgSU
 qmv9Od3TP8RD6h5F000u/VQm/TjOEeM2yMSR2mZMI0eE6GM0DxMVLkgEO
 kdf97SDsqre7u56ZI3/BPto1stk4dvwWWnnTWlnYoiJcJ7nxZr1dyiM8U
 ZAZ5OzTlO4PZLY2ZewacMJ9pcdAYD63bytfPRZwUZE/1MUWQkGz2oOpyo
 o0fo1+QV4Gyw/Ap2cxjf6CdvC2Xup9E8p1EWNyTX/oQVZCNRsT5I1ijKZ A==;
X-CSE-ConnectionGUID: 2Pu+cFcxSmiZMmvQj/8TEw==
X-CSE-MsgGUID: iqephtzERhaGDWFPKAzESA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62818427"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62818427"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:01:48 -0700
X-CSE-ConnectionGUID: hdzjHD5+QqelZv/oDEg00Q==
X-CSE-MsgGUID: 7880gN62SFew+LA2N+4ulQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182997571"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:01:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
Date: Wed, 15 Oct 2025 19:01:40 +0300
Message-ID: <20251015160140.2296120-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

The display/ subdirectory currently contains files that are about i915
core driver adaptation to display rather than generic display
implementation. Move them to a new i915 subdirectory display-adapt/.

In the xe driver, all of its display/ is basically xe core adaptation to
display. It's just that i915 display/ contains the actual display
implementation for both. Ideally, we'd have the shared display code
somewhere else, and the adaptation in i915 would be under display/, but
we're not quite ready for that kind of churn yet. So let's just call it
display-adapt for now.

xe basically has equivalent files to the ones that are being moved,
apart from intel_dpt.c, for which the implementation is quite different.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
 .../{display => display-adapt}/intel_bo.c     |  3 ++-
 .../intel_display_rpm.c                       |  5 ++--
 .../{display => display-adapt}/intel_dpt.c    | 11 +++++----
 .../intel_dsb_buffer.c                        |  5 ++--
 .../{display => display-adapt}/intel_fb_bo.c  |  9 ++++----
 .../{display => display-adapt}/intel_fb_pin.c | 14 +++++------
 .../intel_fbdev_fb.c                          |  5 +++-
 .../intel_hdcp_gsc.c                          |  2 +-
 .../{display => display-adapt}/intel_panic.c  |  6 ++---
 .../intel_plane_initial.c                     | 17 +++++++-------
 11 files changed, 56 insertions(+), 44 deletions(-)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_bo.c (98%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_display_rpm.c (95%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dpt.c (97%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dsb_buffer.c (96%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_bo.c (94%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_pin.c (97%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fbdev_fb.c (94%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_hdcp_gsc.c (99%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_panic.c (84%)
 rename drivers/gpu/drm/i915/{display => display-adapt}/intel_plane_initial.c (97%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6d7800e25e55..6000748fc0b3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -221,6 +221,18 @@ i915-y += \
 i915-$(CONFIG_HWMON) += \
 	i915_hwmon.o
 
+# display adaptation
+i915-y += \
+	display-adapt/intel_bo.o \
+	display-adapt/intel_display_rpm.o \
+	display-adapt/intel_dpt.o \
+	display-adapt/intel_dsb_buffer.o \
+	display-adapt/intel_fb_bo.o \
+	display-adapt/intel_fb_pin.o \
+	display-adapt/intel_hdcp_gsc.o \
+	display-adapt/intel_panic.o \
+	display-adapt/intel_plane_initial.o
+
 # modesetting core code
 i915-y += \
 	display/hsw_ips.o \
@@ -231,7 +243,6 @@ i915-y += \
 	display/intel_atomic.o \
 	display/intel_audio.o \
 	display/intel_bios.o \
-	display/intel_bo.o \
 	display/intel_bw.o \
 	display/intel_cdclk.o \
 	display/intel_cmtg.o \
@@ -250,7 +261,6 @@ i915-y += \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
 	display/intel_display_reset.o \
-	display/intel_display_rpm.o \
 	display/intel_display_rps.o \
 	display/intel_display_snapshot.o \
 	display/intel_display_wa.o \
@@ -259,14 +269,10 @@ i915-y += \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
-	display/intel_dpt.o \
 	display/intel_dpt_common.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
-	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
-	display/intel_fb_bo.o \
-	display/intel_fb_pin.o \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
 	display/intel_fifo_underrun.o \
@@ -274,7 +280,6 @@ i915-y += \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
-	display/intel_hdcp_gsc.o \
 	display/intel_hdcp_gsc_message.o \
 	display/intel_hotplug.o \
 	display/intel_hotplug_irq.o \
@@ -286,12 +291,10 @@ i915-y += \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
-	display/intel_panic.o \
 	display/intel_pch.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane.o \
-	display/intel_plane_initial.o \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
@@ -312,7 +315,7 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
 	display/intel_fbdev.o \
-	display/intel_fbdev_fb.o
+	display-adapt/intel_fbdev_fb.o
 i915-$(CONFIG_DEBUG_FS) += \
 	display/intel_display_debugfs.o \
 	display/intel_display_debugfs_params.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display-adapt/intel_bo.c
similarity index 98%
rename from drivers/gpu/drm/i915/display/intel_bo.c
rename to drivers/gpu/drm/i915/display-adapt/intel_bo.c
index 6ae1374d5c2b..bd3956d09aab 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_bo.c
@@ -3,11 +3,12 @@
 
 #include <drm/drm_panic.h>
 
+#include "display/intel_bo.h"
+
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
 #include "i915_debugfs.h"
-#include "intel_bo.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
similarity index 95%
rename from drivers/gpu/drm/i915/display/intel_display_rpm.c
rename to drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
index 56c4024201c1..b7a7fd32ef8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_display_rpm.c
@@ -1,9 +1,10 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_rpm.h"
+
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_rpm.h"
 #include "intel_runtime_pm.h"
 
 static struct intel_runtime_pm *display_to_rpm(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display-adapt/intel_dpt.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_dpt.c
rename to drivers/gpu/drm/i915/display-adapt/intel_dpt.c
index c0a817018d08..57f3f22ab940 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_dpt.c
@@ -8,12 +8,13 @@
 #include "gem/i915_gem_lmem.h"
 #include "gt/gen8_ppgtt.h"
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_rpm.h"
+#include "display/intel_display_types.h"
+#include "display/intel_dpt.h"
+#include "display/intel_fb.h"
+
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_rpm.h"
-#include "intel_display_types.h"
-#include "intel_dpt.h"
-#include "intel_fb.h"
 
 struct i915_dpt {
 	struct i915_address_space vm;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
similarity index 96%
rename from drivers/gpu/drm/i915/display/intel_dsb_buffer.c
rename to drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
index c77d48bda26a..fcede0bef9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_dsb_buffer.c
@@ -3,12 +3,13 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include "display/intel_display_types.h"
+#include "display/intel_dsb_buffer.h"
+
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_display_types.h"
-#include "intel_dsb_buffer.h"
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
similarity index 94%
rename from drivers/gpu/drm/i915/display/intel_fb_bo.c
rename to drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
index 7336d7294a7b..89fb6d44cdd8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_fb_bo.c
@@ -7,11 +7,12 @@
 
 #include "gem/i915_gem_object.h"
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_fb_bo.h"
+
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
-#include "intel_fb.h"
-#include "intel_fb_bo.h"
 
 void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_fb_pin.c
rename to drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
index 45af04cb0fb2..3f33f067ec17 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_fb_pin.c
@@ -7,18 +7,18 @@
  * DOC: display pinning helpers
  */
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_rpm.h"
+#include "display/intel_display_types.h"
+#include "display/intel_dpt.h"
+#include "display/intel_fb.h"
+#include "display/intel_fb_pin.h"
+#include "display/intel_plane.h"
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_display_core.h"
-#include "intel_display_rpm.h"
-#include "intel_display_types.h"
-#include "intel_dpt.h"
-#include "intel_fb.h"
-#include "intel_fb_pin.h"
-#include "intel_plane.h"
 
 static struct i915_vma *
 intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
similarity index 94%
rename from drivers/gpu/drm/i915/display/intel_fbdev_fb.c
rename to drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
index 56b145841473..15684cccd85e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_fbdev_fb.c
@@ -5,10 +5,13 @@
 
 #include <linux/fb.h>
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_fbdev_fb.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
-#include "intel_fbdev_fb.h"
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
similarity index 99%
rename from drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
rename to drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
index 6a22862d6be1..16f1e61b090b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_hdcp_gsc.c
@@ -5,12 +5,12 @@
 
 #include <drm/intel/i915_hdcp_interface.h>
 
+#include "display/intel_hdcp_gsc.h"
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
-#include "intel_hdcp_gsc.h"
 
 struct intel_hdcp_gsc_context {
 	struct drm_i915_private *i915;
diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display-adapt/intel_panic.c
similarity index 84%
rename from drivers/gpu/drm/i915/display/intel_panic.c
rename to drivers/gpu/drm/i915/display-adapt/intel_panic.c
index 7311ce4e8b6c..028ff83b2519 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_panic.c
@@ -3,10 +3,10 @@
 
 #include <drm/drm_panic.h>
 
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_panic.h"
 #include "gem/i915_gem_object.h"
-#include "intel_display_types.h"
-#include "intel_fb.h"
-#include "intel_panic.h"
 
 struct intel_panic *intel_panic_alloc(void)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_plane_initial.c
rename to drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
index a9f36b1b50c1..57336ca6b0ed 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display-adapt/intel_plane_initial.c
@@ -3,17 +3,18 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "display/intel_crtc.h"
+#include "display/intel_display.h"
+#include "display/intel_display_core.h"
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_frontbuffer.h"
+#include "display/intel_plane.h"
+#include "display/intel_plane_initial.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
+
 #include "i915_drv.h"
-#include "intel_crtc.h"
-#include "intel_display.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
-#include "intel_fb.h"
-#include "intel_frontbuffer.h"
-#include "intel_plane.h"
-#include "intel_plane_initial.h"
 
 void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
 {
-- 
2.47.3

