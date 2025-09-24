Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFFBB9AE81
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2A210E783;
	Wed, 24 Sep 2025 16:44:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWZylckj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78AF10E782;
 Wed, 24 Sep 2025 16:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732271; x=1790268271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ajQ6nUhwUhgYePULWTZ19eELxMn/5dI/NwW7C9OaNg=;
 b=dWZylckjhqBvqaCEcB6TTw/xhdsmitUU6L3jY2atuGFfn33PUyuKpMA9
 1akeWykgC1C2OzaqalBvrorIw5LHBmOrGsJDfbzXLZPvQZ8U9rUb2ue/M
 ZihxHpV07VFxVz3R5fEx1mUso9sPIj/p8V0Jocj0R/+EY1oErkMcJHVSI
 smNwrwwbBIhVu1NQnNtFTY9NKdbc8aWDpEc8dMMs6EYK3wo6Up771shVl
 qFX55m7t6u0q22ILY+zsQRNoCYiC+8tKWGDDgjU9Bh3MtM1hZQRsMKH7h
 /FtWAI1/ibeZk+sowhw3+/hfvvBbxVRB4O2sZ7hF/MMiJd7UaFURRQBpG Q==;
X-CSE-ConnectionGUID: 5T9i1FHRREKFqtB0Hr5T8g==
X-CSE-MsgGUID: o5k+tcELT7CduUgxU+4rfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64676884"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64676884"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:30 -0700
X-CSE-ConnectionGUID: tV20KHGzTs2v2Y9vvR+juA==
X-CSE-MsgGUID: UGBbrR5DRDuEslvLVcd59Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="208009294"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/11] drm/{i915,
 xe}/stolen: use the stored i915/xe device pointer
Date: Wed, 24 Sep 2025 19:43:38 +0300
Message-ID: <6f31114c8113ce2254d422ca53992088b673fb2f.1758732183.git.jani.nikula@intel.com>
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

Now that we store the i915/xe device pointer in struct
intel_stolen_node, we can reduce parameter passing in a number of
functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 21 +++++++------------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 20 ++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    | 12 ++++-------
 .../compat-i915-headers/gem/i915_gem_stolen.h | 13 ++++--------
 drivers/gpu/drm/xe/display/xe_stolen.c        | 17 +++++++--------
 5 files changed, 33 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 05199434cb7c..0d837527aaab 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -388,9 +388,9 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 					  i915_gem_stolen_node_offset(fbc->compressed_llb),
 					  U32_MAX));
 	intel_de_write(display, FBC_CFB_BASE,
-		       i915_gem_stolen_node_address(i915, fbc->compressed_fb));
+		       i915_gem_stolen_node_address(fbc->compressed_fb));
 	intel_de_write(display, FBC_LL_BASE,
-		       i915_gem_stolen_node_address(i915, fbc->compressed_llb));
+		       i915_gem_stolen_node_address(fbc->compressed_llb));
 }
 
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
@@ -836,20 +836,19 @@ static int find_compression_limit(struct intel_fbc *fbc,
 				  unsigned int size, int min_limit)
 {
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u64 end = intel_fbc_stolen_end(display);
 	int ret, limit = min_limit;
 
 	size /= limit;
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(i915, fbc->compressed_fb,
+	ret = i915_gem_stolen_insert_node_in_range(fbc->compressed_fb,
 						   size <<= 1, 4096, 0, end);
 	if (ret == 0)
 		return limit;
 
 	for (; limit <= intel_fbc_max_limit(display); limit <<= 1) {
-		ret = i915_gem_stolen_insert_node_in_range(i915, fbc->compressed_fb,
+		ret = i915_gem_stolen_insert_node_in_range(fbc->compressed_fb,
 							   size >>= 1, 4096, 0, end);
 		if (ret == 0)
 			return limit;
@@ -871,8 +870,7 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 		    i915_gem_stolen_node_allocated(fbc->compressed_llb));
 
 	if (DISPLAY_VER(display) < 5 && !display->platform.g4x) {
-		ret = i915_gem_stolen_insert_node(i915, fbc->compressed_llb,
-						  4096, 4096);
+		ret = i915_gem_stolen_insert_node(fbc->compressed_llb, 4096, 4096);
 		if (ret)
 			goto err;
 	}
@@ -893,7 +891,7 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 
 err_llb:
 	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
-		i915_gem_stolen_remove_node(i915, fbc->compressed_llb);
+		i915_gem_stolen_remove_node(fbc->compressed_llb);
 err:
 	if (i915_gem_stolen_initialized(i915))
 		drm_info_once(display->drm,
@@ -946,16 +944,13 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
-	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
 	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
-		i915_gem_stolen_remove_node(i915, fbc->compressed_llb);
+		i915_gem_stolen_remove_node(fbc->compressed_llb);
 	if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
-		i915_gem_stolen_remove_node(i915, fbc->compressed_fb);
+		i915_gem_stolen_remove_node(fbc->compressed_fb);
 }
 
 void intel_fbc_cleanup(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 8bc71fb2a765..b2812ec79d19 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -63,11 +63,10 @@ static int __i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 	return ret;
 }
 
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
-					 struct intel_stolen_node *node, u64 size,
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
 					 unsigned int alignment, u64 start, u64 end)
 {
-	return __i915_gem_stolen_insert_node_in_range(i915, &node->node,
+	return __i915_gem_stolen_insert_node_in_range(node->i915, &node->node,
 						      size, alignment,
 						      start, end);
 }
@@ -82,11 +81,10 @@ static int __i915_gem_stolen_insert_node(struct drm_i915_private *i915,
 						      U64_MAX);
 }
 
-int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
-				struct intel_stolen_node *node, u64 size,
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
 				unsigned int alignment)
 {
-	return __i915_gem_stolen_insert_node(i915, &node->node, size, alignment);
+	return __i915_gem_stolen_insert_node(node->i915, &node->node, size, alignment);
 }
 
 static void __i915_gem_stolen_remove_node(struct drm_i915_private *i915,
@@ -97,10 +95,9 @@ static void __i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 	mutex_unlock(&i915->mm.stolen_lock);
 }
 
-void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
-				 struct intel_stolen_node *node)
+void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
 {
-	__i915_gem_stolen_remove_node(i915, &node->node);
+	__i915_gem_stolen_remove_node(node->i915, &node->node);
 }
 
 static bool valid_stolen_size(struct drm_i915_private *i915, struct resource *dsm)
