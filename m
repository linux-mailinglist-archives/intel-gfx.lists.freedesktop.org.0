Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A791E8C82F2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 11:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C6A10E148;
	Fri, 17 May 2024 09:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhD0y/OG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F9110E148
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 09:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715936800; x=1747472800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l5YqnI09jMdsOUwMCuRRXB95ZZcDlN6BCQdwz4eGL8o=;
 b=MhD0y/OGuUkYKCiS+4at+Ih1G5WCk9t2L/r71S5z8FIcGZdEdIVNszvo
 30cOXK4z9OYROEim3SXuejHuiKACAwy0kyT5MeCo/UN1RweuIM3ixc5QA
 Fs0WMhilV5eR7Bv84zc+dqcRLVslWPwi7mhyu5uKkaX2mFShetxxtVZFc
 SALwfdY/ZUTc7Ng2S1shgcHfoDdVw1eJe6TL3TwcO3oXF1FgdePm7JuGj
 j21AIbcHuuZPpDAf3bH0RJBppplTXCx32IFQgO6DXedGdvfIrdqLVtYDD
 PYCzFXu86rpl1sVhzEA2j9118+6xSeN0iy7UmRbg3knv0fXzewPiE4FcT g==;
X-CSE-ConnectionGUID: F5N+c216TrGoN2kz344GyQ==
X-CSE-MsgGUID: fcRn2YtTRi+rLxKQ2/7+cA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12291678"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="12291678"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 02:06:39 -0700
X-CSE-ConnectionGUID: pJ3Y+gLhSdKBHjpcAgVheQ==
X-CSE-MsgGUID: kmn6RrY0RTKY0gWk76VHWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="32329163"
Received: from unknown (HELO intel.com) ([10.247.118.195])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 02:06:33 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
	drm-devel@freedesktop.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, Gnattu OC <gnattuoc@me.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Jian Ye <jian.ye@intel.com>
Subject: [PATCH] drm/i915/gt: Fix CCS id's calculation for CCS mode setting
Date: Fri, 17 May 2024 11:06:16 +0200
Message-ID: <20240517090616.242529-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

The whole point of the previous fixes has been to change the CCS
hardware configuration to generate only one stream available to
the compute users. We did this by changing the info.engine_mask
that is set during device probe, reset during the detection of
the fused engines, and finally reset again when choosing the CCS
mode.

We can't use the engine_mask variable anymore, as with the
current configuration, it imposes only one CCS no matter what the
hardware configuration is.

Before changing the engine_mask for the third time, save it and
use it for calculating the CCS mode.

After the previous changes, the user reported a performance drop
to around 1/4. We have tested that the compute operations, with
the current patch, have improved by the same factor.

Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS for compute workload")
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Gnattu OC <gnattuoc@me.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Tested-by: Jian Ye <jian.ye@intel.com>
---
Hi,

This ensures that all four CCS engines work properly. However,
during the tests, Jian detected that the performance during
memory copy assigned to the CCS engines is negatively impacted.

I believe this might be expected, considering that based on the
engines' availability, the media user might decide to reduce the
copy in multitasking.

With the upcoming work that will give the user the chance to
configure the CCS mode, this might improve.

Gnattu, can I use your kindness to ask for a test on this patch
and check whether the performance improve on your side as well?

Thanks,
Andi

 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 8 ++++++++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5c8e9ee3b008..3b740ca25000 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -885,6 +885,12 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	if (IS_DG2(gt->i915)) {
 		u8 first_ccs = __ffs(CCS_MASK(gt));
 
+		/*
+		 * Store the number of active cslices before
+		 * changing the CCS engine configuration
+		 */
+		gt->ccs.cslices = CCS_MASK(gt);
+
 		/* Mask off all the CCS engine */
 		info->engine_mask &= ~GENMASK(CCS3, CCS0);
 		/* Put back in the first CCS engine */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 99b71bb7da0a..3c62a44e9106 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -19,7 +19,7 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
 
 	/* Build the value for the fixed CCS load balancing */
 	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
-		if (CCS_MASK(gt) & BIT(cslice))
+		if (gt->ccs.cslices & BIT(cslice))
 			/*
 			 * If available, assign the cslice
 			 * to the first available engine...
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index def7dd0eb6f1..cfdd2ad5e954 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -207,6 +207,14 @@ struct intel_gt {
 					    [MAX_ENGINE_INSTANCE + 1];
 	enum intel_submission_method submission_method;
 
+	struct {
+		/*
+		 * Mask of the non fused CCS slices
+		 * to be used for the load balancing
+		 */
+		intel_engine_mask_t cslices;
+	} ccs;
+
 	/*
 	 * Default address space (either GGTT or ppGTT depending on arch).
 	 *
-- 
2.43.0

