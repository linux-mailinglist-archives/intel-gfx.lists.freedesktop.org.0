Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD1D4FFF36
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A19E10E4B5;
	Wed, 13 Apr 2022 19:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEDD10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878058; x=1681414058;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oWyYLXU42mCI7ujGDD8S8JH3zz3sFrmglquWk5GBrhw=;
 b=flhFeE615hut1NQcvLSNutawEGAXeTzbAaderngbfB6AwH5cZ+In6/J6
 vdwJEmVHKIdJZZmUEUZxNBcRs9Bh4FBc3TRx/g0/idEqTBD5MPYjW8P/j
 VVJjvDNwh2DXcIdhvKmf9i7nOS9E/oh836dzSBPBtjijXUhNSnV0pzRdQ
 RKm4ed1gy1f/u/RhSCcAeqWUzAOic/33ZZvhtaqOL0aCMm0u4KO3lY5Fy
 clFJfxC5vlFG2IH9pLoar1rZvCjsRUY3etTuYAJ6aYJ895zfayGPZGMLJ
 1JgN6+WyjjH4CkdR9ug/nQ2vJANXSVOXVhbeh/tDW1hv+U/h9a1/KwcZ3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045089"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045089"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290498"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:29 -0700
Message-Id: <20220413192730.3608660-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/dg2: Enable Wa_14014475959 - RCS
 / CCS context exit
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

From: Matthew Brost <matthew.brost@intel.com>

There is bug in DG2 where if the CCS contexts switches out while the RCS
is running it can cause memory corruption. To workaround this add an
atomic to a memory address with a value 1 and semaphore wait to the same
address for a value of 0. The GuC firmware is responsible for writing 0
to the memory address when it is safe for the context to switch out.

v2: Add atomic GPU instructions
v3: Add w/a number (JohnH)
v4: Set DW length to 9 atomic GPU instruction with inline data
v5: Rebase (Umesh)
v6: Split MI_ATOMIC definition into 2 (Daniele)
v7: (Daniele)
- For non-inline MI_ATOMIC, len should be 1
- Make INLINE flag part of MI_ATOMIC_INLINE definition

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 41 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  8 ++++
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  7 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 ++
 6 files changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 047b5a710149..9529c5455bc3 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -583,6 +583,43 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
 	return cs;
 }
 
+/* Wa_14014475959:dg2 */
+#define CCS_SEMAPHORE_PPHWSP_OFFSET	0x540
+static u32 ccs_semaphore_offset(struct i915_request *rq)
+{
+	return i915_ggtt_offset(rq->context->state) +
+		(LRC_PPHWSP_PN * PAGE_SIZE) + CCS_SEMAPHORE_PPHWSP_OFFSET;
+}
+
+/* Wa_14014475959:dg2 */
+static u32 *ccs_emit_wa_busywait(struct i915_request *rq, u32 *cs)
+{
+	int i;
+
+	*cs++ = MI_ATOMIC_INLINE | MI_ATOMIC_GLOBAL_GTT | MI_ATOMIC_CS_STALL |
+		MI_ATOMIC_MOVE;
+	*cs++ = ccs_semaphore_offset(rq);
+	*cs++ = 0;
+	*cs++ = 1;
+
+	/*
+	 * When MI_ATOMIC_INLINE_DATA set this command must be 11 DW + (1 NOP)
+	 * to align. 4 DWs above + 8 filler DWs here.
+	 */
+	for (i = 0; i < 8; ++i)
+		*cs++ = 0;
+
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_EQ_SDD;
+	*cs++ = 0;
+	*cs++ = ccs_semaphore_offset(rq);
+	*cs++ = 0;
+
+	return cs;
+}
+
 static __always_inline u32*
 gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 {
@@ -593,6 +630,10 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 	    !intel_uc_uses_guc_submission(&rq->engine->gt->uc))
 		cs = gen12_emit_preempt_busywait(rq, cs);
 
+	/* Wa_14014475959:dg2 */
+	if (intel_engine_uses_wa_hold_ccs_switchout(rq->engine))
+		cs = ccs_emit_wa_busywait(rq, cs);
+
 	rq->tail = intel_ring_offset(rq, cs);
 	assert_ring_tail_valid(rq->ring, rq->tail);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index eac20112709c..298f2cc7a879 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -529,6 +529,7 @@ struct intel_engine_cs {
 #define I915_ENGINE_HAS_RCS_REG_STATE  BIT(9)
 #define I915_ENGINE_HAS_EU_PRIORITY    BIT(10)
 #define I915_ENGINE_FIRST_RENDER_COMPUTE BIT(11)
+#define I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT BIT(12)
 	unsigned int flags;
 
 	/*
@@ -629,6 +630,13 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 	return engine->flags & I915_ENGINE_HAS_RELATIVE_MMIO;
 }
 
+/* Wa_14014475959:dg2 */
+static inline bool
+intel_engine_uses_wa_hold_ccs_switchout(struct intel_engine_cs *engine)
+{
+	return engine->flags & I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
+}
+
 #define instdone_has_slice(dev_priv___, sseu___, slice___) \
 	((GRAPHICS_VER(dev_priv___) == 7 ? 1 : ((sseu___)->slice_mask)) & BIT(slice___))
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 4243be030bc1..f3fe7d4c3234 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -134,6 +134,13 @@
 #define   MI_MEM_VIRTUAL	(1 << 22) /* 945,g33,965 */
 #define   MI_USE_GGTT		(1 << 22) /* g4x+ */
 #define MI_STORE_DWORD_INDEX	MI_INSTR(0x21, 1)
+#define MI_ATOMIC		MI_INSTR(0x2f, 1)
+#define MI_ATOMIC_INLINE	(MI_INSTR(0x2f, 9) | MI_ATOMIC_INLINE_DATA)
+#define   MI_ATOMIC_GLOBAL_GTT		(1 << 22)
+#define   MI_ATOMIC_INLINE_DATA		(1 << 18)
+#define   MI_ATOMIC_CS_STALL		(1 << 17)
+#define	  MI_ATOMIC_MOVE		(0x4 << 8)
+
 /*
  * Official intel docs are somewhat sloppy concerning MI_LOAD_REGISTER_IMM:
  * - Always issue a MI_NOOP _before_ the MI_LOAD_REGISTER_IMM - otherwise hw
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 830889349756..228070e31ef0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -296,6 +296,10 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
 		flags |= GUC_WA_GAM_CREDITS;
 
+	/* Wa_14014475959:dg2 */
+	if (IS_DG2(gt->i915))
+		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
+
 	/*
 	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
 	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 126e67ea1619..e389a3a041a2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -102,6 +102,7 @@
 #define   GUC_WA_DUAL_QUEUE		BIT(11)
 #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
 #define   GUC_WA_PRE_PARSER		BIT(14)
+#define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
 #define   GUC_WA_POLLCS			BIT(18)
 
 #define GUC_CTL_FEATURE			2
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 38ba9f783312..1cb88e99b040 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3897,6 +3897,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 
+	/* Wa_14014475959:dg2 */
+	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
+		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
+
 	/*
 	 * TODO: GuC supports timeslicing and semaphores as well, but they're
 	 * handled by the firmware so some minor tweaks are required before
-- 
2.35.1

