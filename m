Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6137D4B0220
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 02:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF25010E6B9;
	Thu, 10 Feb 2022 01:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E66D10E3C4;
 Thu, 10 Feb 2022 01:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644456384; x=1675992384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dgLlbbEhY5qijXM7qOREhUoDQwP/TPT9aXOmmK5zR9k=;
 b=BjWhzN/eSNmvtGGjIUKWqiPju7whtn8brebjCR/uNkJ95WjDsFPU72mN
 9PNDjJthMPFWEeAOW0/F9lQtDo/dvjOIKcL12FtGaFV++1hOfMEMVFTS7
 6qp5AFe9KlR0/uHAnhA9/yW5wSqM3jODBj5hDZm3yNmzLSLoLubqH+Gli
 BL7/z8Mu+4eT+81u8gZCqXXTQny7BpX9oKagx7btDKtRarER/WYBCF3LO
 zk25o5JQw888Pj1xz/1nWUjfiSIYTppWGtSNQpDE2zLw0ASfyA/iVZt5H
 90W9p9RpgbBIeLq3mI8m8l+xx17zW3PJhG0oEbdZgLDHOD0Kebg3/zwe3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249591587"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="249591587"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 17:26:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="773706194"
Received: from sroy1-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.85.186])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 17:26:23 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 17:26:17 -0800
Message-Id: <20220210012617.1061641-7-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220210012617.1061641-1-michael.cheng@intel.com>
References: <20220210012617.1061641-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 6/6] drm/i915/gt: replace cache_clflush_range
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace all occurance of cache_clflush_range with
drm_clflush_virt_range. This will prevent compile errors on non-x86
platforms.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c                 | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c                  |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c                |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c43e724afa9f..d0999e92621b 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -444,11 +444,11 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 				pd = pdp->entry[gen8_pd_index(idx, 2)];
 			}
 
-			clflush_cache_range(vaddr, PAGE_SIZE);
+			drm_clflush_virt_range(vaddr, PAGE_SIZE);
 			vaddr = px_vaddr(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 		}
 	} while (1);
-	clflush_cache_range(vaddr, PAGE_SIZE);
+	drm_clflush_virt_range(vaddr, PAGE_SIZE);
 
 	return idx;
 }
@@ -532,7 +532,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 			}
 		} while (rem >= page_size && index < I915_PDES);
 
-		clflush_cache_range(vaddr, PAGE_SIZE);
+		drm_clflush_virt_range(vaddr, PAGE_SIZE);
 
 		/*
 		 * Is it safe to mark the 2M block as 64K? -- Either we have
@@ -548,7 +548,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 					      I915_GTT_PAGE_SIZE_2M)))) {
 			vaddr = px_vaddr(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
-			clflush_cache_range(vaddr, PAGE_SIZE);
+			drm_clflush_virt_range(vaddr, PAGE_SIZE);
 			page_size = I915_GTT_PAGE_SIZE_64K;
 
 			/*
@@ -569,7 +569,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 				for (i = 1; i < index; i += 16)
 					memset64(vaddr + i, encode, 15);
 
-				clflush_cache_range(vaddr, PAGE_SIZE);
+				drm_clflush_virt_range(vaddr, PAGE_SIZE);
 			}
 		}
 
@@ -617,7 +617,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
 
 	vaddr = px_vaddr(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
-	clflush_cache_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
+	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
 }
 
 static int gen8_init_scratch(struct i915_address_space *vm)
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index cc561cfae808..bbe33794b34d 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2822,7 +2822,7 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
 	sanitize_hwsp(engine);
 
 	/* And scrub the dirty cachelines for the HWSP */
-	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+	drm_clflush_virt_range(engine->status_page.addr, PAGE_SIZE);
 
 	intel_engine_reset_pinned_contexts(engine);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 0d6bbc8c57f2..9b594be9102f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -255,7 +255,7 @@ fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count)
 	void *vaddr = __px_vaddr(p);
 
 	memset64(vaddr, val, count);
-	clflush_cache_range(vaddr, PAGE_SIZE);
+	drm_clflush_virt_range(vaddr, PAGE_SIZE);
 }
 
 static void poison_scratch_page(struct drm_i915_gem_object *scratch)
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 48e6e2f87700..bd474a5123cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -90,7 +90,7 @@ write_dma_entry(struct drm_i915_gem_object * const pdma,
 	u64 * const vaddr = __px_vaddr(pdma);
 
 	vaddr[idx] = encoded_entry;
-	clflush_cache_range(&vaddr[idx], sizeof(u64));
+	drm_clflush_virt_range(&vaddr[idx], sizeof(u64));
 }
 
 void
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index b3a429a92c0d..89020706adc4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3573,7 +3573,7 @@ static void guc_sanitize(struct intel_engine_cs *engine)
 	sanitize_hwsp(engine);
 
 	/* And scrub the dirty cachelines for the HWSP */
-	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+	drm_clflush_virt_range(engine->status_page.addr, PAGE_SIZE);
 
 	intel_engine_reset_pinned_contexts(engine);
 }
-- 
2.25.1

