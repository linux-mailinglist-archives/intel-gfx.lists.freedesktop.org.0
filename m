Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3502C21B497
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8346EC24;
	Fri, 10 Jul 2020 12:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54AD56EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:44 +0000 (UTC)
IronPort-SDR: 3Oxbkr2mB0c4UlojD4QaT4WwlcF5IUCSP/Ahmd3AVH0FxorJhvq3uyVs+F7Jy1PpDiagxrXdxL
 31ffSJKIefDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="135653023"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="135653023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:43 -0700
IronPort-SDR: RmnYu0kJgkWPaOiUHkhChxRwAQREYI6IjxZjeEXtnv1am3iIfDG93uzcZApDzGsISH9fiDTW0S
 zC7uy12cPyHw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258476"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:29 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:50 +0100
Message-Id: <20200710115757.290984-54-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 53/60] drm/i915: Create stolen memory region from
 local memory
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
	Lucas De Marchi <lucas.demarchi@intel.com>,
	Chris P Wilson <chris.p.wilson@intel.com>,
	Neel Desai <neel.desai@intel.com>, Balestrieri@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

Add "REGION_STOLEN" device info to dg1, create stolen memory
region from upper portion of local device memory, starting
from DSMBASE.

The memory region is marked with "is_devmem=true".

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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c   | 12 ++---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h   |  7 +++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 56 +++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_pci.c            |  2 +-
 drivers/gpu/drm/i915/i915_reg.h            |  1 +
 drivers/gpu/drm/i915/intel_memory_region.c |  5 ++
 drivers/gpu/drm/i915/intel_memory_region.h |  2 +-
 7 files changed, 75 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 423662cec5da..456b304b244e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -8,8 +8,8 @@
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 
-static int lmem_pread(struct drm_i915_gem_object *obj,
-		      const struct drm_i915_gem_pread *arg)
+int i915_gem_object_lmem_pread(struct drm_i915_gem_object *obj,
+			       const struct drm_i915_gem_pread *arg)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
@@ -94,8 +94,8 @@ static int lmem_pread(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
-static int lmem_pwrite(struct drm_i915_gem_object *obj,
-		       const struct drm_i915_gem_pwrite *arg)
+int i915_gem_object_lmem_pwrite(struct drm_i915_gem_object *obj,
+				const struct drm_i915_gem_pwrite *arg)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
@@ -187,8 +187,8 @@ const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
 	.put_pages = i915_gem_object_put_pages_buddy,
 	.release = i915_gem_object_release_memory_region,
 
-	.pread = lmem_pread,
-	.pwrite = lmem_pwrite,
+	.pread = i915_gem_object_lmem_pread,
+	.pwrite = i915_gem_object_lmem_pwrite,
 };
 
 void __iomem *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index e11e0545e39c..c59aa6c014c7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -11,9 +11,16 @@
 struct drm_i915_private;
 struct drm_i915_gem_object;
 struct intel_memory_region;
+struct drm_i915_gem_pread;
+struct drm_i915_gem_pwrite;
 
 extern const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops;
 
+int i915_gem_object_lmem_pread(struct drm_i915_gem_object *obj,
+			       const struct drm_i915_gem_pread *args);
+int i915_gem_object_lmem_pwrite(struct drm_i915_gem_object *obj,
+				const struct drm_i915_gem_pwrite *args);
+
 void __iomem *
 i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
 			    unsigned long n,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index fee5ff1a1863..0bcfe4464fa1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -10,6 +10,7 @@
 #include <drm/drm_mm.h>
 #include <drm/i915_drm.h>
 
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
@@ -119,6 +120,14 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 		}
 	}
 
