Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E41FB83926
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC5710E680;
	Thu, 18 Sep 2025 08:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJyA/wQ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AB310E687;
 Thu, 18 Sep 2025 08:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184899; x=1789720899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmHq890hhHIQajrFKlrA9g0azdBlFZhKtzp0t4o+Qn8=;
 b=HJyA/wQ3cuXye5/Fn4dfM7pXSW9dwsq1kgmw0DhI/oPxsMPhq3XatYER
 Tvsywy4s2MPGhfRglo7XpB2OvDdtax29jsNk+z+CznhlkJWf2NNEJnXbn
 3OBSZFccRB7GBzoPvw++XZRJA6x73Q5RaztpeYZWKtAwaLWOxQK6+dbCO
 Mwcka+R8Ai4hZqnX7dADNcb0uKJcgNuRGXSF7YWtUao+6NJ+SQkTwVQvf
 49FTKzJl7XkjWXz5S4+WC+BHM+SYwQHp79hkBTJJl63gCFvlC1JcNzakY
 2HrOo+yr2aeSnLiIPtqBjqnvEotcZ9FNiqUtiEug39ziMx61fGNyq4m6C Q==;
X-CSE-ConnectionGUID: nwa/FPMSTiiaHmgL3qP4Rw==
X-CSE-MsgGUID: gNBX9gbzQU2KU6120qhkag==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932971"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932971"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:39 -0700
X-CSE-ConnectionGUID: 7KygLr3AS8ijekZTVS5mjQ==
X-CSE-MsgGUID: mBi/8bchSBu1f4p9QIYMoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760727"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 06/10] drm/xe/fbdev: abstract bo creation
Date: Thu, 18 Sep 2025 11:40:56 +0300
Message-ID: <74dfb9f3e6e05a93d54a8ab534e4384145b52571.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Separate fbdev bo creation into a separate function
intel_fbdev_fb_bo_create().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 33 ++++++++++++++-------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 8eaf1cc7fdf9..48225062211c 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -15,16 +15,11 @@
 
 #include <generated/xe_wa_oob.h>
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_mode_fb_cmd2 *mode_cmd)
+struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
-	struct drm_framebuffer *fb;
 	struct xe_device *xe = to_xe_device(drm);
 	struct xe_bo *obj;
-	int size;
 
-	size = mode_cmd->pitches[0] * mode_cmd->height;
-	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
 	if (!IS_DGFX(xe) && !XE_GT_WA(xe_root_mmio_gt(xe), 22019338487_display)) {
@@ -48,21 +43,39 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
 	if (IS_ERR(obj)) {
 		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
-		fb = ERR_PTR(-ENOMEM);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	return &obj->ttm.base;
+}
+
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
+					       struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct drm_framebuffer *fb;
+	struct drm_gem_object *obj;
+	int size;
+
+	size = mode_cmd->pitches[0] * mode_cmd->height;
+	size = PAGE_ALIGN(size);
+
+	obj = intel_fbdev_fb_bo_create(drm, size);
+	if (IS_ERR(obj)) {
+		fb = ERR_CAST(obj);
 		goto err;
 	}
 
-	fb = intel_framebuffer_create(&obj->ttm.base,
+	fb = intel_framebuffer_create(obj,
 				      drm_get_format_info(drm,
 							  mode_cmd->pixel_format,
 							  mode_cmd->modifier[0]),
 				      mode_cmd);
 	if (IS_ERR(fb)) {
-		xe_bo_unpin_map_no_vm(obj);
+		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
 		goto err;
 	}
 
-	drm_gem_object_put(&obj->ttm.base);
+	drm_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
 
-- 
2.47.3

