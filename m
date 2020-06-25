Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96F20A94C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 01:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4526EC22;
	Thu, 25 Jun 2020 23:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109406E85B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 23:42:22 +0000 (UTC)
IronPort-SDR: HUOC9g+U4ZJKaiLbFuISD66G1KllbVHMa85w4d+laBM2B+V5q+O9fjs41n0kP0s8VVZW5h4PQB
 K6UT816yfJWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="143347213"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="143347213"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 16:42:21 -0700
IronPort-SDR: 9PA8zgUTuGtBAano6GIfRcKkGi0/CH8D7vwmpQDvejzn9OQO7hWxF1KP1+uhdtSSpJiKpYq5Va
 xIqAXzZLAi3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="299468694"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 25 Jun 2020 16:42:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2020 16:42:10 -0700
Message-Id: <20200625234212.22811-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Introduce gt_init_mmio
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We already call 2 gt-related init_mmio functions in driver_mmio_probe
and a 3rd one will be added by a follow-up patch, so pre-emptively
introduce a gt_init_mmio function to group them.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 7 +++++++
 drivers/gpu/drm/i915/gt/intel_gt.h | 1 +
 drivers/gpu/drm/i915/i915_drv.c    | 4 +---
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d0ae1cb5c7c9..949114f09b82 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -44,6 +44,13 @@ void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
 	gt->ggtt = ggtt;
 }
 
+int intel_gt_init_mmio(struct intel_gt *gt)
+{
+	intel_uc_init_mmio(&gt->uc);
+
+	return intel_engines_init_mmio(gt);
+}
+
 static void init_unused_ring(struct intel_gt *gt, u32 base)
 {
 	struct intel_uncore *uncore = gt->uncore;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 15142e2a3b22..4bd64ab2b686 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -36,6 +36,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt);
+int intel_gt_init_mmio(struct intel_gt *gt);
 int __must_check intel_gt_init_hw(struct intel_gt *gt);
 int intel_gt_init(struct intel_gt *gt);
 void intel_gt_driver_register(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 67789df42be8..5fd5af4bc855 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -531,9 +531,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_setup_mchbar(dev_priv);
 
-	intel_uc_init_mmio(&dev_priv->gt.uc);
-
-	ret = intel_engines_init_mmio(&dev_priv->gt);
+	ret = intel_gt_init_mmio(&dev_priv->gt);
 	if (ret)
 		goto err_uncore;
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
