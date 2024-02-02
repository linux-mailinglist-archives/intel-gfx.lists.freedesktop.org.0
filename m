Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 212E4847C76
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9842510F116;
	Fri,  2 Feb 2024 22:44:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lna6a7j8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D273C10F116
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913863; x=1738449863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhf0HBYM3U4O1b92wLfUrNwgneLedbF22sCN3wrca+U=;
 b=lna6a7j8JUGeGG5eF2ppD1pFVbE8gbyxmSA2ZvfEPP8Kuu5/qA6nDy3/
 z/CanVuW8q/qAbiXc16L5dErGird14Wsb3frG0sdax0+5vQZ+fkEbL3Lm
 3HTDYx2jQ1LeDuqYivLKSyeon6DJyaaWXI+CQjsoXvrnLgxEpeRzUKSN0
 IVSTYnUoeApXtQfKZNJjmhw0zlAOYcyIPzTHo708NVAkEcBOtbOcFwvGc
 Tlw2qbw+HT8qsvLtStL1GMLIMg2t7YsNK9WDj/vIExBsfEFcyfzsV3xPa
 Q1HpbGGvznMxQsMa/UkH4bt9npwjKNEFYoD+FgwIBaouhGuQUU+0badN9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153772"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153772"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332050"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 10/16] drm/i915: s/phys_base/dma_addr/
Date: Sat,  3 Feb 2024 00:43:34 +0200
Message-ID: <20240202224340.30647-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

The address we read from the PTE is a dma address, not a physical
address. Rename the variable to say so.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_plane_initial.c    | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index c72d4cacf631..48b74319f45c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -61,6 +61,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
 		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
+		dma_addr_t dma_addr;
 		gen8_pte_t pte;
 
 		gte += base / I915_GTT_PAGE_SIZE;
@@ -72,7 +73,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 			return NULL;
 		}
 
-		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
+		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
 
 		if (IS_DGFX(i915))
 			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
@@ -88,18 +89,18 @@ initial_plane_vma(struct drm_i915_private *i915,
 		 * On lmem we don't currently expect this to
 		 * ever be placed in the stolen portion.
 		 */
-		if (phys_base < mem->region.start || phys_base > mem->region.end) {
+		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
 			drm_err(&i915->drm,
-				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
-				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
+				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
+				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
 			return NULL;
 		}
 
 		drm_dbg(&i915->drm,
-			"Using phys_base=%pa, based on initial plane programming\n",
-			&phys_base);
+			"Using dma_addr=%pa, based on initial plane programming\n",
+			&dma_addr);
 
-		phys_base -= mem->region.start;
+		phys_base = dma_addr - mem->region.start;
 	} else {
 		phys_base = base;
 		mem = i915->mm.stolen_region;
-- 
2.43.0

