Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFD6A3196A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E4910E76E;
	Tue, 11 Feb 2025 23:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfygbcY8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3250410E772
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316010; x=1770852010;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ERBWAAMGYDNcczMeGlU0eZg0kFgGwUj7JhALMdFhHKA=;
 b=ZfygbcY8EzqzQMHntJFA0USL3ylWRRvOf2gixlQZIUoUpgWJWyggbxuZ
 qeAm5NxJKPsNDrYpfrL1amJqXJLAbbk9pXTvdTl3GC9+MKa5Yz+iEje+d
 VOqXrkCuOiQR3QYXIkyrCJcoAAEy6E436mMnJr8wVEqzqXOqN5SR4i0Hs
 CTlCoVNQuud0Q76nw/wOjsuE67VWfVLRFWQy+TH8FORmgjiaS197PnXKd
 aDrpmkw+iAPoSqXsX4zvpzj2LFjhiGUARHgcZTdCkqvGa3tcOSwl5rdyC
 EPTU6oUpNWCoMl+fYmesh4Sk0zP4qknvd3WX4oSPD4Zs2rtnvCkJNhRsf g==;
X-CSE-ConnectionGUID: uKSEeeK0TVuIkyISL3EyFQ==
X-CSE-MsgGUID: /ny8KII7TR23QdEYXHFNtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820138"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820138"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:10 -0800
X-CSE-ConnectionGUID: bUwdvvreQsqh6itUCtLOWw==
X-CSE-MsgGUID: 678wR/h4SzWJp4CHNzRR6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870915"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915: Use REG_BIT() & co. for BDW+ EU/slice fuse
 bits
Date: Wed, 12 Feb 2025 01:19:37 +0200
Message-ID: <20250211231941.22769-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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

Convert the BDW+ EU/slice fuse bits to the modern REG_BIT()/etc.
style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  5 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c    |  5 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h   | 62 ++++++++++-------------
 drivers/gpu/drm/i915/gt/intel_sseu.c      | 44 ++++++++--------
 4 files changed, 53 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ec136eb12d48..751e1203cf27 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -769,9 +769,8 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 	if (MEDIA_VER_FULL(i915) < IP_VER(12, 55))
 		media_fuse = ~media_fuse;
 
-	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
-	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
-		      GEN11_GT_VEBOX_DISABLE_SHIFT;
+	vdbox_mask = REG_FIELD_GET(GEN11_GT_VDBOX_DISABLE_MASK, media_fuse);
+	vebox_mask = REG_FIELD_GET(GEN11_GT_VEBOX_DISABLE_MASK, media_fuse);
 
 	if (MEDIA_VER_FULL(i915) >= IP_VER(12, 55)) {
 		fuse1 = intel_uncore_read(gt->uncore, HSW_PAVP_FUSE1);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index aab20d6466f5..a60822e2b5d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -121,9 +121,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		gt->info.mslice_mask =
 			intel_slicemask_from_xehp_dssmask(gt->info.sseu.subslice_mask,
 							  GEN_DSS_PER_MSLICE);
-		gt->info.mslice_mask |=
-			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
-			 GEN12_MEML3_EN_MASK);
+		gt->info.mslice_mask |= REG_FIELD_GET(GEN12_MEML3_EN_MASK,
+						      intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3));
 
 		if (!gt->info.mslice_mask) /* should be impossible! */
 			gt_warn(gt, "mslice mask all zero!\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 3d3cdcc881d0..7a5fe084475f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -514,9 +514,9 @@
 #define GEN9_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + (slice) * 0x4)
 #define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
 						      ((slice) % 3) * 0x4)
-#define   GEN9_PGCTL_SLICE_ACK			(1 << 0)
-#define   GEN9_PGCTL_SS_ACK(subslice)		(1 << (2 + (subslice) * 2))
-#define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? 0x7F : 0x1F)
+#define   GEN9_PGCTL_SLICE_ACK			REG_BIT(0)
+#define   GEN9_PGCTL_SS_ACK(subslice)		REG_BIT(2 + (subslice) * 2)
+#define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? REG_GENMASK(6, 0) : REG_GENMASK(4, 0))
 
 #define GEN9_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + (slice) * 0x8)
 #define GEN10_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + ((slice) / 3) * 0x30 + \
@@ -524,14 +524,14 @@
 #define GEN9_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + (slice) * 0x8)
 #define GEN10_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
 						      ((slice) % 3) * 0x8)
