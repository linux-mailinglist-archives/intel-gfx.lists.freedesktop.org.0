Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1L9mG9KKKWpFZAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 18:03:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF93866B229
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 18:03:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VRmFYF+U;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92DAD10EAD0;
	Wed, 10 Jun 2026 16:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D808510E4A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 16:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781107400; x=1812643400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kieund26gS/bW73yzGT7PKyYDRjs7T7wGbguJCsVaI8=;
 b=VRmFYF+U2XFwGY5oB4S8jZgIjuNP9uPVma0KZmTWclU1DYrnb8exPKZM
 qgXgw9CKwxI5ESA1FyF+L3YiAiE7lurPgl0HKC4u8vx0oHHPWvG0c+VO1
 i2qGegJFos5vB9Va3ireiwwzdNJY/rhzWGoQNl9Hn6i4tt2GkOuVwc8I9
 pdJIghima5PjhmnPZBR+VHGPHoaTmLHxikethHgKEGUNZvPVxvWoFy1Ph
 EIzNG0ufOSzf6LOJbS7ILCEo28dsdHqO01JqD0NDuTN9CVgnJ45bTnpMF
 usHuPeHtmmO1BQDEbOiPSQSLLZYyCkKRWj2cmKO1xLda36JFfszqyr+Im w==;
X-CSE-ConnectionGUID: tDkW7uf0Q76bs/274eAvog==
X-CSE-MsgGUID: 3NMuHe1TTlaBlpAF9GPx/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81752192"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81752192"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 09:03:20 -0700
X-CSE-ConnectionGUID: p9DcDPc7TKaDLIhnDK9I5Q==
X-CSE-MsgGUID: pP5MaRxTSVuzjOSb7d84Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="269891639"
Received: from dut6094bmgfrd.fm.intel.com ([10.80.55.40])
 by fmviesa002.fm.intel.com with ESMTP; 10 Jun 2026 09:03:19 -0700
From: Jia Yao <jia.yao@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jia Yao <jia.yao@intel.com>, Shuicheng Lin <shuicheng.lin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maciej Plewka <maciej.plewka@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v5] drm/i915/dg2: Add per-context control for Wa_22013059131
Date: Wed, 10 Jun 2026 16:03:16 +0000
Message-ID: <20260610160316.1185958-1-jia.yao@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF93866B229

Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in LSC_CHICKEN_BIT_0
at engine init, but this is known to cause GPU hangs in certain workloads.
Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles the
workaround itself (e.g. by limiting SLM size) can set it to 1 to let the
kernel know bit 15 programming is not needed for that context.

LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel restores
the correct value on every context switch via the indirect context
batchbuffer to avoid leaking state between contexts. The old unconditional
application of Wa22013059131 in intel_workarounds.c is removed.

v5:
- Remove fix and stable

v4:
- Add a link of the userspace using this API

v3:
- Kernel-internal context will not change workaround settings

Bspec: 54833
Link: https://github.com/intel/compute-runtime/pull/919
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maciej Plewka <maciej.plewka@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Jia Yao <jia.yao@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 12 +++++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 44 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 10 ++---
 include/uapi/drm/i915_drm.h                   | 10 +++++
 6 files changed, 72 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6ac0f23570f3..d24e449f1eb3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -911,6 +911,15 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
 			ret = -EINVAL;
 		break;
 
+	case I915_CONTEXT_PARAM_WA_22013059131:
+		if (args->size)
+			ret = -EINVAL;
+		else if (args->value)
+			pc->user_flags |= BIT(UCONTEXT_WA_22013059131);
+		else
+			pc->user_flags &= ~BIT(UCONTEXT_WA_22013059131);
+		break;
+
 	case I915_CONTEXT_PARAM_RECOVERABLE:
 		if (args->size)
 			ret = -EINVAL;
