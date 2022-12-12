Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A6264A9F8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 23:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E7910E0C8;
	Mon, 12 Dec 2022 22:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002E989F63
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 22:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670882949; x=1702418949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KGUW+Dp1b5ioNJsmBSZ+dW+GT7AdvbyCKGXI4Goytyw=;
 b=dDG2Mtd/1oPJ9pfNDkYE01Hgkn8u0/q7o9DhJuzzkCuDUk9o+u5LlZPc
 JRkQExwZAmEc+IuQZ2RyJpu1oW4GBT+Bu0SgxTQLXgDhpbvWkYCIHEUcv
 hptoS451JqjPvEzz4sksMo+BzsA4BjpExilq+l0M4wDwsIk4QA59Syv8p
 MvmIkFzqYtlfwntR2PnJWqc/klrH7G2nLu3C9OZNPCMfpY6/rES1CHY+F
 Xdlk+dLP8nqlBzJ3af2a7LKSOuqDmiGk3cHCi6nKcpcu415y3h/Z3KCBw
 qgS58hGBYGfQqODV6EMZLN1wU+OFi0kgTO1doNeIfnyLOW7P6oWPuy7NX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="345031088"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="345031088"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="641882375"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="641882375"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 14:08:59 -0800
Message-Id: <20221212220902.1819159-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
References: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/mtl: Resize noa_wait BO size to
 save restore GPR regs
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

On MTL, gt->scratch was using stolen lmem. An MI_SRM to stolen lmem
caused a hang that was attributed to saving and restoring the GPR
registers used for noa_wait.

Add an additional page in noa_wait BO to save/restore GPR registers for
the noa_wait logic.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ------
 drivers/gpu/drm/i915/i915_perf.c         | 25 ++++++++++++++++--------
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0b6da2aa9718..f08c2556aa25 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -304,12 +304,6 @@ enum intel_gt_scratch_field {
 
 	/* 8 bytes */
 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
-
-	/* 6 * 8 bytes */
-	INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR = 2048,
-
-	/* 4 bytes */
-	INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1 = 2096,
 };
 
 #endif /* __INTEL_GT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index d22f30dd4fba..a8b34460d36f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1846,8 +1846,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 	for (d = 0; d < dword_count; d++) {
 		*cs++ = cmd;
 		*cs++ = i915_mmio_reg_offset(reg) + 4 * d;
-		*cs++ = intel_gt_scratch_offset(stream->engine->gt,
-						offset) + 4 * d;
+		*cs++ = i915_ggtt_offset(stream->noa_wait) + offset + 4 * d;
 		*cs++ = 0;
 	}
 
@@ -1880,7 +1879,13 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 					  MI_PREDICATE_RESULT_2_ENGINE(base) :
 					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
 
-	bo = i915_gem_object_create_internal(i915, 4096);
+	/*
+	 * gt->scratch was being used to save/restore the GPR registers, but on
+	 * MTL the scratch uses stolen lmem. An MI_SRM to this memory region
+	 * causes an engine hang. Instead allocate an additional page here to
+	 * save/restore GPR registers
+	 */
+	bo = i915_gem_object_create_internal(i915, 8192);
 	if (IS_ERR(bo)) {
 		drm_err(&i915->drm,
 			"Failed to allocate NOA wait batchbuffer\n");
@@ -1914,14 +1919,19 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 		goto err_unpin;
 	}
 
+	stream->noa_wait = vma;
+
+#define GPR_SAVE_OFFSET 4096
+#define PREDICATE_SAVE_OFFSET 4160
+
 	/* Save registers. */
 	for (i = 0; i < N_CS_GPR; i++)
 		cs = save_restore_register(
 			stream, cs, true /* save */, CS_GPR(i),
-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
+			GPR_SAVE_OFFSET + 8 * i, 2);
 	cs = save_restore_register(
 		stream, cs, true /* save */, mi_predicate_result,
-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
+		PREDICATE_SAVE_OFFSET, 1);
 
 	/* First timestamp snapshot location. */
 	ts0 = cs;
@@ -2037,10 +2047,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	for (i = 0; i < N_CS_GPR; i++)
 		cs = save_restore_register(
 			stream, cs, false /* restore */, CS_GPR(i),
-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
+			GPR_SAVE_OFFSET + 8 * i, 2);
 	cs = save_restore_register(
 		stream, cs, false /* restore */, mi_predicate_result,
-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
+		PREDICATE_SAVE_OFFSET, 1);
 
 	/* And return to the ring. */
 	*cs++ = MI_BATCH_BUFFER_END;
@@ -2050,7 +2060,6 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	i915_gem_object_flush_map(bo);
 	__i915_gem_object_release_map(bo);
 
-	stream->noa_wait = vma;
 	goto out_ww;
 
 err_unpin:
-- 
2.38.1

