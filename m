Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5C97D40D0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 22:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF7F10E24D;
	Mon, 23 Oct 2023 20:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E24A10E249
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 20:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698092522; x=1729628522;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=MFRiXHzcSBvGKP8CiyS5i8r94uLoVerhGILKEcq0Pr8=;
 b=RzeD3VR1sRi+PlFHDnBSDHmv2yQ+S7BmdtlbwTVdlYWw077pwRV2wYon
 L3UjpfvkESnagcvH0cyS/+h3YHejqCW+O5j+fGYhpP3uJChSCrwReiV2A
 yZuC/+nsFWSRxpZn66cluA/JuMWJvdTHfpm8nFi7OFyDwvWnnb2ugY+04
 4a8U+5mdwqO0c1LuunalEn5FXtjmCL9jNrgChgRjqC3q/mWycqgBFOgJv
 swtLuBeVdhrHglyMK2c8gg3YFjh05JZplnfFniIzmG9q+rF/+uKtVuOoo
 2tYR67hVixvplKF50yscCN52oEuUTckngfh256J1VGkPc/hf9Q6fGXc7J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="371989467"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="371989467"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="734796489"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="734796489"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:00 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 22:21:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-wabb-v4-2-f75dec962b7d@intel.com>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
In-Reply-To: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6679;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=MFRiXHzcSBvGKP8CiyS5i8r94uLoVerhGILKEcq0Pr8=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNtXjAKmwlUSiJ4msbamXwAGEu019PnaD6vHT0vSw
 kTGXsXuJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTbV4wAKCRAjYrKT3hD911I6C/
 46RdqgeCGxb+iK55Z0tnGFrpcg1BS7o8VVuOi/7wagw1favQGw9FFQujzfrfFk883AX1QxeR+omd0C
 cXdBZeu1pYMLP8GNJ2E46P56dKZXv1zF8UZ70sX5PNlZDMYGSOLvcpzvj95oACfqIANZBK82YLeapP
 VfAJF6ZBNNTvCNscOaL/H52KDvRWh98Un5RIgngD0D1iwVavBveo+YPXlISuy3MTRNyzkE3UKhT6Nz
 h4FXmdejjtOw29JwuIplk9dDACBQVpGKE64SaR3bcQDfQWrymWdz9jJjARQVu/nc9qUCTBDsIPf+Zk
 uEdy0Z/U2eD0oEcPXM0BqFU7EZiWfb+ymBei8wdGrMlcN+MKo9aoGG+Bd8Pm6k2EQ/fLi7F6jnFmz6
 5YB6vCq0ApK8WMWwstcdY/51W4P/PAvZ04sGewsWsF2/5S3GN5zsYUPu/58NQmU6Svw1KPY2AtVWRL
 5MF6NDqf77ULGYq/vusrqLoiyTlEI2JUMhz84yAw11GYQ=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915: Add WABB blit for
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
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply WABB blit for Wa_16018031267 / Wa_16018063123.

v3: drop unused enum definition
v4: move selftest to separate patch, use wa only on BCS0.

Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
 3 files changed, 104 insertions(+), 3 deletions(-)

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
index eaf66d90316655..96ef901113eae9 100644
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
+	*cs++ = lower_32_bits(i915_vma_offset(ce->vm->rsvd));
+	*cs++ = upper_32_bits(i915_vma_offset(ce->vm->rsvd));
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

-- 
2.34.1

