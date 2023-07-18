Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DBD758865
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CC410E3D4;
	Tue, 18 Jul 2023 22:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838A410E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719282; x=1721255282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JqV2/fUZntOehct+a6VFccBtnYJulLuhe3abQUZ2+1A=;
 b=KkEnJuBZwR5Xz4C3KcLB6srDTysAtwPk1PJd25kHQtFZ42V10hESwWl5
 9p7bOgtBbUcSV21FGGLNaD/I8jlkvkeCo+3l9gpmp0/gNx7RUR1KHnJyt
 M8ikT9bPkeZ9yM75b8el08UwGKi9ZqEpllyZ0QWrCxZ97TSXRzfUken64
 nJTA2k2WI+njAZAl66jbbnspmd3D09DdMQ7Pb3XLsvn7NpukxwF5MsyIG
 KXK09uJH2s6CYvwCEPCdg19E7t1gn63RIlp03KMwqXkoTITcRM3cRnhJ7
 GPKQ9NYqCEOmiMwxqx0R4ABx5pyX2scNiDOogd6BLlLvzahMBKOQeqnFi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508074"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508074"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403896"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403896"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:27:58 -0700
Message-ID: <20230718222753.1075713-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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
the same workarounds.  IS_MTL_MEDIA_STEP() is dropped in favor of a new
macro IS_MEDIA_IPVER_STEP() that checks the media IP version associated
with a specific IP and also ensures that we're operating on the media
GT, not the primary GT.

This new macro will return false if the GT is NULL (so it's safe to pass
i915->media_gt as a parameter, even though that will be NULL on
platforms without standalone media).  We don't expect this macro to used
to match media versions earlier than 13 (when media became a standalone
GT), so a build error will be raised if this macro is used to match on a
pre-13 version of media.  That restriction can be adjusted in the future
if we find a use for this macro on earlier platforms.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
 drivers/gpu/drm/i915/i915_drv.h     | 10 ++++++----
 drivers/gpu/drm/i915/i915_perf.c    | 15 ++++-----------
 3 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 58bb1c55294c..91c68c0ec32d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -526,8 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA) {
+	if (IS_MEDIA_IPVER_STEP(gt, IP_VER(13, 0), STEP_A0, STEP_B0)) {
 		drm_notice(&i915->drm,
 			   "Media RC6 disabled on A step\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d03710c923c8..10741177b654 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -698,14 +698,16 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
 	  IS_GRAPHICS_STEP(__gt->i915, since, until)))
 
+#define IS_MEDIA_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(13, 0)) + \
+	 (__gt && __gt->type == GT_MEDIA && \
+	  MEDIA_VER_FULL(__gt->i915) == ipver && \
+	  IS_MEDIA_STEP(__gt->i915, since, until)))
+
 #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
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
index 49c6f1ff1128..ff95f2cdf2b0 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4223,7 +4223,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
 	 * does not work as expected.
 	 */
-	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	if (IS_MEDIA_IPVER_STEP(props->engine->gt, IP_VER(13, 0), STEP_A0, STEP_C0) &&
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
+	if (IS_MEDIA_IPVER_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, STEP_C0) &&
+	    intel_check_bios_c6_setup(&i915->media_gt->rc6))
+		return 6;
 
 	return 7;
 }
-- 
2.41.0

