Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9DB97BE3C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07F710E5CF;
	Wed, 18 Sep 2024 14:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GW1zaQV7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282D510E5CF;
 Wed, 18 Sep 2024 14:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726671049; x=1758207049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m4ybgkEB7ZT/U+WeAIEHrW9RLo/fr2lyRHD5BPqZK/U=;
 b=GW1zaQV72+1B4XFkme71c+ySlF78kmVPxygt5RQS9LSx0DkLnT36k8q1
 zrwLkptTIEmQBVGi/wt+2sziJjK7BXVySVnt7di7Un+Xp/vtNUqwnSj1P
 BQdLY8jf9KoE7zwoSSamReC0Dw29xYDufNbTdv/66Q7oFdbP1a01h6PRq
 5ZZqrNlFVN31ISBbgmXEQq7rSpJyf1wfYKT2zs6fTcgae/YVFmbpoLqdt
 jTz/nZbemVmRCELrAy7aHRXMXxV+PX9Wu0mJJhZcphxc4fK6GxZ+Qa2zt
 VpGGKskkwER2c3pw7tUIs52StEzcMOGvuRViXgHj0Di33dEUBitMijxN4 w==;
X-CSE-ConnectionGUID: EkoNbeaSSXKFsnnUwr+wSQ==
X-CSE-MsgGUID: xPG1AloKQQCTDVZmdFjfYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29330591"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29330591"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:50:48 -0700
X-CSE-ConnectionGUID: xNrROfyDSEG2QbFG1l7Dcg==
X-CSE-MsgGUID: UXsfhwCmRPKj1zNWJpXMlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74148683"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:50:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: remove IS_LP()
Date: Wed, 18 Sep 2024 17:50:41 +0300
Message-Id: <20240918145042.1447857-1-jani.nikula@intel.com>
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

The .is_lp member of struct intel_device_info and its wrapper IS_LP()
are used to identify just four platforms, VLV/CHV/BXT/GLK. It didn't
become as important as it was perhaps originally planned. Just remove
it, and replace with exact platform identification. In a few places this
becomes slightly verbose, but in many places it improves clarity to
immediately see the exact platforms.

Additionally, this lets us remove the xe compat macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c           | 7 +++++--
 drivers/gpu/drm/i915/display/intel_pps.c            | 4 +++-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c          | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                     | 5 ++---
 drivers/gpu/drm/i915/i915_pci.c                     | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h            | 1 -
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 1 -
 8 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5306bbd13e59..54dc95f7535b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -150,7 +150,7 @@ enum intel_display_subplatform {
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
-#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
+#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915) && !IS_GEMINILAKE(i915))
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 38e34b72bc4e..b679c5391fe6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -589,11 +589,14 @@ static bool intel_pll_is_valid(struct drm_i915_private *dev_priv,
 	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
 		return false;
 
-	if (!IS_PINEVIEW(dev_priv) && !IS_LP(dev_priv))
+	if (!IS_PINEVIEW(dev_priv) &&
+	    !IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
+	    !IS_BROXTON(dev_priv) && !IS_GEMINILAKE(dev_priv))
 		if (clock->m1 <= clock->m2)
 			return false;
 
-	if (!IS_LP(dev_priv)) {
+	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
+	    !IS_BROXTON(dev_priv) && !IS_GEMINILAKE(dev_priv)) {
 		if (clock->p < limit->p.min || limit->p.max < clock->p)
 			return false;
 		if (clock->m < limit->m.min || limit->m.max < clock->m)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index cdbac9f5a14c..cb1e0992b759 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -453,7 +453,9 @@ void intel_pps_reset_all(struct intel_display *display)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
-	if (drm_WARN_ON(display->drm, !IS_LP(dev_priv)))
+	if (drm_WARN_ON(display->drm,
+			!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
+			!IS_BROXTON(dev_priv) && !IS_GEMINILAKE(dev_priv)))
 		return;
 
 	if (!HAS_DISPLAY(display))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index d29005980806..9d958a6f377e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -457,7 +457,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 		icl_get_stolen_reserved(i915, uncore,
 					&reserved_base, &reserved_size);
 	} else if (GRAPHICS_VER(i915) >= 8) {
-		if (IS_LP(i915))
+		if (IS_CHERRYVIEW(i915) || IS_BROXTON(i915) || IS_GEMINILAKE(i915))
 			chv_get_stolen_reserved(i915, uncore,
 						&reserved_base, &reserved_size);
 		else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index def3ca135406..3c4b106cc7a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -612,9 +612,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_LP(i915)		(INTEL_INFO(i915)->is_lp)
-#define IS_GEN9_LP(i915)	(GRAPHICS_VER(i915) == 9 && IS_LP(i915))
-#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_LP(i915))
+#define IS_GEN9_LP(i915)	(IS_BROXTON(i915) || IS_GEMINILAKE(i915))
+#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_GEN9_LP(i915))
 
 #define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
 #define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 617f411feb8c..eaf8a098e1c5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -367,7 +367,6 @@ static const struct intel_device_info ivb_q_info = {
 static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
-	.is_lp = 1,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -451,7 +450,6 @@ static const struct intel_device_info bdw_gt3_info = {
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.is_lp = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
@@ -512,7 +510,6 @@ static const struct intel_device_info skl_gt4_info = {
 
 #define GEN9_LP_FEATURES \
 	GEN(9), \
-	.is_lp = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 643ff1bf74ee..4f4aa4ff9963 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -138,7 +138,6 @@ enum intel_ppgtt_type {
 
 #define DEV_INFO_FOR_EACH_FLAG(func) \
 	func(is_mobile); \
-	func(is_lp); \
 	func(require_force_probe); \
 	func(is_dgfx); \
 	/* Keep has_* in alphabetical order */ \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index f27a2c75b56d..c43673bcecde 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -75,7 +75,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define IS_LP(xe) ((xe) && 0)
 #define IS_GEN9_LP(xe) ((xe) && 0)
 #define IS_GEN9_BC(xe) ((xe) && 0)
 
-- 
2.39.2

