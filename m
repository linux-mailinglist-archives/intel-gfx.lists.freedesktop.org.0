Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1972F417
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 07:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E99510E0DC;
	Wed, 14 Jun 2023 05:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A2210E0DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 05:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686719900; x=1718255900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p7Dp0oQlQSwi3hTosfIwUyyfWvOiGdyyaNv2lY0gPQs=;
 b=lJqNytc+0lW4G07CEtc8VUG5l9hhHRU9bDFjQx82w+UFIiwxoB9q//P3
 JpDp3ifOmocSFj/EZ03KM7J1+rCrTgtiZZupwl74V1XE0jj6yRW/RGoRl
 UBJAdWivbX0wYWnU8u2C+xIRKfoKgUYh7ycUN3nbpxf4DvcsGQfsa6Gtz
 TEYBYRyaTYyKAVsj0iiyONN2PtTOcIjSelc47G70pXc3ONshhKUgPc/TN
 6vOeT6I5G81eKuqEhOLZt2yl9zqfHkQWUzGhin7+5g4/zh2Nyo5QEmG++
 kjIojcYbmmQipqPMRGbDNQoOzjQWBYCLCGBGoaUl6bZIBMgBrWwYlk2oO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348184437"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="348184437"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715059462"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="715059462"
Received: from lcoutoda-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 08:17:31 +0300
Message-Id: <20230614051731.745821-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
References: <20230614051731.745821-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/fbc: Moved fence related code
 away from intel_fbc
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

As a preparation for Xe move HW fence details away from intel_fbc code.
Add new functions to check support for legacy fencing and fence id and use
these in fbc code. Xe doesn't support legacy fencing.

v2: Fix intel_gt_support_legacy_fencing macro

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  2 ++
 drivers/gpu/drm/i915/i915_vma.h          |  5 +++++
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index da8166eedf93..25382022cd27 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -47,6 +47,7 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
+#include "i915_vma.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_trace.h"
@@ -607,7 +608,7 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	else if (DISPLAY_VER(i915) == 9)
 		skl_fbc_program_cfb_stride(fbc);
 
-	if (to_gt(i915)->ggtt->num_fences)
+	if (intel_gt_support_legacy_fencing(to_gt(i915)))
 		snb_fbc_program_fence(fbc);
 
 	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
@@ -991,11 +992,10 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
 
 	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
-		    !plane_state->ggtt_vma->fence);
+		    !intel_gt_support_legacy_fencing(to_gt(i915)));
 
-	if (plane_state->flags & PLANE_HAS_FENCE &&
-	    plane_state->ggtt_vma->fence)
-		fbc_state->fence_id = plane_state->ggtt_vma->fence->id;
+	if (plane_state->flags & PLANE_HAS_FENCE)
+		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
 	else
 		fbc_state->fence_id = -1;
 
@@ -1022,7 +1022,7 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 	 */
 	return DISPLAY_VER(i915) >= 9 ||
 		(plane_state->flags & PLANE_HAS_FENCE &&
-		 plane_state->ggtt_vma->fence);
+		 i915_vma_fence_id(plane_state->ggtt_vma) != -1);
 }
 
 static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f08c2556aa25..121a53f908d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -306,4 +306,6 @@ enum intel_gt_scratch_field {
 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
 };
 
+#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences > 0)
+
 #endif /* __INTEL_GT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 9a9729205d5b..6fdf6205c290 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -418,6 +418,11 @@ i915_vma_unpin_fence(struct i915_vma *vma)
 		__i915_vma_unpin_fence(vma);
 }
 
+static inline int i915_vma_fence_id(const struct i915_vma *vma)
+{
+	return vma->fence ? vma->fence->id : -1;
+}
+
 void i915_vma_parked(struct intel_gt *gt);
 
 static inline bool i915_vma_is_scanout(const struct i915_vma *vma)
-- 
2.34.1

