Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025E436696C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 12:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F826E980;
	Wed, 21 Apr 2021 10:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3076E97C;
 Wed, 21 Apr 2021 10:47:13 +0000 (UTC)
IronPort-SDR: j4c4Qo1PZgZ/hV5b5ZjljLrhg/eyofSGpD/46IL00iE+eBRnLnLAVeDd9+GaX4eQfnHRwnxK5n
 OZHd4oJNmaRA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="175784341"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="175784341"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 03:47:12 -0700
IronPort-SDR: hezYcBot/5V8ztNeKm34Ny6Y3sqpD9iHrnQn790xdPGsuV7ki+dFs3K1TEIsg066I0RN/bq9j3
 vYQzpy5d423w==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="427468826"
Received: from ddacost1-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.23])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 03:47:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 11:46:55 +0100
Message-Id: <20210421104658.304142-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Create stolen memory region
 from local memory
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
Cc: Xinyun Liu <xinyun.liu@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

Add "REGION_STOLEN" device info to dg1, create stolen memory
region from upper portion of local device memory, starting
from DSMBASE.

v2:
    - s/drm_info/drm_dbg; userspace likely doesn't care about stolen.
    - mem->type is only setup after the region probe, so setting the name
      as stolen-local or stolen-system based on this value won't work. Split
      system vs local stolen setup to fix this.
    - kill all the region->devmem/is_devmem stuff. We already differentiate
      the different types of stolen so such things shouldn't be needed
      anymore.
v3:
    - split stolen lmem vs smem ops(Tvrtko)
    - add shortcut for stolen region in i915(Tvrtko)
    - sanity check dsm base vs bar size(Xinyun)
v4(Tvrtko):
    - more cleanup
    - add some TODOs

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Xinyun Liu <xinyun.liu@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 132 ++++++++++++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h |   3 +-
 drivers/gpu/drm/i915/i915_drv.h            |   7 ++
 drivers/gpu/drm/i915/i915_pci.c            |   2 +-
 drivers/gpu/drm/i915/i915_reg.h            |   1 +
 drivers/gpu/drm/i915/intel_memory_region.c |  13 +-
 drivers/gpu/drm/i915/intel_memory_region.h |   5 +-
 7 files changed, 140 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b0597de206de..13a7932cfe1a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -10,6 +10,7 @@
 #include <drm/drm_mm.h>
 #include <drm/i915_drm.h>
 
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
@@ -121,6 +122,14 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 		}
 	}
 
+	/*
+	 * With stolen lmem, we don't need to check if the address range
+	 * overlaps with the non-stolen system memory range, since lmem is local
+	 * to the gpu.
+	 */
+	if (HAS_LMEM(i915))
+		return 0;
+
 	/*
 	 * Verify that nothing else uses this physical address. Stolen
 	 * memory should be reserved by the BIOS and hidden from the
@@ -374,8 +383,9 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 	}
 }
 
-static int i915_gem_init_stolen(struct drm_i915_private *i915)
+static int i915_gem_init_stolen(struct intel_memory_region *mem)
 {
+	struct drm_i915_private *i915 = mem->i915;
 	struct intel_uncore *uncore = &i915->uncore;
 	resource_size_t reserved_base, stolen_top;
 	resource_size_t reserved_total, reserved_size;
@@ -396,10 +406,10 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 		return 0;
 	}
 
-	if (resource_size(&intel_graphics_stolen_res) == 0)
+	if (resource_size(&mem->region) == 0)
 		return 0;
 
-	i915->dsm = intel_graphics_stolen_res;
+	i915->dsm = mem->region;
 
 	if (i915_adjust_stolen(i915, &i915->dsm))
 		return 0;
@@ -688,39 +698,123 @@ struct drm_i915_gem_object *
 i915_gem_object_create_stolen(struct drm_i915_private *i915,
 			      resource_size_t size)
 {
-	return i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_STOLEN_SMEM],
+	return i915_gem_object_create_region(i915->mm.stolen_region,
 					     size, I915_BO_ALLOC_CONTIGUOUS);
 }
 
-static int init_stolen(struct intel_memory_region *mem)
+static int init_stolen_smem(struct intel_memory_region *mem)
 {
-	intel_memory_region_set_name(mem, "stolen");
-
 	/*
 	 * Initialise stolen early so that we may reserve preallocated
 	 * objects for the BIOS to KMS transition.
 	 */
