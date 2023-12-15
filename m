Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E31E814617
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5C110E9DF;
	Fri, 15 Dec 2023 11:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2805410E9DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638005; x=1734174005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kd/y1h3SGs6TqvLR9VNEunw8o4Tj5GDnAjowYphJPhM=;
 b=W6MA1v+itcImdO5+RrmTO6zA6GEqRYg4fXH2eOVX5+RF2LNKIIX6TOiG
 8fiPzYWxqeFHsIMlN/tkihCotD3mFw5/qSfqN0seJhbPcmxMwapiS80Ih
 yUVNhXhHcdJcagJ1vs1x+NqcW286MuwYM8LCQ+HmoeB6hzPzR9t0PcC/M
 VkXuhKb5MQfy6SIq2t5clLEYxsnlIuRenQUCD4xegrfbGpkAfLfNXj3oN
 HaHz9boiuT8Z9Uo90CNE6svkl2iSgd5gZlfTH/QnQmWm3JriGRL3ypkps
 gCUbb9P/AiBabWI/ooSEjECw+IV+dfdq87HaldDfIZcHQ9ozvLVw69Syg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136819"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136819"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:00:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935240"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935240"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:00:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:00:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 09/15] drm/i915: Fix MTL initial plane readout
Date: Fri, 15 Dec 2023 12:59:23 +0200
Message-ID: <20231215105929.29568-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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

