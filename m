Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F44931A87
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:53:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFBC10E4D1;
	Mon, 15 Jul 2024 18:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPZ5ioaM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD96110E4D1;
 Mon, 15 Jul 2024 18:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721069591; x=1752605591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lTtyarCUNqx1vyGHAUihJWZC34uRcYNfdhn0w/VHLZs=;
 b=bPZ5ioaMUTsqEFH6Fzl0nddPuYQ8RS7Bp2yXqUacp77MxX7srYxL+e49
 d46ZeI0EgesYFp5DHEdPo94djMwTfB+sIBS/1H3KrygaqO9xWATBjuUJ/
 F/FhbT9OLSVi9KmGf9P+rCli524NdmhKx/38x0Km72MllSxxL6NQqeRXl
 o9wSvafsJniB6sI/MmAmKB/QrePzC51c8cFnXZLpCWQjaACnTj6/26ddU
 GGbczY/LHyd8+yBAgXDLSuoOmD4EvbCF+XdVgcN+S9HtO06myaYxonpCv
 vs8lphkIy8iEXB3C0PvDq0pZW3lMJArr9K19bTRauKbjbiUKwfU3EzXET g==;
X-CSE-ConnectionGUID: KdwbU4+wSdK9QtSPO/aMPg==
X-CSE-MsgGUID: ZtMJugv2RfiyRHwWCVtJRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="43895607"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="43895607"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:52:38 -0700
X-CSE-ConnectionGUID: +F9P/UcZSjW1uwMlpk8c9A==
X-CSE-MsgGUID: O97zhox/QaaHq1H0gaC2/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49810653"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 15 Jul 2024 11:52:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, daniele.ceraolospurio@intel.com,
 vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v3] drm/xe/fbdev: Limit the usage of stolen for LNL+
Date: Tue, 16 Jul 2024 00:30:43 +0530
Message-ID: <20240715190043.3775819-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
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

As per recommendation in the workarounds:
WA_22019338487

There is an issue with accessing Stolen memory pages due a
hardware limitation. Limit the usage of stolen memory for
fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
assign the same from system memory.

v2: Corrected the WA Number, limited WA to LNL and
    Adopted XE_WA framework as suggested by Lucas and Matt.

v3: Introduced the waxxx_display to avoid tipping on other WA.
    Used xe_root_mmio_gt and avoid the for loop.
    (Suggested by Lucas)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 ++++++
 drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 816ad13821a8..0f02e6222ada 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -10,6 +10,9 @@
 #include "xe_bo.h"
 #include "xe_gt.h"
 #include "xe_ttm_stolen_mgr.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
@@ -20,6 +23,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
 	int size;
+	bool wa_22019338487 = false;
 
 	/* we don't do packed 24bpp */
 	if (sizes->surface_bpp == 24)
@@ -37,7 +41,10 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe)) {
+	if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
+		wa_22019338487 = true;
+
+	if (!IS_DGFX(xe) && !wa_22019338487) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
@@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		else
 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
 	}
+
 	if (IS_ERR(obj)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 5eccd6abb3ef..a50ab9eae40a 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -18,6 +18,9 @@
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 #include "xe_bo.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
 
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
@@ -104,6 +107,9 @@ initial_plane_bo(struct xe_device *xe,
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 
+		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
+			return NULL;
+
 		/*
 		 * If the FB is too big, just don't use it since fbdev is not very
 		 * important and we should probably use that space with FBC or other
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 08f7336881e3..6ec23c4b972e 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -30,3 +30,4 @@
 22019338487	MEDIA_VERSION(2000)
 		GRAPHICS_VERSION(2001)
 16023588340	GRAPHICS_VERSION(2001)
+22019338487_display	PLATFORM(LUNARLAKE)
-- 
2.42.0