-	return i915_gem_init_stolen(mem->i915);
+	return i915_gem_init_stolen(mem);
 }
 
-static void release_stolen(struct intel_memory_region *mem)
+static void release_stolen_smem(struct intel_memory_region *mem)
 {
 	i915_gem_cleanup_stolen(mem->i915);
 }
 
-static const struct intel_memory_region_ops i915_region_stolen_ops = {
-	.init = init_stolen,
-	.release = release_stolen,
+static const struct intel_memory_region_ops i915_region_stolen_smem_ops = {
+	.init = init_stolen_smem,
+	.release = release_stolen_smem,
 	.init_object = _i915_gem_object_stolen_init,
 };
 
-struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915)
+static int init_stolen_lmem(struct intel_memory_region *mem)
+{
+	int err;
+
+	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
+		return -ENODEV;
+
+	if (!io_mapping_init_wc(&mem->iomap,
+				mem->io_start,
+				resource_size(&mem->region)))
+		return -EIO;
+
+	/*
+	 * TODO: For stolen lmem we mostly just care about populating the dsm
+	 * related bits and setting up the drm_mm allocator for the range.
+	 * Perhaps split up i915_gem_init_stolen() for this.
+	 */
+	err = i915_gem_init_stolen(mem);
+	if (err)
+		goto err_fini;
+
+	return 0;
+
+err_fini:
+	io_mapping_fini(&mem->iomap);
+	return err;
+}
+
+static void release_stolen_lmem(struct intel_memory_region *mem)
 {
-	return intel_memory_region_create(i915,
-					  intel_graphics_stolen_res.start,
-					  resource_size(&intel_graphics_stolen_res),
-					  PAGE_SIZE, 0,
-					  &i915_region_stolen_ops);
+	io_mapping_fini(&mem->iomap);
+	i915_gem_cleanup_stolen(mem->i915);
+}
+
+static const struct intel_memory_region_ops i915_region_stolen_lmem_ops = {
+	.init = init_stolen_lmem,
+	.release = release_stolen_lmem,
+	.init_object = _i915_gem_object_stolen_init,
+};
+
+struct intel_memory_region *
+i915_gem_stolen_lmem_setup(struct drm_i915_private *i915)
+{
+	struct intel_uncore *uncore = &i915->uncore;
+	struct pci_dev *pdev = i915->drm.pdev;
+	struct intel_memory_region *mem;
+	resource_size_t io_start;
+	resource_size_t lmem_size;
+	u64 lmem_base;
+
+	lmem_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
+	if (GEM_WARN_ON(lmem_base >= pci_resource_len(pdev, 2)))
+		return ERR_PTR(-ENODEV);
+
+	lmem_size = pci_resource_len(pdev, 2) - lmem_base;
+	io_start = pci_resource_start(pdev, 2) + lmem_base;
+
+	mem = intel_memory_region_create(i915, lmem_base, lmem_size,
+					 I915_GTT_PAGE_SIZE_4K, io_start,
+					 &i915_region_stolen_lmem_ops);
+	if (IS_ERR(mem))
+		return mem;
+
+	/*
+	 * TODO: consider creating common helper to just print all the
+	 * interesting stuff from intel_memory_region, which we can use for all
+	 * our probed regions.
+	 */
+
+	drm_dbg(&i915->drm, "Stolen Local memory IO start: %pa\n",
+		&mem->io_start);
+
+	intel_memory_region_set_name(mem, "stolen-local");
+
+	return mem;
+}
+
+struct intel_memory_region*
+i915_gem_stolen_smem_setup(struct drm_i915_private *i915)
+{
+	struct intel_memory_region *mem;
+
+	mem = intel_memory_region_create(i915,
+					 intel_graphics_stolen_res.start,
+					 resource_size(&intel_graphics_stolen_res),
+					 PAGE_SIZE, 0,
+					 &i915_region_stolen_smem_ops);
+	if (IS_ERR(mem))
+		return mem;
+
+	intel_memory_region_set_name(mem, "stolen-system");
+
+	return mem;
 }
 
 struct drm_i915_gem_object *
