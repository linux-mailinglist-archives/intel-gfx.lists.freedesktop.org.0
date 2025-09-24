Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5509FB9AE7B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFCE10E777;
	Wed, 24 Sep 2025 16:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="csWsr1ld";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7EEF10E777;
 Wed, 24 Sep 2025 16:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732262; x=1790268262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ci4TGBucBD6LlsNc4Q/BmxKt9exX5dJi9ArmeW3//8M=;
 b=csWsr1ldeulvcgPbWdESPbHljwDcpClnlwPZU6bY0lEqTxxuLa+2GW+w
 Zch+QoofVchyLdCYtW+errt0X94k9+OtYbuUMpCwVmrCMIg/hhieUEHr+
 Y/gCVgHp3QXmMY6F+BNdfwKd+ZHxksfI43llMQQ8Hk8RmJ5Yta7Eb8q9S
 QnheOsgqLi0GXeDGQ4IM6u67j+/jbKH7aNbyq7kTX1K1YapWY48J1YnkS
 pp2uc+qRSZXGWW7WsLfdhkTt0mk+RfQj9ERsmNC0PCawQ56s3cuUWGxj+
 rL0tkwfjPTWS1rFit2BIQKc8H0FCAqSV63Qd+/G4cM8zZ42COqfKFaHA7 g==;
X-CSE-ConnectionGUID: wOqj3l0zRGmwiZGNRGfe5w==
X-CSE-MsgGUID: eZzuHhuZRdyfl7AndICGVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64676862"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64676862"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:21 -0700
X-CSE-ConnectionGUID: Df5WFb1aRQ+1RNMcyoBLxw==
X-CSE-MsgGUID: qtmZguHhTnKpY1LHHf4BCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="208009271"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/11] drm/{i915,
 xe}/stolen: make struct intel_stolen_node opaque
Date: Wed, 24 Sep 2025 19:43:36 +0300
Message-ID: <3fe71bbb4c75ee86b4d129fafa3d4cd6526363f4.1758732183.git.jani.nikula@intel.com>
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

