Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46A9939FAD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B54910E572;
	Tue, 23 Jul 2024 11:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6AW910v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE14310E570
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733704; x=1753269704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iKX4Bdkl/fvzIYXtXUT3KwRwjLnKY0i4oMhZkFNWxtI=;
 b=Q6AW910vcJkKvEEU11SBS3o0FKxXdq9pjW2+KoO09CyPQl9dEFRs06QU
 vn8CBsuxAuDsyyTMWRl6vooEWKoqDVU9M66yT2dZF2gOso7GL7vkYKtZv
 RDRwYWzeHWZMjfquia1Q8aAThAea6TZE+vkwOZjwtHqCmeGSorhPHAtIt
 rDoelk0zeuJ6hpUsIYuA/sPymhEU8FQgrOLJQE9QFiR1w3XLyub4fFUw9
 jArMqHoeD+f+YPAD7ncI1X3haTzIJaAdkzObo/i7hiN6zOyP2tbNsFeZp
 So6OdbeQzizqzoOFNMkf5s6ZYtWNStOFXYnbGucSzyjbSv93BUuJ5MlXp A==;
X-CSE-ConnectionGUID: PCKicGJsQuCHJylgYKUXIA==
X-CSE-MsgGUID: CEZEnQQlRTmCXxsh9NCJNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225408"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225408"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:43 -0700
X-CSE-ConnectionGUID: YKLPnNKhSRGAFqPS1QBg6A==
X-CSE-MsgGUID: 181q2l3BQF+zcPMZDcrs9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267456"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:42 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 5/9] drm/i915/gt: Move the CCS mode variable to a global
 position
Date: Tue, 23 Jul 2024 13:20:42 +0200
Message-ID: <20240723112046.123938-6-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
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

Store the CCS mode value in the intel_gt->ccs structure to make
it available for future instances that may need to change its
value.

Name it mode_reg_val because it holds the value that will
be written into the CCS_MODE register, determining the CCS
balancing and, consequently, the number of engines generated.

Create a mutex to control access to the mode_reg_val variable.

No functional changes intended.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 10 +++++++---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 12 ++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  7 ++++---
 4 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 0710e55d37d7..8acb9ee5b511 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -18,6 +18,8 @@ void intel_gt_ccs_mode_init(struct intel_gt *gt)
 	unsigned int i;
 	u8 first_ccs;
 
+	mutex_init(&gt->ccs.mutex);
+
 	/* Calculate the slices considering the fused engines */
 	ss_per_ccs = info->sseu.max_subslices / I915_MAX_CCS;
 	fused_mask = intel_slicemask_from_xehp_dssmask(info->sseu.compute_subslice_mask,
@@ -55,14 +57,16 @@ void intel_gt_ccs_mode_init(struct intel_gt *gt)
 	info->engine_mask |= BIT(_CCS(first_ccs));
 }
 
-unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
+void intel_gt_apply_ccs_mode(struct intel_gt *gt)
 {
 	int cslice;
 	u32 mode = 0;
 	int first_ccs = __ffs(CCS_MASK(gt));
 
+	lockdep_assert_held(&gt->ccs.mutex);
+
 	if (!IS_DG2(gt->i915))
-		return 0;
+		return;
 
 	/* Build the value for the fixed CCS load balancing */
 	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
@@ -82,7 +86,7 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
 						     XEHP_CCS_MODE_CSLICE_MASK);
 	}
 
-	return mode;
+	gt->ccs.mode_reg_val = mode;
 }
 
 static ssize_t num_cslices_show(struct device *dev,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
index b9ce29055857..5793c4178bd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
@@ -8,7 +8,7 @@
 
 struct intel_gt;
 
-unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt);
+void intel_gt_apply_ccs_mode(struct intel_gt *gt);
 void intel_gt_sysfs_ccs_init(struct intel_gt *gt);
 void intel_gt_ccs_mode_init(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 3c9fae53871a..ef803ace41a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -207,12 +207,24 @@ struct intel_gt {
 					    [MAX_ENGINE_INSTANCE + 1];
 	enum intel_submission_method submission_method;
 
+	/*
+	 * Track fixed mapping between CCS engines and compute slices.
+	 *
+	 * In order to w/a HW that has the inability to dynamically load
+	 * balance between CCS engines and EU in the compute slices, we have to
+	 * reconfigure a static mapping on the fly.
+	 *
+	 * The mode variable is set by the user and sets the balancing mode,
+	 * i.e. how the CCS streams are distributed amongs the slices.
+	 */
 	struct {
 		/*
 		 * Mask of the non fused CCS slices
 		 * to be used for the load balancing
 		 */
+		struct mutex mutex;
 		intel_engine_mask_t cslice_mask;
+		u32 mode_reg_val;
 	} ccs;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 09a287c1aedd..379b3dde3bbd 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2713,7 +2713,6 @@ add_render_compute_tuning_settings(struct intel_gt *gt,
 static void ccs_engine_wa_mode(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct intel_gt *gt = engine->gt;
-	u32 mode;
 
 	if (!IS_DG2(gt->i915))
 		return;
@@ -2730,8 +2729,10 @@ static void ccs_engine_wa_mode(struct intel_engine_cs *engine, struct i915_wa_li
 	 * After having disabled automatic load balancing we need to
 	 * assign all slices to a single CCS. We will call it CCS mode 1
 	 */
-	mode = intel_gt_apply_ccs_mode(gt);
-	wa_masked_en(wal, XEHP_CCS_MODE, mode);
+	mutex_lock(&gt->ccs.mutex);
+	intel_gt_apply_ccs_mode(gt);
+	wa_masked_en(wal, XEHP_CCS_MODE, gt->ccs.mode_reg_val);
+	mutex_unlock(&gt->ccs.mutex);
 }
 
 /*
-- 
2.45.2