+	/*
+	 * With device local memory, we don't need to check the address range,
+	 * this is device memory physical address, could overlap with system
+	 * memory.
+	 */
+	if (HAS_LMEM(i915))
+		return 0;
+
 	/*
 	 * Verify that nothing else uses this physical address. Stolen
 	 * memory should be reserved by the BIOS and hidden from the
@@ -558,7 +567,7 @@ static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj,
 	kfree(pages);
 }
 
-static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
+static struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 	.name = "i915_gem_object_stolen",
 	.get_pages = i915_gem_object_get_pages_stolen,
 	.put_pages = i915_gem_object_put_pages_stolen,
@@ -661,7 +670,19 @@ i915_gem_object_create_stolen(struct drm_i915_private *i915,
 
 static int init_stolen(struct intel_memory_region *mem)
 {
-	intel_memory_region_set_name(mem, "stolen");
+	if (mem->type == INTEL_MEMORY_STOLEN_SYSTEM)
+		intel_memory_region_set_name(mem, "stolen-system");
+	else
+		intel_memory_region_set_name(mem, "stolen-local");
+
+	if (HAS_LMEM(mem->i915)) {
+		i915_gem_object_stolen_ops.pread = i915_gem_object_lmem_pread;
+		i915_gem_object_stolen_ops.pwrite = i915_gem_object_lmem_pwrite;
+		if (!io_mapping_init_wc(&mem->iomap,
+					mem->io_start,
+					resource_size(&mem->region)))
+			return -EIO;
+	}
 
 	/*
 	 * Initialise stolen early so that we may reserve preallocated
@@ -681,8 +702,39 @@ static const struct intel_memory_region_ops i915_region_stolen_ops = {
 	.create_object = i915_gem_object_create_stolen_region,
 };
 
+static
+struct intel_memory_region *setup_lmem_stolen(struct drm_i915_private *i915)
+{
+	struct intel_uncore *uncore = &i915->uncore;
+	struct pci_dev *pdev = i915->drm.pdev;
+	struct intel_memory_region *mem;
+	resource_size_t io_start;
+	resource_size_t lmem_size;
+	u64 lmem_base;
+
+	lmem_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
+	lmem_size = pci_resource_len(pdev, 2) - lmem_base;
+	io_start = pci_resource_start(pdev, 2) + lmem_base;
+
+	mem = intel_memory_region_create(i915, lmem_base, lmem_size,
+					 I915_GTT_PAGE_SIZE_4K, io_start,
+					 &i915_region_stolen_ops);
+	if (!IS_ERR(mem)) {
+		DRM_INFO("Intel graphics stolen LMEM: %pR\n", &mem->region);
+		DRM_INFO("Intel graphics stolen LMEM IO start: %llx\n",
+			 (u64)mem->io_start);
+		/* this is real device memory */
+		mem->is_devmem = true;
+	}
+
+	return mem;
+}
+
 struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915)
 {
+	if (HAS_LMEM(i915))
+		return setup_lmem_stolen(i915);
+
 	return intel_memory_region_create(i915,
 					  intel_graphics_stolen_res.start,
 					  resource_size(&intel_graphics_stolen_res),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e132fdffa432..fbb7ac96d881 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -897,7 +897,7 @@ static const struct intel_device_info rkl_info = {
 
 #define GEN12_DGFX_FEATURES \
 	GEN12_FEATURES, \
-	.memory_regions = REGION_SMEM | REGION_LMEM, \
+	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_master_unit_irq = 1, \
 	.has_llc = 0, \
 	.has_snoop = 1, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6e67c4ee09c2..7ee322728a65 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12039,6 +12039,7 @@ enum skl_power_gate {
 #define   LMEM_ENABLE			(1 << 31)
 
 #define GEN12_GSMBASE			_MMIO(0x108100)
+#define GEN12_DSMBASE			_MMIO(0x1080C0)
 
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index d564b596efda..905cdfa6e3e2 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -19,6 +19,10 @@ const struct intel_memory_region_info intel_region_map[] = {
                .class = INTEL_MEMORY_STOLEN_SYSTEM,
                .instance = 0,
        },
+       [INTEL_REGION_STOLEN_LMEM] = {
+               .class = INTEL_MEMORY_STOLEN_LOCAL,
+               .instance = 0,
+       },
 };
 
 struct intel_memory_region *
@@ -305,6 +309,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		case INTEL_MEMORY_SYSTEM:
 			mem = i915_gem_shmem_setup(i915);
 			break;
+		case INTEL_MEMORY_STOLEN_LOCAL: /* fallthrough */
 		case INTEL_MEMORY_STOLEN_SYSTEM:
 			mem = i915_gem_stolen_setup(i915);
 			break;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index a08cbae18979..8f9c943a16af 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -93,7 +93,7 @@ struct intel_memory_region {
 	u16 type;
 	u16 instance;
 	enum intel_region_id id;
-	char name[8];
+	char name[16];
 	bool is_devmem;	/* true for device memory */
 
 	dma_addr_t remap_addr;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
