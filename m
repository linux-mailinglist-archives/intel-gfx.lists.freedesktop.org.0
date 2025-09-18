Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E33BB83929
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0324B10E67C;
	Thu, 18 Sep 2025 08:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEwaTCdq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393EA10E67C;
 Thu, 18 Sep 2025 08:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184904; x=1789720904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zsUkddeCHenTSx8VhuI1imhHLtagck2ZstCvMOIftZs=;
 b=aEwaTCdqaXfwyNB8HR5j+vqx3whXNdvhXz7z0KaWqyPdaa7EhfzKmOFE
 hkOAaDF1Cn3875xUVn9sUNl0TJHGEIEamJCrLdLp/IFKzvXuBiv6xhYgg
 hsYJNGrbeDFoJAz2LuZOL0GSIG5SPrucLpNBjmp5hrB2L9E77Vdt4SM39
 OPPfrmAhZvabYFQGfSFjYIaqgINRM8a4FlDIxAwnBMIEkVEJYyHLsWP2+
 6ajuQufiWs8tXa1eqGgSK2xPPqaI+yLptsHOJxlUlZbkXVr3N/xkAmka+
 WW4NC0tLyj6j4TDOpjkAwh0vhMjp4iz/6b765dvYjFfIfiSIDn5ft6MtJ g==;
X-CSE-ConnectionGUID: w+ADWpfIRWWRmWQemOhFLw==
X-CSE-MsgGUID: N+pCzxmdSpm6IsfrmYK1YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="77946200"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="77946200"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:44 -0700
X-CSE-ConnectionGUID: rqgTCU56Sd6r4KuUKgPkhw==
X-CSE-MsgGUID: OnTQ9ZfJQrGO0Vjd+Cik2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206427926"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 07/10] drm/{i915, xe}/fbdev: add intel_fbdev_fb_bo_destroy()
Date: Thu, 18 Sep 2025 11:40:57 +0300
Message-ID: <22bc3c3158f5a22ab258ada8684766fdf75fefec.1758184771.git.jani.nikula@intel.com>
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

i915 and xe do different things on the failure path; i915 calls
drm_gem_object_put() while xe calls xe_bo_unpin_map_no_vm(). Add a
helper to enable further refactoring.

v2: Call drm_gem_object_put() on intel_fbdev_fb_bo_destroy()

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index bfd05fd34348..a7dab8cd3aa2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -46,6 +46,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 	return &obj->base;
 }
 
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
+{
+	drm_gem_object_put(obj);
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -68,7 +73,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 							  mode_cmd->modifier[0]),
 				      mode_cmd);
 	if (IS_ERR(fb)) {
-		drm_gem_object_put(obj);
+		intel_fbdev_fb_bo_destroy(obj);
 		goto err;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 6a4ba40d5831..8b6214b0ad0e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -14,6 +14,7 @@ struct i915_vma;
 struct intel_display;
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 48225062211c..defbab3df55b 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -49,6 +49,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 	return &obj->ttm.base;
 }
 
+void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
+{
+	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -71,7 +76,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 							  mode_cmd->modifier[0]),
 				      mode_cmd);
 	if (IS_ERR(fb)) {
-		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
+		intel_fbdev_fb_bo_destroy(obj);
 		goto err;
 	}
 
-- 
2.47.3

