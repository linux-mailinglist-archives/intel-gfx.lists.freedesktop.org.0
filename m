Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0429828BAEE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B5F76E49D;
	Mon, 12 Oct 2020 14:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57536E49D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:35:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22692431-1500050 
 for multiple; Mon, 12 Oct 2020 15:35:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 15:35:09 +0100
Message-Id: <20201012143509.6498-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201012133641.5658-1-chris@chris-wilson.co.uk>
References: <20201012133641.5658-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: DMA map DSM [stolen memory]
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pass the physical address of our BIOS reserved stolen memory to the dma
mapper so we convert it into a proper dma_addr_t and track access with
the iommu.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 29 +++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h            |  5 ++++
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0be5e8683337..376b9ecd405a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -162,6 +162,12 @@ static void i915_gem_cleanup_stolen(struct drm_i915_private *i915)
 	if (!drm_mm_initialized(&i915->mm.stolen))
 		return;
 
+	if (i915->dsm_dma != i915->dsm.start)
+		dma_unmap_resource(i915->drm.dev,
+				   i915->dsm_dma, resource_size(&i915->dsm),
+				   DMA_BIDIRECTIONAL,
+				   DMA_ATTR_NO_WARN);
+
 	drm_mm_takedown(&i915->mm.stolen);
 }
 
@@ -372,6 +378,18 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 	}
 }
 
+static dma_addr_t remap_stolen(struct drm_i915_private *i915)
+{
+	if (pfn_valid(PHYS_PFN(i915->dsm.start)))
+		return (dma_addr_t)i915->dsm.start;
+
+	return dma_map_resource(i915->drm.dev,
+				i915->dsm.start, resource_size(&i915->dsm),
+				DMA_BIDIRECTIONAL,
+				DMA_ATTR_NO_KERNEL_MAPPING |
+				DMA_ATTR_SKIP_CPU_SYNC);
+}
+
 static int i915_gem_init_stolen(struct drm_i915_private *i915)
 {
 	struct intel_uncore *uncore = &i915->uncore;
@@ -489,6 +507,14 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 	i915->stolen_usable_size =
 		resource_size(&i915->dsm) - reserved_total;
 
+	i915->dsm_dma = remap_stolen(i915);
+	if (dma_mapping_error(i915->drm.dev, i915->dsm_dma)) {
+		drm_err(&i915->drm,
+			"Failed to map stolen memory %pR for use with DMA\n",
+			&i915->dsm);
+		return 0; /* bail; continue to load the driver without stolen */
+	}
+
 	/* Basic memrange allocator for stolen space. */
 	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
 
@@ -504,6 +530,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 	struct scatterlist *sg;
 
 	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm)));
+	GEM_BUG_ON(dma_mapping_error(dev->dev, i915->dsm_dma));
 
 	/* We hide that we have no struct page backing our stolen object
 	 * by wrapping the contiguous physical allocation with a fake
@@ -523,7 +550,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 	sg->offset = 0;
 	sg->length = size;
 
-	sg_dma_address(sg) = (dma_addr_t)i915->dsm.start + offset;
+	sg_dma_address(sg) = i915->dsm_dma + offset;
 	sg_dma_len(sg) = size;
 
 	return st;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9c2672c56cc1..44972eda7fb8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -836,6 +836,11 @@ struct drm_i915_private {
 	 */
 	struct resource dsm_reserved;
 
+	/**
+	 * dma-mapping of the Data Stolen Memory.
+	 */
+	dma_addr_t dsm_dma;
+
 	/*
 	 * Stolen memory is segmented in hardware with different portions
 	 * offlimits to certain functions.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
