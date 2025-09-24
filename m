Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E4BB9AE84
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8252E10E787;
	Wed, 24 Sep 2025 16:44:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDAHEYCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC62010E77F;
 Wed, 24 Sep 2025 16:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732276; x=1790268276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pcnQKGb54WxtlZAzguaWlfcYy55sYPfJHPzRUX/FR8=;
 b=PDAHEYCLaE4mZIpRCz6zeW0Pzbz74ctfG0vIQbyTUy0S4Btxd2FQfo0f
 fOkmYxMoJZy7Qz161paCBYfCHAdTRhvkLR+svhZUrZj92MWR6+He4KPD3
 mMiwDSJqU0X+1s+E1kCaVYpubHBOLNJfhq0KF/NND0u4Ss17DlmjIRPhT
 493fFp64BmNySfU9eOFpUO2DgIpF2H6J3lHf7gnN/DVHJ97V/IotWM0gB
 X5aAmHmEqZZtN3qPDsEdav3ZoyAOpkNZdRYipldnITlBzA0B4Njtz/Ys9
 LYyJLLqpKAthvo5L+uSOu8Zn5Y7/WeRcG8Qxxf1uEVO/cPaTMttdiVIqc g==;
X-CSE-ConnectionGUID: /uyBdPeDQoqYa3/3I/uOnQ==
X-CSE-MsgGUID: S4YLRtqZR5S7mDPoB8YxnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64676898"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64676898"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:35 -0700
X-CSE-ConnectionGUID: VND9owPHTcG3gQ5khBrHMQ==
X-CSE-MsgGUID: Tjm1nzk8QySoXG9FiFffTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="208009336"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/11] drm/{i915,
 xe}/stolen: convert stolen interface to struct drm_device
Date: Wed, 24 Sep 2025 19:43:39 +0300
Message-ID: <bbfc2aeaeee3156e92d49c73983be05b6feeede2.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
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

Make the stolen interface agnostic to i915/xe, and pass struct
drm_device instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c            | 13 +++++--------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c          | 12 +++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h          |  6 +++---
 .../xe/compat-i915-headers/gem/i915_gem_stolen.h    |  7 +++----
 drivers/gpu/drm/xe/display/xe_stolen.c              |  8 +++++---
 5 files changed, 25 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0d837527aaab..4edb4342833e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -377,14 +377,13 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	drm_WARN_ON(display->drm,
-		    range_end_overflows_t(u64, i915_gem_stolen_area_address(i915),
+		    range_end_overflows_t(u64, i915_gem_stolen_area_address(display->drm),
 					  i915_gem_stolen_node_offset(fbc->compressed_fb),
 					  U32_MAX));
 	drm_WARN_ON(display->drm,
-		    range_end_overflows_t(u64, i915_gem_stolen_area_address(i915),
+		    range_end_overflows_t(u64, i915_gem_stolen_area_address(display->drm),
 					  i915_gem_stolen_node_offset(fbc->compressed_llb),
 					  U32_MAX));
 	intel_de_write(display, FBC_CFB_BASE,
@@ -798,7 +797,6 @@ static u64 intel_fbc_cfb_base_max(struct intel_display *display)
 
 static u64 intel_fbc_stolen_end(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u64 end;
 
 	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
@@ -807,7 +805,7 @@ static u64 intel_fbc_stolen_end(struct intel_display *display)
 	 * underruns, even if that range is not reserved by the BIOS. */
 	if (display->platform.broadwell ||
 	    (DISPLAY_VER(display) == 9 && !display->platform.broxton))
-		end = i915_gem_stolen_area_size(i915) - 8 * 1024 * 1024;
+		end = i915_gem_stolen_area_size(display->drm) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
 
@@ -861,7 +859,6 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 			       unsigned int size, int min_limit)
 {
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	drm_WARN_ON(display->drm,
@@ -893,7 +890,7 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
 		i915_gem_stolen_remove_node(fbc->compressed_llb);
 err:
-	if (i915_gem_stolen_initialized(i915))
+	if (i915_gem_stolen_initialized(display->drm))
 		drm_info_once(display->drm,
 			      "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
@@ -1435,7 +1432,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (!fbc)
 		return 0;
 
-	if (!i915_gem_stolen_initialized(i915)) {
+	if (!i915_gem_stolen_initialized(display->drm)) {
 		plane_state->no_fbc_reason = "stolen memory not initialised";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b2812ec79d19..e73b369c3347 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -1024,18 +1024,24 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj)
 	return obj->ops == &i915_gem_object_stolen_ops;
 }
 
-bool i915_gem_stolen_initialized(const struct drm_i915_private *i915)
+bool i915_gem_stolen_initialized(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	return drm_mm_initialized(&i915->mm.stolen);
 }
 
-u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915)
+u64 i915_gem_stolen_area_address(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	return i915->dsm.stolen.start;
 }
 
-u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915)
+u64 i915_gem_stolen_area_size(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	return resource_size(&i915->dsm.stolen);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index c670736f09e1..7b0386002ed4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -34,9 +34,9 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
 
 #define I915_GEM_STOLEN_BIAS SZ_128K
 
-bool i915_gem_stolen_initialized(const struct drm_i915_private *i915);
-u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915);
-u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915);
+bool i915_gem_stolen_initialized(struct drm_device *drm);
+u64 i915_gem_stolen_area_address(struct drm_device *drm);
+u64 i915_gem_stolen_area_size(struct drm_device *drm);
 
 u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node);
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 7bdf73fad8bf..42927326e567 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -10,7 +10,6 @@
 
 struct drm_device;
 struct intel_stolen_node;
-struct xe_device;
 
 int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
 					 u32 size, u32 align,
@@ -20,15 +19,15 @@ int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u32 size, u32 al
 
 void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
 
-bool i915_gem_stolen_initialized(struct xe_device *xe);
+bool i915_gem_stolen_initialized(struct drm_device *drm);
 
 bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
 
 u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node);
 
-u64 i915_gem_stolen_area_address(const struct xe_device *xe);
+u64 i915_gem_stolen_area_address(struct drm_device *drm);
 
-u64 i915_gem_stolen_area_size(const struct xe_device *xe);
+u64 i915_gem_stolen_area_size(struct drm_device *drm);
 
 u64 i915_gem_stolen_node_address(struct intel_stolen_node *node);
 
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index c1afe70454d1..d7af731d9c90 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -56,8 +56,10 @@ void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
 	node->bo = NULL;
 }
 
-bool i915_gem_stolen_initialized(struct xe_device *xe)
+bool i915_gem_stolen_initialized(struct drm_device *drm)
 {
+	struct xe_device *xe = to_xe_device(drm);
+
 	return ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
 }
 
@@ -75,7 +77,7 @@ u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
 }
 
 /* Used for < gen4. These are not supported by Xe */
-u64 i915_gem_stolen_area_address(const struct xe_device *xe)
+u64 i915_gem_stolen_area_address(struct drm_device *drm)
 {
 	WARN_ON(1);
 
@@ -83,7 +85,7 @@ u64 i915_gem_stolen_area_address(const struct xe_device *xe)
 }
 
 /* Used for gen9 specific WA. Gen9 is not supported by Xe */
-u64 i915_gem_stolen_area_size(const struct xe_device *xe)
+u64 i915_gem_stolen_area_size(struct drm_device *drm)
 {
 	WARN_ON(1);
 
-- 
2.47.3