-#define   GEN9_PGCTL_SSA_EU08_ACK		(1 << 0)
-#define   GEN9_PGCTL_SSA_EU19_ACK		(1 << 2)
-#define   GEN9_PGCTL_SSA_EU210_ACK		(1 << 4)
-#define   GEN9_PGCTL_SSA_EU311_ACK		(1 << 6)
-#define   GEN9_PGCTL_SSB_EU08_ACK		(1 << 8)
-#define   GEN9_PGCTL_SSB_EU19_ACK		(1 << 10)
-#define   GEN9_PGCTL_SSB_EU210_ACK		(1 << 12)
-#define   GEN9_PGCTL_SSB_EU311_ACK		(1 << 14)
+#define   GEN9_PGCTL_SSA_EU08_ACK			REG_BIT(0)
+#define   GEN9_PGCTL_SSA_EU19_ACK			REG_BIT(2)
+#define   GEN9_PGCTL_SSA_EU210_ACK			REG_BIT(4)
+#define   GEN9_PGCTL_SSA_EU311_ACK			REG_BIT(6)
+#define   GEN9_PGCTL_SSB_EU08_ACK			REG_BIT(8)
+#define   GEN9_PGCTL_SSB_EU19_ACK			REG_BIT(10)
+#define   GEN9_PGCTL_SSB_EU210_ACK			REG_BIT(12)
+#define   GEN9_PGCTL_SSB_EU311_ACK			REG_BIT(14)
 
 #define VF_PREEMPTION				_MMIO(0x83a4)
 #define   PREEMPTION_VERTEX_COUNT		REG_GENMASK(15, 0)
@@ -588,7 +588,7 @@
 #define   GEN10_L3BANK_MASK			0x0F
 /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
 #define   GEN12_MAX_MSLICES			4
-#define   GEN12_MEML3_EN_MASK			0x0F
+#define   GEN12_MEML3_EN_MASK			REG_GENMASK(3, 0)
 
 #define HSW_PAVP_FUSE1				_MMIO(0x911c)
 #define   XEHP_SFC_ENABLE_MASK			REG_GENMASK(27, 24)
@@ -598,37 +598,30 @@
 #define   HSW_F1_EU_DIS_6EUS			2
 
 #define GEN8_FUSE2				_MMIO(0x9120)
-#define   GEN8_F2_SS_DIS_SHIFT			21
-#define   GEN8_F2_SS_DIS_MASK			(0x7 << GEN8_F2_SS_DIS_SHIFT)
-#define   GEN8_F2_S_ENA_SHIFT			25
-#define   GEN8_F2_S_ENA_MASK			(0x7 << GEN8_F2_S_ENA_SHIFT)
-#define   GEN9_F2_SS_DIS_SHIFT			20
-#define   GEN9_F2_SS_DIS_MASK			(0xf << GEN9_F2_SS_DIS_SHIFT)
-#define   GEN10_F2_S_ENA_SHIFT			22
-#define   GEN10_F2_S_ENA_MASK			(0x3f << GEN10_F2_S_ENA_SHIFT)
-#define   GEN10_F2_SS_DIS_SHIFT			18
-#define   GEN10_F2_SS_DIS_MASK			(0xf << GEN10_F2_SS_DIS_SHIFT)
+#define   GEN8_F2_SS_DIS_MASK			REG_GENMASK(23, 21)
+#define   GEN8_F2_S_ENA_MASK			REG_GENMASK(27, 25)
+#define   GEN9_F2_SS_DIS_MASK			REG_GENMASK(23, 20)
+#define   GEN10_F2_S_ENA_MASK			REG_GENMASK(27, 22)
+#define   GEN10_F2_SS_DIS_MASK			REG_GENMASK(21, 18)
 
 #define GEN8_EU_DISABLE0			_MMIO(0x9134)
 #define GEN9_EU_DISABLE(slice)			_MMIO(0x9134 + (slice) * 0x4)
 #define GEN11_EU_DISABLE			_MMIO(0x9134)
-#define   GEN8_EU_DIS0_S0_MASK			0xffffff
-#define   GEN8_EU_DIS0_S1_SHIFT			24
-#define   GEN8_EU_DIS0_S1_MASK			(0xff << GEN8_EU_DIS0_S1_SHIFT)
-#define   GEN11_EU_DIS_MASK			0xFF
+#define   GEN8_EU_DIS0_S0_MASK			REG_GENMASK(23, 0)
+#define   GEN8_EU_DIS0_S1_MASK			REG_GENMASK(31, 24)
+#define   GEN11_EU_DIS_MASK			REG_GENMASK(7, 0)
 #define XEHP_EU_ENABLE				_MMIO(0x9134)
