Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB897BFF8A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 16:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6D210E395;
	Tue, 10 Oct 2023 14:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE5B10E38C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 14:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696949218; x=1728485218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5XubN7b66bDI+g1MxfGltIkituf/U0OF/Q12iBktQe4=;
 b=JsHPfwvlriMA4+HFuJpTGHx5Q7gyXo37hBDbyTVzohwu6CXQgHx5sTUk
 B5GDJomVHG9pQy+ulVpWXkEYHcN7aw+JfNwgKc7zwayPkKdJvGsznGrmW
 XM5CMGt3P20oP8+PtiCdcrj6VD54T6jFQZ2yuGOtFryznEzE3ug4ZKCB1
 Gjkj6YMOeAuBxsSihu55RPpK+jMFybebw3EpnKwKZAR6bTdN7OIVGYfo9
 U8/sZLPSuDdhA6iDO7fXPUpkPvwSXupKJriLg+jtOqtcGBwCQODcLKrFS
 vDlB9v9fw1EJJJR1ACrXbo4XXQl+uPSP+kxawLSssFtwj1Crh/OP2xMCP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="369479804"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="369479804"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 07:46:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703335860"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="703335860"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 07:46:58 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 07:36:15 -0700
Message-Id: <20231010143615.2010460-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 jonathan.cavitt@intel.com, andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FIXME: CAT errors are cropping up on MTL.  This removes them,
but the real root cause must still be diagnosed.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---

v2: Apply FIXME to shmem_utils as well.

 drivers/gpu/drm/i915/gt/intel_gt.c     | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 5 ++++-
 drivers/gpu/drm/i915/gt/shmem_utils.c  | 8 +++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 5 ++++-
 4 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ed32bf5b15464..b52c8eb0b033f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1026,8 +1026,12 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 	/*
 	 * Wa_22016122933: always return I915_MAP_WC for Media
 	 * version 13.0 when the object is on the Media GT
+	 *
+	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+	 * but the real root cause must still be diagnosed.
 	 */
-	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
+	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt) ||
+	    IS_METEORLAKE(gt->i915))
 		return I915_MAP_WC;
 	if (HAS_LLC(gt->i915) || always_coherent)
 		return I915_MAP_WB;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index eaf66d9031665..8aaa4df84cb3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1124,8 +1124,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 		 * Wa_22016122933: For Media version 13.0, all Media GT shared
 		 * memory needs to be mapped as WC on CPU side and UC (PAT
 		 * index 2) on GPU side.
+		 *
+		 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+		 * but the real root cause must still be diagnosed.
 		 */
-		if (intel_gt_needs_wa_22016122933(engine->gt))
+		if (intel_gt_needs_wa_22016122933(engine->gt) || IS_METEORLAKE(engine->i915))
 			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index bccc3a1200bc6..a026c216fd286 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -43,7 +43,13 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 		return file;
 	}
 
-	map_type = i915_gem_object_is_lmem(obj) ? I915_MAP_WC : I915_MAP_WB;
+	/*
+	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+	 * but the real root cause must still be diagnosed.
+	 */
+	map_type = i915_gem_object_is_lmem(obj) ||
+		   IS_METEORLAKE(to_i915(obj->base.dev)) ?
+		   I915_MAP_WC : I915_MAP_WB;
 	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
 	if (IS_ERR(ptr))
 		return ERR_CAST(ptr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 27df41c53b890..e3a7d61506188 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -774,8 +774,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 	 * Wa_22016122933: For Media version 13.0, all Media GT shared
 	 * memory needs to be mapped as WC on CPU side and UC (PAT
 	 * index 2) on GPU side.
+	 *
+	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
+	 * but the real root cause must still be diagnosed.
 	 */
-	if (intel_gt_needs_wa_22016122933(gt))
+	if (intel_gt_needs_wa_22016122933(gt) || IS_METEORLAKE(gt->i915))
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-- 
2.25.1

