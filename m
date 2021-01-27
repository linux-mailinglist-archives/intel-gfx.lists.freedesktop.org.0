Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488BB305AB0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133BE6E5CD;
	Wed, 27 Jan 2021 12:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21B36E5CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:03:36 +0000 (UTC)
IronPort-SDR: aLmQP2cqPaxqqSssxIYFcvfbZWddcaQY5xcenymWTdRmX9G/QVnqTZxi0YrYqijJ27fSUGAUWQ
 LwNC5gxuhuaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180136877"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180136877"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:35 -0800
IronPort-SDR: TmgyGAZTZZ69yP22vi3UrIN21cjdC1tWRh95aeBR/F7o4gsNwcGNgWzkfsfYVn/fN9nj7fLQht
 hY7nb3GL0lrw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="362410273"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:03:09 +0000
Message-Id: <20210127120316.370305-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/8] drm/i915: make local-memory probing a GT
 operation
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

Device local memory is very much a GT thing, therefore it should be the
responsibility of the GT to setup the device local memory region.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 32 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 10 +++++--
 drivers/gpu/drm/i915/gt/intel_region_lmem.h |  4 +--
 drivers/gpu/drm/i915/i915_drv.c             |  4 +++
 drivers/gpu/drm/i915/intel_memory_region.c  |  5 ++--
 6 files changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d8e1ab412634..edbee9991248 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -39,6 +39,38 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 	intel_uc_init_early(&gt->uc);
 }
 
+int intel_gt_probe_lmem(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_memory_region *mem;
+	int id;
+	int err;
+
+	mem = intel_gt_setup_fake_lmem(gt);
+	if (IS_ERR(mem)) {
+		err = PTR_ERR(mem);
+		if (err == -ENODEV)
+			return 0;
+
+		drm_err(&i915->drm,
+			"Failed to setup region(%d) type=%d\n",
+			err, INTEL_MEMORY_LOCAL);
+		return err;
+	}
+
+	id = INTEL_REGION_LMEM;
+
+	mem->id = id;
+	mem->type = INTEL_MEMORY_LOCAL;
+	mem->instance = 0;
+
+	GEM_BUG_ON(!HAS_REGION(i915, id));
+	GEM_BUG_ON(i915->mm.regions[id]);
+	i915->mm.regions[id] = mem;
+
+	return 0;
+}
+
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
 {
 	gt->ggtt = ggtt;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 9157c7411f60..a17bd8b3195f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -36,6 +36,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt);
+int intel_gt_probe_lmem(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
 int __must_check intel_gt_init_hw(struct intel_gt *gt);
 int intel_gt_init(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 28a1d5e1fb92..a2401e1fe1a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -102,16 +102,22 @@ static const struct intel_memory_region_ops intel_region_lmem_ops = {
 };
 
 struct intel_memory_region *
-intel_setup_fake_lmem(struct drm_i915_private *i915)
+intel_gt_setup_fake_lmem(struct intel_gt *gt)
 {
+	struct drm_i915_private *i915 = gt->i915;
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t mappable_end;
 	resource_size_t io_start;
 	resource_size_t start;
 
+	if (!HAS_LMEM(i915))
+		return ERR_PTR(-ENODEV);
+
+	if (!i915->params.fake_lmem_start)
+		return ERR_PTR(-ENODEV);
+
 	GEM_BUG_ON(i915_ggtt_has_aperture(&i915->ggtt));
-	GEM_BUG_ON(!i915->params.fake_lmem_start);
 
 	/* Your mappable aperture belongs to me now! */
 	mappable_end = pci_resource_len(pdev, 2);
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.h b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
index 8ea43e538dab..a4baa0f077a1 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.h
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
@@ -6,9 +6,9 @@
 #ifndef __INTEL_REGION_LMEM_H
 #define __INTEL_REGION_LMEM_H
 
-struct drm_i915_private;
+struct intel_gt;
 
 struct intel_memory_region *
-intel_setup_fake_lmem(struct drm_i915_private *i915);
+intel_gt_setup_fake_lmem(struct intel_gt *gt);
 
 #endif /* !__INTEL_REGION_LMEM_H */
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 0037b81d991e..49d94ffe4796 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -576,6 +576,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_gt_init_hw_early(&dev_priv->gt, &dev_priv->ggtt);
 
+	ret = intel_gt_probe_lmem(&dev_priv->gt);
+	if (ret)
+		goto err_mem_regions;
+
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "failed to enable GGTT\n");
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 1bfcdd89b241..b1b610bfff09 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -258,9 +258,8 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		case INTEL_MEMORY_STOLEN:
 			mem = i915_gem_stolen_setup(i915);
 			break;
-		case INTEL_MEMORY_LOCAL:
-			mem = intel_setup_fake_lmem(i915);
-			break;
+		default:
+			continue;
 		}
 
 		if (IS_ERR(mem)) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
