Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A613108DC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 11:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8F26F3E8;
	Fri,  5 Feb 2021 10:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0ED6F3E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 10:20:39 +0000 (UTC)
IronPort-SDR: OCGWPaJ36kXLXBbkaEL0UUw5+6ZX52JOQS81xr5X0NklCftxKuATOPE8wnrfoGB8y+5Efu6g6g
 EhFOdCbmkLVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181478492"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="181478492"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 02:20:34 -0800
IronPort-SDR: 0kC/qpqrsgYUOfKYMJhpl9SN3aiNyJCc1Q7ZXp+V6ELiF2WucRrzyKHEqKWaDtJnugp/DTL8NX
 djcnz8M/PuSA==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="373341573"
Received: from gsloan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.14.92])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 02:20:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 10:20:26 +0000
Message-Id: <20210205102026.806699-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210205102026.806699-1-matthew.auld@intel.com>
References: <20210205102026.806699-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: give stolen system memory its
 own class
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

In some future patches we will need to also support a stolen region
carved from device local memory, on platforms like DG1. To handle this
we can simply describe each in terms of its own memory class.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.c            | 2 +-
 drivers/gpu/drm/i915/i915_pci.c            | 2 +-
 drivers/gpu/drm/i915/intel_memory_region.c | 6 +++---
 drivers/gpu/drm/i915/intel_memory_region.h | 6 +++---
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index a1e197a6e999..c5f85296a45f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -686,7 +686,7 @@ struct drm_i915_gem_object *
 i915_gem_object_create_stolen(struct drm_i915_private *i915,
 			      resource_size_t size)
 {
-	return i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_STOLEN],
+	return i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_STOLEN_SMEM],
 					     size, I915_BO_ALLOC_CONTIGUOUS);
 }
 
@@ -726,7 +726,7 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 					       resource_size_t stolen_offset,
 					       resource_size_t size)
 {
-	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_STOLEN];
+	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_STOLEN_SMEM];
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node *stolen;
 	int ret;
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 41eea02a9285..b708517d3972 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -849,7 +849,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
 		    i915->params.fake_lmem_start) {
 			mkwrite_device_info(i915)->memory_regions =
-				REGION_SMEM | REGION_LMEM | REGION_STOLEN;
+				REGION_SMEM | REGION_LMEM | REGION_STOLEN_SMEM;
 			GEM_BUG_ON(!HAS_LMEM(i915));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6cff7cf0f17b..d09db36b8287 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -154,7 +154,7 @@
 	.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
-	.memory_regions = REGION_SMEM | REGION_STOLEN
+	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
 
 #define I830_FEATURES \
 	GEN(2), \
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 048b6d6b5af2..bf837b6bb185 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -18,8 +18,8 @@ static const struct {
 		.class = INTEL_MEMORY_LOCAL,
 		.instance = 0,
 	},
-	[INTEL_REGION_STOLEN] = {
-		.class = INTEL_MEMORY_STOLEN,
+	[INTEL_REGION_STOLEN_SMEM] = {
+		.class = INTEL_MEMORY_STOLEN_SYSTEM,
 		.instance = 0,
 	},
 };
@@ -278,7 +278,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		case INTEL_MEMORY_SYSTEM:
 			mem = i915_gem_shmem_setup(i915);
 			break;
-		case INTEL_MEMORY_STOLEN:
+		case INTEL_MEMORY_STOLEN_SYSTEM:
 			mem = i915_gem_stolen_setup(i915);
 			break;
 		default:
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 8baf2536d7a5..edd49067c8ca 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -25,19 +25,19 @@ struct sg_table;
 enum intel_memory_type {
 	INTEL_MEMORY_SYSTEM = 0,
 	INTEL_MEMORY_LOCAL,
-	INTEL_MEMORY_STOLEN,
+	INTEL_MEMORY_STOLEN_SYSTEM,
 };
 
 enum intel_region_id {
 	INTEL_REGION_SMEM = 0,
 	INTEL_REGION_LMEM,
-	INTEL_REGION_STOLEN,
+	INTEL_REGION_STOLEN_SMEM,
 	INTEL_REGION_UNKNOWN, /* Should be last */
 };
 
 #define REGION_SMEM     BIT(INTEL_REGION_SMEM)
 #define REGION_LMEM     BIT(INTEL_REGION_LMEM)
-#define REGION_STOLEN   BIT(INTEL_REGION_STOLEN)
+#define REGION_STOLEN_SMEM   BIT(INTEL_REGION_STOLEN_SMEM)
 
 #define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
 #define I915_ALLOC_CONTIGUOUS     BIT(1)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
