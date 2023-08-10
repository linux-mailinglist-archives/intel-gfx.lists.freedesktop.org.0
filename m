Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6CC7782FC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 23:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995DA10E4B9;
	Thu, 10 Aug 2023 21:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A2210E4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 21:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691704689; x=1723240689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z9JIqLg0/dvrqet8Q0JN3VyT4pp31DLUWvzTR4U4wEY=;
 b=aum49BOafca2kHGKWJOiEiMNK13MxEHvG4e4HmSySBVhRmLFjRZGuBnu
 NwwOcy9ol0VUqMBwhLRLBLxpbQDh4e07MFYNFOEC+i6eTyNPhWobhS3aR
 CNSNpcn4ka2ZugIDtCGgsq1gRDKgpwPWAFpjpJqT2IhOfH6tZbCEvullI
 7Tq0eZ+hF5nTOaMs6f6qXcvpW/A0pUL3HUevyoxF19riPOhh97T1g7KtT
 i3Q+b/K9C5Caac6l8mlsHU1N4y/A7wFUg4mhH8Q9LCgJiAhQoEBlGmIPY
 iM6xeuL3+Qn/TyOfuxQfbcWQ45Sf9yTnjOr/C5/g7QIek/R5ncvid7HGY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369004793"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369004793"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875905565"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 14:57:56 -0700
Message-ID: <20230810215750.3609161-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230810215750.3609161-11-matthew.d.roper@intel.com>
References: <20230810215750.3609161-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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

Stepping-specific media behavior shouldn't be tied to MTL as a platform,
but rather specifically to the Xe_LPM+ IP.  Future non-MTL platforms may
re-use this IP and will need to follow the exact same logic and apply
the same workarounds.  IS_MTL_MEDIA_STEP() is dropped in favor of
IS_MEDIA_GT_IP_STEP, which checks the media IP version associated with a
specific IP and also ensures that we're operating on the media GT, not
the primary GT.

v2:
 - Switch to the IS_GT_IP_STEP macro.
v3:
 - Switch back to long-form IS_MEDIA_GT_IP_STEP.  (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h  | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
 drivers/gpu/drm/i915/i915_drv.h     |  4 ----
 drivers/gpu/drm/i915/i915_perf.c    | 15 ++++-----------
 4 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index de1bb04c864a..f051a41a6de1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -45,6 +45,25 @@ struct drm_printer;
 	 INTEL_GRAPHICS_STEP((gt)->i915) >= (begin) && \
 	 INTEL_GRAPHICS_STEP((gt)->i915) < (fixed)))
 
+/*
+ * Check that the GT is a media GT with a specific IP version and has
+ * a stepping in the range [begin, fixed).  The lower stepping bound is
+ * inclusive, the upper bound is exclusive (corresponding to the first hardware
+ * stepping at which the workaround is no longer needed).
+ * "STEP_FOREVER" can be passed as the upper stepping bound for workarounds
+ * that have no "fixed" version for the specified IP version.
+ *
+ * This macro may only be used to match on platforms that have a standalone
+ * media design (i.e., media version 13 or higher).
+ */
+#define IS_MEDIA_GT_IP_STEP(gt, ipver, begin, fixed) ( \
+	BUILD_BUG_ON_ZERO((ipver) < IP_VER(13, 0)) + \
+	BUILD_BUG_ON_ZERO((fixed) <= (begin)) + \
+	((gt)->type == GT_MEDIA && \
+	 MEDIA_VER_FULL((gt)->i915) == (ipver) && \
+	 INTEL_MEDIA_STEP((gt)->i915) >= begin && \
+	 INTEL_MEDIA_STEP((gt)->i915) < fixed))
+
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
 	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 58bb1c55294c..748b0c695072 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -526,8 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA) {
+	if (IS_MEDIA_GT_IP_STEP(gt, IP_VER(13, 0), STEP_A0, STEP_B0)) {
 		drm_notice(&i915->drm,
 			   "Media RC6 disabled on A step\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e0e0493d6c1f..42a86483c694 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -662,10 +662,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_MTL_MEDIA_STEP(__i915, since, until) \
-	(IS_METEORLAKE(__i915) && \
-	 IS_MEDIA_STEP(__i915, since, until))
-
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 04bc1f4a1115..2ef8addb0cfd 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4223,7 +4223,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
 	 * does not work as expected.
 	 */
-	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	if (IS_MEDIA_GT_IP_STEP(props->engine->gt, IP_VER(13, 0), STEP_A0, STEP_C0) &&
 	    props->engine->oa_group->type == TYPE_OAM &&
 	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
 		drm_dbg(&perf->i915->drm,
@@ -5332,16 +5332,9 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
 	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
 	 * to indicate that OA media is not supported.
 	 */
-	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
-		struct intel_gt *gt;
-		int i;
-
-		for_each_gt(gt, i915, i) {
-			if (gt->type == GT_MEDIA &&
-			    intel_check_bios_c6_setup(&gt->rc6))
-				return 6;
-		}
-	}
+	if (IS_MEDIA_GT_IP_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, STEP_C0) &&
+	    intel_check_bios_c6_setup(&i915->media_gt->rc6))
+		return 6;
 
 	return 7;
 }
-- 
2.41.0

