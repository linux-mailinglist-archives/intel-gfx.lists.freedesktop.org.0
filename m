Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C946D655A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 16:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5221310E6BE;
	Tue,  4 Apr 2023 14:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17B110E6BE;
 Tue,  4 Apr 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680618726; x=1712154726;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gftEf6mRaeoGMdHLUpmpSwWhjV+lmXm2Xc5Dj0Zrgk4=;
 b=hyeChgSbWmgQalUq2Jm0GSvaArGSCI6v8QERiIwpzse04LungtbbxUDh
 iHCGBYqEXPf9rYpBxH2JOwAy9wmQKQx4+nWQWLp/PDKt2hy9Og5sV1XfO
 CQ6objcxXIM71okQw/E0PBrKgsGK1umQ8th779Fi7SLUkXg2Qv232aA1c
 Unlx/Jmm/Bt+KcA8veLuGmc3jLWfrXfyqJEw4QCcZpLNbPqLyFUQxINhl
 vaNDKGaNHjyVEgCFpjI8/7wxq+L2A9oEkZtlTeZYRh9qkqVm9PGz3+Juj
 f2zpaglGj/2mk5KtwXxHbp+8JjR3vpE/XI4/DQp/8Jsr2cs9RDAWpFXKs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="404960767"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="404960767"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 07:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="688918110"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="688918110"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 07:31:08 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 16:30:56 +0200
Message-Id: <20230404143100.10452-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/ttm: Add I915_BO_PREALLOC
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a mechanism to keep existing data when creating
a ttm object with I915_BO_ALLOC_USER flag.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 15 +++++++++++----
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c     |  5 +++--
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 5dcbbef31d44..830c11431ee8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -328,6 +328,12 @@ struct drm_i915_gem_object {
  */
 #define I915_BO_ALLOC_GPU_ONLY	  BIT(6)
 #define I915_BO_ALLOC_CCS_AUX	  BIT(7)
+/*
+ * Object is allowed to retain its initial data and will not be cleared on first
+ * access if used along with I915_BO_ALLOC_USER. This is mainly to keep
+ * preallocated framebuffer data intact while transitioning it to i915drmfb.
+ */
+#define I915_BO_PREALLOC	  BIT(8)
 #define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
 			     I915_BO_ALLOC_VOLATILE | \
 			     I915_BO_ALLOC_CPU_CLEAR | \
@@ -335,10 +341,11 @@ struct drm_i915_gem_object {
 			     I915_BO_ALLOC_PM_VOLATILE | \
 			     I915_BO_ALLOC_PM_EARLY | \
 			     I915_BO_ALLOC_GPU_ONLY | \
-			     I915_BO_ALLOC_CCS_AUX)
-#define I915_BO_READONLY          BIT(8)
-#define I915_TILING_QUIRK_BIT     9 /* unknown swizzling; do not release! */
-#define I915_BO_PROTECTED         BIT(10)
+			     I915_BO_ALLOC_CCS_AUX | \
+			     I915_BO_PREALLOC)
+#define I915_BO_READONLY          BIT(9)
+#define I915_TILING_QUIRK_BIT     10 /* unknown swizzling; do not release! */
+#define I915_BO_PROTECTED         BIT(11)
 	/**
 	 * @mem_flags - Mutable placement-related flags
 	 *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index dd188dfcc423..69eb20ed4d47 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -576,7 +576,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 	struct dma_fence *migration_fence = NULL;
 	struct ttm_tt *ttm = bo->ttm;
 	struct i915_refct_sgt *dst_rsgt;
-	bool clear;
+	bool clear, prealloc_bo;
 	int ret;
 
 	if (GEM_WARN_ON(i915_ttm_is_ghost_object(bo))) {
@@ -632,7 +632,8 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 		return PTR_ERR(dst_rsgt);
 
 	clear = !i915_ttm_cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
-	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC))) {
+	prealloc_bo = obj->flags & I915_BO_PREALLOC;
+	if (!(clear && ttm && !((ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC) && !prealloc_bo))) {
 		struct i915_deps deps;
 
 		i915_deps_init(&deps, GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN);
-- 
2.39.0

