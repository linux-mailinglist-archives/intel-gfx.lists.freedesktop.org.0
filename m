Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7BB77C145
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D6410E22C;
	Mon, 14 Aug 2023 20:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6CE10E0F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043602; x=1723579602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=niN8IKSD1OvanaIh6TrJda4oMM8/udNaToE+qOy6hMA=;
 b=BkdJwH3VYykG+u6fD9i2h1BLcZwxMoQyAKrKe5KCvRYqbe7C2ot2PyZN
 0pwnN+57HG53ukWFkPhqsKz7f4COcIFG3jIulymR5AU90shmmT+4L3mnN
 0C/8A/f0XPULQCPQwOMwo4X74dmYDLMaCe16OBj5+pC1jiTgnk+BaWDEI
 ZDx3fplIBvkZru6fPrXl1gDd0Ohu2IaTla55Y0Qus9RP5VWkraWyMP0XR
 BOYJSPKngHsn/ouhkwu0VCtesAjDeX9SQU5cU1PxuQxJzRaxsFnqDAdUO
 Ex3Mo2sdKMdEnSEZ2hX5PRVM1eszjjhhT0nGO8gF06nnzEkPAkusLYTsW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602880"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602880"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420504"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420504"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:42 -0700
Message-ID: <20230814200632.56105-20-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 9/9] drm/i915: Replace several IS_METEORLAKE
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

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c        | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c   | 3 ++-
 drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
 drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
 9 files changed, 15 insertions(+), 12 deletions(-)

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
index 2c014407225c..a2d8a271fe68 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_METEORLAKE(i915)) {
+	if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
 		table->size = ARRAY_SIZE(mtl_mocs_table);
 		table->table = mtl_mocs_table;
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 748b0c695072..a5d725508c77 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	 * temporary wa and should be removed after fixing real cause
 	 * of forcewake timeouts.
 	 */
-	if (IS_METEORLAKE(gt->i915) ||
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		pg_enable =
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 32e27e9a2490..ba494a4a967a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -850,7 +850,8 @@ int intel_uc_check_file_version(struct intel_uc_fw *uc_fw, bool *old_ver)
 	 * not working with newer ones. This is specific to MTL and we
 	 * don't expect it to extend to other platforms.
 	 */
-	if (IS_METEORLAKE(gt->i915) && uc_fw->type == INTEL_UC_FW_TYPE_HUC) {
+	if (MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) &&
+	    uc_fw->type == INTEL_UC_FW_TYPE_HUC) {
 		ret = check_mtl_huc_guc_compatibility(gt, selected);
 		if (ret)
 			return ret;
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
index 2ef8addb0cfd..f3ab6f65a556 100644
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
+	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
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

