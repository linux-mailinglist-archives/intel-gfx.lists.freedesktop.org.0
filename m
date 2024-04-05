Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85EA89A518
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0781C10FEFF;
	Fri,  5 Apr 2024 19:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6t6AEFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60C110FA6A;
 Fri,  5 Apr 2024 19:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345890; x=1743881890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KFVQPmZcjJTslaIRq44n373/bGdN+8N0QZx16s8OZdk=;
 b=k6t6AEFqgHXWX0rvky/c5ixvejTr+7uaylR80VofHKU4S9EhADRlYTWx
 XKD8OafDcKnSzAqrB3DC57VNeIuEex6zFwsVAPXh8cZEge6cCGJ2/8t5M
 BmIQnOgpRh039+NaiC0mvGkFyUQJmDFLlGiGa0n2MyoM1TJcsh72d/Mct
 HoWp6+A/xpUhs7muDHPJ5M37BBmhIuY4soBSM/XyRvYvtqy5I07iaTx8O
 4iaoKCz15+/Zy+/1YtDqjl3KVFC0tDw5kt+mxS0fY95Mu3qmmHgxnAErI
 aOQLfMO6OxAUkLFPVfzDRvLEGYzx66LPnDso1WYKe7tMrOMR9fOa305Ny A==;
X-CSE-ConnectionGUID: 7GqxDmHYQAmsmvnY3p18UA==
X-CSE-MsgGUID: 1pPnKEBlRJCj3t03qbxjqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7816601"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7816601"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:10 -0700
X-CSE-ConnectionGUID: P6QDXrQsQuyRX50AJlxSxQ==
X-CSE-MsgGUID: mlPBR8T0RWW5LJH/NkEidA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19697507"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 4/6] drm/xe/display: clean up a lot of cruft from compat
 i915_drv.h
Date: Fri,  5 Apr 2024 22:37:41 +0300
Message-Id: <d773f26cced0b376a30a6cb1e38c9581b469d8cf.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
References: <cover.1712345787.git.jani.nikula@intel.com>
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

There's a bunch of unused cruft. Just throw away.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 32 -------------------
 1 file changed, 32 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 837e95e3604e..a922aa7ad11e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -40,12 +40,8 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 	return dev_get_drvdata(kdev);
 }
 
-
-#define INTEL_JASPERLAKE 0
-#define INTEL_ELKHARTLAKE 0
 #define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
 #define INTEL_INFO(dev_priv)	(&((dev_priv)->info))
-#define INTEL_DEVID(dev_priv)	((dev_priv)->info.devid)
 #define IS_I830(dev_priv)	(dev_priv && 0)
 #define IS_I845G(dev_priv)	(dev_priv && 0)
 #define IS_I85X(dev_priv)	(dev_priv && 0)
@@ -94,19 +90,12 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define IP_VER(ver, rel)                ((ver) << 8 | (rel))
 
-#define INTEL_DISPLAY_ENABLED(xe) (HAS_DISPLAY((xe)) && !intel_opregion_headless_sku((xe)))
-
-#define IS_GRAPHICS_VER(xe, first, last) \
-	((xe)->info.graphics_verx100 >= first * 100 && \
-	 (xe)->info.graphics_verx100 <= (last*100 + 99))
 #define IS_MOBILE(xe) (xe && 0)
-#define HAS_LLC(xe) (!IS_DGFX((xe)))
 
 #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
 
 /* Workarounds not handled yet */
 #define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step <= last; })
-#define IS_GRAPHICS_STEP(xe, first, last) ({u8 __step = (xe)->info.step.graphics; first <= __step && __step <= last; })
 
 #define IS_LP(xe) (0)
 #define IS_GEN9_LP(xe) (0)
@@ -123,23 +112,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_KABYLAKE_ULT(xe) (xe && 0)
 #define IS_SKYLAKE_ULT(xe) (xe && 0)
 
-#define IS_DG1_GRAPHICS_STEP(xe, first, last) (IS_DG1(xe) && IS_GRAPHICS_STEP(xe, first, last))
-#define IS_DG2_GRAPHICS_STEP(xe, variant, first, last) \
-	((xe)->info.subplatform == XE_SUBPLATFORM_DG2_ ## variant && \
-	 IS_GRAPHICS_STEP(xe, first, last))
-
-#define IS_TIGERLAKE_DISPLAY_STEP(xe, first, last) (IS_TIGERLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_ROCKETLAKE_DISPLAY_STEP(xe, first, last) (IS_ROCKETLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_DG1_DISPLAY_STEP(xe, first, last) (IS_DG1(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_DG2_DISPLAY_STEP(xe, first, last) (IS_DG2(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_ADLP_DISPLAY_STEP(xe, first, last) (IS_ALDERLAKE_P(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_ADLS_DISPLAY_STEP(xe, first, last) (IS_ALDERLAKE_S(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_JSL_EHL_DISPLAY_STEP(xe, first, last) (IS_JSL_EHL(xe) && IS_DISPLAY_STEP(xe, first, last))
-#define IS_MTL_DISPLAY_STEP(xe, first, last) (IS_METEORLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
-
-/* FIXME: Add subplatform here */
-#define IS_MTL_GRAPHICS_STEP(xe, sub, first, last) (IS_METEORLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
-
 #define IS_DG2_G10(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G10)
 #define IS_DG2_G11(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G11)
 #define IS_DG2_G12(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G12)
@@ -147,12 +119,9 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_ICL_WITH_PORT_F(xe) (xe && 0)
 #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
 #define to_intel_bo(x) gem_to_xe_bo((x))
-#define mkwrite_device_info(xe) (INTEL_INFO(xe))
 
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
-#define intel_has_gpu_reset(a) (a && 0)
-
 #include "intel_wakeref.h"
 
 static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
@@ -206,7 +175,6 @@ struct i915_sched_attr {
 #define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
 
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
-#define HPD_STORM_DEFAULT_THRESHOLD 50
 
 #ifdef CONFIG_ARM64
 /*
-- 
2.39.2

