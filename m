Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D19B648C9E
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21B810E08A;
	Sat, 10 Dec 2022 03:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5382810E094
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 03:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670641282; x=1702177282;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KGUW+Dp1b5ioNJsmBSZ+dW+GT7AdvbyCKGXI4Goytyw=;
 b=Gp5r5c/2dwOLDdYXc7CyD6j4uT6iblEz8NChPto2v39iLpaqAG7jfFgD
 CJ//a9RT3ni27k5GGXLPTdZvgGhckpXv4lY5UHvHlP/UYjt+aLlZfyKwQ
 aHD/DURIKWgfRlIWXhLUP3K+uqEwpkV+tBU17wAeDrlhqsjOluB0LU4cp
 MpX79JNA5xqP/TmJIcgu290mHJp8vzKUtRE9w+d2SCDkA/rxIib2oVbLU
 8ZeAS6NMSKakLN/Xc9o+ipKKyQq6I0Fp+Q0yGJmuBVZ+ahDACffMUgD0d
 +mmGZVOSyXnVoK0HbrAhvFp5IQtpTdhA0fROCnX9Y+i96sRlqH0DiQqTy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379800533"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379800533"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="597914723"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="597914723"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 19:01:13 -0800
Message-Id: <20221210030116.1777214-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/mtl: Resize noa_wait BO size to
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