Add i915_gem_stolen_node_alloc() and i915_gem_stolen_node_free(),
returning struct intel_stolen_node pointer. Make struct
intel_stolen_node an opaque pointer, with different implementations in
i915 and xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 58 ++++++++++++-------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 20 +++++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    | 10 ++--
 .../compat-i915-headers/gem/i915_gem_stolen.h | 11 ++--
 drivers/gpu/drm/xe/display/xe_stolen.c        | 20 +++++++
 5 files changed, 89 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index cc67de6c06cf..05199434cb7c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -102,7 +102,8 @@ struct intel_fbc {
 	struct mutex lock;
 	unsigned int busy_bits;
 
-	struct intel_stolen_node compressed_fb, compressed_llb;
+	struct intel_stolen_node *compressed_fb;
+	struct intel_stolen_node *compressed_llb;
 
 	enum intel_fbc_id id;
 
@@ -380,16 +381,16 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 
 	drm_WARN_ON(display->drm,
 		    range_end_overflows_t(u64, i915_gem_stolen_area_address(i915),
-					  i915_gem_stolen_node_offset(&fbc->compressed_fb),
+					  i915_gem_stolen_node_offset(fbc->compressed_fb),
 					  U32_MAX));
 	drm_WARN_ON(display->drm,
 		    range_end_overflows_t(u64, i915_gem_stolen_area_address(i915),
-					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
+					  i915_gem_stolen_node_offset(fbc->compressed_llb),
 					  U32_MAX));
 	intel_de_write(display, FBC_CFB_BASE,
-		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
+		       i915_gem_stolen_node_address(i915, fbc->compressed_fb));
 	intel_de_write(display, FBC_LL_BASE,
-		       i915_gem_stolen_node_address(i915, &fbc->compressed_llb));
+		       i915_gem_stolen_node_address(i915, fbc->compressed_llb));
 }
 
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
@@ -497,7 +498,7 @@ static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 
 	intel_de_write(display, DPFC_CB_BASE,
-		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
+		       i915_gem_stolen_node_offset(fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs g4x_fbc_funcs = {
@@ -566,7 +567,7 @@ static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 
 	intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
-		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
+		       i915_gem_stolen_node_offset(fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
@@ -842,13 +843,13 @@ static int find_compression_limit(struct intel_fbc *fbc,
 	size /= limit;
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
+	ret = i915_gem_stolen_insert_node_in_range(i915, fbc->compressed_fb,
 						   size <<= 1, 4096, 0, end);
 	if (ret == 0)
 		return limit;
 
 	for (; limit <= intel_fbc_max_limit(display); limit <<= 1) {
-		ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
+		ret = i915_gem_stolen_insert_node_in_range(i915, fbc->compressed_fb,
 							   size >>= 1, 4096, 0, end);
 		if (ret == 0)
 			return limit;
@@ -865,12 +866,12 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 	int ret;
 
 	drm_WARN_ON(display->drm,
-		    i915_gem_stolen_node_allocated(&fbc->compressed_fb));
+		    i915_gem_stolen_node_allocated(fbc->compressed_fb));
 	drm_WARN_ON(display->drm,
-		    i915_gem_stolen_node_allocated(&fbc->compressed_llb));
+		    i915_gem_stolen_node_allocated(fbc->compressed_llb));
 
 	if (DISPLAY_VER(display) < 5 && !display->platform.g4x) {
-		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
+		ret = i915_gem_stolen_insert_node(i915, fbc->compressed_llb,
 						  4096, 4096);
 		if (ret)
 			goto err;
@@ -887,12 +888,12 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 
 	drm_dbg_kms(display->drm,
 		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
-		    i915_gem_stolen_node_size(&fbc->compressed_fb), fbc->limit);
+		    i915_gem_stolen_node_size(fbc->compressed_fb), fbc->limit);
 	return 0;
 
 err_llb:
-	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
-		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
+	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
+		i915_gem_stolen_remove_node(i915, fbc->compressed_llb);
 err:
 	if (i915_gem_stolen_initialized(i915))
 		drm_info_once(display->drm,
@@ -951,10 +952,10 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
-	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
-		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
-	if (i915_gem_stolen_node_allocated(&fbc->compressed_fb))
-		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
+	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
+		i915_gem_stolen_remove_node(i915, fbc->compressed_llb);
+	if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
+		i915_gem_stolen_remove_node(i915, fbc->compressed_fb);
 }
 
 void intel_fbc_cleanup(struct intel_display *display)
@@ -967,6 +968,9 @@ void intel_fbc_cleanup(struct intel_display *display)
 		__intel_fbc_cleanup_cfb(fbc);
 		mutex_unlock(&fbc->lock);
 
+		i915_gem_stolen_node_free(fbc->compressed_fb);
+		i915_gem_stolen_node_free(fbc->compressed_llb);
+
 		kfree(fbc);
 	}
 }
@@ -1355,7 +1359,7 @@ static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
 
 	return intel_fbc_min_limit(plane_state) <= fbc->limit &&
 		intel_fbc_cfb_size(plane_state) <= fbc->limit *
-			i915_gem_stolen_node_size(&fbc->compressed_fb);
+			i915_gem_stolen_node_size(fbc->compressed_fb);
 }
 
 static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
@@ -2083,6 +2087,13 @@ static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 	if (!fbc)
 		return NULL;
 
+	fbc->compressed_fb = i915_gem_stolen_node_alloc(display->drm);
+	if (!fbc->compressed_fb)
+		goto err;
+	fbc->compressed_llb = i915_gem_stolen_node_alloc(display->drm);
+	if (!fbc->compressed_llb)
+		goto err;
+
 	fbc->id = fbc_id;
 	fbc->display = display;
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
@@ -2102,6 +2113,13 @@ static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 		fbc->funcs = &i8xx_fbc_funcs;
 
 	return fbc;
+
+err:
+	i915_gem_stolen_node_free(fbc->compressed_llb);
+	i915_gem_stolen_node_free(fbc->compressed_fb);
+	kfree(fbc);
+
+	return NULL;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 70ee34303e36..5991ccd3f328 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -24,6 +24,10 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 
+struct intel_stolen_node {
+	struct drm_mm_node node;
+};
+
 /*
  * The BIOS typically reserves some of the system's memory for the exclusive
  * use of the integrated graphics. This memory is no longer available for
@@ -1057,3 +1061,19 @@ u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
 {
 	return node->node.size;
 }
+
+struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
+{
+	struct intel_stolen_node *node;
+
+	node = kzalloc(sizeof(*node), GFP_KERNEL);
+	if (!node)
+		return NULL;
+
+	return node;
+}
+
+void i915_gem_stolen_node_free(const struct intel_stolen_node *node)
+{
+	kfree(node);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index 9e42d5a4cf13..25ec8325fb29 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -7,14 +7,11 @@
 #define __I915_GEM_STOLEN_H__
 
 #include <linux/types.h>
-#include <drm/drm_mm.h>
 
+struct drm_device;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-
-struct intel_stolen_node {
-	struct drm_mm_node node;
-};
+struct intel_stolen_node;
 
 int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
 				struct intel_stolen_node *node, u64 size,
@@ -51,4 +48,7 @@ bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
 u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
 u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
+struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm);
+void i915_gem_stolen_node_free(const struct intel_stolen_node *node);
+
 #endif /* __I915_GEM_STOLEN_H__ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 10f110b9bf77..b0bc3efcaf6c 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -8,13 +8,10 @@
 
 #include <linux/types.h>
 
-struct xe_bo;
+struct drm_device;
+struct intel_stolen_node;
 struct xe_device;
 
-struct intel_stolen_node {
-	struct xe_bo *bo;
-};
-
 int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 					 struct intel_stolen_node *node,
 					 u32 size, u32 align,
@@ -42,4 +39,8 @@ u64 i915_gem_stolen_node_address(struct xe_device *xe,
 
 u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
+struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm);
+
+void i915_gem_stolen_node_free(const struct intel_stolen_node *node);
+
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index ab156a9f2c26..b218df40324a 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -6,6 +6,10 @@
 #include "xe_ttm_stolen_mgr.h"
 #include "xe_validation.h"
 
+struct intel_stolen_node {
+	struct xe_bo *bo;
+};
+
 int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 					 struct intel_stolen_node *node,
 					 u32 size, u32 align,
@@ -97,3 +101,19 @@ u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
 {
 	return node->bo->ttm.base.size;
 }
+
+struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
+{
+	struct intel_stolen_node *node;
+
+	node = kzalloc(sizeof(*node), GFP_KERNEL);
+	if (!node)
+		return NULL;
+
+	return node;
+}
+
+void i915_gem_stolen_node_free(const struct intel_stolen_node *node)
+{
+	kfree(node);
+}
-- 
2.47.3

