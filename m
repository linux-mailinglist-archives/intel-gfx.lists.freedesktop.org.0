Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 464BB5BB1AA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 19:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE9E10E95B;
	Fri, 16 Sep 2022 17:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6182310E4F6;
 Fri, 16 Sep 2022 17:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663349791; x=1694885791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RlEkEfIdUftFFfToHs9wlyJ/9s7DoekX/FOGl0OUg1E=;
 b=S2di60qL6hqs36xSzh9bJuhP/fsHr0NVvag0ERcnxPzVeMC71BD7ZpI4
 Frkzmsd4P6spD3o/tKCfey8SXTqXGCM5o9Q8z8KoXw9HavdmS27YFvG3j
 UVTKGZDaJVI86XaY1649nTgJ1onnqGGTiZet8Lqx8DiuGpR8KwrbFZgxV
 BcGX6w7ZVNhCN+MyY7Su76Gt4ImFQVqP6YiyJatj6VhF/cF85Zg5Wp1Pq
 V/kjCjRz1klqaTtYi0r3gdsg3NkNzFSQKwoeWYb+adpD0MJCEj2rcQ/M1
 NCPYWh7TFR1Gta8D4KlAwxOox7mty+KCecfNomiqQKEJ3J8vostEE8uOD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278769858"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="278769858"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 10:36:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="721499666"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 10:36:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, Caz Yokoyama <caz@caztech.com>,
 Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Date: Fri, 16 Sep 2022 10:36:07 -0700
Message-Id: <20220915-stolen-v2-2-20ff797de047@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220915-stolen-v2-0-20ff797de047@intel.com>
References: <20220915-stolen-v2-0-20ff797de047@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-bbe61
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Split i915_gem_init_stolen()
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
Cc: tejas.upadhyay@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some helpers: adjust_stolen(), request_smem_stolen_() and
init_reserved_stolen() that are now called by i915_gem_init_stolen() to
initialize each part of the Data Stolen Memory region.

Main goal is to split the reserved part within the stolen, also known as
WOPCM, as its calculation changes often per platform and is a big source
of confusion when handling stolen memory.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 3665f9b035bb..6edf4e374f54 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -77,22 +77,26 @@ void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 	mutex_unlock(&i915->mm.stolen_lock);
 }
 
-static int i915_adjust_stolen(struct drm_i915_private *i915,
-			      struct resource *dsm)
+static bool valid_stolen_size(struct resource *dsm)
+{
+	return dsm->start != 0 && dsm->end > dsm->start;
+}
+
+static int adjust_stolen(struct drm_i915_private *i915,
+			 struct resource *dsm)
 {
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
-	struct resource *r;
 
-	if (dsm->start == 0 || dsm->end <= dsm->start)
+	if (!valid_stolen_size(dsm))
 		return -EINVAL;
 
 	/*
+	 * Make sure we don't clobber the GTT if it's within stolen memory
+	 *
 	 * TODO: We have yet too encounter the case where the GTT wasn't at the
 	 * end of stolen. With that assumption we could simplify this.
 	 */
-
-	/* Make sure we don't clobber the GTT if it's within stolen memory */
 	if (GRAPHICS_VER(i915) <= 4 &&
 	    !IS_G33(i915) && !IS_PINEVIEW(i915) && !IS_G4X(i915)) {
 		struct resource stolen[2] = {*dsm, *dsm};
@@ -131,10 +135,20 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 		}
 	}
 
+	if (!valid_stolen_size(dsm))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int request_smem_stolen(struct drm_i915_private *i915,
+			       struct resource *dsm)
+{
+	struct resource *r;
+
 	/*
-	 * With stolen lmem, we don't need to check if the address range
-	 * overlaps with the non-stolen system memory range, since lmem is local
-	 * to the gpu.
+	 * With stolen lmem, we don't need to request system memory for the
+	 * address range since it's local to the gpu.
 	 */
 	if (HAS_LMEM(i915))
 		return 0;
@@ -392,39 +406,22 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 	}
 }
 
