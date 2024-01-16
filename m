Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8682EA6D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201C210E431;
	Tue, 16 Jan 2024 07:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6595B10E432
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391835; x=1736927835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YlgVf/tYIY7A77Xyj23W5ag77l8F5dLHrhZKgDBj6ZI=;
 b=P8fiyWz5QQdZFB3dAloPP4PRvO5400AiSj3Aa2WZ1Tq4js/yjaaXdGHA
 +FBdvL16iyigM05BwlwYh7pr3lsG+oBypZBB5/lxFgnI7osqu5oviuht7
 1AIhMJkRlyarFAov5w8NCnMTCMNDUgwsv48DhmY6uiYeloG+2E9jH/rSE
 MhBQR6ZMjWtZ+SM36ujpjn8V7mvlcNqhnSJvThP+pV93IxcKxvVTLCL09
 ezFZg69sKUDh5REUUpcqXm9VRrhL8msU9x6HQWowUEodmfSz06p8X3nas
 XNKGJ+Zohdk58zcMNsvpNq4awFKE5Fljc8M8/x9K8oqJXHQ3RQ94oNHmK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948646"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947015"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947015"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 10/16] drm/i915: s/phys_base/dma_addr/
Date: Tue, 16 Jan 2024 09:56:30 +0200
Message-ID: <20240116075636.6121-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The address we read from the PTE is a dma address, not a physical
address. Rename the variable to say so.

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
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
2.41.0

