Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC7668B7EC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 10:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FC810E314;
	Mon,  6 Feb 2023 09:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F5410E314
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 09:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675674218; x=1707210218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a5tjzfrH5OyQplye75hsH0TMPMkR3eWJo6nQ6j0255c=;
 b=AgFKPa76ylye21oGloXTeVKO4iLZtroYKMXNUBO2yOLMzDMTB8PVAa+2
 KRdYuEoh+LCSIEjzLYECUafReNwN0Zi6cEnOW1VhT1/ggqlAKycdeYlBR
 /Ca0Y7f9GE+Sg4AQTgx48QlGjo4u89okRKtEIO3NnOIrQKp1X/EypR8WZ
 S50QjUqTT0EkU4u8WbM4zj47S+1U0/1LVh5B27EwLscmIV5A35PWqIIKT
 dJr671AO10NS3rkMF3kun5z3dvnhw66zTkTKXJSLk34onlDdifGeNhhkR
 kFa0VlVPQKDDu27Sz34VFHYtU4H2fijXqLbW+nr8f2LRgWjKTx93HS8mV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="327793594"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="327793594"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 01:03:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="659780073"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="659780073"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 01:03:35 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 10:03:27 +0100
Message-Id: <20230206090327.2081853-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: add guard page to
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
This behaviour was observed on ADL, RPL, DG2 platforms.
To avoid it, guard scratch page should be added after error_capture.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
This patch tries to diminish plague of DMAR read errors present
in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
CI is usually tolerant for these errors, so the scale of the problem
is not really visible.
To show it I have counted lines containing DMAR read errors in dmesgs
produced by CI for all three versions of the patch, but in contrast to v2
I have grepped only for lines containing "PTE Read access".
Below stats for kernel w/o patch vs patched one.
v1: 210 vs 0
v2: 201 vs 0
v3: 214 vs 0
Apparently the patch fixes all common PTE read errors.

In previous version there were different numbers due to less exact grepping,
"grep DMAR" catched write errors and "DMAR: DRHD: handling fault status reg"
lines, anyway the actual number of errors is much bigger - DMAR errors
are rate-limited.

[1]: http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt

Changelog:
v2:
    - modified commit message (I hope the diagnosis is correct),
    - added bug checks to ensure scratch is initialized on gen3 platforms.
      CI produces strange stacktrace for it suggesting scratch[0] is NULL,
      to be removed after resolving the issue with gen3 platforms.
v3:
    - removed bug checks, replaced with gen check.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 30 +++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 842e69c7b21e49..15eb2d4158d679 100644
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
@@ -553,6 +560,13 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 		 * bug, which we expect to cause other failures...
 		 */
 		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
+		/*
+		 * Since CPU can perform speculative reads on error capture
+		 * (write-combining allows it) and since gen12 it really happens
+		 * add scratch page after error capture to avoid DMAR errors.
+		 */
+		if (GRAPHICS_VER(ggtt->vm.i915) >= 12)
+			ggtt->error_capture.size += I915_GTT_PAGE_SIZE;
 		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
 		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
 			drm_mm_insert_node_in_range(&ggtt->vm.mm,
@@ -562,11 +576,21 @@ static int init_ggtt(struct i915_ggtt *ggtt)
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

