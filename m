Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27C7303949
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C556E20A;
	Tue, 26 Jan 2021 09:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36046E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:40 +0000 (UTC)
IronPort-SDR: Mic1krL9dllQ8egK7geTUzKbVyj08k8KeBbzyTJwsAXncR5QY48rKdkIOKwbOYxeCp3amw/0We
 xJJhAk1DKXBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651563"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:39 -0800
IronPort-SDR: PyaFvcww74rgdeqW+tLvG9qejlNj8i3U9+RxbcL989e45LXvt0YS2oKMm5dwr8RjOx5+ZCAvNR
 N126WjGeoCrA==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766434"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:38 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:07 +0000
Message-Id: <20210126094612.163290-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: reserve stolen for LMEM region
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
index bdd38efe0811..30959c1e535f 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -140,21 +140,24 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 static struct intel_memory_region *
 setup_lmem(struct drm_i915_private *i915)
 {
+	struct intel_uncore *uncore = &i915->uncore;
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
-	resource_size_t size;
+	resource_size_t lmem_size;
 
 	/* Enables Local Memory functionality in GAM */
 	intel_uncore_write(&i915->uncore, GEN12_LMEM_CFG_ADDR,
 			   intel_uncore_read(&i915->uncore, GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);
 
+	/* Stolen starts from GSMBASE on DG1 */
+	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
+
 	io_start = pci_resource_start(pdev, 2);
-	size = pci_resource_len(pdev, 2);
 
 	mem = intel_memory_region_create(i915,
 					 0,
-					 size,
+					 lmem_size,
 					 I915_GTT_PAGE_SIZE_4K,
 					 io_start,
 					 &intel_region_lmem_ops);
@@ -162,7 +165,8 @@ setup_lmem(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
 		drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
 			 &mem->io_start);
-		drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n", &size);
+		drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n",
+			 &lmem_size);
 	}
 
 	return mem;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 28001b5a3cb5..626ebbe64bfd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12114,6 +12114,8 @@ enum skl_power_gate {
 #define GEN12_LMEM_CFG_ADDR		_MMIO(0xcf58)
 #define   LMEM_ENABLE			(1 << 31)
 
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
