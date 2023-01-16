Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F3566CD3D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 18:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1E010E471;
	Mon, 16 Jan 2023 17:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39E510E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 17:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673890496; x=1705426496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QA7NEitIwFogVXShFFklVM7Ydo8fzSA0yY3zOZdyj5Y=;
 b=Ha0JUC9UjbkrknOBrMTgZRFGehuAcrGape27indi/sNpykQNpDZn/Kbi
 zuZTGaWoPJ0N2nqy/pkreEwcuS5HreiE1mV/tHiX9TxSzjdaYsYlgOTb1
 yhUZl5GsCu7a4xSCeHH3ROMY+6EqJY2ffsg6IMdytk43x/TsSIaOWEmgf
 yfMsESc3AGtkhA/ANVSogCb4IN16op31OVQMdLktCJb7CwymS57oDgpHV
 2VVgpdyYMaDhri6UouxmxlWdzXsoJOKfNvrT2kbLTlU2G8eLZolDwUesm
 3NMCspUl5ivoGlOlTqPuf7/VhSeHHz47quxLkBYw5RloFA6ipiGLc4IJl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326569938"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="326569938"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 09:34:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="766975090"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="766975090"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 09:34:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 19:34:22 +0200
Message-Id: <20230116173422.1858527-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116173422.1858527-1-jani.nikula@intel.com>
References: <20230116173422.1858527-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: drop cast from DEFINE_RES_MEM()
 usage
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since commit 52c4d11f1dce ("resource: Convert DEFINE_RES_NAMED() to be
compound literal") it's no longer necessary to cast DEFINE_RES_MEM() to
struct resource.

This also fixes sparse warnings "cast from non-scalar" and "cast to
non-scalar".

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 10 +++-------
 drivers/gpu/drm/i915/gt/intel_ggtt.c       |  4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c  |  3 +--
 drivers/gpu/drm/i915/intel_memory_region.c |  2 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c  |  2 +-
 5 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index de873498d95b..90a967374b1a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -110,9 +110,7 @@ static int adjust_stolen(struct drm_i915_private *i915,
 		else
 			ggtt_start &= PGTBL_ADDRESS_LO_MASK;
 
-		ggtt_res =
-			(struct resource) DEFINE_RES_MEM(ggtt_start,
-							 ggtt_total_entries(ggtt) * 4);
+		ggtt_res = DEFINE_RES_MEM(ggtt_start, ggtt_total_entries(ggtt) * 4);
 
 		if (ggtt_res.start >= stolen[0].start && ggtt_res.start < stolen[0].end)
 			stolen[0].end = ggtt_res.start;
@@ -471,8 +469,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 		goto bail_out;
 	}
 
-	i915->dsm.reserved =
-		(struct resource)DEFINE_RES_MEM(reserved_base, reserved_size);
+	i915->dsm.reserved = DEFINE_RES_MEM(reserved_base, reserved_size);
 
 	if (!resource_contains(&i915->dsm.stolen, &i915->dsm.reserved)) {
 		drm_err(&i915->drm,
@@ -485,8 +482,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
 	return 0;
 
 bail_out:
-	i915->dsm.reserved =
-		(struct resource)DEFINE_RES_MEM(reserved_base, 0);
+	i915->dsm.reserved = DEFINE_RES_MEM(reserved_base, 0);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 0c7fe360f873..fe64c13fd3b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -885,8 +885,8 @@ static void gen6_gmch_remove(struct i915_address_space *vm)
 
 static struct resource pci_resource(struct pci_dev *pdev, int bar)
 {
-	return (struct resource)DEFINE_RES_MEM(pci_resource_start(pdev, bar),
-					       pci_resource_len(pdev, bar));
+	return DEFINE_RES_MEM(pci_resource_start(pdev, bar),
+			      pci_resource_len(pdev, bar));
 }
 
 static int gen8_gmch_probe(struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
index 4e2163a1aa46..4192d06df0f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
@@ -89,8 +89,7 @@ int intel_ggtt_gmch_probe(struct i915_ggtt *ggtt)
 
 	intel_gmch_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
 
-	ggtt->gmadr =
-		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
+	ggtt->gmadr = DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
 	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index b9a164efd6ae..3d1fdea9811d 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -235,7 +235,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 		return ERR_PTR(-ENOMEM);
 
 	mem->i915 = i915;
-	mem->region = (struct resource)DEFINE_RES_MEM(start, size);
+	mem->region = DEFINE_RES_MEM(start, size);
 	mem->io_start = io_start;
 	mem->io_size = io_size;
 	mem->min_page_size = min_page_size;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index 568840e7ca66..ece97e4faacb 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -112,7 +112,7 @@ void mock_init_ggtt(struct intel_gt *gt)
 	ggtt->vm.i915 = gt->i915;
 	ggtt->vm.is_ggtt = true;
 
-	ggtt->gmadr = (struct resource) DEFINE_RES_MEM(0, 2048 * PAGE_SIZE);
+	ggtt->gmadr = DEFINE_RES_MEM(0, 2048 * PAGE_SIZE);
 	ggtt->mappable_end = resource_size(&ggtt->gmadr);
 	ggtt->vm.total = 4096 * PAGE_SIZE;
 
-- 
2.34.1

