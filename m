Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CF1930BA8
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2024 22:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B249810E099;
	Sun, 14 Jul 2024 20:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRRh5WJy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD1210E05C;
 Sun, 14 Jul 2024 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720990134; x=1752526134;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pBWmmNV0DWOAd8zvQf+Zct4mknWaKP65Hj7V0cclln8=;
 b=ZRRh5WJyjwGMeUriMNaZ1XfwyCsHU+zvjXgiSarsIwIvAYGu1xDgK+6y
 fYQMNTj/yGpvqAeRnS+4RKrWz+b+UBdeB7F0s9xO5D/Bkucc41cclwOUN
 1DMxaQA8v7JWhqNCcGC0MIzMF7J88XBdVPkWXXO+dBGMPQR44+cPePPjR
 w7lEdUfKtB/STC4WB2VNvpjVoGRccDm8Tj44GQJgwDg/7AUZwmtN9p+bl
 b1fyMitOQf7qSgzI8gtUdJwxo/qkmGit3BS2KI415CoNV0PUPfnYy7Fh3
 W9Rgu4HSVzsrOTCOg3OlO1qEHOU5ZNftBAmME8O+QgxScrYpLJVqCWcxi Q==;
X-CSE-ConnectionGUID: 1wJz23cAQEOGQc01GVSEQA==
X-CSE-MsgGUID: 5rLoRKkMQt6hiW0Z5uD3IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="22126684"
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="22126684"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2024 13:48:53 -0700
X-CSE-ConnectionGUID: WfToGUbbQ4uwzuS2jE3LSg==
X-CSE-MsgGUID: +9q9zvTnTbKSwbPB9URrjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="80513003"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 14 Jul 2024 13:48:50 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, daniele.ceraolospurio@intel.com,
 vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2] drm/xe/fbdev: Limit the usage of stolen for LNL+
Date: Mon, 15 Jul 2024 02:26:59 +0530
Message-ID: <20240714205659.3672665-1-uma.shankar@intel.com>
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 20 ++++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 12 +++++++++++
 drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 816ad13821a8..9c70c9158108 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -10,6 +10,8 @@
 #include "xe_bo.h"
 #include "xe_gt.h"
 #include "xe_ttm_stolen_mgr.h"
+#include "xe_wa.h"
+#include <generated/xe_wa_oob.h>
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
@@ -20,6 +22,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
 	int size;
+	bool wa_22019338487 = false;
+	struct xe_gt *gt;
+	u8 id;
 
 	/* we don't do packed 24bpp */
 	if (sizes->surface_bpp == 24)
@@ -37,7 +42,19 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe)) {
+	/*
+	 * WA_22019338487:
+	 * There is an issue with accessing Stolen memory pages
+	 * due a hardware limitation. Limit the usage of stolen
+	 * memory for fbdev for LNL+. Don't use BIOS FB from
+	 * stolen on LNL+ and assign the same from system memory
+	 */
+	for_each_gt(gt, xe, id) {
+		if (XE_WA(gt, 22019338487))
+			wa_22019338487 = true;
+	}
+
+	if (!IS_DGFX(xe) && !wa_22019338487) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
@@ -48,6 +65,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		else
 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
 	}
+
 	if (IS_ERR(obj)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 5eccd6abb3ef..7e93ddad6df8 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -18,6 +18,8 @@
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 #include "xe_bo.h"
+#include "xe_wa.h"
+#include <generated/xe_wa_oob.h>
 
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
@@ -104,6 +106,16 @@ initial_plane_bo(struct xe_device *xe,
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 
+		/*
+		 * WA_22019338487:
+		 * There is an issue with accessing Stolen memory pages
+		 * due a hardware limitation. Limit the usage of stolen
+		 * memory for fbdev for LNL+. Don't use BIOS FB from
+		 * stolen on LNL+ and assign the same from system memory
+		 */
+		if (XE_WA(tile0->primary_gt, 22019338487))
+			return NULL;
+
 		/*
 		 * If the FB is too big, just don't use it since fbdev is not very
 		 * important and we should probably use that space with FBC or other
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 08f7336881e3..9b08fedbf85c 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -29,4 +29,5 @@
 13011645652	GRAPHICS_VERSION(2004)
 22019338487	MEDIA_VERSION(2000)
 		GRAPHICS_VERSION(2001)
+		GRAPHICS_VERSION(2004)
 16023588340	GRAPHICS_VERSION(2001)
-- 
2.42.0

