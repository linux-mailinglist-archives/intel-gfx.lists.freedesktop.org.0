Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7603C528932
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 17:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B1710EFCF;
	Mon, 16 May 2022 15:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C2710EC4F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 15:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652716311; x=1684252311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KRyZgSayMKVnFAtDXqJzdWegrJIOo7BNL5lRu8dZJ8Q=;
 b=g9c11L3CjapV+3dBy9OkiJXrKB6wClCBsnIvtqnsc4xSy4hwrl3447JR
 osBvAD1TFQUnnXS2GHe+MhJUwhDPxdb1unWQ2foUSXJVfBcDZxmvHGGF1
 lfhctJO6agngOf9mDF+y8ZrZkgAQa+Ya2N4HpFbxdHXIgX7CHRwdv1/xe
 SsohhCEt8iTZqvUXpNLU/0pMfgEMjjH0E/86fPGGCe4pWK0l5NreXApFn
 Z6GDw5164fndJoIW/Yzy7ay1Zq5nVmDrkS4Dh2Nv29dNdHu3aakzZiEJy
 yfnQxqbBT0hgQNyfhkLMm18iBh693pv/a1XTSsimkNdzxf9mo5DkDqWQA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10349"; a="251390494"
X-IronPort-AV: E=Sophos;i="5.91,230,1647327600"; d="scan'208";a="251390494"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 08:51:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,230,1647327600"; d="scan'208";a="596576570"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 08:51:16 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 May 2022 17:51:08 +0200
Message-Id: <20220516155108.2103-1-nirmoy.das@intel.com>
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

_i915_vma_move_to_active() can receive > 1 fence for
multiple batch buffer submission so make sure to
individualize fences before adding to dma_resv obj

v2: make sure to reserve fence slots before adding.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 44 +++++++++++++++++++++------------
 1 file changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4f6db539571a..b622e51bf132 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/sched/mm.h>
+#include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
 #include "display/intel_frontbuffer.h"
@@ -1833,28 +1834,39 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 			intel_frontbuffer_put(front);
 		}
 
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
-		}
-
 		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_WRITE);
+			int idx;
+			struct dma_fence *curr;
+
+			dma_fence_array_for_each(curr, idx, fence) {
+				if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
+					err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
+					if (unlikely(err))
+						return err;
+				}
+
+				dma_resv_add_fence(vma->obj->base.resv, curr,
+						   DMA_RESV_USAGE_WRITE);
+			}
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
 			obj->read_domains = 0;
 		}
 	} else {
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
-		}
-
 		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_READ);
+			int idx;
+			struct dma_fence *curr;
+
+			dma_fence_array_for_each(curr, idx, fence) {
+				if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
+					err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
+					if (unlikely(err))
+						return err;
+				}
+
+
+				dma_resv_add_fence(vma->obj->base.resv, curr,
+						DMA_RESV_USAGE_READ);
+			}
 			obj->write_domain = 0;
 		}
 	}
-- 
2.35.1

