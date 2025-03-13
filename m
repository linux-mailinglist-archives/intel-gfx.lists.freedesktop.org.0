Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E1A5F74D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B656310E8AA;
	Thu, 13 Mar 2025 14:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RP2cGTdk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617E610E8AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874975; x=1773410975;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kke5bDySHtusOqkUmINYVylYrvYplrxQ5HS6kApqv6s=;
 b=RP2cGTdkfc4uo4zML7Gdpg6sgzuQJhS2UFaCqQgWix5CBL/bC2mtYXBm
 vr9kJEl7VfECzr7zI5miOtwU4wWeMX/Srq+nC9ESjJK1A3EH7JoGWxonc
 ouqo2fsBMd9yMnAwcmCUVXV2aGxaLuJYR68oA7eGBTgwy1bDH9rUXLZjJ
 XCkIHMVsk4ikGcskdLstMsinTUybJVbE4Oy42Rn8nLBJDb2iBdj82JEWN
 zgQZri9J6MDsDjeju42PgrrVy5cGyD1rkQBWiJR27BfjuThcfq/o7DPer
 xmvzr1EQjJqFcDHQn5COfhY5qt6AaAXrIcZe5mwkeviwSXZEVm7kf84Gz Q==;
X-CSE-ConnectionGUID: e/zLLdzLSG+ViBvsQZSiBw==
X-CSE-MsgGUID: byF/WYdDTvW9+xnSsxHnKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42855043"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42855043"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:09:10 -0700
X-CSE-ConnectionGUID: vFhIdnVHQ0m2r4d0pboLJA==
X-CSE-MsgGUID: dTWCv9MZR/WdISPD5iiZdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:09:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:09:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/10] drm/i915: Eliminate the initial_plane_phys_{smem,
 lmem}() duplication
Date: Thu, 13 Mar 2025 16:08:38 +0200
Message-ID: <20250313140838.29742-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
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

initial_plane_phys_lmem() and initial_plane_phys_smem() are
now identical. Remove one of them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 75 +------------------
 1 file changed, 2 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 6abe17be0add..b0c4892775ce 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -64,67 +64,8 @@ initial_plane_memory_type(struct drm_i915_private *i915)
 }
 
 static bool
-initial_plane_phys_lmem(struct intel_display *display,
-			struct intel_initial_plane_config *plane_config)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
-	struct intel_memory_region *mem;
-	enum intel_memory_type mem_type;
-	bool is_present, is_local;
-	dma_addr_t dma_addr;
-	u32 base;
-
-	mem_type = initial_plane_memory_type(i915);
-	mem = intel_memory_region_by_type(i915, mem_type);
-	if (!mem) {
-		drm_dbg_kms(display->drm,
-			    "Initial plane memory region (type %s) not initialized\n",
-			    intel_memory_type_str(mem_type));
-		return false;
-	}
-
-	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
-
-	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
-
-	if (!is_present) {
-		drm_err(display->drm,
-			"Initial plane FB PTE not present\n");
-		return false;
-	}
-
-	if (intel_memory_type_is_local(mem->type) != is_local) {
-		drm_err(display->drm,
-			"Initial plane FB PTE unsuitable for %s\n",
-			mem->region.name);
-		return false;
-	}
-
-	/*
-	 * On lmem we don't currently expect this to
-	 * ever be placed in the stolen portion.
-	 */
-	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
-		drm_err(display->drm,
-			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
-			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
-		return false;
-	}
-
-	drm_dbg(display->drm,
-		"Using dma_addr=%pa, based on initial plane programming\n",
-		&dma_addr);
-
-	plane_config->phys_base = dma_addr - mem->region.start;
-	plane_config->mem = mem;
-
-	return true;
-}
-
-static bool
-initial_plane_phys_smem(struct intel_display *display,
-			struct intel_initial_plane_config *plane_config)
+initial_plane_phys(struct intel_display *display,
+		   struct intel_initial_plane_config *plane_config)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
@@ -177,18 +118,6 @@ initial_plane_phys_smem(struct intel_display *display,
 	return true;
 }
 
-static bool
-initial_plane_phys(struct intel_display *display,
-		   struct intel_initial_plane_config *plane_config)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
-		return initial_plane_phys_lmem(display, plane_config);
-	else
-		return initial_plane_phys_smem(display, plane_config);
-}
-
 static struct i915_vma *
 initial_plane_vma(struct intel_display *display,
 		  struct intel_initial_plane_config *plane_config)
-- 
2.45.3