@@ -1042,9 +1039,10 @@ u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915)
 	return resource_size(&i915->dsm.stolen);
 }
 
-u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
-				 const struct intel_stolen_node *node)
+u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node)
 {
+	struct drm_i915_private *i915 = node->i915;
+
 	return i915->dsm.stolen.start + i915_gem_stolen_node_offset(node);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index 25ec8325fb29..c670736f09e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -13,15 +13,12 @@ struct drm_i915_gem_object;
 struct drm_i915_private;
 struct intel_stolen_node;
 
-int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
-				struct intel_stolen_node *node, u64 size,
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
 				unsigned alignment);
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
-					 struct intel_stolen_node *node, u64 size,
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
 					 unsigned alignment, u64 start,
 					 u64 end);
-void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
-				 struct intel_stolen_node *node);
+void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
 struct intel_memory_region *
 i915_gem_stolen_smem_setup(struct drm_i915_private *i915, u16 type,
 			   u16 instance);
@@ -41,8 +38,7 @@ bool i915_gem_stolen_initialized(const struct drm_i915_private *i915);
 u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915);
 u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915);
 
-u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
-				 const struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node);
 
 bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
 u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index b0bc3efcaf6c..7bdf73fad8bf 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -12,17 +12,13 @@ struct drm_device;
 struct intel_stolen_node;
 struct xe_device;
 
-int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
-					 struct intel_stolen_node *node,
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
 					 u32 size, u32 align,
 					 u32 start, u32 end);
 
-int i915_gem_stolen_insert_node(struct xe_device *xe,
-				struct intel_stolen_node *node,
-				u32 size, u32 align);
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u32 size, u32 align);
 
-void i915_gem_stolen_remove_node(struct xe_device *xe,
-				 struct intel_stolen_node *node);
+void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
 
 bool i915_gem_stolen_initialized(struct xe_device *xe);
 
@@ -34,8 +30,7 @@ u64 i915_gem_stolen_area_address(const struct xe_device *xe);
 
 u64 i915_gem_stolen_area_size(const struct xe_device *xe);
 
-u64 i915_gem_stolen_node_address(struct xe_device *xe,
-				 struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_address(struct intel_stolen_node *node);
 
 u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index eea182b569a1..c1afe70454d1 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -11,11 +11,12 @@ struct intel_stolen_node {
 	struct xe_bo *bo;
 };
 
-int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
-					 struct intel_stolen_node *node,
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
 					 u32 size, u32 align,
 					 u32 start, u32 end)
 {
+	struct xe_device *xe = node->xe;
+
 	struct xe_bo *bo;
 	int err = 0;
 	u32 flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_STOLEN;
@@ -41,9 +42,7 @@ int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 	return err;
 }
 
-int i915_gem_stolen_insert_node(struct xe_device *xe,
-				struct intel_stolen_node *node,
-				u32 size, u32 align)
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u32 size, u32 align)
 {
 	/* Not used on xe */
 	WARN_ON(1);
@@ -51,8 +50,7 @@ int i915_gem_stolen_insert_node(struct xe_device *xe,
 	return -ENODEV;
 }
 
-void i915_gem_stolen_remove_node(struct xe_device *xe,
-				 struct intel_stolen_node *node)
+void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
 {
 	xe_bo_unpin_map_no_vm(node->bo);
 	node->bo = NULL;
@@ -92,9 +90,10 @@ u64 i915_gem_stolen_area_size(const struct xe_device *xe)
 	return 0;
 }
 
-u64 i915_gem_stolen_node_address(struct xe_device *xe,
-				 struct intel_stolen_node *node)
+u64 i915_gem_stolen_node_address(struct intel_stolen_node *node)
 {
+	struct xe_device *xe = node->xe;
+
 	return xe_ttm_stolen_gpu_offset(xe) + i915_gem_stolen_node_offset(node);
 }
 
-- 
2.47.3

