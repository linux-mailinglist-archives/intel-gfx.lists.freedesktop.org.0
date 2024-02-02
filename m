Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9226847C75
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3D810F0DE;
	Fri,  2 Feb 2024 22:44:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCpawOzN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5F310F0DE
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913859; x=1738449859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jIspaQlIti++q760cghO4jqVJVo6DiBMQ7Fp3PPvWdQ=;
 b=dCpawOzN5XwZJt7a9GwxJWEGL0XUXF1O5WgEmmP3CuniO/CMtKEIjb6f
 5HIheZk04EHWfMVroITlGWuTRdlkuBlk6cOgDNs57mA+aICnkICpmrpKK
 p71eU8JyJSnTdtBFP05SrxBI+sSrxuy09h/ISd43w1Mu/0hAXqj/ANpRX
 jXjGUqI9n1O/z2Us52SWWmTFvif3XWFh+9xViqMaW9XVPLjOB1luUz+Yx
 C6OTy8gA5paK5xpsEl1EZsdzeOQJRV7pq48sXv2QHZDXtPy6GSdLKE2A4
 JeMPIBdPKDk4U3bdzz14IZlNI/6FHEaphD01+QoPchuZ7bDj3rf1vhHWa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153768"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153768"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332046"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Uma Shankar <uma.shankar@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 09/16] drm/i915: Fix MTL initial plane readout
Date: Sat,  3 Feb 2024 00:43:33 +0200
Message-ID: <20240202224340.30647-10-ville.syrjala@linux.intel.com>
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

MTL stolen memory looks more like local memory, so use the
(now fixed) lmem path when doing the initial plane readout.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
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
2.43.0

