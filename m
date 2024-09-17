Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D497B2D6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020AC10E4B6;
	Tue, 17 Sep 2024 16:16:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FhlHslQr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9904D10E4B6;
 Tue, 17 Sep 2024 16:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589784; x=1758125784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VOVk8DRYar+HCbxMrAlb009WXPr36t/qLdsFc1yL1qA=;
 b=FhlHslQrQDnCxRJJeUpSDXMCRhrQvydHChwH3WebsDlfUrffJsc7rSau
 avot8Rt93Y8tTLphttLiAsvLzrU+FmZlTS9PmiyzzNqNtyU0CtRjzUsZ8
 XLGXKmFWwI8ezD7E6ExZ0Xfu0QSfCTxgJG6poaKBUeoyk2WJYt8i16auh
 CJAookLytAKdkPY7AsUZ3GJSO19946bkc2C660VDC24RxLUFUK0XOl8nb
 hxQ3iF+s7EpTz7GFznFTrLlo3bTvQ4SVpVwUS0e+rS41CBeodjqxlv0go
 YyXbMetqTLGHbfVcOgaLbkO1aOE9G97+tbA2UE+FIZ+jOKoiHb+AGyZcj w==;
X-CSE-ConnectionGUID: KgjM2mKlRE2caeR+OcxHmg==
X-CSE-MsgGUID: PNLvg1G9T92MeXzActYQZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42934491"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42934491"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:20 -0700
X-CSE-ConnectionGUID: niO3XIlTSz2W4oouxp+KAw==
X-CSE-MsgGUID: +hxxa/CWRT+xAwAvbn12ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="70023608"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 21/22] drm/xe: remove a number of superfluous compat macros
Date: Tue, 17 Sep 2024 19:14:00 +0300
Message-Id: <418185993c5825a54ac3f87a85463c799c91e47d.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Some compat macros have inadvertently been sprinkled in xe core
headers. Remove the final users and the macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 4 ++--
 drivers/gpu/drm/xe/xe_bo.h                  | 2 --
 drivers/gpu/drm/xe/xe_bo_types.h            | 3 ---
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index c425349eac34..ca95fcd098ec 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -71,7 +71,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		goto err;
 	}
 
-	drm_gem_object_put(intel_bo_to_drm_bo(obj));
+	drm_gem_object_put(&obj->ttm.base);
 
 	return to_intel_framebuffer(fb);
 
@@ -102,7 +102,7 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
 	XE_WARN_ON(iosys_map_is_null(&obj->vmap));
 
 	info->screen_base = obj->vmap.vaddr_iomem;
-	info->screen_size = intel_bo_to_drm_bo(obj)->size;
+	info->screen_size = obj->ttm.base.size;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/xe/xe_bo.h b/drivers/gpu/drm/xe/xe_bo.h
index 6e4be52306df..31f4ba3bd8c1 100644
--- a/drivers/gpu/drm/xe/xe_bo.h
+++ b/drivers/gpu/drm/xe/xe_bo.h
@@ -312,8 +312,6 @@ static inline unsigned int xe_sg_segment_size(struct device *dev)
 	return round_down(max / 2, PAGE_SIZE);
 }
 
-#define i915_gem_object_flush_if_display(obj)		((void)(obj))
-
 #if IS_ENABLED(CONFIG_DRM_XE_KUNIT_TEST)
 /**
  * xe_bo_is_mem_type - Whether the bo currently resides in the given
diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
index 2ed558ac2264..8b9201775081 100644
--- a/drivers/gpu/drm/xe/xe_bo_types.h
+++ b/drivers/gpu/drm/xe/xe_bo_types.h
@@ -78,7 +78,4 @@ struct xe_bo {
 		struct list_head vram_userfault_link;
 };
 
-#define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
-#define intel_bo_to_i915(bo) to_i915(intel_bo_to_drm_bo(bo)->dev)
-
 #endif
-- 
2.39.2

