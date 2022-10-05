Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CE25F57B7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 17:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED6610E6BD;
	Wed,  5 Oct 2022 15:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA3F10E6B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664984528; x=1696520528;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mOrkC8QjM2JX6XO70oO3i4Gr2SfZEUicopUw4espx7g=;
 b=DnBKBoAbnjNRBVYtBm8YpXm5hkI8o7wz+NRFRV61jHC4PGsg8b/+l37E
 r+EvzUIkojN8fNc9ibQJXtAUyRpRDo2+P74jdclOqDGzx4ukPlxNTlB39
 gcwdFxSZsSIty8TJf83rGmWnYPRU90DTbvaQ/8KuwSjBUwxaZOdVvu+Fr
 mnIDHAs55gzymgfvXVz5O5mrTPJ9xHCimdHTcinwnp+zqRMAxI2yT02Fw
 kFEhGXbDswhQI2IihyWxMzrYfpy9Mob7iLhdUEH90xR+0Xj2SPxqdUX55
 UWngjTer4mjeBmuygPD5OFekSQ/ZT2JQGPuR1WeTgVe0UEXqoplHDndE3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="300792293"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="300792293"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655207353"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="655207353"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 05 Oct 2022 08:42:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 18:42:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 18:41:59 +0300
Message-Id: <20221005154159.18750-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915:
 s/HAS_BAR2_SMEM_STOLEN/HAS_LMEMBAR_SMEM_STOLEN/
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

The fact that LMEMBAR is BAR2 should be of no real interest
to anyone. So use the name of the BAR rather than its index.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_ggtt.c       |  2 +-
 drivers/gpu/drm/i915/i915_drv.h            |  4 ++--
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 910086974454..ffd9d01835a9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -79,7 +79,7 @@ void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 
 static bool valid_stolen_size(struct drm_i915_private *i915, struct resource *dsm)
 {
-	return (dsm->start != 0 || HAS_BAR2_SMEM_STOLEN(i915)) && dsm->end > dsm->start;
+	return (dsm->start != 0 || HAS_LMEMBAR_SMEM_STOLEN(i915)) && dsm->end > dsm->start;
 }
 
 static int adjust_stolen(struct drm_i915_private *i915,
@@ -153,7 +153,7 @@ static int request_smem_stolen(struct drm_i915_private *i915,
 	 * Starting MTL, in IGFX devices the stolen memory is exposed via
 	 * BAR2 and shall be considered similar to stolen lmem.
 	 */
-	if (HAS_LMEM(i915) || HAS_BAR2_SMEM_STOLEN(i915))
+	if (HAS_LMEM(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
 		return 0;
 
 	/*
@@ -406,7 +406,7 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 		MISSING_CASE(reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK);
 	}
 
-	if (HAS_BAR2_SMEM_STOLEN(i915))
+	if (HAS_LMEMBAR_SMEM_STOLEN(i915))
 		/* the base is initialized to stolen top so subtract size to get base */
 		*base -= *size;
 	else
@@ -881,7 +881,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	if (!i915_pci_resource_valid(pdev, GEN12_LMEM_BAR))
 		return ERR_PTR(-ENXIO);
 
-	if (HAS_BAR2_SMEM_STOLEN(i915) || IS_DG1(i915)) {
+	if (HAS_LMEMBAR_SMEM_STOLEN(i915) || IS_DG1(i915)) {
 		lmem_size = pci_resource_len(pdev, GEN12_LMEM_BAR);
 	} else {
 		resource_size_t lmem_range;
@@ -891,7 +891,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		lmem_size *= SZ_1G;
 	}
 
-	if (HAS_BAR2_SMEM_STOLEN(i915)) {
+	if (HAS_LMEMBAR_SMEM_STOLEN(i915)) {
 		/*
 		 * MTL dsm size is in GGC register.
 		 * Also MTL uses offset to DSMBASE in ptes, so i915
@@ -920,7 +920,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < dsm_size) {
 		io_start = 0;
 		io_size = 0;
-	} else if (HAS_BAR2_SMEM_STOLEN(i915)) {
+	} else if (HAS_LMEMBAR_SMEM_STOLEN(i915)) {
 		io_start = pci_resource_start(pdev, GEN12_LMEM_BAR) + SZ_8M;
 	} else {
 		io_start = pci_resource_start(pdev, GEN12_LMEM_BAR) + dsm_base;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 668131c25da7..1bca9fb72754 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -931,7 +931,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	unsigned int size;
 	u16 snb_gmch_ctl;
 
-	if (!HAS_LMEM(i915) && !HAS_BAR2_SMEM_STOLEN(i915)) {
+	if (!HAS_LMEM(i915) && !HAS_LMEMBAR_SMEM_STOLEN(i915)) {
 		if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
 			return -ENXIO;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 90ed8e6db2fe..517d7d2951da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -974,8 +974,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
 
-#define HAS_BAR2_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
-				    GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+#define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
+				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
 /* intel_device_info.c */
 static inline struct intel_device_info *
-- 
2.35.1

