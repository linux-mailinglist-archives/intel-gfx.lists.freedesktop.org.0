Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4018A43D22
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8346E10E624;
	Tue, 25 Feb 2025 11:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWwtZFs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88B510E61A;
 Tue, 25 Feb 2025 11:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482083; x=1772018083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Di0K1wDlQ4HsNUidoG3kz2+4u30DS7rE77dlQyBJpnQ=;
 b=VWwtZFs2yQd4EnF9thBpToQawq6tezUGEIax8tIjyNr+mwthRj9J+UBx
 42RdQIrnNggl51DPU4sjjPSLvRHzzO1hC2dZMACTeFl+sil3XaiaXfIh4
 vpiixcGRrOjjzZ8ngcX2tFSj8fFD2UK/MTRvpI/Zv8icwtjfqHsO4nLLc
 n8cwplkE5AjbA2Yfem5kQwuQfEOqiOMqP+gqnVHuIfQMapAow3DVagA53
 YqkxN7CmSPCrSs+4zRtyDMURkbepuCh19wZglO1b+myN4RCNchtv25kyz
 skL9lILjM/z7hbsBgBcQ893TN9MZVU26JvDR0bv+86TNAA7i3zsBqukAG g==;
X-CSE-ConnectionGUID: phVIOTVYSyOOU6sn1iIqFQ==
X-CSE-MsgGUID: 0sAFdCyzQjGBMwyhl/QWfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44106530"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="44106530"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:43 -0800
X-CSE-ConnectionGUID: RkBksHOoQdeeiaUBmrXDZQ==
X-CSE-MsgGUID: mL0qjgzLQ5Sg7wKaZNeVqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121612146"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 3/8] drm/i915/reset: add
 intel_gt_gpu_reset_clobbers_display() helper
Date: Tue, 25 Feb 2025 13:14:17 +0200
Message-Id: <2beaff3d4e194e67b35bf91c3e2dc0b36c76d6bd.1740481927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740481927.git.jani.nikula@intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
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

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c     | 15 +++++++++++----
 drivers/gpu/drm/i915/gt/intel_reset.h     |  2 ++
 drivers/gpu/drm/i915/i915_driver.c        |  2 +-
 5 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ec136eb12d48..39f6ba4bf1ab 100644
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
index 175fa2db0551..3182f19b9837 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -158,7 +158,7 @@ void intel_gt_pm_init(struct intel_gt *gt)
 
 static bool reset_engines(struct intel_gt *gt)
 {
-	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (intel_gt_gpu_reset_clobbers_display(gt))
 		return false;
 
 	return intel_gt_reset_all_engines(gt) == 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d937135063ee..835c9081b239 100644
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
@@ -1177,6 +1177,13 @@ static int resume(struct intel_gt *gt)
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
@@ -1233,7 +1240,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		goto error;
 	}
 
-	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+	if (intel_gt_gpu_reset_clobbers_display(gt))
 		intel_irq_suspend(gt->i915);
 
 	if (do_reset(gt, stalled_mask)) {
@@ -1241,7 +1248,7 @@ void intel_gt_reset(struct intel_gt *gt,
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
index 1dfd6269b355..9c2eea73ede9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -200,7 +200,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 
 static void sanitize_gpu(struct drm_i915_private *i915)
 {
-	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display) {
+	if (!intel_gt_gpu_reset_clobbers_display(to_gt(i915))) {
 		struct intel_gt *gt;
 		unsigned int i;
 
-- 
2.39.5

