Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C140974EC2E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 13:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC03310E36B;
	Tue, 11 Jul 2023 11:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3799410E365
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 11:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689073349; x=1720609349;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DlIOEXVq7GVHkGPF5ImXfvaYM1hPEOgmqK5LW/MuAvk=;
 b=DHyl2ah/fRQiHCju1evj9y2VSaQzIBlf62U37ePKI73LpnENIaV+PSsl
 2afiloyBIO4IYbEIMy93lhogrVmLzJQSoMnVBAuovcmc/RAxncvbE6epC
 d2CEILgr02B+GHp4a45IAcvxSCmJYHnM09SAjBIJw1t3VoWSmXBhcMvjp
 YUv79RLeMKLCZG2EeUEAz+WWSSTbArMWg/NYDVfSjkWH7yeSNSIam0oCr
 f+WDUoWP240rt5d62def+ikXVc5dMkWOYGNpMLhPmgc+V65MxGvLAQ7nM
 qSM3gfjNo5+DkxtrQQrJJlDQlvegaOwurPpXqpw674/ktURn/lqVD/gB+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="395373754"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="395373754"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="865705424"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="865705424"
Received: from sneaga-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:02:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jul 2023 14:02:14 +0300
Message-Id: <20230711110214.25093-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: use localized
 __diag_ignore_all() instead of per file"
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
Cc: John Garry <john.g.garry@oracle.com>, jani.nikula@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 88e9664434c994e97a9f6f8cdd1535495c660cea.

__diag_ignore_all() only works for GCC 8 or later.

-Woverride-init (from -Wextra, enabled in i915 Makefile) combined with
CONFIG_WERROR=y or W=e breaks the build for older GCC.

With i386_defconfig and x86_64_defconfig enabling CONFIG_WERROR=y by
default, we really need to roll back the change.

An alternative would be to disable -Woverride-init in the Makefile for
GCC <8, but the revert seems like the safest bet now.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8768
Reported-by: John Garry <john.g.garry@oracle.com>
References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com
References: https://lore.kernel.org/r/87wmzezns4.fsf@intel.com
Fixes: 88e9664434c9 ("drm/i915: use localized __diag_ignore_all() instead of per file")
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                       | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 -----
 drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 -----
 drivers/gpu/drm/i915/i915_pci.c                     | 5 -----
 4 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 2be9dd960540..c5fc91cd58e7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -23,6 +23,11 @@ subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
+# Fine grained warnings disable
+CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
+CFLAGS_display/intel_display_device.o = $(call cc-disable-warning, override-init)
+CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
+
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index e4afa7334c82..8286e79522d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -16,9 +16,6 @@
 #include "intel_display_reg_defs.h"
 #include "intel_fbc.h"
 
-__diag_push();
-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
-
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -727,8 +724,6 @@ static const struct intel_display_device_info xe_lpdp_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
-__diag_pop();
-
 #undef INTEL_VGA_DEVICE
 #undef INTEL_QUANTA_VGA_DEVICE
 #define INTEL_VGA_DEVICE(id, info) { id, info }
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1cc0ddc6a310..80c3f88310db 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -135,9 +135,6 @@ static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	return i915_gem_fb_mmap(obj, vma);
 }
 
-__diag_push();
-__diag_ignore_all("-Woverride-init", "Allow overriding the default ops");
-
 static const struct fb_ops intelfb_ops = {
 	.owner = THIS_MODULE,
 	__FB_DEFAULT_DEFERRED_OPS_RDWR(intel_fbdev),
@@ -149,8 +146,6 @@ static const struct fb_ops intelfb_ops = {
 	.fb_mmap = intel_fbdev_mmap,
 };
 
-__diag_pop();
-
 static int intelfb_alloc(struct drm_fb_helper *helper,
 			 struct drm_fb_helper_surface_size *sizes)
 {
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index dea3609fc496..fcacdc21643c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -38,9 +38,6 @@
 #include "i915_reg.h"
 #include "intel_pci_config.h"
 
-__diag_push();
-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
-
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
 	.__runtime.graphics.ip.ver = (x), \
@@ -846,8 +843,6 @@ static const struct intel_device_info mtl_info = {
 
 #undef PLATFORM
 
-__diag_pop();
-
 /*
  * Make sure any device matches here are from most specific to most
  * general.  For example, since the Quanta match is based on the subsystem
-- 
2.39.2

