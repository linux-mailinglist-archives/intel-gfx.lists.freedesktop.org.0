Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AF49338BD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 10:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D42A10E9F0;
	Wed, 17 Jul 2024 08:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cE5VGOVy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B37310E9F0;
 Wed, 17 Jul 2024 08:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721204092; x=1752740092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1G8nvHyppFW75NcQcZBCTQexE5YGfsOxiKDGRYmCwSM=;
 b=cE5VGOVybRKCX17ucd84dG5Z/r/C3qKNwZH7nK/kqybpDKhzEb7NAcIu
 Y1Y76NXUmLmswy4eGUN+CmqSNvxWwqGHKHV8+2ICo37x+NS2RdOuLcsY0
 tRA7M5OQ/mT1gfVEDr9czkE4E5SCVKVoagI829ldXo7dfdTOq4L9/Q8WU
 dfPYD4RtvP5M6Nw/Xd30E4oULJL4wS2Mx4//F0wmb3P1G4UqfXhVu1LVI
 Dj4fEmUnz6Uzpd85JpSVcqwC7PohaVIjAeJUNy+rQXbIKgZn6sTBczkhA
 9Q4ww+Ljq/YqSxkEkluSDT2/TK/H+a9byhWTgNOHlwoU6nBTQ0lLy+/1V w==;
X-CSE-ConnectionGUID: W3cfWScSTI22okO4zt8vxA==
X-CSE-MsgGUID: 76SUOGP9QHSyHHaV/giB2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18555268"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18555268"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 01:14:46 -0700
X-CSE-ConnectionGUID: vWVi6Vf7Rm2jxmDWYfG7Yw==
X-CSE-MsgGUID: NPcq/HWVTpmGVcy5SHzLRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="54501620"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa003.fm.intel.com with ESMTP; 17 Jul 2024 01:14:43 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, daniele.ceraolospurio@intel.com,
 vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v4] drm/xe/fbdev: Limit the usage of stolen for LNL+
Date: Wed, 17 Jul 2024 13:52:52 +0530
Message-ID: <20240717082252.3875909-1-uma.shankar@intel.com>
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

v3: Introduced the waxxx_display to implement display side
    of WA changes on Lunarlake. Used xe_root_mmio_gt and
    avoid the for loop (Suggested by Lucas)

v4: Fixed some nits (Luca)

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 6 +++++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 6 ++++++
 drivers/gpu/drm/xe/xe_wa_oob.rules            | 1 +
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 816ad13821a8..cd8948c08661 100644
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
@@ -37,7 +40,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe)) {
+	if (!IS_DGFX(xe) && !XE_WA(xe_root_mmio_gt(xe), 22019338487_display)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
@@ -48,6 +51,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
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
index 08f7336881e3..540d38603f32 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -29,4 +29,5 @@
 13011645652	GRAPHICS_VERSION(2004)
 22019338487	MEDIA_VERSION(2000)
 		GRAPHICS_VERSION(2001)
+22019338487_display	PLATFORM(LUNARLAKE)
 16023588340	GRAPHICS_VERSION(2001)
-- 
2.42.0

