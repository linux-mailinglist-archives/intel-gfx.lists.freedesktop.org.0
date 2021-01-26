Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 995463041D2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1661C6E47B;
	Tue, 26 Jan 2021 15:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2E96E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:13:11 +0000 (UTC)
IronPort-SDR: I/02to5Jkbb8g4WK58H9T3KzjyrE+dkA/RRPV2rB1ejqD1o5qOgcAiq8iwARcOvqQSz57EgOLs
 McoctZ7jY6kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="243995124"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="243995124"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:11 -0800
IronPort-SDR: me9odVcY9Al7qVScoOyH/NvLATjQmTsYHkMfcgBVAZHDrY8h+rQ1eRzP/by+bJrsTn2BB5jr1M
 OtWUgnG4pimQ==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387856695"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:10 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:12:54 +0000
Message-Id: <20210126151259.253885-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126151259.253885-1-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915: reserve stolen for LMEM region
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
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 12 ++++++++----
 drivers/gpu/drm/i915/i915_reg.h             |  2 ++
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index b676dc67dc2a..4da808e35ecb 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -141,17 +141,20 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_uncore *uncore = &i915->uncore;
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
-	resource_size_t size;
+	resource_size_t lmem_size;
+
+	/* Stolen starts from GSMBASE on DG1 */
+	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
 
 	io_start = pci_resource_start(pdev, 2);
-	size = pci_resource_len(pdev, 2);
 
 	mem = intel_memory_region_create(i915,
 					 0,
-					 size,
+					 lmem_size,
 					 I915_GTT_PAGE_SIZE_4K,
 					 io_start,
 					 &intel_region_lmem_ops);
@@ -159,7 +162,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
 		drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
 			&mem->io_start);
-		drm_info(&i915->drm, "Local memory available: %pa\n", &size);
+		drm_info(&i915->drm, "Local memory available: %pa\n",
+			 &lmem_size);
 	}
 
 	return mem;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d5719d1a2916..84897d1e5800 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12118,6 +12118,8 @@ enum skl_power_gate {
 
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
