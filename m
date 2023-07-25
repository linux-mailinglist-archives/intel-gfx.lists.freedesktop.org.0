Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A286E7603AB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08D310E0C2;
	Tue, 25 Jul 2023 00:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CE6310E39A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CEF5+n6Z7xQvdHs6TvKL3ViIutON2yImvGgM0VI4nak=;
 b=nwWQE3EaetcUyaeuPkyK7DfHrxU7bbkQsXESQVKisoEKmyEXjjiLUnbE
 3u65yAKAtHa8lSz0ktERKf7dXt6LnUXe6MRul5vSIWn5M2OaU6T2yi490
 Ko6QDMB9fvKd8KqBmypsqLtdU7DOJIKeLtPpHGaAJP1CBrMEkmSsaArln
 /lSvfA3c9FxAuxE2UYZRG+VQo2MADBCXeiN0+e74o8D/ID7INf08sDhWd
 tU8/JBJSHz1pLbLc1T0D0lSMWTiYvkfci9RZxBhgZGi/vB9P7CAT6Sy45
 xR8jwAVPl0Dwm8ozI/5Fl5d8l6pI42VP10ldX+lumA9/SffTa+FbF9xO2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042917"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042917"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157023"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157023"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:22 -0700
Message-ID: <20230725001312.1907319-20-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915: Replace several IS_METEORLAKE
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
 - Add comment to i915_coherent_map_type() noting that the current
   implementation of the workaround is too broad.  (Tvrtko)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 8 ++++++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c        | 4 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
 drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
 10 files changed, 22 insertions(+), 16 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 89fc8ea6bcfc..8c74855b6d04 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -470,9 +470,13 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
 					  bool always_coherent)
 {
 	/*
-	 * Wa_22016122933: always return I915_MAP_WC for MTL
+	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
+	 *
+	 * FIXME: The scope of this workaround is too wide right now and
+	 * is applying to objects used solely on the primary GT.  We need to
+	 * take into account which GT will be operating on the shared object.
 	 */
-	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
+	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))
 		return I915_MAP_WC;
 	if (HAS_LLC(i915) || always_coherent)
 		return I915_MAP_WB;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 21af0ec52223..24060278e7a2 100644
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
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8057cc5800b3..4cd7f16283b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1095,10 +1095,10 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 	if (IS_ERR(obj)) {
 		obj = i915_gem_object_create_shmem(engine->i915, context_size);
 		/*
-		 * Wa_22016122933: For MTL the shared memory needs to be mapped
+		 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
 		 * as WC on CPU side and UC (PAT index 2) on GPU side
 		 */
-		if (IS_METEORLAKE(engine->i915))
+		if (MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0))
 			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	}
 	if (IS_ERR(obj))
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 2c014407225c..393bac84a175 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_METEORLAKE(i915)) {
+	if (IS_GT_IP_RANGE(GFX, &i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
 		table->size = ARRAY_SIZE(mtl_mocs_table);
 		table->table = mtl_mocs_table;
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index efe83157ef78..56960d602d45 100644
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c733d43816f4..1d917ef8825d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -743,10 +743,10 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 		return ERR_CAST(obj);
 
 	/*
-	 * Wa_22016122933: For MTL the shared memory needs to be mapped
+	 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
 	 * as WC on CPU side and UC (PAT index 2) on GPU side
 	 */
-	if (IS_METEORLAKE(gt->i915))
+	if (MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0))
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4de44cf1026d..df688a95a312 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = obj_to_i915(obj);
 
-	if (IS_METEORLAKE(i915)) {
+	if (IS_GT_IP_RANGE(GFX, to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
 		switch (obj->pat_index) {
 		case 0: return " WB";
 		case 1: return " WT";
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 980e99e24d18..278ec8dc533e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3227,11 +3227,13 @@ get_sseu_config(struct intel_sseu *out_sseu,
  */
 u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt = to_gt(i915);
+
 	/*
 	 * Wa_18013179988:dg2
-	 * Wa_14015846243:mtl
+	 * Wa_14015846243:xelpg
 	 */
-	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
+	if (IS_DG2(i915) || IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71))) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
@@ -4539,7 +4541,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	if (IS_METEORLAKE(perf->i915))
+	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
 		return reg_in_range_table(addr, mtl_oa_mux_regs);
 	else
 		return reg_in_range_table(addr, gen12_oa_mux_regs);
-- 
2.41.0

