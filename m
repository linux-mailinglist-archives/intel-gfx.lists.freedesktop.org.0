Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFE7B24E8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD3F10E6A3;
	Thu, 28 Sep 2023 18:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CB810E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924597; x=1727460597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hnqr5uWu5F9WBjZPB4meu8W4GTBxyv5v400/N+PnywA=;
 b=gloSzPKgVAMo9KJtD1xNNzA2gUlheeywQPoiJZcLyNjfqm9/scKkgcKy
 sByGuhV7NySYuhe2da/g0G2k4MILQxuYhcIYZ7X9Kav8r3IpOF5KcqRxr
 UK6Z2CmAB6A179pkfvfPkqxG6CueojeBDWN27YUSdMenGgacnsynmOR6n
 o1TgnGZ065v/V5fAkXwuOLmnVbxAPGp8dCCM60QLTdgxq+PRun8hmOEIg
 VFV1WnyUGvYgFQX0YFQUK02pHkOKTZzrCFdtWYUH4DejoUKozX0efGQD1
 RMPTRjMk71bGTHKS9M4jD8lqQ2oJDVyincM/tmrjemaaMo3optV48J8kP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379407286"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="379407286"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080659546"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080659546"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:58 +0300
Message-Id: <679db22381c8aa9c8c533779044ad6f6d89a45d4.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: stop including gt/uc/intel_uc.h
 from i915_drv.h
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

Turns out it's not needed, except implicitly in a handful of
places. Make them explicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c   | 5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c | 1 +
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 1 +
 drivers/gpu/drm/i915/i915_drv.h            | 1 -
 drivers/gpu/drm/i915/i915_sysfs.c          | 2 ++
 drivers/gpu/drm/i915/i915_utils.h          | 1 +
 drivers/gpu/drm/i915/i915_vgpu.c           | 2 ++
 drivers/gpu/drm/i915/intel_region_ttm.c    | 2 ++
 8 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 3198b64ad7db..a12047897650 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -5,10 +5,11 @@
 
 #include <uapi/drm/i915_drm.h>
 
-#include "intel_memory_region.h"
-#include "gem/i915_gem_region.h"
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_object.h"
+#include "gem/i915_gem_region.h"
 #include "i915_drv.h"
+#include "intel_memory_region.h"
 
 void __iomem *
 i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
index ad649523d5e0..b9f02de8c1bb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
@@ -10,6 +10,7 @@
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
 
+#include "gem/i915_gem_object.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
 #include "gem/i915_gem_ttm_move.h"
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index d38b914d1206..0724ce39744a 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -5,6 +5,7 @@
 
 #include "gen7_renderclear.h"
 #include "i915_drv.h"
+#include "i915_vma.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cd4d55f5f8de..fb7139514e18 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -45,7 +45,6 @@
 
 #include "gt/intel_region_lmem.h"
 #include "gt/intel_workarounds.h"
-#include "gt/uc/intel_uc.h"
 
 #include "soc/intel_pch.h"
 
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 613decd47760..6226ce924562 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -30,6 +30,8 @@
 #include <linux/stat.h>
 #include <linux/sysfs.h>
 
+#include <drm/drm_file.h>
+
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rc6.h"
 #include "gt/intel_rps.h"
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c61066498bf2..039b0a849c81 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -26,6 +26,7 @@
 #define __I915_UTILS_H
 
 #include <linux/list.h>
+#include <linux/delay.h>
 #include <linux/overflow.h>
 #include <linux/sched.h>
 #include <linux/string_helpers.h>
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index c97323973f9b..91f07b778eda 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -21,7 +21,9 @@
  * SOFTWARE.
  */
 
+#include "gt/intel_gtt.h"
 #include "i915_drv.h"
+#include "i915_gem_gtt.h"
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index bf6097e7433d..d1fbd476a435 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -11,8 +11,10 @@
 
 #include "intel_region_ttm.h"
 
+#include "gem/i915_gem_object.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h" /* For the funcs/ops export only */
+
 /**
  * DOC: TTM support structure
  *
-- 
2.39.2