-static int i915_gem_init_stolen(struct intel_memory_region *mem)
+/*
+ * Initialize i915->dsm_reserved to contain the reserved space within the Data
+ * Stolen Memory. This is a range on the top of DSM that is reserved, not to
+ * be used by driver, so must be excluded from the region passed to the
+ * allocator later. In the spec this is also called as WOPCM.
+ *
+ * Our expectation is that the reserved space is at the top of the stolen
+ * region, as it has been the case for every platform, and *never* at the
+ * bottom, so the calculation here can be simplified.
+ */
+static int init_reserved_stolen(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = mem->i915;
 	struct intel_uncore *uncore = &i915->uncore;
 	resource_size_t reserved_base, stolen_top;
-	resource_size_t reserved_total, reserved_size;
-
-	mutex_init(&i915->mm.stolen_lock);
-
-	if (intel_vgpu_active(i915)) {
-		drm_notice(&i915->drm,
-			   "%s, disabling use of stolen memory\n",
-			   "iGVT-g active");
-		return 0;
-	}
-
-	if (i915_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
-		drm_notice(&i915->drm,
-			   "%s, disabling use of stolen memory\n",
-			   "DMAR active");
-		return 0;
-	}
-
-	if (resource_size(&mem->region) == 0)
-		return 0;
-
-	i915->dsm = mem->region;
-
-	if (i915_adjust_stolen(i915, &i915->dsm))
-		return 0;
-
-	GEM_BUG_ON(i915->dsm.start == 0);
-	GEM_BUG_ON(i915->dsm.end <= i915->dsm.start);
+	resource_size_t reserved_size;
+	int ret = 0;
 
 	stolen_top = i915->dsm.end + 1;
 	reserved_base = stolen_top;
@@ -455,17 +452,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 					&reserved_base, &reserved_size);
 	}
 
-	/*
-	 * Our expectation is that the reserved space is at the top of the
-	 * stolen region and *never* at the bottom. If we see !reserved_base,
-	 * it likely means we failed to read the registers correctly.
-	 */
+	/* No reserved stolen */
+	if (reserved_base == stolen_top)
+		goto bail_out;
+
 	if (!reserved_base) {
 		drm_err(&i915->drm,
 			"inconsistent reservation %pa + %pa; ignoring\n",
 			&reserved_base, &reserved_size);
-		reserved_base = stolen_top;
-		reserved_size = 0;
+		ret = -EINVAL;
+		goto bail_out;
 	}
 
 	i915->dsm_reserved =
@@ -475,19 +471,55 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 		drm_err(&i915->drm,
 			"Stolen reserved area %pR outside stolen memory %pR\n",
 			&i915->dsm_reserved, &i915->dsm);
+		ret = -EINVAL;
+		goto bail_out;
+	}
+
+	return 0;
+
+bail_out:
+	i915->dsm_reserved =
+		(struct resource)DEFINE_RES_MEM(reserved_base, 0);
+
+	return ret;
+}
+
+static int i915_gem_init_stolen(struct intel_memory_region *mem)
+{
+	struct drm_i915_private *i915 = mem->i915;
+
+	mutex_init(&i915->mm.stolen_lock);
+
+	if (intel_vgpu_active(i915)) {
+		drm_notice(&i915->drm,
+			   "%s, disabling use of stolen memory\n",
+			   "iGVT-g active");
+		return 0;
+	}
+
+	if (i915_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
+		drm_notice(&i915->drm,
+			   "%s, disabling use of stolen memory\n",
+			   "DMAR active");
 		return 0;
 	}
 
+	if (adjust_stolen(i915, &mem->region))
+		return 0;
+
+	if (request_smem_stolen(i915, &mem->region))
+		return 0;
+
+	i915->dsm = mem->region;
+
+	if (init_reserved_stolen(i915))
+		return 0;
+
 	/* Exclude the reserved region from driver use */
-	mem->region.end = reserved_base - 1;
+	mem->region.end = i915->dsm_reserved.start - 1;
 	mem->io_size = min(mem->io_size, resource_size(&mem->region));
 
-	/* It is possible for the reserved area to end before the end of stolen
-	 * memory, so just consider the start. */
-	reserved_total = stolen_top - reserved_base;
-
-	i915->stolen_usable_size =
-		resource_size(&i915->dsm) - reserved_total;
+	i915->stolen_usable_size = resource_size(&mem->region);
 
 	drm_dbg(&i915->drm,
 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
@@ -759,11 +791,6 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
 		return -ENODEV;
 
-	/*
-	 * TODO: For stolen lmem we mostly just care about populating the dsm
-	 * related bits and setting up the drm_mm allocator for the range.
-	 * Perhaps split up i915_gem_init_stolen() for this.
-	 */
 	err = i915_gem_init_stolen(mem);
 	if (err)
 		return err;

-- 
b4 0.10.0-dev-bbe61