-#define   XEHP_EU_ENA_MASK			0xFF
+#define   XEHP_EU_ENA_MASK			REG_GENMASK(7, 0)
 
 #define GEN8_EU_DISABLE1			_MMIO(0x9138)
-#define   GEN8_EU_DIS1_S1_MASK			0xffff
-#define   GEN8_EU_DIS1_S2_SHIFT			16
-#define   GEN8_EU_DIS1_S2_MASK			(0xffff << GEN8_EU_DIS1_S2_SHIFT)
+#define   GEN8_EU_DIS1_S1_MASK			REG_GENMASK(15, 0)
+#define   GEN8_EU_DIS1_S2_MASK			REG_GENMASK(31, 16)
 
 #define GEN11_GT_SLICE_ENABLE			_MMIO(0x9138)
-#define   GEN11_GT_S_ENA_MASK			0xFF
+#define   GEN11_GT_S_ENA_MASK			REG_GENMASK(7, 0)
 
 #define GEN8_EU_DISABLE2			_MMIO(0x913c)
-#define   GEN8_EU_DIS2_S2_MASK			0xff
+#define   GEN8_EU_DIS2_S2_MASK			REG_GENMASK(7, 0)
 
 #define GEN11_GT_SUBSLICE_DISABLE		_MMIO(0x913c)
 #define GEN12_GT_GEOMETRY_DSS_ENABLE		_MMIO(0x913c)
@@ -636,9 +629,8 @@
 #define GEN10_EU_DISABLE3			_MMIO(0x9140)
 #define   GEN10_EU_DIS_SS_MASK			0xff
 #define GEN11_GT_VEBOX_VDBOX_DISABLE		_MMIO(0x9140)
-#define   GEN11_GT_VDBOX_DISABLE_MASK		0xff
-#define   GEN11_GT_VEBOX_DISABLE_SHIFT		16
-#define   GEN11_GT_VEBOX_DISABLE_MASK		(0x0f << GEN11_GT_VEBOX_DISABLE_SHIFT)
+#define   GEN11_GT_VDBOX_DISABLE_MASK		REG_GENMASK(7, 0)
+#define   GEN11_GT_VEBOX_DISABLE_MASK		REG_GENMASK(19, 16)
 
 #define GEN12_GT_COMPUTE_DSS_ENABLE		_MMIO(0x9144)
 #define XEHPC_GT_COMPUTE_DSS_ENABLE_EXT		_MMIO(0x9148)
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 8ae1208f9da5..9501d323d0d3 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -236,7 +236,8 @@ static void xehp_sseu_info_init(struct intel_gt *gt)
 			   GEN12_GT_COMPUTE_DSS_ENABLE,
 			   XEHPC_GT_COMPUTE_DSS_ENABLE_EXT);
 
-	eu_en_fuse = intel_uncore_read(uncore, XEHP_EU_ENABLE) & XEHP_EU_ENA_MASK;
+	eu_en_fuse = REG_FIELD_GET(XEHP_EU_ENA_MASK,
+				   intel_uncore_read(uncore, XEHP_EU_ENABLE));
 
 	if (HAS_ONE_EU_PER_FUSE_BIT(gt->i915))
 		eu_en = eu_en_fuse;
@@ -269,15 +270,15 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
 	 * Although gen12 architecture supported multiple slices, TGL, RKL,
 	 * DG1, and ADL only had a single slice.
 	 */
-	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
-		GEN11_GT_S_ENA_MASK;
+	s_en = REG_FIELD_GET(GEN11_GT_S_ENA_MASK,
+			     intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE));
 	drm_WARN_ON(&gt->i915->drm, s_en != 0x1);
 
 	g_dss_en = intel_uncore_read(uncore, GEN12_GT_GEOMETRY_DSS_ENABLE);
 
 	/* one bit per pair of EUs */
-	eu_en_fuse = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
-		       GEN11_EU_DIS_MASK);
+	eu_en_fuse = ~REG_FIELD_GET(GEN11_EU_DIS_MASK,
+				    intel_uncore_read(uncore, GEN11_EU_DISABLE));
 
 	for (eu = 0; eu < sseu->max_eus_per_subslice / 2; eu++)
 		if (eu_en_fuse & BIT(eu))
