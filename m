Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D13DA5F749
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181AF10E8A4;
	Thu, 13 Mar 2025 14:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QIcCY+Ur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C40F10E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874967; x=1773410967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Xwg2ZojYQvQxC1hifMeOKbaM+l76JC4OXc+u8ZKvGK0=;
 b=QIcCY+UrAXfSKnjDHHCkbIAQEZYi4mTjh04/uJMnXlt0CXaxE3KNgZJx
 POL2Y42Pe/0XdOimJB1bxW/Ap5sQirWttEXIYPZrmvot6XTNTbaJggBGA
 Uq6k8hxoiTBsHKjkcawMDjKYeeHygXb00FlIMmxOlkehbhmnrUsfR1n3v
 LCqWF8m8bpdxMPjVfX9XPOt94gWRY4NePsbtzzreyknWNNv2fUWBgvfNO
 Tk+Uf6MZ3cyBxJ5zPqPzmaUTVp09uDBLrnUe3jQTvlxLmgK6i8MKE6/eg
 ElSniiFxLOcs1r+Oyopl54gYZuNl4h7LbCxbizg4xDju6EFu/yVmH7+6Z Q==;
X-CSE-ConnectionGUID: e/QSPYTARGeDdiVg/o+dNw==
X-CSE-MsgGUID: yHgACgN2QUafcjGvQnP/4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854952"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854952"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:55 -0700
X-CSE-ConnectionGUID: PswfctHxSAimlyN8Gauj/g==
X-CSE-MsgGUID: DR2AvDf2TgGqqHhPyu8klg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138434"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/10] drm/i915: Use intel_ggtt_read_entry() in the BIOS FB
 takeover
Date: Thu, 13 Mar 2025 16:08:33 +0200
Message-ID: <20250313140838.29742-6-ville.syrjala@linux.intel.com>
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

Use intel_ggtt_read_entry() instead of open coding the PTE
read/decode in the BIOS FB takeover code. So far this codepath
only covers platforms with LMEMBAR.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_plane_initial.c  | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index b1675b46e06c..2989a5d76c1c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -57,24 +57,27 @@ initial_plane_phys_lmem(struct intel_display *display,
 			struct intel_initial_plane_config *plane_config)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
+	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
+	bool is_present, is_local;
 	dma_addr_t dma_addr;
-	gen8_pte_t pte;
 	u32 base;
 
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 
-	gte += base / I915_GTT_PAGE_SIZE;
+	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
 
-	pte = ioread64(gte);
-	if (!(pte & GEN12_GGTT_PTE_LM)) {
+	if (!is_present) {
 		drm_err(display->drm,
-			"Initial plane programming missing PTE_LM bit\n");
+			"Initial plane FB PTE not present\n");
 		return false;
 	}
 
-	dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
+	if (!is_local) {
+		drm_err(display->drm,
+			"Initial plane FB PTE not LMEM\n");
+		return false;
+	}
 
 	if (IS_DGFX(i915))
 		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
-- 
2.45.3

