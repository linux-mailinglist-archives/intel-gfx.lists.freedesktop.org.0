Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB577C13E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF98110E0D0;
	Mon, 14 Aug 2023 20:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D6F10E0DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043601; x=1723579601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yiM7lmLw4CbY/zk8o/AGMdpYEH6oTgXsF0d8VBLoz1o=;
 b=Uya38CQrXsaNNoxBNWCvwKlqGbCq0Jq9cZZx9jjHgCtfuXXorfqJp6TL
 h4xsva0Ei0G6rB1w8VLrONz7j5Agw6HBCXyqc70j1hE6J744JgNQH+H72
 2e12drir8vLi7ChPH3ByaJxlTcUfLilSyn2A7WhNpox1OFR7nQTrTYK2N
 UIDeVrhlS0Q6tLR/aIze5Pt9M+gHyFH60T4RbZIbquWPKMM0aQIYEW9+R
 lRyLN6/UXV4UEw1BZlNeLTUIuYtzGhQ0Uszabil5T9f6e76fyp9VVgkEg
 33fVhYbKGzJNn3WrZ3b7WwW580sz9zo2vanE7hBwGMOtO4rh5uGrsPy5O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602869"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602869"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420486"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420486"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:36 -0700
Message-ID: <20230814200632.56105-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/9] drm/i915/xelpg: Call Xe_LPG workaround
 functions based on IP version
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

Although some of our Xe_LPG workarounds were already being applied based
on IP version correctly, others were matching on MTL as a base platform,
which is incorrect.  Although MTL is the only platform right now that
uses Xe_LPG IP, this may not always be the case.  If a future platform
re-uses this graphics IP, the same workarounds should be applied, even
if it isn't a "MTL" platform.

We were also incorrectly applying Xe_LPG workarounds/tuning to the
Xe_LPM+ media IP in one or two places; we should make sure that we don't
try to apply graphics workarounds to the media GT and vice versa where
they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
ensure this is handled properly -- it checks that the GT matches the IP
type being tested as well as the IP version falling in the proper range.

Note that many of the stepping-based workarounds are still incorrectly
checking for a MTL base platform; that will be remedied in a later
patch.

v2:
 - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
   be used for either GFX or MEDIA checks.

v3:
 - Switch back to separate macros for gfx and media.  (Jani)
 - Move macro to intel_gt.h.  (Andi)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h          | 11 ++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
 2 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 6c34547b58b5..15c25980411d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -14,6 +14,17 @@
 struct drm_i915_private;
 struct drm_printer;
 
+/*
+ * Check that the GT is a graphics GT and has an IP version within the
+ * specified range (inclusive).
+ */
+#define IS_GFX_GT_IP_RANGE(gt, from, until) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO((until) < (from)) + \
+	((gt)->type != GT_MEDIA && \
+	 GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
+	 GRAPHICS_VER_FULL((gt)->i915) <= (until)))
+
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
 	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3108ad1d6207..80d67e487b55 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
-static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
-				   struct i915_wa_list *wal)
+static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
+				     struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
@@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
 }
 
-static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
-				     struct i915_wa_list *wal)
+static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
+				       struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	mtl_ctx_gt_tuning_init(engine, wal);
+	xelpg_ctx_gt_tuning_init(engine, wal);
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
@@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	if (engine->class != RENDER_CLASS)
 		goto done;
 
-	if (IS_METEORLAKE(i915))
-		mtl_ctx_workarounds_init(engine, wal);
+	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+		xelpg_ctx_workarounds_init(engine, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		; /* noop; none at this time */
 	else if (IS_DG2(i915))
@@ -1791,10 +1791,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
  */
 static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_METEORLAKE(gt->i915)) {
-		if (gt->type != GT_MEDIA)
-			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
-
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
+		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
 
@@ -1826,7 +1824,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 		return;
 	}
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
 		xelpg_gt_workarounds_init(gt, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_gt_workarounds_init(gt, wal);
@@ -2294,7 +2292,7 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
 	blacklist_trtt(engine);
 }
 
-static void mtl_whitelist_build(struct intel_engine_cs *engine)
+static void xelpg_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
 
@@ -2316,8 +2314,10 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 
 	wa_init_start(w, engine->gt, "whitelist", engine->name);
 
-	if (IS_METEORLAKE(i915))
-		mtl_whitelist_build(engine);
+	if (engine->gt->type == GT_MEDIA)
+		; /* none yet */
+	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+		xelpg_whitelist_build(engine);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
@@ -2975,10 +2975,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
  * function invoked by __intel_engine_init_ctx_wa().
  */
 static void
-add_render_compute_tuning_settings(struct drm_i915_private *i915,
+add_render_compute_tuning_settings(struct intel_gt *gt,
 				   struct i915_wa_list *wal)
 {
-	if (IS_METEORLAKE(i915) || IS_DG2(i915))
+	struct drm_i915_private *i915 = gt->i915;
+
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
@@ -3008,7 +3010,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	add_render_compute_tuning_settings(i915, wal);
+	add_render_compute_tuning_settings(engine->gt, wal);
 
 	if (GRAPHICS_VER(i915) >= 11) {
 		/* This is not a Wa (although referred to as
-- 
2.41.0

