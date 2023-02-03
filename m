Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50368996A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 14:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D53010E78D;
	Fri,  3 Feb 2023 13:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A32E10E78D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 13:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675429422; x=1706965422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BjqR9Qynm+E2UGC4JT8avaidtLc2t0mM5BY0J9jZ/bY=;
 b=eKV2TJ/rOT1A73FjzKrJU1kPC9+PeuVMIECova1mStTQMZYeWBcgoXLJ
 QRulkSzh53OPDSHNpPANq2FaOsb/8/knitt22TKBjpZ4hX+nVomv1tmZu
 IbZWPCjPCOXto98Ectj2Hu7T9Zy+LxEtmGJCrLa2ubco6FH0u0U+DujDi
 pPTyc+XKdTmi+84VHgXRmXeVzz0xQ8xmPPuLFf7AZjwr5QPRRmdZSGK5D
 ZdPwtfGjQkE/sUWDvswmIdMf2StmCtPBG5vKsS0UMlCXDnTybl+H2m6iZ
 CWmCfXOWzWLfbrFCSQvoTpJqu/YqVd2S+5c80aWbCLkrQSDanefKXqWrI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="309076374"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="309076374"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 05:03:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="808355679"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="808355679"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 05:03:39 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 14:03:28 +0100
Message-Id: <20230203130328.3303274-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: add guard page to
 ggtt->error_capture
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Write-combining memory allows speculative reads by CPU.
ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
to prefetch memory beyond the error_capture, ie it tries
to read memory pointed by next PTE in GGTT.
If this PTE points to invalid address DMAR errors will occur.
This behavior was observed on ADL, RPL, DG2 platforms.
To avoid it, guard scratch page should be added after error_capture.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
This patch tries to diminish plague of DMAR errors present
in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
CI is usually tolerant for these errors, so the scale of the problem
is not really visible.
To show it I have counted lines containing DMAR errors in dmesgs produced
by CI for 1st version of the patch:
CI_DRM_12680: 626 errors
Patchwork_113560v1: 136 errors
So we have about 500 DMAR error lines per one CI run due to error_capture.

[1]: http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt

v2:
    - modified commit message (I hope the diagnosis is correct),
    - added bug checks to ensure scratch is initialized on gen3 platforms.
      CI produces strange stacktrace for it suggesting scratch[0] is NULL,
      to be removed after resolving the issue with gen3 platforms.

[2]: http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_113560v2/fi-blb-e6850/igt@i915_module_load@load.html

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 30 ++++++++++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gtt.c  |  2 +-
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 842e69c7b21e49..79e327003da12f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -503,6 +503,14 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
 	mutex_destroy(&ggtt->error_mutex);
 }
 
+static void ggtt_insert_scratch_page(struct i915_ggtt *ggtt, u64 offset)
+{
+	struct i915_address_space *vm = &ggtt->vm;
+
+	GEM_BUG_ON(!vm->scratch[0]);
+	vm->insert_page(vm, px_dma(vm->scratch[0]), offset, I915_CACHE_NONE, 0);
+}
+
 static int init_ggtt(struct i915_ggtt *ggtt)
 {
 	/*
@@ -551,8 +559,12 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 		 * paths, and we trust that 0 will remain reserved. However,
 		 * the only likely reason for failure to insert is a driver
 		 * bug, which we expect to cause other failures...
+		 *
+		 * Since CPU can perform speculative reads on error capture
+		 * (write-combining allows it) add scratch page after it to
+		 * avoid DMAR errors.
 		 */
-		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
+		ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
 		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
 		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
 			drm_mm_insert_node_in_range(&ggtt->vm.mm,
@@ -562,11 +574,21 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 						    0, ggtt->mappable_end,
 						    DRM_MM_INSERT_LOW);
 	}
-	if (drm_mm_node_allocated(&ggtt->error_capture))
+	if (drm_mm_node_allocated(&ggtt->error_capture)) {
+		u64 start = ggtt->error_capture.start;
+		u64 end = ggtt->error_capture.start + ggtt->error_capture.size;
+		u64 i;
+
+		/*
+		 * During error capture, memcpying from the GGTT is triggering a
+		 * prefetch of the following PTE, so fill it with a guard page.
+		 */
+		for (i = start + I915_GTT_PAGE_SIZE; i < end; i += I915_GTT_PAGE_SIZE)
+			ggtt_insert_scratch_page(ggtt, i);
 		drm_dbg(&ggtt->vm.i915->drm,
 			"Reserved GGTT:[%llx, %llx] for use by error capture\n",
-			ggtt->error_capture.start,
-			ggtt->error_capture.start + ggtt->error_capture.size);
+			start, end);
+	}
 
 	/*
 	 * The upper portion of the GuC address space has a sizeable hole
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4f436ba7a3c833..dddafc33054971 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -293,7 +293,7 @@ void *__px_vaddr(struct drm_i915_gem_object *p)
 
 dma_addr_t __px_dma(struct drm_i915_gem_object *p)
 {
-	GEM_BUG_ON(!i915_gem_object_has_pages(p));
+	GEM_BUG_ON(!p || !i915_gem_object_has_pages(p));
 	return sg_dma_address(p->mm.pages->sgl);
 }
 
-- 
2.34.1

