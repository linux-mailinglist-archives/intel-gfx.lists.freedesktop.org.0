Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E9526110
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 13:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B75F10EAA1;
	Fri, 13 May 2022 11:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D0610EAA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 11:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652441882; x=1683977882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/JXx/TLOuJRswOF65yE25HSZuEitHL/1O9heXrKUFX0=;
 b=XR5KQDrA8SCBGgrPr99ynjBT/B4q1Oy6Wg2Yt2LmA4Q5NvykyI1gNFSN
 baS4FS+yVO5cqlw5USWu5HPdfQ4B+jlGtpCUT42H80r0Slmf23DQGhguf
 G4Or0IwRrEmx6lTK6GCJ919cVnesGLJC5xdxZO0rSFiaGlbbYK+fJbHPi
 eD0mZo2ZJSUvNtMUUKPQLVmprCcKYRGXiD/R2KxcGlx3d3/DN8yeBtydy
 CBPwPsk11vtbkOeTtxQFUMa2c/u7dKVm0LLwf7n6UKm5C39jDLx5MQ4/D
 MHDJuYbsDdSvXwLFSeWpQTFzFBd9YVy62VC2+Rb6ilQAZI7ZYI2FivNoF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="269118832"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="269118832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:38:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595180825"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:38:00 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 13:37:52 +0200
Message-Id: <20220513113752.21265-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: individualize fences before adding
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

_i915_vma_move_to_active() can receive > 1 fence for
multiple batch buffer submission so make sure to
individualize fences before adding to dma_resv obj

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4f6db539571a..f987fc1264c0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/sched/mm.h>
+#include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
 #include "display/intel_frontbuffer.h"
@@ -1840,8 +1841,12 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		}
 
 		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_WRITE);
+			int idx;
+			struct dma_fence *curr;
+
+			dma_fence_array_for_each(curr, idx, fence)
+				dma_resv_add_fence(vma->obj->base.resv, curr,
+						   DMA_RESV_USAGE_WRITE);
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
 			obj->read_domains = 0;
 		}
@@ -1853,8 +1858,12 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		}
 
 		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_READ);
+			int idx;
+			struct dma_fence *curr;
+
+			dma_fence_array_for_each(curr, idx, fence)
+				dma_resv_add_fence(vma->obj->base.resv, curr,
+						   DMA_RESV_USAGE_READ);
 			obj->write_domain = 0;
 		}
 	}
-- 
2.35.1