@@ -1003,6 +1012,9 @@ static int intel_context_set_gem(struct intel_context *ce,
 	if (test_bit(UCONTEXT_LOW_LATENCY, &ctx->user_flags))
 		__set_bit(CONTEXT_LOW_LATENCY, &ce->flags);
 
+	if (test_bit(UCONTEXT_WA_22013059131, &ctx->user_flags))
+		__set_bit(CONTEXT_WA_22013059131, &ce->flags);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 0267c924634b..4efc0e758d3b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -338,6 +338,7 @@ struct i915_gem_context {
 #define UCONTEXT_RECOVERABLE		3
 #define UCONTEXT_PERSISTENCE		4
 #define UCONTEXT_LOW_LATENCY		5
+#define UCONTEXT_WA_22013059131		6
 
 	/**
 	 * @flags: small set of booleans
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 10070ee4d74c..84011ce7c84d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -133,6 +133,7 @@ struct intel_context {
 #define CONTEXT_EXITING			13
 #define CONTEXT_LOW_LATENCY		14
 #define CONTEXT_OWN_STATE		15
+#define CONTEXT_WA_22013059131		16
 
 	struct {
 		u64 timeout_us;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 147d22907960..bab4f38515d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1348,6 +1348,37 @@ gen12_invalidate_state_cache(u32 *cs)
 	return cs;
 }
 
+static u32 *
+dg2_g11_emit_wa_22013059131(const struct intel_context *ce, u32 *cs)
+{
+	/*
+	 * While re-writing LSC_CHICKEN_BIT_0 for Wa_22013059131, the
+	 * other bits of the register will also get overwritten.  The
+	 * hardware default for all other bits is 0, but any workarounds
+	 * that adjust the other bits in the lower dword of the register
+	 * also need to be re-applied here.  At the moment that's just
+	 * Wa_22014226127, which is always set for DG2-G11 platforms.
+	 */
+	u32 val = DISABLE_D8_D16_COASLESCE;
+
+	/*
+	 * Wa_22013059131: only set FORCE_1_SUB_MESSAGE_PER_FRAGMENT for
+	 * userspace contexts that have not opted out.  Kernel-internal
+	 * contexts (gem_context == NULL) never run shader workloads that
+	 * require this workaround, so skip them unconditionally.
+	 */
+	if (rcu_access_pointer(ce->gem_context) &&
+	    !test_bit(CONTEXT_WA_22013059131, &ce->flags)) {
+		val |= FORCE_1_SUB_MESSAGE_PER_FRAGMENT;
+	}
+
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(LSC_CHICKEN_BIT_0);
+	*cs++ = val;
+
+	return cs;
+}
+
 static u32 *
 gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 {
@@ -1371,6 +1402,11 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 	    IS_DG2(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
+	/* Wa_22013059131:dg2 */
+	if (IS_DG2_G11(ce->engine->i915))
+		cs = dg2_g11_emit_wa_22013059131(ce, cs);
+
+
 	return cs;
 }
 
@@ -1387,7 +1423,13 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 						    PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE,
 						    0);
 
-	return gen12_emit_aux_table_inv(ce->engine, cs);
+	cs = gen12_emit_aux_table_inv(ce->engine, cs);
+
+	/* Wa_22013059131:dg2 */
+	if (IS_DG2_G11(ce->engine->i915))
+		cs = dg2_g11_emit_wa_22013059131(ce, cs);
+
+	return cs;
 }
 
 static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 24ea5d8d529c..ef6eea3ab597 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2840,7 +2840,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
-		/* Wa_22014226127 */
+		/*
+		 * Wa_22014226127: Note that this workaround also needs to be
+		 * re-applied in intel_lrc.c when LSC_CHICKEN_BIT_0 is
+		 * re-written for Wa_22013059131.
+		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
@@ -2867,10 +2871,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				     MAXREQS_PER_BANK,
 				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
 
-		/* Wa_22013059131:dg2 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
-				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
-
 		/*
 		 * Wa_22012654132
 		 *
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 535cb68fdb5c..0f553bb12fb0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2172,6 +2172,16 @@ struct drm_i915_gem_context_param {
  * Note that this is a debug API not available on production kernel builds.
  */
 #define I915_CONTEXT_PARAM_CONTEXT_IMAGE	0xf
+
+/*
+ * I915_CONTEXT_PARAM_WA_22013059131:
+ *
+ * Default value 0 means the kernel programs Wa_22013059131 for this context.
+ * Set to 1 to inform the kernel that userspace is taking responsibility for
+ * applying the preferred workaround implementation, so the kernel programming
+ * of LSC_CHICKEN_BIT_0 bit 15 is not needed for this context. DG2-G11 only.
+ */
+#define I915_CONTEXT_PARAM_WA_22013059131	0x10
 /* Must be kept compact -- no holes and well documented */
 
 	/** @value: Context parameter value to be set or queried */
-- 
2.43.0

