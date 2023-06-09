Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 003707293DC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 10:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D4410E670;
	Fri,  9 Jun 2023 08:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD81E10E667
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 08:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686300884; x=1717836884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1EEFHQk5ovj0HBChXP71ldkVO0mwJvtX6sg4A0qJ34w=;
 b=jWVb8o0v4Y/+8SLjzrTLmet/zOinvLQGL8bZzQ2umZt1E+tQQOPxZNaV
 ErCFO7Ir7WzbnC4W+PtYckvHuBgI/Ug0rAzkbeBO4lEpakWn4ErnfIrfo
 h9J44VKAe6xOaN8KfMI9wO3AXpnCh3XnXjovOfnzI32ke8jKSKJTT+hPj
 S0CN9Qgd1Xyscx5Aos2HpOzkTBkHjmvqfYb9Tit/9guLS3lNFDY5Z8OXU
 4P0XgxXCV0/EKROjv1cZMJK183j3ywjhYcn4XG5GZiPBBNVxgW/DiRUiL
 mZDmIrO9bumdWSAG0dD9jRyATbtCZyvGbFvCpOeAyGvwsUbhI8Z3hR2cC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337912428"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="337912428"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:54:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="780232149"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="780232149"
Received: from cohenyu1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.211.144])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:54:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 11:53:59 +0300
Message-Id: <20230609085359.1259932-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609085359.1259932-1-jouni.hogander@intel.com>
References: <20230609085359.1259932-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Moved fence related code away
 from intel_fbc
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  2 ++
 drivers/gpu/drm/i915/i915_vma.h          |  5 +++++
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 53313232bec7..a9e159b22b4e 100644
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
index f08c2556aa25..f879dad6b913 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -306,4 +306,6 @@ enum intel_gt_scratch_field {
 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
 };
 
+#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences <= 0)
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