@@ -728,7 +822,7 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 					       resource_size_t stolen_offset,
 					       resource_size_t size)
 {
-	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_STOLEN_SMEM];
+	struct intel_memory_region *mem = i915->mm.stolen_region;
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node *stolen;
 	int ret;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index b03489706796..2bec6c367b9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -21,7 +21,8 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *dev_priv,
 					 u64 end);
 void i915_gem_stolen_remove_node(struct drm_i915_private *dev_priv,
 				 struct drm_mm_node *node);
-struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915);
+struct intel_memory_region *i915_gem_stolen_smem_setup(struct drm_i915_private *i915);
+struct intel_memory_region *i915_gem_stolen_lmem_setup(struct drm_i915_private *i915);
 struct drm_i915_gem_object *
 i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
 			      resource_size_t size);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e20294e9227a..0b44333eb703 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -514,6 +514,13 @@ struct intel_l3_parity {
 };
 
 struct i915_gem_mm {
+	/*
+	 * Shortcut for the stolen region. This points to either
+	 * INTEL_REGION_STOLEN_SMEM for integrated platforms, or
+	 * INTEL_REGION_STOLEN_LMEM for discrete, or NULL if the device doesn't
+	 * support stolen.
+	 */
+	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
 	/** Protects the usage of the GTT stolen memory allocator. This is
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7786217638ed..c678e0663d80 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -908,7 +908,7 @@ static const struct intel_device_info rkl_info = {
 };
 
 #define DGFX_FEATURES \
-	.memory_regions = REGION_SMEM | REGION_LMEM, \
+	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_master_unit_irq = 1, \
 	.has_llc = 0, \
 	.has_snoop = 1, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f80d656331f4..ea20058bc13f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12191,6 +12191,7 @@ enum skl_power_gate {
 #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
 #define GEN12_GSMBASE			_MMIO(0x108100)
+#define GEN12_DSMBASE			_MMIO(0x1080C0)
 
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index bf837b6bb185..481a487faca6 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -22,6 +22,10 @@ static const struct {
 		.class = INTEL_MEMORY_STOLEN_SYSTEM,
 		.instance = 0,
 	},
+	[INTEL_REGION_STOLEN_LMEM] = {
+		.class = INTEL_MEMORY_STOLEN_LOCAL,
+		.instance = 0,
+	},
 };
 
 struct intel_memory_region *
@@ -278,8 +282,15 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		case INTEL_MEMORY_SYSTEM:
 			mem = i915_gem_shmem_setup(i915);
 			break;
+		case INTEL_MEMORY_STOLEN_LOCAL:
+			mem = i915_gem_stolen_lmem_setup(i915);
+			if (!IS_ERR(mem))
+				i915->mm.stolen_region = mem;
+			break;
 		case INTEL_MEMORY_STOLEN_SYSTEM:
-			mem = i915_gem_stolen_setup(i915);
+			mem = i915_gem_stolen_smem_setup(i915);
+			if (!IS_ERR(mem))
+				i915->mm.stolen_region = mem;
 			break;
 		default:
 			continue;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index edd49067c8ca..4c8ec15af55f 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -26,18 +26,21 @@ enum intel_memory_type {
 	INTEL_MEMORY_SYSTEM = 0,
 	INTEL_MEMORY_LOCAL,
 	INTEL_MEMORY_STOLEN_SYSTEM,
+	INTEL_MEMORY_STOLEN_LOCAL,
 };
 
 enum intel_region_id {
 	INTEL_REGION_SMEM = 0,
 	INTEL_REGION_LMEM,
 	INTEL_REGION_STOLEN_SMEM,
+	INTEL_REGION_STOLEN_LMEM,
 	INTEL_REGION_UNKNOWN, /* Should be last */
 };
 
 #define REGION_SMEM     BIT(INTEL_REGION_SMEM)
 #define REGION_LMEM     BIT(INTEL_REGION_LMEM)
 #define REGION_STOLEN_SMEM   BIT(INTEL_REGION_STOLEN_SMEM)
+#define REGION_STOLEN_LMEM   BIT(INTEL_REGION_STOLEN_LMEM)
 
 #define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
 #define I915_ALLOC_CONTIGUOUS     BIT(1)
@@ -82,7 +85,7 @@ struct intel_memory_region {
 	u16 type;
 	u16 instance;
 	enum intel_region_id id;
-	char name[8];
+	char name[16];
 
 	struct list_head reserved;
 
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
