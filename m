Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E51782FEC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A672B10E29C;
	Mon, 21 Aug 2023 18:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D3110E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692641199; x=1724177199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=reB0s6y3aD+iVhTLMxS+ndqqm1T0PLXvbBoMEdBLU1A=;
 b=gIfzxGD/xnjGrJY4FsrRFlPFSClEtajeyDIDqKgJRPKVHo+wVsFeseOc
 SyJjxbo5X6cBG+7fcLDVTVOiD7n8X8IgB51tOjky3UUYw2zzdmqXKyvMK
 WgAa/wNIuGiPzfepxnQUQ2I28TXf4oac6pcSRVQU3CgzHKa5caiLj+Z3c
 WaiHz04faP76ma4KPl+gl5O+LEiQwSLhDeT/QsTFd2iZe4gFJkBHQee53
 7RL7vgWnVimf1jzK4YQPgumlomQRAQJj/w+y6yYHEBXKe+xsMIBc8T5Rm
 xlIxiBxK/6u6rk0vWgflu37E7JMy1tai3JGGJBXf6vhM7mlsIrieOWH5C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353236511"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353236511"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="738995574"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="738995574"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 11:06:25 -0700
Message-ID: <20230821180619.650007-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230821180619.650007-11-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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
v4:
 - Build IS_MEDIA_GT_IP_STEP on top of IS_MEDIA_GT_IP_RANGE and
   IS_MEDIA_STEP building blocks and name the parameters from/until
   rather than begin/fixed..  (Jani)
v5:
 - Tweak macro comment wording.  (Gustavo)
 - Add a check to catch NULL gt in IS_MEDIA_GT_IP_RANGE; this allows it
   to be used safely on i915->media_gt, which may be NULL on some
   platforms.  (Gustavo)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h  | 32 +++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
 drivers/gpu/drm/i915/i915_drv.h     |  4 ----
 drivers/gpu/drm/i915/i915_perf.c    | 15 ++++----------
 4 files changed, 37 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 6e63b46682f7..239848bcb2a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -25,6 +25,20 @@ struct drm_printer;
 	 GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
 	 GRAPHICS_VER_FULL((gt)->i915) <= (until)))
 
+/*
+ * Check that the GT is a media GT and has an IP version within the
+ * specified range (inclusive).
+ *
+ * Only usable on platforms with a standalone media design (i.e., IP version 13
+ * and higher).
+ */
+#define IS_MEDIA_GT_IP_RANGE(gt, from, until) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(13, 0)) + \
+	BUILD_BUG_ON_ZERO((until) < (from)) + \
+	((gt) && (gt)->type == GT_MEDIA && \
+	 MEDIA_VER_FULL((gt)->i915) >= (from) && \
+	 MEDIA_VER_FULL((gt)->i915) <= (until)))
+
 /*
  * Check that the GT is a graphics GT with a specific IP version and has
  * a stepping in the range [from, until).  The lower stepping bound is
@@ -45,6 +59,24 @@ struct drm_printer;
 	(IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
 	 IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
 
+/*
+ * Check that the GT is a media GT with a specific IP version and has
+ * a stepping in the range [from, until).  The lower stepping bound is
+ * inclusive, the upper bound is exclusive.  The most common use-case of this
+ * macro is for checking bounds for workarounds, which usually have a stepping
+ * ("from") at which the hardware issue is first present and another stepping
+ * ("until") at which a hardware fix is present and the software workaround is
+ * no longer necessary.  "STEP_FOREVER" can be passed as "until" for
+ * workarounds that have no upper stepping bound for the specified IP version.
+ *
+ * This macro may only be used to match on platforms that have a standalone
+ * media design (i.e., media version 13 or higher).
+ */
+#define IS_MEDIA_GT_IP_STEP(gt, ipver, from, until) ( \
+	BUILD_BUG_ON_ZERO((until) <= (from)) + \
+	(IS_MEDIA_GT_IP_RANGE((gt), (ipver), (ipver)) && \
+	 IS_MEDIA_STEP((gt)->i915, (from), (until))))
+
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
 	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 90933fb8cb97..86df42cb5823 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -524,8 +524,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA) {
+	if (IS_MEDIA_GT_IP_STEP(gt, IP_VER(13, 0), STEP_A0, STEP_B0)) {
 		drm_notice(&i915->drm,
 			   "Media RC6 disabled on A step\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3bb216d55c3e..b0894e7de403 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -662,10 +662,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_MTL_MEDIA_STEP(__i915, since, until) \
-	(IS_METEORLAKE(__i915) && \
-	 IS_MEDIA_STEP(__i915, since, until))
-
 #define IS_PVC_BD_STEP(__i915, since, until) \
 	(IS_PONTEVECCHIO(__i915) && \
 	 IS_BASEDIE_STEP(__i915, since, until))
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index dfe7eff7d1a1..605e6e4fedf1 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4191,7 +4191,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
 	 * does not work as expected.
 	 */
-	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	if (IS_MEDIA_GT_IP_STEP(props->engine->gt, IP_VER(13, 0), STEP_A0, STEP_C0) &&
 	    props->engine->oa_group->type == TYPE_OAM &&
 	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
 		drm_dbg(&perf->i915->drm,
@@ -5300,16 +5300,9 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
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

