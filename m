Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6074DA225
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A5010E46B;
	Tue, 15 Mar 2022 18:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E85D10E46B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368111; x=1678904111;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LvUQDWVhuzjpUghftwlFmFrD7xLemOJHtZGalvS6JQ0=;
 b=LoXK7mQVzzttMDgiT+Gzj/uDbrkXSsUzQNKG6ozFPUCGN6fXimGWvSKR
 o17qzNSt+zssjctwBxVaCDCAfYYO8guX1vAz0M3nKjtnvw890ljnaqTiS
 /Ea6t7u2NCuWHwSxG1RAqREvZgLMNLn3oekjM/7/ruqpl0H4jh5UGcAGg
 0vxf5ujssrLFTYfk6qeHI1JBh7WzOxfJ/kMGegcrk8WFr/GcSsBgSYA2j
 TSMKznjAsa49uFwkRygUGmkgnLHAgj4VqtUYEHu64EiT8HGkRQjvfcNTS
 WLsWmUC4sNN90dRQeNdH1DbwPNQxStQN1ART9DlYxki1ReqOQmivq30GM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221164"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221164"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133201"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:25 +0000
Message-Id: <20220315181425.576828-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315181425.576828-1-matthew.auld@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 7/7] drm/i915: fixup the initial fb base on DGFX
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

On integrated it looks like the GGTT base should always 1:1 maps to
somewhere within DSM. On discrete the base seems to be pre-programmed with
a normal lmem address, and is not 1:1 mapped with the base address. On
such devices probe the lmem address directly from the PTE.

v2(Ville):
  - The base is actually the pre-programmed GGTT address, which is then
    meant to 1:1 map to somewhere inside dsm. In the case of dgpu the
    base looks to just be some offset within lmem, but this also happens
    to be the exact dsm start, on dg1. Therefore we should only need to
    fudge the physical address, before allocating from stolen.
  - Bail if it's not located in dsm.
v3:
  - Scratch that. There doesn't seem to be any relationship with the
    base and PTE address, on at least DG1. Let's instead just grab the
    lmem address from the PTE itself.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 50 ++++++++++++++++---
 1 file changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index f797fcef18fc..7979929bb632 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -47,17 +47,55 @@ static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
 {
-	struct intel_memory_region *mem = i915->mm.stolen_region;
+	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	resource_size_t phys_base;
 	u32 base, size;
 	u64 pinctl;
 
-	if (!mem || plane_config->size == 0)
+	if (plane_config->size == 0)
+		return NULL;
+
+	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
+	if (IS_DGFX(i915)) {
+		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
+		gen8_pte_t pte;
+
+		gte += base / I915_GTT_PAGE_SIZE;
+
+		pte = ioread64(gte);
+		if (!(pte & GEN12_GGTT_PTE_LM)) {
+			drm_err(&i915->drm,
+				"Initial plane programming missing PTE_LM bit\n");
+			return NULL;
+		}
+
+		phys_base = pte & I915_GTT_PAGE_MASK;
+		mem = i915->mm.regions[INTEL_REGION_LMEM];
+
+		/*
+		 * We don't currently expect this to ever be placed in the
+		 * stolen portion.
+		 */
+		if (phys_base >= resource_size(&mem->region)) {
+			drm_err(&i915->drm,
+				"Initial plane programming using invalid range, phys_base=%pa\n",
+				&phys_base);
+			return NULL;
+		}
+
+		drm_dbg(&i915->drm,
+			"Using phys_base=%pa, based on initial plane programming\n",
+			&phys_base);
+	} else {
+		phys_base = base;
+		mem = i915->mm.stolen_region;
+	}
+
+	if (!mem)
 		return NULL;
 
-	base = round_down(plane_config->base,
-			  I915_GTT_MIN_ALIGNMENT);
 	size = round_up(plane_config->base + plane_config->size,
 			mem->min_page_size);
 	size -= base;
@@ -68,11 +106,11 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 * features.
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
+	    mem == i915->mm.stolen_region &&
 	    size * 2 > i915->stolen_usable_size)
 		return NULL;
 
-	obj = i915_gem_object_create_region_at(i915->mm.stolen_region,
-					       base, size, 0);
+	obj = i915_gem_object_create_region_at(mem, phys_base, size, 0);
 	if (IS_ERR(obj))
 		return NULL;
 
-- 
2.34.1

