Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18797B9AE6C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F9E10E77B;
	Wed, 24 Sep 2025 16:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReOqFInj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A515F10E77B;
 Wed, 24 Sep 2025 16:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732237; x=1790268237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rcnQawlO9WN8PGMHMxLZE5dl4kI7tuz1zInZT13RJj8=;
 b=ReOqFInjo4oiGrTU1FHm4GklmTCnPekHrHknWS7Im+FdRNN0icKJh1dY
 ZX215Yh7nZyAmFofWRnwY9/rcHM39FOwF4tTyf0vc8BxmST8DADxyTsw5
 4mUjkJCe6/nf5vCHd2ItrNaBOu0oOispfEFDI1x8oPiInJTT4cIgN5v9V
 c5JxXSva+3nZMcpo01OTMKKsRJIRk2wSAnn8XlhhaVaGDxQQCom4yw1ag
 FvUhYEQU7i/A1g0dNWpUc7sAZvd/OBv+6iT/to2o6zbhp4OESN3dCv8RL
 uGjxxASl5uxLWrKQxlu9s4/flv8FLftLyCqpPyucf13ud1P1yrAztIVmm A==;
X-CSE-ConnectionGUID: LeJftCHJQciHi/IMImXSsg==
X-CSE-MsgGUID: qEiLdLwsQSOesI+GGO42zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137949"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137949"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:57 -0700
X-CSE-ConnectionGUID: 2ruWv3qfTEyaTuHCTjd6uw==
X-CSE-MsgGUID: i9GCS99LRuyr39Nki+DeWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515430"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 02/11] drm/xe/stolen: rename fb to node in stolen compat header
Date: Wed, 24 Sep 2025 19:43:31 +0300
Message-ID: <71a7872e47da5f3fbe61cc21723bfcf8ff6518b8.1758732183.git.jani.nikula@intel.com>
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

It's more about node than fb, and this makes more sense now that the
struct is also named intel_stolen_node.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../compat-i915-headers/gem/i915_gem_stolen.h | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 62389b290907..b45575b15322 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -17,7 +17,7 @@ struct intel_stolen_node {
 };
 
 static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
-						       struct intel_stolen_node *fb,
+						       struct intel_stolen_node *node,
 						       u32 size, u32 align,
 						       u32 start, u32 end)
 {
@@ -41,13 +41,13 @@ static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
 		return err;
 	}
 
-	fb->bo = bo;
+	node->bo = bo;
 
 	return err;
 }
 
 static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
-					      struct intel_stolen_node *fb,
+					      struct intel_stolen_node *node,
 					      u32 size, u32 align)
 {
 	/* Not used on xe */
@@ -56,20 +56,20 @@ static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
 }
 
 static inline void i915_gem_stolen_remove_node(struct xe_device *xe,
-					       struct intel_stolen_node *fb)
+					       struct intel_stolen_node *node)
 {
-	xe_bo_unpin_map_no_vm(fb->bo);
-	fb->bo = NULL;
+	xe_bo_unpin_map_no_vm(node->bo);
+	node->bo = NULL;
 }
 
 #define i915_gem_stolen_initialized(xe) (!!ttm_manager_type(&(xe)->ttm, XE_PL_STOLEN))
-#define i915_gem_stolen_node_allocated(fb) (!!((fb)->bo))
+#define i915_gem_stolen_node_allocated(node) (!!((node)->bo))
 
-static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *fb)
+static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
 {
 	struct xe_res_cursor res;
 
-	xe_res_first(fb->bo->ttm.resource, 0, 4096, &res);
+	xe_res_first(node->bo->ttm.resource, 0, 4096, &res);
 	return res.start;
 }
 
@@ -78,8 +78,8 @@ static inline u32 i915_gem_stolen_node_offset(struct intel_stolen_node *fb)
 /* Used for gen9 specific WA. Gen9 is not supported by Xe */
 #define i915_gem_stolen_area_size(xe) (!WARN_ON(1))
 
-#define i915_gem_stolen_node_address(xe, fb) (xe_ttm_stolen_gpu_offset(xe) + \
-					 i915_gem_stolen_node_offset(fb))
-#define i915_gem_stolen_node_size(fb) ((u64)((fb)->bo->ttm.base.size))
+#define i915_gem_stolen_node_address(xe, node) (xe_ttm_stolen_gpu_offset(xe) + \
+					 i915_gem_stolen_node_offset(node))
+#define i915_gem_stolen_node_size(node) ((u64)((node)->bo->ttm.base.size))
 
 #endif
-- 
2.47.3

