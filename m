Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28770427350
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 732EF89B83;
	Fri,  8 Oct 2021 21:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888B66E882;
 Fri,  8 Oct 2021 21:57:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="206715336"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="206715336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="489625487"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>
Date: Fri,  8 Oct 2021 14:56:35 -0700
Message-Id: <20211008215635.2026385-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211008215635.2026385-1-matthew.d.roper@intel.com>
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/xehpsdv: Initialize multi-tiles
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Check how many extra GT tiles are available on the system and setup
register access for all of them. We can detect how may GT tiles are
available by reading a register on the root tile. The same register
returns the tile ID on all tiles.

Bspec: 33407
Original-author: Abdiel Janulgue
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Signed-off-by: Paulo Zanoni <paulo.r.zanoni@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       | 66 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h          |  3 ++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/i915_reg.h          |  4 ++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 5 files changed, 74 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 6528d21e68eb..d7efaef9ade7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -943,6 +943,17 @@ tile_setup(struct intel_gt *gt, unsigned int id, phys_addr_t phys_addr)
 	if (ret)
 		return ret;
 
+	/* Which tile am I? default to zero on single tile systems */
+	if (HAS_REMOTE_TILES(i915)) {
+		u32 instance =
+			__raw_uncore_read32(gt->uncore, XEHPSDV_MTCFG_ADDR) &
+			TILE_NUMBER;
+
+		if (GEM_WARN_ON(instance != id))
+			return -ENXIO;
+	}
+
+	gt->info.id = id;
 	gt->phys_addr = phys_addr;
 
 	return 0;
@@ -958,11 +969,25 @@ static void tile_cleanup(struct intel_gt *gt)
 	}
 }
 
+static unsigned int tile_count(struct drm_i915_private *i915)
+{
+	u32 mtcfg;
+
+	/*
+	 * We use raw MMIO reads at this point since the
+	 * MMIO vfuncs are not setup yet
+	 */
+	mtcfg = __raw_uncore_read32(&i915->uncore, XEHPSDV_MTCFG_ADDR);
+	return REG_FIELD_GET(TILE_COUNT, mtcfg) + 1;
+}
+
 int intel_probe_gts(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct intel_gt *gt;
 	phys_addr_t phys_addr;
 	unsigned int mmio_bar;
+	unsigned int i, tiles;
 	int ret;
 
 	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
@@ -975,8 +1000,47 @@ int intel_probe_gts(struct drm_i915_private *i915)
 
 	i915->gts[0] = &i915->gt;
 
-	/* TODO: add more tiles */
+	if (!HAS_REMOTE_TILES(i915))
+		return 0;
+
+	/* Setup other tiles */
+	tiles = tile_count(i915);
+	drm_dbg(&i915->drm, "Tile count: %u\n", tiles);
+
+	if (GEM_WARN_ON(tiles > I915_MAX_TILES))
+		return -EINVAL;
+
+	/* For multi-tile platforms, size of GTTMMADR is 16MB per tile */
+	if (GEM_WARN_ON(pci_resource_len(pdev, 0) / tiles != SZ_16M))
+		return -EINVAL;
+
+	for (i = 1; i < tiles; i++) {
+		gt = kzalloc(sizeof(*gt), GFP_KERNEL);
+		if (!gt) {
+			ret = -ENOMEM;
+			goto err;
+		}
+
+		ret = tile_setup(gt, i, phys_addr + SZ_16M * i);
+		if (ret)
+			goto err;
+
+		i915->gts[i] = gt;
+	}
+
+	i915->remote_tiles = tiles - 1;
+
 	return 0;
+
+err:
+	drm_err(&i915->drm, "Failed to initialize tile %u! (%d)\n", i, ret);
+
+	for_each_gt(i915, i, gt) {
+		tile_cleanup(gt);
+		i915->gts[i] = NULL;
+	}
+
+	return ret;
 }
 
 int intel_gt_tiles_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3a26a21ffb3a..342c42e5aa96 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -865,6 +865,8 @@ struct drm_i915_private {
 	 */
 	resource_size_t stolen_usable_size;	/* Total size minus reserved ranges */
 
+	unsigned int remote_tiles;
+
 	struct intel_uncore uncore;
 	struct intel_uncore_mmio_debug mmio_debug;
 
@@ -1724,6 +1726,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
+#define HAS_REMOTE_TILES(dev_priv)   (INTEL_INFO(dev_priv)->has_remote_tiles)
 
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 169837de395d..95870c2e366e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1015,6 +1015,7 @@ static const struct intel_device_info xehpsdv_info = {
 	DGFX_FEATURES,
 	PLATFORM(INTEL_XEHPSDV),
 	.display = { },
+	.has_remote_tiles = 1,
 	.pipe_mask = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c..5d13c19e14aa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12477,6 +12477,10 @@ enum skl_power_gate {
 
 #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
+#define XEHPSDV_MTCFG_ADDR			_MMIO(0x101800)
+#define   TILE_COUNT			REG_GENMASK(15, 8)
+#define   TILE_NUMBER			REG_GENMASK(7, 0)
+
 #define GEN12_GSMBASE			_MMIO(0x108100)
 #define GEN12_DSMBASE			_MMIO(0x1080C0)
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 8e6f48d1eb7b..3992b414e21d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -136,6 +136,7 @@ enum intel_ppgtt_type {
 	func(has_pxp); \
 	func(has_rc6); \
 	func(has_rc6p); \
+	func(has_remote_tiles); \
 	func(has_rps); \
 	func(has_runtime_pm); \
 	func(has_snoop); \
-- 
2.33.0

