Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E521C7603A8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89B810E12A;
	Tue, 25 Jul 2023 00:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DEAB10E397
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ClxfJx5MnBQzv3FdWIUvtAfQWYAes87O5MOtbKMWFx4=;
 b=YwqtwxxTIt77BQKFRo9968LC3p+MVX6coe9GxqWnPEysvicFokscN6s9
 i2qq6TKn/o8T3R5e39GcxVIQsyCWfnQpyXPWFoDtolzYE8EKQd/95Go7Y
 QN4u8JkwY42x3Xes+JfhdsGoGACCO90xjzbf8bZYKQxsUVOqOxIjTNKUv
 VrEKwzz6zQ/L+a3X8//9u6t5zUIGvZVucHOwLUfmFqOri5qQek1dZp9LR
 nrzVGZoaEUa5bImW8J0Nakbydzqop9WfA5IfXiWKhKhX1p3iXQyiPPzIc
 Q1iW06LA/ewniS5rroe7fgX+Mg3VJ1TSlNuir9KLj5eOxtXEbaJx9dPPn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042911"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042911"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157005"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157005"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:16 -0700
Message-ID: <20230725001312.1907319-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/xelpg: Call Xe_LPG workaround
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

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h             | 23 +++++++++++++
 2 files changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d8a1eaa44e69..c4663541c5dd 100644
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
+	if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+		xelpg_ctx_workarounds_init(engine, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		; /* noop; none at this time */
 	else if (IS_DG2(i915))
@@ -1790,10 +1790,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
  */
 static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_METEORLAKE(gt->i915)) {
-		if (gt->type != GT_MEDIA)
-			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
-
+	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71))) {
+		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
 
@@ -1825,7 +1823,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 		return;
 	}
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)))
 		xelpg_gt_workarounds_init(gt, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_gt_workarounds_init(gt, wal);
@@ -2293,7 +2291,7 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
 	blacklist_trtt(engine);
 }
 
-static void mtl_whitelist_build(struct intel_engine_cs *engine)
+static void xelpg_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
 
@@ -2315,8 +2313,10 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 
 	wa_init_start(w, engine->gt, "whitelist", engine->name);
 
-	if (IS_METEORLAKE(i915))
-		mtl_whitelist_build(engine);
+	if (engine->gt->type == GT_MEDIA)
+		; /* none yet */
+	else if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+		xelpg_whitelist_build(engine);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
@@ -2974,10 +2974,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
+	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
@@ -3007,7 +3009,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	add_render_compute_tuning_settings(i915, wal);
+	add_render_compute_tuning_settings(engine->gt, wal);
 
 	if (GRAPHICS_VER(i915) >= 11) {
 		/* This is not a Wa (although referred to as
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 682ef2b5c7d5..6bb825d40451 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -431,6 +431,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
 
+#define __IS_MEDIA_GT(gt) ((gt)->type == GT_MEDIA)
+#define __IS_GFX_GT(gt) (!__IS_MEDIA_GT(gt))
+#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
+			   MEDIA_VER_FULL((gt)->i915) : \
+			   GRAPHICS_VER_FULL((gt)->i915))
+
+/*
+ * Check that a GT contains IP of the specified type and within the specified
+ * IP range.  E.g.,
+ *
+ *    IS_GT_IP_RANGE(GFX, IP_VER(12, 70), IP_VER(12, 71))
+ *    IS_GT_IP_RANGE(MEDIA, IP_VER(13, 00), IP_VER(18, 02))
+ *
+ * Note that media version checks with this macro will only work on platforms
+ * with standalone media design (i.e., media version 13 and higher).
+ */
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))
+
 #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
 #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
 					       RUNTIME_INFO(i915)->media.ip.rel)
-- 
2.41.0

