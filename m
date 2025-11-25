Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C5BC84759
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 11:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764A710E39F;
	Tue, 25 Nov 2025 10:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNGW883Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C641210E39F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 10:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764066304; x=1795602304;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hVJH/E1Znw0OzyrmXgrxHMcwOvKcZJom4AWaUw9Sc5M=;
 b=kNGW883Yii4bAadLCoWcAyZi/e5rQrsimZnZJpVMEvdFInCIkakbUl/2
 2Nt5xPvJBjT8hR/cnbDJuNdWqLMyoR+zmkO+rn+o1luKm24MYZkzwIGtl
 MFIH2F2z35a7f0rXu8Uz3PTtAFF5q6WpOwvr505eJBh8rbs6fMmyBdqCK
 qeW7gsFEvQZcEeoFs5OGPWTd76H1cRKlFFTGY3Fo+c0pwqEPwo9ykcqhW
 EA1bvDX+5qKwYMOYDLK+2eBcVRwUtIOOZIRvqelS1WnG4pkiX5WVnLvf4
 Lu70qRmTsw3yGzMPb6+1RNyTI7D8V16a67SCpmxYkIdD4/wezIejfQtp9 Q==;
X-CSE-ConnectionGUID: owhM+4saRAGYNbyfusLlgw==
X-CSE-MsgGUID: 7a1fN3XCRrmNvDNsoiyzoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="83691945"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="83691945"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:25:04 -0800
X-CSE-ConnectionGUID: VIxlFfqrSlOhHGI1gVZ84A==
X-CSE-MsgGUID: emQCW3PTRfSp9flTFm4SIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="223572697"
Received: from naresh-nuc8i7beh.iind.intel.com (HELO
 nkumarg-desk.iind.intel.com) ([10.190.216.171])
 by fmviesa001.fm.intel.com with ESMTP; 25 Nov 2025 02:25:03 -0800
From: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: naresh.kumar.g@intel.com
Subject: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Date: Tue, 25 Nov 2025 15:48:42 +0530
Message-ID: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

The variable "fence" should be initialized to NULL,
and any usage of fence should be guarded
by a check to ensure it is not NULL

Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
---
 drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
index afb06598b6e1..401f1835939b 100644
--- a/drivers/gpu/drm/xe/xe_pagefault.c
+++ b/drivers/gpu/drm/xe/xe_pagefault.c
@@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
 	struct xe_tile *tile = gt_to_tile(gt);
 	struct xe_validation_ctx ctx;
 	struct drm_exec exec;
-	struct dma_fence *fence;
+	struct dma_fence *fence = NULL;
 	int err, needs_vram;
 
 	lockdep_assert_held_write(&vm->lock);
@@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
 		}
 	}
 
-	dma_fence_wait(fence, false);
-	dma_fence_put(fence);
+	if (fence) {
+		dma_fence_wait(fence, false);
+		dma_fence_put(fence);
+	}
 
 unlock_dma_resv:
 	xe_validation_ctx_fini(&ctx);
-- 
2.43.0

