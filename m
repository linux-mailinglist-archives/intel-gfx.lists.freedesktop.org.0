Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CFBB42AF7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFDB10E929;
	Wed,  3 Sep 2025 20:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mkmBAh5c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179AC10E21A;
 Wed,  3 Sep 2025 20:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931544; x=1788467544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OyFPhQbg2O7WvWlDAx0ohZOo/5juTUxHypeZwD7AQQU=;
 b=mkmBAh5cVd+oYTyBP4n+0i4agKhQKKOE1SWrLW3RtKeKiOxg8igSxKM5
 PwGSMEyTiB+tHp/tqzqgL1ABSydHo1nCjVjehws3+FeC4h5TqNqYDWt04
 sw216sLYUavW6LLZMP+tm+vyRt62Eh8L5jaIPq4Or/BcsvpZxGF6dNclC
 MwBhGCSUVpeQ+fGd2mIvvKcSth8WUmkChArdzseqqEbWMMIEb8zMrZy1Q
 UmHJ0jHfuZ3F3b7B3lG9WyIH6Wtlb9btjxORfFdqHjMkrXIDEq7v/oOyx
 lyCRurD/sWLpQMTkZpeYIGvOFQPkiQzBUXGhtF5uAmZxMJyrUR9nUEbME w==;
X-CSE-ConnectionGUID: Q3LapiyyS1iSr46TG4PyPw==
X-CSE-MsgGUID: K8Mi+9NdQ7ywx390bb7XEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833123"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833123"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:24 -0700
X-CSE-ConnectionGUID: 29+T7IEPS4mCHxhB4x6sGw==
X-CSE-MsgGUID: 6BQn7CJhR9C0v+qq62vwUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582434"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
Date: Wed,  3 Sep 2025 23:31:59 +0300
Message-ID: <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
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

Add new helper intel_fbdev_fb_pitch_align() in preparation for further
refactoring. The alignment is different for i915 and xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 8 ++++++--
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 9c557917d781..d1c03d7b9bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -13,6 +13,11 @@
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 
+u32 intel_fbdev_fb_pitch_align(u32 stride)
+{
+	return ALIGN(stride, 64);
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes)
 {
@@ -30,8 +35,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 	mode_cmd.width = sizes->surface_width;
 	mode_cmd.height = sizes->surface_height;
 
-	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
+	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
 	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							  sizes->surface_depth);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 668ae355f5e5..caeb543d5efc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_FBDEV_FB_H__
 #define __INTEL_FBDEV_FB_H__
 
+#include <linux/types.h>
+
 struct drm_device;
 struct drm_fb_helper_surface_size;
 struct drm_gem_object;
@@ -13,6 +15,7 @@ struct fb_info;
 struct i915_vma;
 struct intel_display;
 
+u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index bafca1059a40..fd2c40020eea 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -15,6 +15,11 @@
 
 #include <generated/xe_wa_oob.h>
 
+u32 intel_fbdev_fb_pitch_align(u32 stride)
+{
+	return ALIGN(stride, XE_PAGE_SIZE);
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes)
 {
@@ -31,8 +36,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 	mode_cmd.width = sizes->surface_width;
 	mode_cmd.height = sizes->surface_height;
 
-	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), XE_PAGE_SIZE);
+	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
 	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							  sizes->surface_depth);
 
-- 
2.47.2

