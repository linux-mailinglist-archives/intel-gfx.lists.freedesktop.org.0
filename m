Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3362BFD0D0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 18:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A135410E7FB;
	Wed, 22 Oct 2025 16:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4z9DI+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BBB10E7FA;
 Wed, 22 Oct 2025 16:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761149461; x=1792685461;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f1zrHzW2xGIEccqhbeYpTlOQuure3q3N6eyTZZcH+WU=;
 b=g4z9DI+OhQHM9XHlspF4W5miO3Xw/+B8fgdXGwbTbzpULl5YHFIR4ZZm
 iDFyIwTnkKsLRDxV8F8rS99HXG/ZSAmF7qWWe/zLfQlsS/txMJtr6Lfze
 TrRSdRU4XtyWdZkPAeRUXuqzCxPxhDpd3AIXP3mja6j97eZ+DE31HJvAT
 /tuNdz+4ViSq+SSWAALJoOwLVWGeibpB7XGzYifPPT96wJ8S6SABpOT/X
 n/WQ4Hw1gSYR5jxw+ZCKxS30pXf/OqdP+4d3YR2+Olf+Cx1DgS7g4jXZc
 h6ajNxJFmwHuvE/wvX7m8CCM8L+vKHF5//nRVnlEmYruWtV4UL79SeQ7M Q==;
X-CSE-ConnectionGUID: djzniQn7TfWv8GaIrDQ1ZQ==
X-CSE-MsgGUID: kTiofnjFT++ReOGVgSnxjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66946309"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="66946309"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:11:00 -0700
X-CSE-ConnectionGUID: nFPnopXAQXGpu+E1V50X+g==
X-CSE-MsgGUID: ZY3kt+gdQAeAEIpDd0nZwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183961953"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:10:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten@lankhorst.se>
Subject: [PATCH v2] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
Date: Wed, 22 Oct 2025 19:10:54 +0300
Message-ID: <20251022161054.708388-1-jani.nikula@intel.com>
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

v2: Add FIXME comment, reference issue with Link (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten@lankhorst.se>
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220
Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  3 +++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 11 +++++++++++
 4 files changed, 20 insertions(+), 1 deletion(-)

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
index af72f7305e5a..7ad76022cb14 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -12,6 +12,17 @@
 
 #include <generated/xe_device_wa_oob.h>
 
+/*
+ * FIXME: There shouldn't be any reason to have XE_PAGE_SIZE stride
+ * alignment. The same 64 as i915 uses should be fine, and we shouldn't need to
+ * have driver specific values. However, dropping the stride alignment to 64
+ * leads to underflowing the bo pin count in the atomic cleanup work.
+ */
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

