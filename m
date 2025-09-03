Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571D4B42AFA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02B310E92F;
	Wed,  3 Sep 2025 20:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJQ9wo/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAB110E930;
 Wed,  3 Sep 2025 20:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931560; x=1788467560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=THmQMRLcr7sukKN2pGy/WHTSAUV0DuP9YI3yvW5oixE=;
 b=BJQ9wo/UcJ684uEhowSYycchOh6SyG/wLnuDkm8zIWPMmfYK2iz6nJoo
 0vwxAiB3VraBJhAImg6IZaWmWb/qtiAmLfP7S1Eju2gq0eXGcnhcddBiv
 e9FnHik3aPxqsH+CfzE5fNIuCHomtvOuGY9Gy/2cTMvcbTtAXwacv1FoB
 4NtcaUg5IAqwkdp7MplPjSrq6+BfMFXUMTShDVGHNV9dFJra6tYjmr07g
 9rQqA+8KcbCQbkyKKSHefXv1Ukohrmkwukw/Y/BRmeoZnF0+Too2vcjn2
 EkjigWrJd1XCcBLJwggVPh6wFwm43H0zSocS7PiQZDSpedgxVxVqLF2KK A==;
X-CSE-ConnectionGUID: +YxnvuJeTWKq4nbn0MRByg==
X-CSE-MsgGUID: +ONZfg8oRrGVAPCA01mBVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833155"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833155"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:39 -0700
X-CSE-ConnectionGUID: HTmLxhPaRhCVdiX7pHnkYQ==
X-CSE-MsgGUID: sH37HpPmR4esJv2Xt+8eCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582478"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/9] drm/xe/fbdev: abstract bo creation
Date: Wed,  3 Sep 2025 23:32:02 +0300
Message-ID: <cc5bfc9b34d470cd17e7d2cf4ff71f76d3c2cef5.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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
index 8e2f338d36fa..9a5d14d5781a 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -20,16 +20,11 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, XE_PAGE_SIZE);
 }
 
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
@@ -53,21 +48,39 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
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
2.47.2

