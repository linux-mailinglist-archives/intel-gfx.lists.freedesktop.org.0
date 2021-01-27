Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA898305CAF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 14:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F736E80B;
	Wed, 27 Jan 2021 13:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468A26E5AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 13:14:26 +0000 (UTC)
IronPort-SDR: g0TkdnH/QlnCsN7GdvQxJEAorY9GDn7xAAHCZDXM+vDBLPFSW8Fd3lfd95CpYCC/CT6fD03zCs
 DXyeCc8Hvmvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180209878"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180209878"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:26 -0800
IronPort-SDR: vTEu0/ULlHuL2Y01ogj+VlU/IFiSD26yj7f2OGRqT3HeBxfCWZhocwOK1crHppOcTyZGTPyau1
 /vjdf6vhlv9g==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="369471239"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:25 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:14:12 +0000
Message-Id: <20210127131417.393872-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127131417.393872-1-matthew.auld@intel.com>
References: <20210127131417.393872-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 3/8] drm/i915: reserve stolen for LMEM region
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

From: CQ Tang <cq.tang@intel.com>

The lmem region needs to remove the stolen part, which should just be a
case of snipping it off the end.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 13 +++++++++----
 drivers/gpu/drm/i915/i915_reg.h             |  2 ++
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 14c7370e601c..04b84f6df770 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -146,20 +146,24 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_uncore *uncore = gt->uncore;
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
-	resource_size_t size;
+	resource_size_t lmem_size;
 
 	if (!IS_DGFX(i915))
 		return ERR_PTR(-ENODEV);
 
+	/* Stolen starts from GSMBASE on DG1 */
+	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
+
 	io_start = pci_resource_start(pdev, 2);
-	size = pci_resource_len(pdev, 2);
+	GEM_BUG_ON(lmem_size > pci_resource_len(pdev, 2));
 
 	mem = intel_memory_region_create(i915,
 					 0,
-					 size,
+					 lmem_size,
 					 I915_GTT_PAGE_SIZE_4K,
 					 io_start,
 					 &intel_region_lmem_ops);
@@ -169,7 +173,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
 	drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
 		&mem->io_start);
-	drm_info(&i915->drm, "Local memory available: %pa\n", &size);
+	drm_info(&i915->drm, "Local memory available: %pa\n",
+		 &lmem_size);
 
 	return mem;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index aa872446337b..b39b46a974b5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12160,6 +12160,8 @@ enum skl_power_gate {
 
 #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
+#define GEN12_GSMBASE			_MMIO(0x108100)
+
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
 #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
