Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5585782EA76
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF07A10E42F;
	Tue, 16 Jan 2024 07:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D089810E42E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391831; x=1736927831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kd/y1h3SGs6TqvLR9VNEunw8o4Tj5GDnAjowYphJPhM=;
 b=hPE2mKnjxoKvLZhbjeU7ymWYF3w6UTuXuO6mB0W1C2ZxhodiwjWmFtv4
 w1DFTnGj36I60YFTxoyaKiPjAu8buOm065GuJrptOPOU6Dpk7An/U3lX2
 DNAT1SKr3w/4xE993xn+0BOayrAf5GpVBbWF7oD/GCwrNwYhKJx1ZKknv
 6Ko1pNlZDhdARviShqpDFpqEs5+tX9eMTxPiPW6gHTVGReVj1pgeUyyA0
 Lc1uuzNrTiL+MCPOTPSdonHQoDV7xKIE6tW1IQH8n8JkL+z+e/5w8Gtd2
 h1gdFpoZfp+u+/P7H7Hkz7XAzF9le05G8PvhK7wJtEVrNfbjl/6NOFlJM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948627"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947004"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947004"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 09/16] drm/i915: Fix MTL initial plane readout
Date: Tue, 16 Jan 2024 09:56:29 +0200
Message-ID: <20240116075636.6121-10-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

MTL stolen memory looks more like local memory, so use the
(now fixed) lmem path when doing the initial plane readout.

Cc: Paz Zcharya <pazz@chromium.org>
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

