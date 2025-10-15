Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD477BDE3EA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 13:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D99A10E781;
	Wed, 15 Oct 2025 11:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLDWTvZm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B6C10E3A2;
 Wed, 15 Oct 2025 11:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760527169; x=1792063169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BS6JAqB7bP/n9JSEykapnn1Gd7BX10pYLtBjyex9EO8=;
 b=RLDWTvZm6fw51wuvDfiIn90F6VGrmOYgP036z5ArVDITZXmofkJDOwS2
 NFXhGEZRi2BIPIpgq/TT54UIQyUJ8f0LPC2GUe+aPAhc4qnIms5DUP8q3
 GrF0GcbNWKIXEO0S0SAZiUsChaPNyWwhmoPy0grA7qrWNWF3Jvu4CB8pJ
 WriCaFQ1ZlVsL3RFUmsUiIFKlIkw9IcGPmiZkH1Wd66432SDknekNCEmu
 GRP92BTxwSdiC2zHhnncGE1NoLKrloMUglsy9Oi1wWS4GhRnyrsBgHZ2f
 0p++d5aNWdDwCYnmuGx7sCyAEmyUlaefgTs0911Cdit+0KtwHtR4bbkr3 w==;
X-CSE-ConnectionGUID: xoVmq6YSSqu7feqS08R/xg==
X-CSE-MsgGUID: +4vTBM7bRIy6jT/zzy1XJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73378038"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73378038"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 04:19:29 -0700
X-CSE-ConnectionGUID: 0TL1MqyHS2i9EIha778+HA==
X-CSE-MsgGUID: wGNXfqFzQvydKgB4ChBn0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="213091634"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 04:19:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
Date: Wed, 15 Oct 2025 14:19:22 +0300
Message-ID: <20251015111922.2194539-1-jani.nikula@intel.com>
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

For reasons still unknown, xe appears to require a stride alignment of
XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
separate stride alignment for i915 and xe, until the issue is root
caused.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220
Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 5 +++++
 4 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 51d3d87caf43..d5c001761aa0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -218,7 +218,7 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
 	mode_cmd->width = sizes->surface_width;
 	mode_cmd->height = sizes->surface_height;
 
-	mode_cmd->pitches[0] = ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
+	mode_cmd->pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8));
 	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							   sizes->surface_depth);
 	mode_cmd->modifier[0] = DRM_FORMAT_MOD_LINEAR;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 56b145841473..0838fdd37254 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -10,6 +10,11 @@
 #include "i915_drv.h"
 #include "intel_fbdev_fb.h"
 
+u32 intel_fbdev_fb_pitch_align(u32 stride)
+{
+	return ALIGN(stride, 64);
+}
+
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
 	struct drm_i915_private *dev_priv = to_i915(drm);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 1fa44ed28543..fd0b3775dc1f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -6,12 +6,15 @@
 #ifndef __INTEL_FBDEV_FB_H__
 #define __INTEL_FBDEV_FB_H__
 
+#include <linux/types.h>
+
 struct drm_device;
 struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
 
+u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
 int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index af72f7305e5a..e6957d989381 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -12,6 +12,11 @@
 
 #include <generated/xe_device_wa_oob.h>
 
+u32 intel_fbdev_fb_pitch_align(u32 stride)
+{
+	return ALIGN(stride, XE_PAGE_SIZE);
+}
+
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
 	struct xe_device *xe = to_xe_device(drm);
-- 
2.47.3

