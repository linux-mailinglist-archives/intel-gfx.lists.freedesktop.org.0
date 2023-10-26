Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5F67D886F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7129610E856;
	Thu, 26 Oct 2023 18:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0090A10E85F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345403; x=1729881403;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=SRG34D7TfrcAIb+0ha84zpf1GFglof/9rPuKpx2QwZ8=;
 b=nCIP/mD3+P9Bc41xqODYWoOu6asd+wAnZxeS8i2OmHSH8KR9Pmu3DanF
 sbVF8z0Kyjlx1CYbv4h1qYk1nwJfSDKkzabvGy5FaNxtTDV1/43G0uwSd
 2nZ0BiezSh2g8OUp3MTXzG9LR9VXFdEKj/EogWT1HqMDz+s2Nl33Q5+jV
 hSAa7FbUY/mPEjZBFX9lL+QZ1uSymfhisNmKxUFp/6HJ7bWGufqmBQ2AV
 o1Nj96aDLj7P8Pnwklt/2KZshvD3mJukEfnOQIVmhI+UYYKA6jj1ugZE2
 BZ1ds3aDZZZz9J2UlYcPe27xFwUPb11xax1K/5JkK7OAZtZ8vAr9p8uJo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="391497774"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="391497774"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="762941912"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="762941912"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:40 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Thu, 26 Oct 2023 20:36:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231026-wabb-v6-2-4aa7d55d0a8a@intel.com>
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
In-Reply-To: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7349;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=SRG34D7TfrcAIb+0ha84zpf1GFglof/9rPuKpx2QwZ8=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOrGzdf7nn84EQlJguCKQLd5Nu38sPuvzNUD5/ihU
 OEFc1ziJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTqxswAKCRAjYrKT3hD91w77C/
 9rgpQ0ZAj0djPWW2AHr1iIP/VQ57lJifblTo26FOqGoLzRhClArCuc4guqh4wTwf6tGifsnQ8dYKJX
 hvRtDlH4k0rLTULjOtQ/Pw/FtgVh9r6Axme2hpAMz+pPwTrrTVY6lrmFKWMWQIuNaFrojygyZ6FRlf
 k/o30tPE8+qBnpv1X2NMfOgw4jcOESHasaiD2XbkHWflaMSH2EgjTITm0cpGHSrwAyjGG/t1rbyZLa
 Tykd5OwSAXtkTZj3s+O8kYCjEpx8WSyiyUUGif2++1w3a/uKSMQVynCJ4fnEdutuz61/FnUwywY4DK
 X0rRiWPVJIEDaQz8RUHtPjFVO/QeCTVHcVhmyraGc3IzvOAnXAblDKZsGmlQBo4LD7miYiE5qv4XtW
 ZybhePzZl9hV4dh4RDqotwnRPkrAEVd5wl67TOuzobM9ngEVy/O7ePITXOHTqSgefL6NNlAde3DTtx
 mxEluwu/UKq7xPROSLx1iuQX07bc3OzHeFQccY4dTgggo=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v6 2/4] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply WABB blit for Wa_16018031267 / Wa_16018063123.

v3: drop unused enum definition
v4: move selftest to separate patch, use wa only on BCS0.
v5: fixed selftest caller to context_wabb

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |   2 +-
 4 files changed, 105 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index fdd4ddd3a978a2..b8618ee3e3041a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -118,6 +118,9 @@
 #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
 #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
 #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
+#define   PER_CTX_BB_FORCE			BIT(2)
+#define   PER_CTX_BB_VALID			BIT(0)
+
 #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
 #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
 #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 970bedf6b78a7b..9ffdb05e231e21 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -82,6 +82,10 @@ struct drm_printer;
 		  ##__VA_ARGS__);					\
 } while (0)
 
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)
+
 static inline bool gt_is_root(struct intel_gt *gt)
 {
 	return !gt->info.id;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index eaf66d90316655..7c367ba8d9dcf1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 	return 0;
 }
 
