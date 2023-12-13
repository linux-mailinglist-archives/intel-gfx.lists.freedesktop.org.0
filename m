Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0467D8106D7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810F610E6E5;
	Wed, 13 Dec 2023 00:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E0710E6E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428189; x=1733964189;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N3hCTWzev7Ka75lCBEDe5PvojQVzlVl294FY7B7EDiw=;
 b=azO8PWPwgewQ2hm/x1GzrGFf+r78GHjDmA1+MES9XRUaOEywhdpQGNOT
 qXm9jaSLypOwgvCzadH3o1Zz7LlWHuIam08/9aDQOjA7sZYDkIU1doz76
 xhAswEnmWK5uQS2+tdbyk62xDuL+9MMPzg9IQQecDYDj2s0LjD6H7w8Aq
 DEnNS3wTf4CaqXu9vIEmS72eZuZE4NO6vilAMJodE0LaY8PtbfSWBZP85
 mu++7LZSd0PXoPBom+8bvDaZhKleCAyLhRqfMu0rBzVkp0M4fkXxt7qhn
 dFNa2DCXw461xZGtwKG9JpRLvKu+LOgKZUaHmIJ994EPQ/ZzZIPLvYfd1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309698"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309698"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011876"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011876"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:43:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:43:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915: Fix MTL initial plane readout
Date: Wed, 13 Dec 2023 02:42:34 +0200
Message-ID: <20231213004237.20375-10-ville.syrjala@linux.intel.com>
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

MTL stolen memory looks more like local memory, so use the
(now fixed) lmem path when doing the initial plane readout.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 25 +++++++++++++------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index db594ccf0323..c72d4cacf631 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -59,7 +59,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 		return NULL;
 
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
-	if (IS_DGFX(i915)) {
+	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
 		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
 		gen8_pte_t pte;
 
@@ -73,11 +73,20 @@ initial_plane_vma(struct drm_i915_private *i915,
 		}
 
 		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
-		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
+
+		if (IS_DGFX(i915))
+			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
+		else
+			mem = i915->mm.stolen_region;
+		if (!mem) {
+			drm_dbg_kms(&i915->drm,
+				    "Initial plane memory region not initialized\n");
+			return NULL;
+		}
 
 		/*
-		 * We don't currently expect this to ever be placed in the
-		 * stolen portion.
+		 * On lmem we don't currently expect this to
+		 * ever be placed in the stolen portion.
 		 */
 		if (phys_base < mem->region.start || phys_base > mem->region.end) {
 			drm_err(&i915->drm,
@@ -94,11 +103,13 @@ initial_plane_vma(struct drm_i915_private *i915,
 	} else {
 		phys_base = base;
 		mem = i915->mm.stolen_region;
+		if (!mem) {
+			drm_dbg_kms(&i915->drm,
+				    "Initial plane memory region not initialized\n");
+			return NULL;
+		}
 	}
 
-	if (!mem)
-		return NULL;
-
 	size = round_up(plane_config->base + plane_config->size,
 			mem->min_page_size);
 	size -= base;
-- 
2.41.0

