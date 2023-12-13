Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2878106DA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7372410E6EC;
	Wed, 13 Dec 2023 00:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484B510E6E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428196; x=1733964196;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nyQp8FSi6rQRHn54Fc5JgIGyuGlg26Ac66RTbdAqbEM=;
 b=SsEqpQNAtzddMxNE77I3CQcCkjnktIrAT9MC4KwB3EVIOWAipKHisych
 9mLX5FzvxhEz5inULg05kt2VeNpNMR8IrKS1WHkZo1yjXVG//Y87m2CnA
 tzPbr4m/3LG25z0yae+6cEe2bxpxi5uytSWy4uKTATr1GiCgtcv/XsiOU
 QfRaEk4OA1OPX2UJwUHAk2aGVzyW/gu3upR+90LqPx0iPYl5jiznHjr6a
 gVogO39tieAFPKYOn0yhKy/8pY05FNd08gVR5V9kO+RPyXPsqnCLrPsmf
 BAHl+UJymsEFek47h4DEwTfZjzvpNDEAyk7ObFx8N5GGY4rhKthOF6zbq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309708"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309708"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011904"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011904"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:43:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:43:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915: Split the smem and lmem plane readout apart
Date: Wed, 13 Dec 2023 02:42:36 +0200
Message-ID: <20231213004237.20375-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Declutter initial_plane_vma() a bit by pulling the lmem and smem
readout paths into their own functions.

TODO: the smem path should still be fixed to get and validate
      the dma address from the pte as well

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   2 +
 .../drm/i915/display/intel_plane_initial.c    | 145 +++++++++++-------
 2 files changed, 95 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 341d80c2b9de..d2b0cc754667 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -782,6 +782,8 @@ struct intel_plane_state {
 
 struct intel_initial_plane_config {
 	struct intel_framebuffer *fb;
+	struct intel_memory_region *mem;
+	resource_size_t phys_base;
 	struct i915_vma *vma;
 	unsigned int tiling;
 	int size;
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 48b74319f45c..78bff6181ceb 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -44,6 +44,93 @@ intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
 	return false;
 }
 
+static bool
+initial_plane_phys_lmem(struct drm_i915_private *i915,
+			struct intel_initial_plane_config *plane_config)
+{
+	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
+	struct intel_memory_region *mem;
+	dma_addr_t dma_addr;
+	gen8_pte_t pte;
+	u32 base;
+
+	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
+
+	gte += base / I915_GTT_PAGE_SIZE;
+
+	pte = ioread64(gte);
+	if (!(pte & GEN12_GGTT_PTE_LM)) {
+		drm_err(&i915->drm,
+			"Initial plane programming missing PTE_LM bit\n");
+		return false;
+	}
+
+	dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
+
+	if (IS_DGFX(i915))
+		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
+	else
+		mem = i915->mm.stolen_region;
+	if (!mem) {
+		drm_dbg_kms(&i915->drm,
+			    "Initial plane memory region not initialized\n");
+		return false;
+	}
+
+	/*
+	 * On lmem we don't currently expect this to
+	 * ever be placed in the stolen portion.
+	 */
+	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
+		drm_err(&i915->drm,
+			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
+			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
+		return false;
+	}
+
+	drm_dbg(&i915->drm,
+		"Using dma_addr=%pa, based on initial plane programming\n",
+		&dma_addr);
+
+	plane_config->phys_base = dma_addr - mem->region.start;
+	plane_config->mem = mem;
+
+	return true;
+}
+
+static bool
+initial_plane_phys_smem(struct drm_i915_private *i915,
+			struct intel_initial_plane_config *plane_config)
+{
+	struct intel_memory_region *mem;
+	u32 base;
+
+	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
+
+	mem = i915->mm.stolen_region;
+	if (!mem) {
+		drm_dbg_kms(&i915->drm,
+			    "Initial plane memory region not initialized\n");
+		return false;
+	}
+
+	/* FIXME get and validate the dma_addr from the PTE */
+	plane_config->phys_base = base;
+	plane_config->mem = mem;
+
+	return true;
+}
+
+static bool
+initial_plane_phys(struct drm_i915_private *i915,
+		   struct intel_initial_plane_config *plane_config)
+{
+	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
+		return initial_plane_phys_lmem(i915, plane_config);
+	else
+		return initial_plane_phys_smem(i915, plane_config);
+}
+
 static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
@@ -58,59 +145,13 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (plane_config->size == 0)
 		return NULL;
 
+	if (!initial_plane_phys(i915, plane_config))
+		return NULL;
+
+	phys_base = plane_config->phys_base;
+	mem = plane_config->mem;
+
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
-	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
-		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
-		dma_addr_t dma_addr;
-		gen8_pte_t pte;
-
-		gte += base / I915_GTT_PAGE_SIZE;
-
-		pte = ioread64(gte);
-		if (!(pte & GEN12_GGTT_PTE_LM)) {
-			drm_err(&i915->drm,
-				"Initial plane programming missing PTE_LM bit\n");
-			return NULL;
-		}
-
-		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
-
-		if (IS_DGFX(i915))
-			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
-		else
-			mem = i915->mm.stolen_region;
-		if (!mem) {
-			drm_dbg_kms(&i915->drm,
-				    "Initial plane memory region not initialized\n");
-			return NULL;
-		}
-
-		/*
-		 * On lmem we don't currently expect this to
-		 * ever be placed in the stolen portion.
-		 */
-		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
-			drm_err(&i915->drm,
-				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
-				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
-			return NULL;
-		}
-
-		drm_dbg(&i915->drm,
-			"Using dma_addr=%pa, based on initial plane programming\n",
-			&dma_addr);
-
-		phys_base = dma_addr - mem->region.start;
-	} else {
-		phys_base = base;
-		mem = i915->mm.stolen_region;
-		if (!mem) {
-			drm_dbg_kms(&i915->drm,
-				    "Initial plane memory region not initialized\n");
-			return NULL;
-		}
-	}
-
 	size = round_up(plane_config->base + plane_config->size,
 			mem->min_page_size);
 	size -= base;
-- 
2.41.0

