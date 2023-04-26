Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B66EEE38
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 08:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003FA10E09B;
	Wed, 26 Apr 2023 06:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A505510E8C1;
 Wed, 26 Apr 2023 06:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682490198; x=1714026198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I8bBOBE2tRibyZSoE0eVxxJLlRgeLjMj4rXll4Vn914=;
 b=fQoKY4GxZ5tgsVm+L5cmGnjg6zhkpgN6ECcbxV5FxZXQDER85DDmWU0C
 GOgKKfquOH1eWmuHWyxn5+UL9rlUCqzwz/5ShgOs+3aVj/wD2WtD5O9TI
 yF6SVUMfiz6toaxsHjcqgQZprFyUH7I0wOF9dzRYM7g5g3BFDGrFQ098t
 u1MYuQtL/fPYN0igyE0q5WEdvw++bZslRO8lN2zsf2JYVrJL0Pq0Hjzsk
 VYSf23J64N4ebmPFesQaBt5SUXy3QvIYqQ3ykA3cGsQ7raHeyds4HFI4P
 X3reIZhyjwxVgYl/h8zlsaBRioVWALk12PhnN1XLDdtBdvdIPN2gPs/zY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="326622694"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="326622694"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 23:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="817990925"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="817990925"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 23:23:16 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 23:24:21 -0700
Message-Id: <20230426062423.320519-4-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230426062423.320519-1-fei.yang@intel.com>
References: <20230426062423.320519-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: make sure correct pte encode
 is used
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

PTE encode is platform dependent. After replacing cache_level with
pat_index, the newly introduced mtl_pte_encode is actually generic
for all gen12 platforms, thus rename it to gen12_pte_encode and
apply it to all gen12 platforms.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index ee52e5833c50..81b7725812ce 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -55,9 +55,9 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
-static u64 mtl_pte_encode(dma_addr_t addr,
-			  unsigned int pat_index,
-			  u32 flags)
+static u64 gen12_pte_encode(dma_addr_t addr,
+			    unsigned int pat_index,
+			    u32 flags)
 {
 	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
 
@@ -994,8 +994,8 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	 */
 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
-		ppgtt->vm.pte_encode = mtl_pte_encode;
+	if (GRAPHICS_VER(gt->i915) >= 12)
+		ppgtt->vm.pte_encode = gen12_pte_encode;
 	else
 		ppgtt->vm.pte_encode = gen8_pte_encode;
 
-- 
2.25.1

