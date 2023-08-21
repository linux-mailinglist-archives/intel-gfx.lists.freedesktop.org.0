Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9480782FF4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3BC10E2A6;
	Mon, 21 Aug 2023 18:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC95A10E29F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692641199; x=1724177199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=obbzZypMUqfhkZe55cL2pvnweOs/5op/Ni/H8E3vzSs=;
 b=cabp7Rm5IG34E7YBTr9mxN3Fbw+LQvZNufhzNm5Hhvuou3Q9TcOYbkjz
 hZnsRch0VcH5d+6yySuWXMHde5J8H+imcAtE7OUPjGMy0XYh96bxgRK6A
 TNf4FGGlFJHcZ2mB2QJHK5JldJXsBpoBV5g5SiD9ez+JT/cjLgevZDxd7
 FllVgH3BpQHELWvfgMY1vzke0h9BtWkQcIF83zj1qYxmbBEVQsfUc+pjK
 odGwjY5W77B3zFeL9Joq6HYGCaDbPPgKb2gIegj+wOO8LJ3Pm3gGaF3ge
 j2X5k2dXoAHNsySefcs9JjAP+U1zDMuhPVTjcUWEORd8GwTioTPcAZ6iE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353236518"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353236518"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="738995587"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="738995587"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 11:06:29 -0700
Message-ID: <20230821180619.650007-20-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230821180619.650007-11-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 9/9] drm/i915: Replace several IS_METEORLAKE
 with proper IP version checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Many of the IS_METEORLAKE conditions throughout the driver are supposed
to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
specifically.  Update those checks to ensure that the code will still
operate properly if/when these IP versions show up on future platforms.

v2:
 - Update two more conditions (one for pg_enable, one for MTL HuC
   compatibility).
v3:
 - Don't change GuC/HuC compatibility check, which sounds like it truly
   is specific to the MTL platform.  (Gustavo)
 - Drop a non-lineage workaround number for the OA timestamp frequency
   workaround.  (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c        |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c        |  2 +-
 drivers/gpu/drm/i915/i915_perf.c           | 11 +++++------
 8 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index d24c0ce8805c..19156ba4b9ef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __user *base, void *data)
 	BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=
 		     offsetofend(struct drm_i915_gem_create_ext_set_pat, rsvd));
 
-	/* Limiting the extension only to Meteor Lake */
-	if (!IS_METEORLAKE(i915))
+	/* Limiting the extension only to Xe_LPG and beyond */
+	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
 		return -ENODEV;
 
 	if (copy_from_user(&ext, base, sizeof(ext)))
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index b538b5c04948..e91fc881dbf1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
+	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
 		intel_uncore_write(engine->gt->uncore,
 				   RC_PSMI_CTRL_GSCCS,
 				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index bf8b42d2d327..07269ff3be13 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_METEORLAKE(i915)) {
+	if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
 		table->size = ARRAY_SIZE(mtl_mocs_table);
 		table->table = mtl_mocs_table;
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 86df42cb5823..8b67abd720be 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	 * temporary wa and should be removed after fixing real cause
 	 * of forcewake timeouts.
 	 */
-	if (IS_METEORLAKE(gt->i915))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index fd6c22aeb670..98575d79c446 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
 
 static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 {
-	if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
+	if (MEDIA_VER_FULL(gt->i915) != IP_VER(13, 0) || !HAS_ENGINE(gt, GSC0))
 		return false;
 
 	if (!__HAS_ENGINE(engine_mask, GSC0))
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 092542f53aad..4feef874e6d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1161,7 +1161,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	if (IS_METEORLAKE(i915))
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 		return mtl_get_freq_caps(rps, caps);
 	else
 		return __gen6_rps_get_freq_caps(rps, caps);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4de44cf1026d..7a90a2e32c9f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 
-	if (IS_METEORLAKE(i915)) {
+	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
 		switch (obj->pat_index) {
 		case 0: return " WB";
 		case 1: return " WT";
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 605e6e4fedf1..018f42fff4cc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3220,11 +3220,10 @@ get_sseu_config(struct intel_sseu *out_sseu,
  */
 u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 {
-	/*
-	 * Wa_18013179988:dg2
-	 * Wa_14015846243:mtl
-	 */
-	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
+	struct intel_gt *gt = to_gt(i915);
+
+	/* Wa_18013179988 */
+	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
@@ -4507,7 +4506,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	if (IS_METEORLAKE(perf->i915))
+	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
 		return reg_in_range_table(addr, mtl_oa_mux_regs);
 	else
 		return reg_in_range_table(addr, gen12_oa_mux_regs);
-- 
2.41.0

