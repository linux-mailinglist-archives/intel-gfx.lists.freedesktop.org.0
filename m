Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8207603A9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D5710E130;
	Tue, 25 Jul 2023 00:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6576A10E1A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RuzkL4z9CSutpDyygpOtqUhZ6UsuvWcBSrzD9BjEycA=;
 b=AfM/0wVhYGhvoaWS/Vonyue0mU5WuKLcLQBqYaTkeAReX78+eBBReNEw
 e7YFI5Pt9Y/QTN0ZhV38DFsr5q+UtjGzF5MMIM4bIMynBPTMh23KUqBkc
 n8fBjHNDuv/27vplzZC8sDoJsJIavRrds5uaO/SVhlNxIu3ne7KboX5lO
 1qPNUQBdnZj/hD4WzhJbopxXBHNoS7KzntREw4FKnKS6erkxPW9GbzMED
 Lmb9ryVMg3b7JObPh/qIQ8x6Ico8lfUQj3WOOhatbzvQeHxUmlcKMB02E
 xJhYkG64+svmhm2JrL5chBQkQglYeb4ILE9s4Mv2XzrTEl8hAubtefFbi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042912"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042912"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157011"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157011"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:18 -0700
Message-ID: <20230725001312.1907319-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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
IS_GT_IP_STEP, which checks the media IP version associated with a
specific IP and also ensures that we're operating on the media GT, not
the primary GT.

v2:
 - Switch to the IS_GT_IP_STEP macro.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
 drivers/gpu/drm/i915/i915_drv.h     |  4 ----
 drivers/gpu/drm/i915/i915_perf.c    | 15 ++++-----------
 3 files changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 58bb1c55294c..721006fc80e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -526,8 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA) {
+	if (IS_GT_IP_STEP(MEDIA, gt, IP_VER(13, 0), A0, B0)) {
 		drm_notice(&i915->drm,
 			   "Media RC6 disabled on A step\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 687745550355..a417aa3e0202 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -740,10 +740,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 04bc1f4a1115..980e99e24d18 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4223,7 +4223,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
 	 * does not work as expected.
 	 */
-	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	if (IS_GT_IP_STEP(MEDIA, props->engine->gt, IP_VER(13, 0), A0, C0) &&
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
+	if (IS_GT_IP_STEP(MEDIA, i915->media_gt, IP_VER(13, 0), A0, C0) &&
+	    intel_check_bios_c6_setup(&i915->media_gt->rc6))
+		return 6;
 
 	return 7;
 }
-- 
2.41.0

