Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0C93041CC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE25F6E457;
	Tue, 26 Jan 2021 15:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722FF6E457
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:13:08 +0000 (UTC)
IronPort-SDR: NnRp7W1xTxNkaat2K+DRAHvDcL3gNQwArkQp7lTmbcOycVvMQsy3kIo/YA+IaIB9Id/UShxPdA
 LmKAfRdQL2Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="243995113"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="243995113"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:07 -0800
IronPort-SDR: 9RVQElBhiPd89L+OIGYHiPj+lnNp5glFHKv4tYETG6l3mGzSNo5SmgOjd7nDX2hQOvxL3Pmd04
 UBymI075cFMw==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387856673"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:06 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:12:52 +0000
Message-Id: <20210126151259.253885-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: make local-memory probing a GT
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
 drivers/gpu/drm/i915/gt/intel_gt.c          | 29 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  3 ++-
 drivers/gpu/drm/i915/gt/intel_region_lmem.h |  4 +--
 drivers/gpu/drm/i915/i915_drv.c             |  4 +++
 drivers/gpu/drm/i915/intel_memory_region.c  |  5 ++--
 6 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d8e1ab412634..989cd2106b09 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -39,6 +39,35 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 	intel_uc_init_early(&gt->uc);
 }
 
+int intel_gt_probe_lmem(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_memory_region *mem;
+	int id;
+	int err;
+
+	id = INTEL_REGION_LMEM;
+	if (!HAS_REGION(i915, id))
+		return 0;
+
+	mem = intel_gt_setup_fake_lmem(gt);
+	if (IS_ERR(mem)) {
+		err = PTR_ERR(mem);
+		drm_err(&i915->drm,
+			"Failed to setup region(%d) type=%d\n",
+			err, INTEL_MEMORY_LOCAL);
+		return err;
+	}
+
+	mem->id = id;
+	mem->type = INTEL_MEMORY_LOCAL;
+	mem->instance = 0;
+
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
index 28a1d5e1fb92..ad80ff0b935c 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -102,8 +102,9 @@ static const struct intel_memory_region_ops intel_region_lmem_ops = {
 };
 
 struct intel_memory_region *
-intel_setup_fake_lmem(struct drm_i915_private *i915)
+intel_gt_setup_fake_lmem(struct intel_gt *gt)
 {
+	struct drm_i915_private *i915 = gt->i915;
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t mappable_end;
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
index 0037b81d991e..7915d0dc7e16 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -574,6 +574,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_ggtt;
 
+	ret = intel_gt_probe_lmem(&dev_priv->gt);
+	if (ret)
+		goto err_mem_regions;
+
 	intel_gt_init_hw_early(&dev_priv->gt, &dev_priv->ggtt);
 
 	ret = i915_ggtt_enable_hw(dev_priv);
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
