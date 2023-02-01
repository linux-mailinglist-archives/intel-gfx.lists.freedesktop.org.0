Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 806A0686A6A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 16:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4DE010E40A;
	Wed,  1 Feb 2023 15:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571AC10E40F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 15:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675265570; x=1706801570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rvT0F7TZsoXkqYeOYz5/eSWjnyLMrY0pxQuhE8R2Bgs=;
 b=D2Yn7AZ7V85VRBdhSeXucgkVq1ENyfSRUd8KAql2Q1YmrDLTfcqzNY1T
 R7Ji7ctNGByapFSRXjd/pDFZoytQPwFCp6WsDVZ/q0POFhMmUelxLeEF3
 PT3DmvhtnvrhQUVgnlI+22crUUN4K3wEKwueJggf+xQL35N26Nbv2NYhT
 MmIKH2BSQNVHWMATZoiMH+QJKTjzCxas/DiD71ceIcl/oB8fa/4UIc71i
 RfgvpCVOkiOHhMqOM+rJSySUMTVf5EhvmfQwIXLfKVDYbDR5A08u9PsuO
 YRZRVvdNiyKHgk/3vWbyjFUaMxvVI+B0bIK0c9MNly029xQVQBPQgN79z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414381355"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414381355"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 07:31:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="614882858"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="614882858"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 07:31:28 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Feb 2023 16:31:18 +0100
Message-Id: <20230201153118.2654177-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: add guard page to ggtt->error_capture
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
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some platforms (ADL, RPL, DG2) during CPU read of mapped GTT pages
tries to prefetch data beyond page table boundary. If the next PTE
in GTT points to invalid address it can cause DMAR errors.
Adding guard PTE pointing to scratch page solves the issue
in case of ggtt->error_capture.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
This patch tries to diminish plague of DMAR errors present
in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
This is upstreamed internal patch, with slightly modified commit message.

[1]: http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 842e69c7b21e49..bdc1636375374a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -503,6 +503,13 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
 	mutex_destroy(&ggtt->error_mutex);
 }
 
+static void ggtt_insert_scratch_page(struct i915_ggtt *ggtt, u64 offset)
+{
+	struct i915_address_space *vm = &ggtt->vm;
+
+	vm->insert_page(vm, px_dma(vm->scratch[0]), offset, I915_CACHE_NONE, 0);
+}
+
 static int init_ggtt(struct i915_ggtt *ggtt)
 {
 	/*
@@ -552,7 +559,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 		 * the only likely reason for failure to insert is a driver
 		 * bug, which we expect to cause other failures...
 		 */
-		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
+		ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
 		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
 		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
 			drm_mm_insert_node_in_range(&ggtt->vm.mm,
@@ -562,11 +569,21 @@ static int init_ggtt(struct i915_ggtt *ggtt)
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
-- 
2.34.1

