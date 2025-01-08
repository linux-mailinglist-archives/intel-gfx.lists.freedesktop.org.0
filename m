Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8268FA05861
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:41:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A0010E851;
	Wed,  8 Jan 2025 10:41:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8/+TGUl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2108A10E851
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332902; x=1767868902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5jV2WHyNOyY3a8heC43XlNM6qSTEi7cybE+jJ8sbynM=;
 b=O8/+TGUlqvkS/O2rHCnlsVDIL+F8T9wpoGv0MI/o1Yy+2sefRUIbxdgl
 CPyyOXQOVaDNCYITjIx0KahAcecFv1eKnxpAdZ18nzIn1acBXwDvjAoHI
 BCLD4Xlk99LtAQBAn5l3lnjc+sgTtM3zKEzWLApS/IzRHbE9ZVqQCvYY6
 WoDjlXLFcNScDfhMAq/Ng2Gs8fOZJc4aSxGYsJpikKcunt7EwZzuCUEhH
 l9jg0NpS/xJBwKGeAPDoKislA1/xciSxaPvypJZlOXtyaD4DTWVBzr4jw
 eBoI1ySdfDKUzjWvj2Ju+U0XbTsbWwc5RiZAoJN81wJae+jHjgUnNQZxR g==;
X-CSE-ConnectionGUID: mWZtsc5LT2ytuui2BIfOow==
X-CSE-MsgGUID: UGvgJJTcSEqvDdaMPoSkgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47218498"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47218498"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:41 -0800
X-CSE-ConnectionGUID: 9wmGjZmCTZO8hvFuKtH+rQ==
X-CSE-MsgGUID: jNUMTz+gS2WTsul8BA+bRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102978994"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915: add intel_gt_gpu_reset_clobbers_display() helper
Date: Wed,  8 Jan 2025 12:41:18 +0200
Message-Id: <cd347927dadb31a5291fc9f9087ab995a431bc16.1736332802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736332802.git.jani.nikula@intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper for checking the gpu_reset_clobbers_display flag to make it
easier to relocate the flag later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c     | 15 +++++++++++----
 drivers/gpu/drm/i915/gt/intel_reset.h     |  2 ++
 drivers/gpu/drm/i915/i915_driver.c        |  2 +-
 5 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4d30a86016f2..6e6ceb0de019 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -677,7 +677,7 @@ void intel_engines_release(struct intel_gt *gt)
 	 * in case we aborted before completely initialising the engines.
 	 */
 	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
-	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (!intel_gt_gpu_reset_clobbers_display(gt))
 		intel_gt_reset_all_engines(gt);
 
 	/* Decouple the backend; but keep the layout for late GPU resets */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c08fdb65cc69..7d7a93e6db8f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -156,7 +156,7 @@ void intel_gt_pm_init(struct intel_gt *gt)
 
 static bool reset_engines(struct intel_gt *gt)
 {
-	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (intel_gt_gpu_reset_clobbers_display(gt))
 		return false;
 
 	return intel_gt_reset_all_engines(gt) == 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 686be6edd2e3..0d863aa58fb6 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -986,7 +986,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	awake = reset_prepare(gt);
 
 	/* Even if the GPU reset fails, it should still stop the engines */
-	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (!intel_gt_gpu_reset_clobbers_display(gt))
 		intel_gt_reset_all_engines(gt);
 
 	for_each_engine(engine, gt, id)
@@ -1106,7 +1106,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 
 	/* We must reset pending GPU events before restoring our submission */
 	ok = !HAS_EXECLISTS(gt->i915); /* XXX better agnosticism desired */
-	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (!intel_gt_gpu_reset_clobbers_display(gt))
 		ok = intel_gt_reset_all_engines(gt) == 0;
 	if (!ok) {
 		/*
@@ -1178,6 +1178,13 @@ static int resume(struct intel_gt *gt)
 	return 0;
 }
 
+bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+
+	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
+}
+
 /**
  * intel_gt_reset - reset chip after a hang
  * @gt: #intel_gt to reset
@@ -1234,7 +1241,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		goto error;
 	}
 
-	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (intel_gt_gpu_reset_clobbers_display(gt))
 		intel_irq_suspend(gt->i915);
 
 	if (do_reset(gt, stalled_mask)) {
@@ -1242,7 +1249,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		goto taint;
 	}
 
-	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (intel_gt_gpu_reset_clobbers_display(gt))
 		intel_irq_resume(gt->i915);
 
 	intel_overlay_reset(display);
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
index c00de353075c..724ea6d64f33 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
@@ -28,6 +28,8 @@ void intel_gt_handle_error(struct intel_gt *gt,
 			   const char *fmt, ...);
 #define I915_ERROR_CAPTURE BIT(0)
 
+bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt);
+
 void intel_gt_reset(struct intel_gt *gt,
 		    intel_engine_mask_t stalled_mask,
 		    const char *reason);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c2ae37d6b94d..be44b66da310 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -201,7 +201,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 
 static void sanitize_gpu(struct drm_i915_private *i915)
 {
-	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display) {
+	if (!intel_gt_gpu_reset_clobbers_display(to_gt(i915))) {
 		struct intel_gt *gt;
 		unsigned int i;
 
-- 
2.39.5

