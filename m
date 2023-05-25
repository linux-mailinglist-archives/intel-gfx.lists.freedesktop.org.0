Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1437A7118C9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 23:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C97F10E769;
	Thu, 25 May 2023 21:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0B910E768
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 21:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685048834; x=1716584834;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1UQRMpXqw9Xp+YUu0wFqfsGfiWzRYUw3SgtXlcGjIIg=;
 b=my6wit60N2R0a8t/jSR3t2zF6Jx81R2pduE9waYcEmzyH5p8a1i1WZ5K
 xdFH72ILjpGh1QXhF5yWiRk6jr5dcBedWQETG+pPTwUcckGEnP+6SS/yQ
 Vu1kO01MCmAXzbEFtmvVnXxbY7tMPncDsTyVaGk0Vr9o41WQJRMYT7y91
 +Z0pRnDO+lZBqlDhigeH5qfHIF6sn8X9zQ5hhc5fvS32b0gC22p39pld1
 lTH26KprbzCFIxIITtcdYVTqCdTfP3nUs75HCoHvqyv2aYugS1VfiRkZv
 WcdkUnPCZsCQBdKYq14ImbiK41f0caCuqsRY5i/1wCYS8revffdiSM34s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="334371784"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="334371784"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 14:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="682478264"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="682478264"
Received: from kseifrie-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.55.74])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 14:06:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 00:06:53 +0300
Message-Id: <20230525210653.1048972-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use localized __diag_ignore_all()
 instead of per file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use localized __diag_push(), __diag_ignore_all() with rationale, and
__diag_pop() for specific initializations instead of blanket disabling
of -Woverride-init across several files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                       | 5 -----
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 +++++
 drivers/gpu/drm/i915/i915_pci.c                     | 5 +++++
 4 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 06374fc072d3..1c9ed4c52760 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -23,11 +23,6 @@ subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
-# Fine grained warnings disable
-CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
-CFLAGS_display/intel_display_device.o = $(call cc-disable-warning, override-init)
-CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
-
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a513ac8f71a3..464df1764a86 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -14,6 +14,9 @@
 #include "intel_display_reg_defs.h"
 #include "intel_fbc.h"
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
+
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -650,6 +653,8 @@ static const struct intel_display_device_info xe_lpdp_display = {
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 };
 
+__diag_pop();
+
 #undef INTEL_VGA_DEVICE
 #undef INTEL_QUANTA_VGA_DEVICE
 #define INTEL_VGA_DEVICE(id, info) { id, info }
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index aab1ae74a8f7..2c3f7befed17 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -130,6 +130,9 @@ static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	return i915_gem_fb_mmap(obj, vma);
 }
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow overriding the default ops");
+
 static const struct fb_ops intelfb_ops = {
 	.owner = THIS_MODULE,
 	DRM_FB_HELPER_DEFAULT_OPS,
@@ -144,6 +147,8 @@ static const struct fb_ops intelfb_ops = {
 	.fb_mmap = intel_fbdev_mmap,
 };
 
+__diag_pop();
+
 static int intelfb_alloc(struct drm_fb_helper *helper,
 			 struct drm_fb_helper_surface_size *sizes)
 {
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 928975d5fe2f..3d7a5db9833b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -38,6 +38,9 @@
 #include "i915_reg.h"
 #include "intel_pci_config.h"
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
+
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
 	.__runtime.graphics.ip.ver = (x), \
@@ -843,6 +846,8 @@ static const struct intel_device_info mtl_info = {
 
 #undef PLATFORM
 
+__diag_pop();
+
 /*
  * Make sure any device matches here are from most specific to most
  * general.  For example, since the Quanta match is based on the subsystem
-- 
2.39.2

