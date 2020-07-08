Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13442217C4A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CCA6E2E1;
	Wed,  8 Jul 2020 00:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0163B6E2E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:39:54 +0000 (UTC)
IronPort-SDR: yhBSjjKX0o52ObLm5meChP8IzTOctQnvREuj3QJ5PtT0jehmNEPzNbK0JoForZYixSzfcgjEsh
 6Nso8Na1gLzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165790545"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="165790545"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:39:54 -0700
IronPort-SDR: h3UKgIg0fMHjTgbkCYJIlpEExrAEgNuItIuRgPLhw9IfIE1+B+ZaXQ3Q6uIul0qpiv/03GxZjk
 Aja/81s0MFoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="314482712"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2020 17:39:54 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 17:39:48 -0700
Message-Id: <20200708003952.21831-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/9] drm/i915: Introduce gt_init_mmio
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
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 7 +++++++
 drivers/gpu/drm/i915/gt/intel_gt.h | 1 +
 drivers/gpu/drm/i915/i915_drv.c    | 4 +---
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 6a268c6d6a6f..d96c34802e2b 100644
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
index 908fc5dea885..9157c7411f60 100644
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
