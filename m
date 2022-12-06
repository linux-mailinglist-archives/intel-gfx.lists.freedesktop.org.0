Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13E1643D98
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 08:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A7210E0F7;
	Tue,  6 Dec 2022 07:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0205A10E0F7
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 07:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670311376; x=1701847376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ElBQm7zziDnEiuD0XpkAkUOtn4yzo6JBnKDQULMEbnY=;
 b=YD2msagNBVACwn1khJLlQSTAcGpYjWNI9/OPSBFOvADCWI4ktdnEOjIX
 /nCgyWExgNi87UiIea7DhaHMPt08n2HFTgc2Z0WRbOulKkOPPvMHa7Ebt
 Trt2H/2rqW8b9/OHKlciRqj2HoVYzX1HPR8jSMg1fTAxwEMvB3C2ZZFWu
 clifFaTg7bbUOuia4nl26y6lY9AwsxEF09YVZCZonABR2UqKFIumRGLxY
 qPN289WYUjgbc1RCoZVCDTKmuH6K9czCLB9VrXve37ZC5pooOf/lGmhv6
 oI14d/yxQGog1XhIBRbC1bFlm2J3SIy+5NtTSB03aCh3ltcp7Z2r5Hl7L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296247435"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296247435"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:22:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788379386"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="788379386"
Received: from aravind-dev.iind.intel.com ([10.145.162.80])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:22:54 -0800
From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 13:07:27 +0530
Message-Id: <5abb076e8a8f78bf1e13a08d8300d2f7cc043cac.1670311877.git.aravind.iddamsetty@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Reference pte_encode through vm
 pointer
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

New platforms will use different encode functions.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 10 +++++-----
 drivers/gpu/drm/i915/gt/intel_ggtt.c     |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index ad1a37b515fb..cb8ed9bfb240 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
 	vm->vma_ops.bind_vma    = dpt_bind_vma;
 	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
 
-	vm->pte_encode = gen8_ggtt_pte_encode;
+	vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
 
 	dpt->obj = dpt_obj;
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 4daaa6f55668..31e838eee2ef 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -427,7 +427,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		      u32 flags)
 {
 	struct i915_page_directory *pd;
-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level, flags);
 	gen8_pte_t *vaddr;
 
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
@@ -580,7 +580,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 				   enum i915_cache_level cache_level,
 				   u32 flags)
 {
-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
 	unsigned int rem = sg_dma_len(iter->sg);
 	u64 start = vma_res->start;
 
@@ -743,7 +743,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
 	GEM_BUG_ON(pt->is_compact);
 
 	vaddr = px_vaddr(pt);
-	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
+	vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
 	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
 }
 
@@ -773,7 +773,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
 	}
 
 	vaddr = px_vaddr(pt);
-	vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level, flags);
+	vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level, flags);
 }
 
 static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
@@ -820,7 +820,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 		pte_flags |= PTE_LM;
 
 	vm->scratch[0]->encode =
-		gen8_pte_encode(px_dma(vm->scratch[0]),
+		vm->pte_encode(px_dma(vm->scratch[0]),
 				I915_CACHE_NONE, pte_flags);
 
 	for (i = 1; i <= vm->top; i++) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 7644738b9cdb..82203ad85b0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -273,7 +273,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 	gen8_pte_t __iomem *pte =
 		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
 
-	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
+	gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
 
 	ggtt->invalidate(ggtt);
 }
@@ -283,8 +283,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     enum i915_cache_level level,
 				     u32 flags)
 {
-	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
 	gen8_pte_t __iomem *gte;
 	gen8_pte_t __iomem *end;
 	struct sgt_iter iter;
-- 
2.25.1

