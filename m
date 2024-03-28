Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D899688FCEA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC1E112068;
	Thu, 28 Mar 2024 10:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G91O0gne";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99D310FEFE;
 Thu, 28 Mar 2024 10:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711621502; x=1743157502;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UulI5jcuSKiLiz5cBzudJYlunTkSVvLeO4INLD/pjUA=;
 b=G91O0gneU6r4urTd/g3FI8UFK0YU4jZ8m+/BnLMBLDK0emInhZ6UKkhj
 6C9qGmA27vcSgzMSyVbuGe/rgVOFsekWZrkV1OML0bDgc21UmT24ODSHo
 jFGFcsZw0C1JGT5aVR7pVQ1tsn2A/GNg+J/sb8dqr/A9s02hJrZ46usRZ
 qJwFvdnbQa2q3yJqjWy8ECVLEA3z2jR9Yi3ZiA4J+HUrlkJs1BXoH3Io6
 SuIW1ASZzQx36Yg4aWw5D8ihYj69nUJKzw6+pR57mb+0ydC8WmGjm1taz
 VxdrSqazmSjxgidWHyNA1Zwgsa+Y7wPDcQ2o5aVylLU9hdwROIOdknXmK A==;
X-CSE-ConnectionGUID: hCgmcYWRTj6GZ3CaMsRJ0w==
X-CSE-MsgGUID: Y8MhAMsiTraLitk9Tt8msg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6597181"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6597181"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16483349"
Received: from abdulqaf-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.138])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:24:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, "Arnd Bergmann" <arnd@arndb.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/i915: use fine grained -Woverride-init disable
Date: Thu, 28 Mar 2024 12:24:55 +0200
Message-Id: <20240328102455.944131-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Use localized __diag_push(), __diag_ignore_all() with rationale, and
__diag_pop() for specific initializations instead of blanket disabling
of -Woverride-init across several files.

Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
use localized __diag_ignore_all() instead of per file") and reverted in
commit 290d16104575 ("Revert "drm/i915: use localized
__diag_ignore_all() instead of per file""). The issue turned out to be
in __diag_ignore_all() and it was fixed by commit 689b097a06ba
("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
GCC"). So we should be able to pull this off now.

Cc: "Arnd Bergmann" <arnd@arndb.de>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                       | 5 -----
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 +++++
 drivers/gpu/drm/i915/i915_pci.c                     | 5 +++++
 drivers/gpu/drm/xe/Makefile                         | 3 ---
 5 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3ef6ed41e62b..87d6ba8d2341 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -32,11 +32,6 @@ endif
 # Enable -Werror in CI and development
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
-# Fine grained warnings disable
-CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
-CFLAGS_display/intel_display_device.o = $(call cc-disable-warning, override-init)
-CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
-
 # Support compiling the display code separately for both i915 and xe
 # drivers. Define I915 when building i915.
 subdir-ccflags-y += -DI915
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c02d79b50006..b8903bd0e82a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -17,6 +17,9 @@
 #include "intel_display_reg_defs.h"
 #include "intel_fbc.h"
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
+
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -768,6 +771,8 @@ static const struct intel_display_device_info xe2_lpd_display = {
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 };
 
+__diag_pop();
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 99894a855ef0..43855c6c3509 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -135,6 +135,9 @@ static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	return i915_gem_fb_mmap(obj, vma);
 }
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow field initialization overrides for fb ops");
+
 static const struct fb_ops intelfb_ops = {
 	.owner = THIS_MODULE,
 	__FB_DEFAULT_DEFERRED_OPS_RDWR(intel_fbdev),
@@ -146,6 +149,8 @@ static const struct fb_ops intelfb_ops = {
 	.fb_mmap = intel_fbdev_mmap,
 };
 
+__diag_pop();
+
 static int intelfb_create(struct drm_fb_helper *helper,
 			  struct drm_fb_helper_surface_size *sizes)
 {
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 1e69783ae4fd..405ca17a990b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -38,6 +38,9 @@
 #include "i915_reg.h"
 #include "intel_pci_config.h"
 
+__diag_push();
+__diag_ignore_all("-Woverride-init", "Allow field initialization overrides for device info");
+
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
 	.__runtime.graphics.ip.ver = (x), \
@@ -785,6 +788,8 @@ static const struct intel_device_info mtl_info = {
 
 #undef PLATFORM
 
+__diag_pop();
+
 /*
  * Make sure any device matches here are from most specific to most
  * general.  For example, since the Quanta match is based on the subsystem
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 705c0eaf6e71..aa06a5508ab1 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -173,9 +173,6 @@ subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
 	-Ddrm_i915_gem_object=xe_bo \
 	-Ddrm_i915_private=xe_device
 
-CFLAGS_i915-display/intel_fbdev.o = $(call cc-disable-warning, override-init)
-CFLAGS_i915-display/intel_display_device.o = $(call cc-disable-warning, override-init)
-
 # Rule to build SOC code shared with i915
 $(obj)/i915-soc/%.o: $(srctree)/drivers/gpu/drm/i915/soc/%.c FORCE
 	$(call cmd,force_checksrc)
-- 
2.39.2

