Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D754FFF32
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0477B10E47D;
	Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AFC10E424
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878057; x=1681414057;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vv/r0CWJ3EaJVrVq2Yrd1+jM7lKq7E67hSOHTFzAMaM=;
 b=BFokkHulqCulRY/SLhiERhKN1xAxhsXkRjKsfJxbMC+GyKMFc/2+eVX/
 3zf5iiOvVkKdGwT45ZDJXqq5+zDFJQg1xEmZIjAljtjs+D/9EbVJF7QW+
 1ZvfF0qhbnvEGBljupvM3/ooX0t3JvJxeQGOQnLDsHHuZPj7W5l75XYdp
 KBR+HtNAxK9PZXNJmRNr5O9HmhQiPAHHtvkfyNdmMeYxqkvcMXOMVo0AH
 oEzT+5JQvXKkGroXYncwLv0wJ1AsexHPcqnpyCVrZLHFvSd8mdoETmJ0i
 EWiD1CAigtn7tjH41N6g1329XjKpSxjqkNETxjJ+u97tALYH4WelMrTsr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045083"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045083"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290482"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:24 -0700
Message-Id: <20220413192730.3608660-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/xehp: Add compute engine ABI
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

From: Matt Roper <matthew.d.roper@intel.com>

We're now ready to start exposing compute engines to userspace.

While we're at it, let's extend the kerneldoc description for the other
engine types as well.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Szymon Morek <szymon.morek@intel.com>
UMD (mesa): https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/14395
UMD (compute): https://github.com/intel/compute-runtime/pull/451
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c          |  1 +
 drivers/gpu/drm/i915/i915_drm_client.c      |  1 +
 drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
 include/uapi/drm/i915_drm.h                 | 62 +++++++++++++++++++--
 5 files changed, 60 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 0f6cd96b459f..46a174f8aa00 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -47,7 +47,7 @@ static const u8 uabi_classes[] = {
 	[COPY_ENGINE_CLASS] = I915_ENGINE_CLASS_COPY,
 	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
 	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
-	/* TODO: Add COMPUTE_CLASS mapping once ABI is available */
+	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
 };
 
 static int engine_cmp(void *priv, const struct list_head *A,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f0014c5072c9..65a579c200ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1172,6 +1172,7 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
 		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
 		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
 		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS]			= GEN12_GFX_TLB_INV_CR,
 	};
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e539f6b23060..118db6f03f15 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -81,6 +81,7 @@ static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_COPY] = "copy",
 	[I915_ENGINE_CLASS_VIDEO] = "video",
 	[I915_ENGINE_CLASS_VIDEO_ENHANCE] = "video-enhance",
+	[I915_ENGINE_CLASS_COMPUTE] = "compute",
 };
 
 static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 5f5b02b01ba0..f796c5e8e060 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -13,7 +13,7 @@
 
 #include "gt/intel_engine_types.h"
 
-#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_VIDEO_ENHANCE
+#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
 
 struct drm_i915_private;
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 9ab021c4d632..6a587848b0cf 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -154,21 +154,71 @@ enum i915_mocs_table_index {
 	I915_MOCS_CACHED,
 };
 
-/*
+/**
+ * enum drm_i915_gem_engine_class - uapi engine type enumeration
+ *
  * Different engines serve different roles, and there may be more than one
- * engine serving each role. enum drm_i915_gem_engine_class provides a
- * classification of the role of the engine, which may be used when requesting
- * operations to be performed on a certain subset of engines, or for providing
- * information about that group.
+ * engine serving each role.  This enum provides a classification of the role
+ * of the engine, which may be used when requesting operations to be performed
+ * on a certain subset of engines, or for providing information about that
+ * group.
  */
 enum drm_i915_gem_engine_class {
+	/**
+	 * @I915_ENGINE_CLASS_RENDER:
+	 *
+	 * Render engines support instructions used for 3D, Compute (GPGPU),
+	 * and programmable media workloads.  These instructions fetch data and
+	 * dispatch individual work items to threads that operate in parallel.
+	 * The threads run small programs (called "kernels" or "shaders") on
+	 * the GPU's execution units (EUs).
+	 */
 	I915_ENGINE_CLASS_RENDER	= 0,
+
+	/**
+	 * @I915_ENGINE_CLASS_COPY:
+	 *
+	 * Copy engines (also referred to as "blitters") support instructions
+	 * that move blocks of data from one location in memory to another,
+	 * or that fill a specified location of memory with fixed data.
+	 * Copy engines can perform pre-defined logical or bitwise operations
+	 * on the source, destination, or pattern data.
+	 */
 	I915_ENGINE_CLASS_COPY		= 1,
+
+	/**
+	 * @I915_ENGINE_CLASS_VIDEO:
+	 *
+	 * Video engines (also referred to as "bit stream decode" (BSD) or
+	 * "vdbox") support instructions that perform fixed-function media
+	 * decode and encode.
+	 */
 	I915_ENGINE_CLASS_VIDEO		= 2,
+
+	/**
+	 * @I915_ENGINE_CLASS_VIDEO_ENHANCE:
+	 *
+	 * Video enhancement engines (also referred to as "vebox") support
+	 * instructions related to image enhancement.
+	 */
 	I915_ENGINE_CLASS_VIDEO_ENHANCE	= 3,
 
-	/* should be kept compact */
+	/**
+	 * @I915_ENGINE_CLASS_COMPUTE:
+	 *
+	 * Compute engines support a subset of the instructions available
+	 * on render engines:  compute engines support Compute (GPGPU) and
+	 * programmable media workloads, but do not support the 3D pipeline.
+	 */
+	I915_ENGINE_CLASS_COMPUTE	= 4,
+
+	/* Values in this enum should be kept compact. */
 
+	/**
+	 * @I915_ENGINE_CLASS_INVALID:
+	 *
+	 * Placeholder value to represent an invalid engine class assignment.
+	 */
 	I915_ENGINE_CLASS_INVALID	= -1
 };
 
-- 
2.35.1