+static void
+lrc_setup_bb_per_ctx(u32 *regs,
+		     const struct intel_engine_cs *engine,
+		     u32 ctx_bb_ggtt_addr)
+{
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
+	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
+		ctx_bb_ggtt_addr |
+		PER_CTX_BB_FORCE |
+		PER_CTX_BB_VALID;
+}
+
 static void
 lrc_setup_indirect_ctx(u32 *regs,
 		       const struct intel_engine_cs *engine,
@@ -1020,7 +1032,13 @@ static u32 context_wa_bb_offset(const struct intel_context *ce)
 	return PAGE_SIZE * ce->wa_bb_page;
 }
 
-static u32 *context_indirect_bb(const struct intel_context *ce)
+/*
+ * per_ctx below determines which WABB section is used.
+ * When true, the function returns the location of the
+ * PER_CTX_BB.  When false, the function returns the
+ * location of the INDIRECT_CTX.
+ */
+static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
 {
 	void *ptr;
 
@@ -1029,6 +1047,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
 	ptr = ce->lrc_reg_state;
 	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
 	ptr += context_wa_bb_offset(ce);
+	ptr += per_ctx ? PAGE_SIZE : 0;
 
 	return ptr;
 }
@@ -1105,7 +1124,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	if (GRAPHICS_VER(engine->i915) >= 12) {
 		ce->wa_bb_page = context_size / PAGE_SIZE;
-		context_size += PAGE_SIZE;
+		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
+		context_size += PAGE_SIZE * 2;
 	}
 
 	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
@@ -1407,12 +1427,85 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 	return gen12_emit_aux_table_inv(ce->engine, cs);
 }
 
+static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
+{
+	struct intel_gt *gt = ce->engine->gt;
+	int mocs = gt->mocs.uc_index << 1;
+
+	/**
+	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
+	 * main copy engine arbitration into round robin mode.  We
+	 * additionally need to submit the following WABB blt command
+	 * to produce 4 subblits with each subblit generating 0 byte
+	 * write requests as WABB:
+	 *
+	 * XY_FASTCOLOR_BLT
+	 *  BG0    -> 5100000E
+	 *  BG1    -> 0000003F (Dest pitch)
+	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
+	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
+	 *  BG4    -> scratch
+	 *  BG5    -> scratch
+	 *  BG6-12 -> 00000000
+	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
+	 *  BG14   -> 00000010 (Qpitch = 4)
+	 *  BG15   -> 00000000
+	 */
+	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
+	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
+	*cs++ = 0;
+	*cs++ = 4 << 16 | 1;
+	*cs++ = lower_32_bits(i915_vma_offset(ce->vm->rsvd.vma));
+	*cs++ = upper_32_bits(i915_vma_offset(ce->vm->rsvd.vma));
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0x20004004;
+	*cs++ = 0x10;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *
+xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
+{
+	/* Wa_16018031267, Wa_16018063123 */
+	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
+		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
+
+	return cs;
+}
+
+static void
+setup_per_ctx_bb(const struct intel_context *ce,
+		 const struct intel_engine_cs *engine,
+		 u32 *(*emit)(const struct intel_context *, u32 *))
+{
+	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
+	u32 * const start = context_wabb(ce, true);
+	u32 *cs;
+
+	cs = emit(ce, start);
+
+	/* PER_CTX_BB must manually terminate */
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
+	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
+			     lrc_indirect_bb(ce) + PAGE_SIZE);
+}
+
 static void
 setup_indirect_ctx_bb(const struct intel_context *ce,
 		      const struct intel_engine_cs *engine,
 		      u32 *(*emit)(const struct intel_context *, u32 *))
 {
-	u32 * const start = context_indirect_bb(ce);
+	u32 * const start = context_wabb(ce, false);
 	u32 *cs;
 
 	cs = emit(ce, start);
@@ -1511,6 +1604,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
 		/* Mutually exclusive wrt to global indirect bb */
 		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
 		setup_indirect_ctx_bb(ce, engine, fn);
+		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
 	}
 
 	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 5f826b6dcf5d6f..823d38aa393467 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1596,7 +1596,7 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
 static void
 indirect_ctx_bb_setup(struct intel_context *ce)
 {
-	u32 *cs = context_indirect_bb(ce);
+	u32 *cs = context_wabb(ce, false);
 
 	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
 

-- 
2.34.1

