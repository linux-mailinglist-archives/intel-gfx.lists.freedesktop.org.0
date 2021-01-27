Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FA1305BF4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764D46E456;
	Wed, 27 Jan 2021 12:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013EB6E456
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:48:18 +0000 (UTC)
IronPort-SDR: M5cVhYhcrvtXDeBZmZbz6DD2jnnErl7wOTtJt41pzSCua7Uj0I2PL/zGsY8dUsHtpCJ38xOI02
 LEhWQ5RQ8QWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244138311"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="244138311"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:18 -0800
IronPort-SDR: zITW6kvOCplEo0nl5+fG2z1fzumb9kf4KVXwXnm2MuOE+O1/v1tQzUq4eMalSExBNBbpolFa92
 OeZsm/KsKH3g==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388293633"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:18 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:48:04 +0000
Message-Id: <20210127124809.384080-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127124809.384080-1-matthew.auld@intel.com>
References: <20210127124809.384080-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/8] drm/i915: reserve stolen for LMEM region
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
index b3d1d0abb956..71bb38706dbf 100644
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
@@ -167,7 +171,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
 		drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
 			&mem->io_start);
-		drm_info(&i915->drm, "Local memory available: %pa\n", &size);
+		drm_info(&i915->drm, "Local memory available: %pa\n",
+			 &lmem_size);
 	}
 
 	return mem;
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
