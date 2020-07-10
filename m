Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EFC21B48F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0246D6EBF7;
	Fri, 10 Jul 2020 12:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19D26EBF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:08 +0000 (UTC)
IronPort-SDR: APK/3ton07S3N5wnfoekf14Z+6r8kPV8NuLI4xcPuskXX9OEnzHy99C7swMFUMgJB1Fja8lMFR
 Vq9PMWqxiE8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716738"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:08 -0700
IronPort-SDR: bFsHOva+JswGhlWcgWTJ1RLIbaMxjgZ1xnh+967rRJ0QenwKNjWGdZ6uHm0j7azHuPvjhWSh2m
 x/yy3QrJKZ3g==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258192"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:03 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:44 +0100
Message-Id: <20200710115757.290984-48-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 47/60] drm/i915: setup GPU device lmem region
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
	Chris P Wilson <chris.p.wilson@intel.com>,
	Neel Desai <neel.desai@intel.com>, Balestrieri@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

The lmem region needs to remove the stolen part.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Balestrieri, Francesco <francesco.balestrieri@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Venkata S Dhanalakota <venkata.s.dhanalakota@intel.com>
Cc: Neel Desai <neel.desai@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h          |  2 ++
 drivers/gpu/drm/i915/intel_region_lmem.c | 11 +++++++----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cebcd702d968..6e67c4ee09c2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12038,6 +12038,8 @@ enum skl_power_gate {
 #define GEN12_LMEM_CFG_ADDR		_MMIO(0xcf58)
 #define   LMEM_ENABLE			(1 << 31)
 
+#define GEN12_GSMBASE			_MMIO(0x108100)
+
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
 #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index 95c8d89d1fc9..3a8997fd832d 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -44,20 +44,23 @@ const struct intel_memory_region_ops intel_region_lmem_ops = {
 static struct intel_memory_region *
 setup_lmem(struct drm_i915_private *dev_priv)
 {
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	struct pci_dev *pdev = dev_priv->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
-	resource_size_t size;
+	resource_size_t lmem_size;
 
 	/* Enables Local Memory functionality in GAM */
 	I915_WRITE(GEN12_LMEM_CFG_ADDR, I915_READ(GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);
 
+	/* Stolen starts from GSMBASE on DG1 */
+	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
+
 	io_start = pci_resource_start(pdev, 2);
-	size = pci_resource_len(pdev, 2);
 
 	mem = intel_memory_region_create(dev_priv,
 					 0,
-					 size,
+					 lmem_size,
 					 I915_GTT_PAGE_SIZE_4K,
 					 io_start,
 					 &intel_region_lmem_ops);
@@ -66,7 +69,7 @@ setup_lmem(struct drm_i915_private *dev_priv)
 		DRM_INFO("Intel graphics LMEM IO start: %llx\n",
 			 (u64)mem->io_start);
 		DRM_INFO("Intel graphics LMEM size: %llx\n",
-			 (u64)size);
+			 (u64)lmem_size);
 	}
 
 	return mem;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