@@ -306,14 +307,14 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
 	 * Although gen11 architecture supported multiple slices, ICL and
 	 * EHL/JSL only had a single slice in practice.
 	 */
-	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
-		GEN11_GT_S_ENA_MASK;
+	s_en = REG_FIELD_GET(GEN11_GT_S_ENA_MASK,
+			     intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE));
 	drm_WARN_ON(&gt->i915->drm, s_en != 0x1);
 
 	ss_en = ~intel_uncore_read(uncore, GEN11_GT_SUBSLICE_DISABLE);
 
-	eu_en = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
-		  GEN11_EU_DIS_MASK);
+	eu_en = ~REG_FIELD_GET(GEN11_EU_DIS_MASK,
+			       intel_uncore_read(uncore, GEN11_EU_DISABLE));
 
 	gen11_compute_sseu_info(sseu, ss_en, eu_en);
 
@@ -381,7 +382,7 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 	int s, ss;
 
 	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
+	sseu->slice_mask = REG_FIELD_GET(GEN8_F2_S_ENA_MASK, fuse2);
 
 	/* BXT has a single slice and at most 3 subslices. */
 	intel_sseu_set_info(sseu, IS_GEN9_LP(i915) ? 1 : 3,
@@ -392,8 +393,7 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 	 * to each of the enabled slices.
 	 */
 	subslice_mask = (1 << sseu->max_subslices) - 1;
-	subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
-			   GEN9_F2_SS_DIS_SHIFT);
+	subslice_mask &= ~REG_FIELD_GET(GEN9_F2_SS_DIS_MASK, fuse2);
 
 	/*
 	 * Iterate through enabled slices and subslices to
@@ -486,7 +486,7 @@ static void bdw_sseu_info_init(struct intel_gt *gt)
 	u32 eu_disable0, eu_disable1, eu_disable2;
 
 	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
+	sseu->slice_mask = REG_FIELD_GET(GEN8_F2_S_ENA_MASK, fuse2);
 	intel_sseu_set_info(sseu, 3, 3, 8);
 
 	/*
@@ -494,18 +494,18 @@ static void bdw_sseu_info_init(struct intel_gt *gt)
 	 * to each of the enabled slices.
 	 */
 	subslice_mask = GENMASK(sseu->max_subslices - 1, 0);
-	subslice_mask &= ~((fuse2 & GEN8_F2_SS_DIS_MASK) >>
-			   GEN8_F2_SS_DIS_SHIFT);
+	subslice_mask &= ~REG_FIELD_GET(GEN8_F2_SS_DIS_MASK, fuse2);
 	eu_disable0 = intel_uncore_read(uncore, GEN8_EU_DISABLE0);
 	eu_disable1 = intel_uncore_read(uncore, GEN8_EU_DISABLE1);
 	eu_disable2 = intel_uncore_read(uncore, GEN8_EU_DISABLE2);
-	eu_disable[0] = eu_disable0 & GEN8_EU_DIS0_S0_MASK;
-	eu_disable[1] = (eu_disable0 >> GEN8_EU_DIS0_S1_SHIFT) |
-		((eu_disable1 & GEN8_EU_DIS1_S1_MASK) <<
-		 (32 - GEN8_EU_DIS0_S1_SHIFT));
-	eu_disable[2] = (eu_disable1 >> GEN8_EU_DIS1_S2_SHIFT) |
-		((eu_disable2 & GEN8_EU_DIS2_S2_MASK) <<
-		 (32 - GEN8_EU_DIS1_S2_SHIFT));
+	eu_disable[0] =
+		REG_FIELD_GET(GEN8_EU_DIS0_S0_MASK, eu_disable0);
+	eu_disable[1] =
+		REG_FIELD_GET(GEN8_EU_DIS0_S1_MASK, eu_disable0) |
+		REG_FIELD_GET(GEN8_EU_DIS1_S1_MASK, eu_disable1) << hweight32(GEN8_EU_DIS0_S1_MASK);
+	eu_disable[2] =
+		REG_FIELD_GET(GEN8_EU_DIS1_S2_MASK, eu_disable1) |
+		REG_FIELD_GET(GEN8_EU_DIS2_S2_MASK, eu_disable2) << hweight32(GEN8_EU_DIS1_S2_MASK);
 
 	/*
 	 * Iterate through enabled slices and subslices to
-- 
2.45.3

