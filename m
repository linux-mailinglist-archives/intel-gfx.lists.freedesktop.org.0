Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A10E761E12
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 18:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC6710E3F4;
	Tue, 25 Jul 2023 16:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D9510E3EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 16:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690301341; x=1721837341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i8FltCB5O0ammu8CdMmxxdCf5/qq/FPRKn+8w5nxTDk=;
 b=D/01ufpV6aEMpWlwhb0YsgMgCJ33cL2J9IMDqmIVh70sowIVcdZmU245
 xj3Og09lH1DlZatboH9laxXafzqTVhFcdJRy61Pl8iQuKzmbWJnKXg/1p
 SxhBXqeVsILEmYN63I+vzprI8GyJbvITa2E84HZiVFQcSEOxvH4Ps6yxD
 1IJM+SYfu+lwG2k695qqnGnjaa68z18htjY2JWs1KL0BsGlEJMkJl4rzw
 3yBB1XxloOihHiFOAkEeE/UioCU1HDjeAKRa5rRqaMoziLzslPo2kUPrk
 zTX5c0TKNLs1fFgQtN2Xq7VKJS44JvrB4BuiyCScMnEUpjURVv0OS3DBv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367801562"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367801562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 09:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="755817205"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="755817205"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 09:08:59 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 09:01:45 -0700
Message-Id: <20230725160145.1486613-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
References: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 2/2] drm/i915/gt: Apply workaround
 22016122933 correctly
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
Cc: andi.shyti@intel.com, matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA_22016122933 was recently applied to all MeteorLake engines, which is
simultaneously too broad (should only apply to Media engines) and too
specific (should apply to all platforms that use the same media engine
as MeteorLake).  Correct this in cases where coherency settings are
modified.

There were also two additional places where the workaround was applied
unconditionally.  The change was confirmed as necessary for all
platforms, so the workaround label was removed.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c        | 5 +++--
 drivers/gpu/drm/i915/gt/intel_gt.h        | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c       | 7 ++++---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 4 ----
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 7 ++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ----
 6 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 6faf1dae965f..207bfc0ff939 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1139,9 +1139,10 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 					      bool always_coherent)
 {
 	/*
-	 * Wa_22016122933: always return I915_MAP_WC for MTL
+	 * Wa_22016122933: always return I915_MAP_WC for Media
+	 * version 13.0 when the object is on the Media GT
 	 */
-	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
+	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
 		return I915_MAP_WC;
 	if (HAS_LLC(gt->i915) || always_coherent)
 		return I915_MAP_WB;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index adb442aaa522..2444ceb42b1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_GT__
 #define __INTEL_GT__
 
+#include "i915_drv.h"
 #include "intel_engine_types.h"
 #include "intel_gt_types.h"
 #include "intel_reset.h"
@@ -24,6 +25,11 @@ static inline bool gt_is_root(struct intel_gt *gt)
 	return !gt->info.id;
 }
 
+static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
+{
+	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;
+}
+
 static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
 {
 	return container_of(uc, struct intel_gt, uc);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e5a83d4932c8..9f0a2d828a2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1095,10 +1095,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 	if (IS_ERR(obj)) {
 		obj = i915_gem_object_create_shmem(engine->i915, context_size);
 		/*
-		 * Wa_22016122933: For MTL the shared memory needs to be mapped
-		 * as WC on CPU side and UC (PAT index 2) on GPU side
+		 * Wa_22016122933: For Media version 13.0, all Media GT shared
+		 * memory needs to be mapped as WC on CPU side and UC (PAT
+		 * index 2) on GPU side.
 		 */
-		if (IS_METEORLAKE(engine->i915))
+		if (intel_gt_needs_wa_22016122933(engine->gt))
 			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	}
 	if (IS_ERR(obj))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 6efb86c93bfc..52652a0350c6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -284,10 +284,6 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 	memcpy_toio(gsc->local_vaddr, src, gsc->fw.size);
 	memset_io(gsc->local_vaddr + gsc->fw.size, 0, gsc->local->size - gsc->fw.size);
 
-	/*
-	 * Wa_22016122933: Making sure the data in dst is
-	 * visible to GSC right away
-	 */
 	intel_guc_write_barrier(&gt->uc.guc);
 
 	i915_gem_object_unpin_map(gsc->fw.obj);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c0fa9d232205..63bdc000d76b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -745,10 +745,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 		return ERR_CAST(obj);
 
 	/*
-	 * Wa_22016122933: For MTL the shared memory needs to be mapped
-	 * as WC on CPU side and UC (PAT index 2) on GPU side
+	 * Wa_22016122933: For Media version 13.0, all Media GT shared
+	 * memory needs to be mapped as WC on CPU side and UC (PAT
+	 * index 2) on GPU side.
 	 */
-	if (IS_METEORLAKE(gt->i915))
+	if (intel_gt_needs_wa_22016122933(gt))
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index f28a3a83742d..97eadd08181d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -960,10 +960,6 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	/* now update descriptor */
 	WRITE_ONCE(desc->head, head);
 
-	/*
-	 * Wa_22016122933: Making sure the head update is
-	 * visible to GuC right away
-	 */
 	intel_guc_write_barrier(ct_to_guc(ct));
 
 	return available - len;
-- 
2.25.1

