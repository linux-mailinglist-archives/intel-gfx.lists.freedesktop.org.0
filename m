Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CBCJg84n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F203519BDEA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D59E10E808;
	Wed, 25 Feb 2026 17:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SF/B2E2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8096810E7F5;
 Wed, 25 Feb 2026 17:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042252; x=1803578252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wGM1jwG+nWOzCU8cev+yKNLK8MOhDosAUdUdTG147KM=;
 b=SF/B2E2bU1ClUpltJzxfz+fktivfsfFPLPK7zZXShCGYEOS/kFZHCapG
 QuMRip3tADTZw5DNJUu0Mw1SfCZROR5yFHrYIMLEzhasxwBvgHC4ECqGU
 Exw4DIPLo+61ejkzEjo5kV9bYoSouZLUjIjgloqyVq2/2Qpnta7mLAcJb
 FD3tJq3N1cQGRiOfDa22VhE6lpmDmqb6pzCRJ5bPVLTsfNFPfcwDvU+au
 FUo/ftnVRUgLuXKmdZ9KLjPGwRvCyLYyQoVhOAr6Anfv4k42fR0HuHlSm
 9GQ8Zyg68Cem9NRmLJ+s3rtUX2Ht5+vst09bDydLhRl6mgw9/0j0FYnJo g==;
X-CSE-ConnectionGUID: q7J3vCygSF2DMMnh9CpH2w==
X-CSE-MsgGUID: 3x9EKBPlT6qaqSc3zRwacg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76961509"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76961509"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:32 -0800
X-CSE-ConnectionGUID: jrSEWc7nSheIy9CAaS8Dcg==
X-CSE-MsgGUID: RyOKe2YLTPu64mldU1UKYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220811968"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 3/8] drm/{i915,
 xe}/reg: rename masked field helpers REG_MASKED_FIELD*()
Date: Wed, 25 Feb 2026 19:57:05 +0200
Message-ID: <49dc20448a12f3e03f5f8347540d167a281b8987.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: F203519BDEA
X-Rspamd-Action: no action

The underscore prefixed masked field helper names aren't great. Rename
them REG_MASKED_FIELD(), REG_MASKED_FIELD_ENABLE(), and
REG_MASKED_FIELD_DISABLE(). This is more in line with the existing
REG_FIELD_PREP() etc. helpers, and using "field" instead of "bit" is
more accurate for the functionality.

This is done with:

sed -i 's/_MASKED_FIELD/REG_MASKED_FIELD/g' $(git grep -wl _MASKED_FIELD)
sed -i 's/_MASKED_BIT_ENABLE/REG_MASKED_FIELD_ENABLE/g' $(git grep -wl _MASKED_BIT_ENABLE)
sed -i 's/_MASKED_BIT_DISABLE/REG_MASKED_FIELD_DISABLE/g' $(git grep -wl _MASKED_BIT_DISABLE)

with some manual indentation fixes on top.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  8 ++--
 .../gpu/drm/i915/display/intel_display_irq.c  |  4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 10 ++---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  6 +--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  6 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 18 ++++-----
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 22 +++++------
 drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 19 ++++------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 24 ++++++------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  4 +-
 drivers/gpu/drm/i915/gvt/handlers.c           | 10 ++---
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  2 +-
 drivers/gpu/drm/i915/gvt/reg.h                |  4 +-
 drivers/gpu/drm/i915/i915_perf.c              | 34 ++++++++---------
 drivers/gpu/drm/i915/i915_reg_defs.h          | 10 ++---
 drivers/gpu/drm/i915/intel_clock_gating.c     | 38 +++++++++----------
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  4 +-
 drivers/gpu/drm/xe/xe_eu_stall.c              | 20 +++++-----
 drivers/gpu/drm/xe/xe_execlist.c              |  6 +--
 drivers/gpu/drm/xe/xe_hw_engine.c             |  8 ++--
 drivers/gpu/drm/xe/xe_lrc.c                   | 12 +++---
 drivers/gpu/drm/xe/xe_oa.c                    | 38 +++++++++----------
 drivers/gpu/drm/xe/xe_pxp.c                   |  4 +-
 drivers/gpu/drm/xe/xe_uc_fw.c                 |  4 +-
 29 files changed, 164 insertions(+), 167 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 24f898efa9dd..9e170e79dcf6 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -182,8 +182,8 @@ static bool _intel_set_memory_cxsr(struct intel_display *display, bool enable)
 		intel_de_posting_read(display, DSPFW3(display));
 	} else if (display->platform.i945g || display->platform.i945gm) {
 		was_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
-		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
-			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
+		val = enable ? REG_MASKED_FIELD_ENABLE(FW_BLC_SELF_EN) :
+			       REG_MASKED_FIELD_DISABLE(FW_BLC_SELF_EN);
 		intel_de_write(display, FW_BLC_SELF, val);
 		intel_de_posting_read(display, FW_BLC_SELF);
 	} else if (display->platform.i915gm) {
@@ -193,8 +193,8 @@ static bool _intel_set_memory_cxsr(struct intel_display *display, bool enable)
 		 * FW_BLC_SELF. What's going on?
 		 */
 		was_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
-		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
-			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
+		val = enable ? REG_MASKED_FIELD_ENABLE(INSTPM_SELF_EN) :
+			       REG_MASKED_FIELD_DISABLE(INSTPM_SELF_EN);
 		intel_de_write(display, INSTPM, val);
 		intel_de_posting_read(display, INSTPM);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index e57e692b3663..70c1bba7c0a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1619,7 +1619,7 @@ static void i915gm_irq_cstate_wa_enable(struct intel_display *display)
 	 */
 	if (display->irq.vblank_enabled++ == 0)
 		intel_de_write(display, SCPD0,
-			       _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+			       REG_MASKED_FIELD_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 static void i915gm_irq_cstate_wa_disable(struct intel_display *display)
@@ -1628,7 +1628,7 @@ static void i915gm_irq_cstate_wa_disable(struct intel_display *display)
 
 	if (--display->irq.vblank_enabled == 0)
 		intel_de_write(display, SCPD0,
-			       _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+			       REG_MASKED_FIELD_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index e8fab45759c3..438cd4724ac4 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -67,7 +67,7 @@ void gen6_ppgtt_enable(struct intel_gt *gt)
 	if (HAS_PPGTT(uncore->i915)) /* may be disabled for VT-d */
 		intel_uncore_write(uncore,
 				   GFX_MODE,
-				   _MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
+				   REG_MASKED_FIELD_ENABLE(GFX_PPGTT_ENABLE));
 }
 
 /* PPGTT support for Sandybdrige/Gen6 and later */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 54c9571327e7..c0fd349a4600 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1233,7 +1233,7 @@ static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
 	     engine->class == VIDEO_ENHANCEMENT_CLASS ||
 	     engine->class == COMPUTE_CLASS ||
 	     engine->class == OTHER_CLASS))
-		engine->tlb_inv.request = _MASKED_BIT_ENABLE(val);
+		engine->tlb_inv.request = REG_MASKED_FIELD_ENABLE(val);
 	else
 		engine->tlb_inv.request = val;
 
@@ -1628,7 +1628,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	const i915_reg_t mode = RING_MI_MODE(engine->mmio_base);
 	int err;
 
-	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
+	intel_uncore_write_fw(uncore, mode, REG_MASKED_FIELD_ENABLE(STOP_RING));
 
 	/*
 	 * Wa_22011802037: Prior to doing a reset, ensure CS is
@@ -1636,7 +1636,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	 */
 	if (intel_engine_reset_needs_wa_22011802037(engine->gt))
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
-				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
+				      REG_MASKED_FIELD_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
 
 	err = __intel_wait_for_register_fw(engine->uncore, mode,
 					   MODE_IDLE, MODE_IDLE,
@@ -1692,7 +1692,7 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
 {
 	ENGINE_TRACE(engine, "\n");
 
-	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+	ENGINE_WRITE_FW(engine, RING_MI_MODE, REG_MASKED_FIELD_DISABLE(STOP_RING));
 }
 
 static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
@@ -2552,7 +2552,7 @@ void xehp_enable_ccs_engines(struct intel_engine_cs *engine)
 		return;
 
 	intel_uncore_write(engine->uncore, GEN12_RCU_MODE,
-			   _MASKED_BIT_ENABLE(GEN12_RCU_MODE_CCS_ENABLE));
+			   REG_MASKED_FIELD_ENABLE(GEN12_RCU_MODE_CCS_ENABLE));
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index fb7bff27b45a..26196a57041e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -24,7 +24,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
 	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
 		intel_uncore_write(engine->gt->uncore,
 				   RC_PSMI_CTRL_GSCCS,
-				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
+				   REG_MASKED_FIELD_DISABLE(IDLE_MSG_DISABLE));
 		/* hysteresis 0xA=5us as recommended in spec*/
 		intel_uncore_write(engine->gt->uncore,
 				   PWRCTX_MAXCNT_GSCCS,
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index cafe0b8e6bdd..1359fc9cb88e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2934,12 +2934,12 @@ static void enable_execlists(struct intel_engine_cs *engine)
 	intel_engine_set_hwsp_writemask(engine, ~0u); /* HWSTAM */
 
 	if (GRAPHICS_VER(engine->i915) >= 11)
-		mode = _MASKED_BIT_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE);
+		mode = REG_MASKED_FIELD_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE);
 	else
-		mode = _MASKED_BIT_ENABLE(GFX_RUN_LIST_ENABLE);
+		mode = REG_MASKED_FIELD_ENABLE(GFX_RUN_LIST_ENABLE);
 	ENGINE_WRITE_FW(engine, RING_MODE_GEN7, mode);
 
-	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+	ENGINE_WRITE_FW(engine, RING_MI_MODE, REG_MASKED_FIELD_DISABLE(STOP_RING));
 
 	ENGINE_WRITE_FW(engine,
 			RING_HWS_PGA,
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 94d63bbbdaa6..ac9aede82320 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -916,15 +916,15 @@ void intel_gt_init_swizzling(struct intel_gt *gt)
 	if (GRAPHICS_VER(i915) == 6)
 		intel_uncore_write(uncore,
 				   ARB_MODE,
-				   _MASKED_BIT_ENABLE(ARB_MODE_SWIZZLE_SNB));
+				   REG_MASKED_FIELD_ENABLE(ARB_MODE_SWIZZLE_SNB));
 	else if (GRAPHICS_VER(i915) == 7)
 		intel_uncore_write(uncore,
 				   ARB_MODE,
-				   _MASKED_BIT_ENABLE(ARB_MODE_SWIZZLE_IVB));
+				   REG_MASKED_FIELD_ENABLE(ARB_MODE_SWIZZLE_IVB));
 	else if (GRAPHICS_VER(i915) == 8)
 		intel_uncore_write(uncore,
 				   GAMTARBMODE,
-				   _MASKED_BIT_ENABLE(ARB_MODE_SWIZZLE_BDW));
+				   REG_MASKED_FIELD_ENABLE(ARB_MODE_SWIZZLE_BDW));
 	else
 		MISSING_CASE(GRAPHICS_VER(i915));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8f7156ba9f8e..147d22907960 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -846,16 +846,16 @@ static void init_common_regs(u32 * const regs,
 	u32 ctl;
 	int loc;
 
-	ctl = _MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
-	ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+	ctl = REG_MASKED_FIELD_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
+	ctl |= REG_MASKED_FIELD_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
 	if (inhibit)
 		ctl |= CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT;
 	if (GRAPHICS_VER(engine->i915) < 11)
-		ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT |
-					   CTX_CTRL_RS_CTX_ENABLE);
+		ctl |= REG_MASKED_FIELD_DISABLE(CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT |
+						CTX_CTRL_RS_CTX_ENABLE);
 	/* Wa_14019159160 - Case 2.*/
 	if (ctx_needs_runalone(ce))
-		ctl |= _MASKED_BIT_ENABLE(GEN12_CTX_CTRL_RUNALONE_MODE);
+		ctl |= REG_MASKED_FIELD_ENABLE(GEN12_CTX_CTRL_RUNALONE_MODE);
 	regs[CTX_CONTEXT_CONTROL] = ctl;
 
 	regs[CTX_TIMESTAMP] = ce->stats.runtime.last;
@@ -1344,7 +1344,7 @@ gen12_invalidate_state_cache(u32 *cs)
 {
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
-	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
+	*cs++ = REG_MASKED_FIELD_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
 	return cs;
 }
 
@@ -1736,19 +1736,19 @@ static u32 *gen9_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
 		/* WaDisableGatherAtSetShaderCommonSlice:skl,bxt,kbl,glk */
 		{
 			COMMON_SLICE_CHICKEN2,
-			_MASKED_BIT_DISABLE(GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE),
+			REG_MASKED_FIELD_DISABLE(GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE),
 		},
 
 		/* BSpec: 11391 */
 		{
 			FF_SLICE_CHICKEN,
-			_MASKED_BIT_ENABLE(FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX),
+			REG_MASKED_FIELD_ENABLE(FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX),
 		},
 
 		/* BSpec: 11299 */
 		{
 			_3D_CHICKEN3,
-			_MASKED_BIT_ENABLE(_3D_CHICKEN_SF_PROVOKING_VERTEX_FIX),
+			REG_MASKED_FIELD_ENABLE(_3D_CHICKEN_SF_PROVOKING_VERTEX_FIX),
 		}
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 5c316f734c4a..e91e5cdca26c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -378,9 +378,9 @@ static void chv_rc6_enable(struct intel_rc6 *rc6)
 
 	/* Allows RC6 residency counter to work */
 	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
-			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
-						 VLV_MEDIA_RC6_COUNT_EN |
-						 VLV_RENDER_RC6_COUNT_EN));
+			      REG_MASKED_FIELD_ENABLE(VLV_COUNT_RANGE_HIGH |
+						      VLV_MEDIA_RC6_COUNT_EN |
+						      VLV_RENDER_RC6_COUNT_EN));
 
 	/* 3: Enable RC6 */
 	rc6->ctl_enable = GEN7_RC_CTL_TO_MODE;
@@ -403,11 +403,11 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
 
 	/* Allows RC6 residency counter to work */
 	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
-			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
-						 VLV_MEDIA_RC0_COUNT_EN |
-						 VLV_RENDER_RC0_COUNT_EN |
-						 VLV_MEDIA_RC6_COUNT_EN |
-						 VLV_RENDER_RC6_COUNT_EN));
+			      REG_MASKED_FIELD_ENABLE(VLV_COUNT_RANGE_HIGH |
+						      VLV_MEDIA_RC0_COUNT_EN |
+						      VLV_RENDER_RC0_COUNT_EN |
+						      VLV_MEDIA_RC6_COUNT_EN |
+						      VLV_RENDER_RC6_COUNT_EN));
 
 	rc6->ctl_enable =
 	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
@@ -763,17 +763,17 @@ static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
 	 * set the high bit to be safe.
 	 */
 	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
-			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
+			      REG_MASKED_FIELD_ENABLE(VLV_COUNT_RANGE_HIGH));
 	upper = intel_uncore_read_fw(uncore, reg);
 	do {
 		tmp = upper;
 
 		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
-				      _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
+				      REG_MASKED_FIELD_DISABLE(VLV_COUNT_RANGE_HIGH));
 		lower = intel_uncore_read_fw(uncore, reg);
 
 		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
-				      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
+				      REG_MASKED_FIELD_ENABLE(VLV_COUNT_RANGE_HIGH));
 		upper = intel_uncore_read_fw(uncore, reg);
 	} while (upper != tmp && --loop);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 41b5036dc538..984d0056c01c 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -586,7 +586,7 @@ static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
 		return 0;
 	}
 
-	intel_uncore_write_fw(uncore, reg, _MASKED_BIT_ENABLE(request));
+	intel_uncore_write_fw(uncore, reg, REG_MASKED_FIELD_ENABLE(request));
 	ret = __intel_wait_for_register_fw(uncore, reg, mask, ack,
 					   700, 0, NULL);
 	if (ret)
@@ -602,7 +602,7 @@ static void gen8_engine_reset_cancel(struct intel_engine_cs *engine)
 {
 	intel_uncore_write_fw(engine->uncore,
 			      RING_RESET_CTL(engine->mmio_base),
-			      _MASKED_BIT_DISABLE(RESET_CTL_REQUEST_RESET));
+			      REG_MASKED_FIELD_DISABLE(RESET_CTL_REQUEST_RESET));
 }
 
 static int gen8_reset_engines(struct intel_gt *gt,
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 099453dd9cd5..064e7cce412f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -128,8 +128,7 @@ static void flush_cs_tlb(struct intel_engine_cs *engine)
 			 engine->name);
 
 	ENGINE_WRITE_FW(engine, RING_INSTPM,
-			_MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE |
-					   INSTPM_SYNC_FLUSH));
+			REG_MASKED_FIELD_ENABLE(INSTPM_TLB_INVALIDATE | INSTPM_SYNC_FLUSH));
 	if (__intel_wait_for_register_fw(engine->uncore,
 					 RING_INSTPM(engine->mmio_base),
 					 INSTPM_SYNC_FLUSH, 0,
@@ -172,7 +171,7 @@ static void set_pp_dir(struct intel_engine_cs *engine)
 	if (GRAPHICS_VER(engine->i915) >= 7) {
 		ENGINE_WRITE_FW(engine,
 				RING_MODE_GEN7,
-				_MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
+				REG_MASKED_FIELD_ENABLE(GFX_PPGTT_ENABLE));
 	}
 }
 
@@ -276,7 +275,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 
 	if (GRAPHICS_VER(engine->i915) > 2) {
 		ENGINE_WRITE_FW(engine,
-				RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+				RING_MI_MODE, REG_MASKED_FIELD_DISABLE(STOP_RING));
 		ENGINE_POSTING_READ(engine, RING_MI_MODE);
 	}
 
@@ -719,7 +718,7 @@ static int load_pd_dir(struct i915_request *rq,
 
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
-	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
+	*cs++ = REG_MASKED_FIELD_ENABLE(INSTPM_TLB_INVALIDATE);
 
 	intel_ring_advance(rq, cs);
 
@@ -768,8 +767,7 @@ static int mi_set_context(struct i915_request *rq,
 
 				*cs++ = i915_mmio_reg_offset(
 					   RING_PSMI_CTL(signaller->mmio_base));
-				*cs++ = _MASKED_BIT_ENABLE(
-						GEN6_PSMI_SLEEP_MSG_DISABLE);
+				*cs++ = REG_MASKED_FIELD_ENABLE(GEN6_PSMI_SLEEP_MSG_DISABLE);
 			}
 		}
 	} else if (GRAPHICS_VER(i915) == 5) {
@@ -822,8 +820,7 @@ static int mi_set_context(struct i915_request *rq,
 
 				last_reg = RING_PSMI_CTL(signaller->mmio_base);
 				*cs++ = i915_mmio_reg_offset(last_reg);
-				*cs++ = _MASKED_BIT_DISABLE(
-						GEN6_PSMI_SLEEP_MSG_DISABLE);
+				*cs++ = REG_MASKED_FIELD_DISABLE(GEN6_PSMI_SLEEP_MSG_DISABLE);
 			}
 
 			/* Insert a delay before the next switch! */
@@ -1055,7 +1052,7 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 	 * will then assume that it is busy and bring it out of rc6.
 	 */
 	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
-			      _MASKED_BIT_ENABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
+			      REG_MASKED_FIELD_ENABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
 
 	/* Clear the context id. Here be magic! */
 	intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);
@@ -1076,7 +1073,7 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 	 * and so let it sleep to conserve power when idle.
 	 */
 	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
-			      _MASKED_BIT_DISABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
+			      REG_MASKED_FIELD_DISABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
 
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index f78d991ad7bf..24ea5d8d529c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -300,39 +300,39 @@ wa_mcr_write_clr(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 clr)
 static void
 wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 {
-	wa_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val, true);
+	wa_add(wal, reg, 0, REG_MASKED_FIELD_ENABLE(val), val, true);
 }
 
 static void
 wa_mcr_masked_en(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 val)
 {
-	wa_mcr_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val, true);
+	wa_mcr_add(wal, reg, 0, REG_MASKED_FIELD_ENABLE(val), val, true);
 }
 
 static void
 wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 {
-	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val, true);
+	wa_add(wal, reg, 0, REG_MASKED_FIELD_DISABLE(val), val, true);
 }
 
 static void
 wa_mcr_masked_dis(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 val)
 {
-	wa_mcr_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val, true);
+	wa_mcr_add(wal, reg, 0, REG_MASKED_FIELD_DISABLE(val), val, true);
 }
 
 static void
 wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
 		    u32 mask, u32 val)
 {
-	wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask, true);
+	wa_add(wal, reg, 0, REG_MASKED_FIELD(mask, val), mask, true);
 }
 
 static void
 wa_mcr_masked_field_set(struct i915_wa_list *wal, i915_mcr_reg_t reg,
 			u32 mask, u32 val)
 {
-	wa_mcr_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask, true);
+	wa_mcr_add(wal, reg, 0, REG_MASKED_FIELD(mask, val), mask, true);
 }
 
 static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -666,7 +666,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* WaEnableFloatBlendOptimization:icl */
 	wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-		   _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE),
+		   REG_MASKED_FIELD_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE),
 		   0 /* write-only, so skip validation */,
 		   true);
 
@@ -1131,7 +1131,7 @@ hsw_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	wa_add(wal,
 	       HSW_ROW_CHICKEN3, 0,
-	       _MASKED_BIT_ENABLE(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE),
+	       REG_MASKED_FIELD_ENABLE(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE),
 	       0 /* XXX does this reg exist? */, true);
 
 	/* WaVSRefCountFullforceMissDisable:hsw */
@@ -2272,7 +2272,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	    IS_DG2(i915)) {
 		/* Wa_14015150844 */
 		wa_mcr_add(wal, XEHP_HDC_CHICKEN0, 0,
-			   _MASKED_BIT_ENABLE(DIS_ATOMIC_CHAINING_TYPED_WRITES),
+			   REG_MASKED_FIELD_ENABLE(DIS_ATOMIC_CHAINING_TYPED_WRITES),
 			   0, true);
 	}
 
@@ -2663,7 +2663,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_GRAPHICS_VER(i915, 4, 6))
 		/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
 		wa_add(wal, RING_MI_MODE(RENDER_RING_BASE),
-		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
+		       0, REG_MASKED_FIELD_ENABLE(VS_TIMER_DISPATCH),
 		       /* XXX bit doesn't stick on Broadwater */
 		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH, true);
 
@@ -2679,7 +2679,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * enabled.
 		 */
 		wa_add(wal, ECOSKPD(RENDER_RING_BASE),
-		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
+		       0, REG_MASKED_FIELD_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
 		       0 /* XXX bit doesn't stick on Broadwater */,
 		       true);
 }
@@ -2879,7 +2879,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * we need to explicitly skip the readback.
 		 */
 		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
+			   REG_MASKED_FIELD_ENABLE(ENABLE_PREFETCH_INTO_IC),
 			   0 /* write-only, so skip validation */,
 			   true);
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 142183d3f7fb..13650ce1c7a6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4414,9 +4414,9 @@ static void start_engine(struct intel_engine_cs *engine)
 {
 	ENGINE_WRITE_FW(engine,
 			RING_MODE_GEN7,
-			_MASKED_BIT_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE));
+			REG_MASKED_FIELD_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE));
 
-	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+	ENGINE_WRITE_FW(engine, RING_MI_MODE, REG_MASKED_FIELD_DISABLE(STOP_RING));
 	ENGINE_POSTING_READ(engine, RING_MI_MODE);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 5a9f7749acff..7fac97fe30a6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -1065,7 +1065,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 
 	/* Start the DMA */
 	intel_uncore_write_fw(uncore, DMA_CTRL,
-			      _MASKED_BIT_ENABLE(dma_flags | START_DMA));
+			      REG_MASKED_FIELD_ENABLE(dma_flags | START_DMA));
 
 	/* Wait for DMA to finish */
 	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100, NULL);
@@ -1075,7 +1075,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 		       intel_uncore_read_fw(uncore, DMA_CTRL));
 
 	/* Disable the bits once DMA is over */
-	intel_uncore_write_fw(uncore, DMA_CTRL, _MASKED_BIT_DISABLE(dma_flags));
+	intel_uncore_write_fw(uncore, DMA_CTRL, REG_MASKED_FIELD_DISABLE(dma_flags));
 
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 56b855899609..a34f56630af9 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2047,10 +2047,10 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	bool enable_execlist;
 	int ret;
 
-	(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(1);
+	(*(u32 *)p_data) &= ~REG_MASKED_FIELD_ENABLE(1);
 	if (IS_COFFEELAKE(vgpu->gvt->gt->i915) ||
 	    IS_COMETLAKE(vgpu->gvt->gt->i915))
-		(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(2);
+		(*(u32 *)p_data) &= ~REG_MASKED_FIELD_ENABLE(2);
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (IS_MASKED_BITS_ENABLED(data, 1)) {
@@ -2139,7 +2139,7 @@ static int ring_reset_ctl_write(struct intel_vgpu *vgpu,
 
 	if (IS_MASKED_BITS_ENABLED(data, RESET_CTL_REQUEST_RESET))
 		data |= RESET_CTL_READY_TO_RESET;
-	else if (data & _MASKED_BIT_DISABLE(RESET_CTL_REQUEST_RESET))
+	else if (data & REG_MASKED_FIELD_DISABLE(RESET_CTL_REQUEST_RESET))
 		data &= ~RESET_CTL_READY_TO_RESET;
 
 	vgpu_vreg(vgpu, offset) = data;
@@ -2152,7 +2152,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 {
 	u32 data = *(u32 *)p_data;
 
-	(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(0x18);
+	(*(u32 *)p_data) &= ~REG_MASKED_FIELD_ENABLE(0x18);
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (IS_MASKED_BITS_ENABLED(data, 0x10) ||
@@ -2534,7 +2534,7 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 
 #define RING_REG(base) _MMIO((base) + 0xd0)
 	MMIO_RING_F(RING_REG, 4, F_RO, 0,
-		~_MASKED_BIT_ENABLE(RESET_CTL_REQUEST_RESET), D_BDW_PLUS, NULL,
+		~REG_MASKED_FIELD_ENABLE(RESET_CTL_REQUEST_RESET), D_BDW_PLUS, NULL,
 		ring_reset_ctl_write);
 #undef RING_REG
 
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 3eb442acdf8d..a93999ba8092 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -476,7 +476,7 @@ bool is_inhibit_context(struct intel_context *ce)
 {
 	const u32 *reg_state = ce->lrc_reg_state;
 	u32 inhibit_mask =
-		_MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+		REG_MASKED_FIELD_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
 
 	return inhibit_mask ==
 		(reg_state[CTX_CONTEXT_CONTROL_VAL] & inhibit_mask);
diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/reg.h
index 90d8eb1761a3..a4cf15e43990 100644
--- a/drivers/gpu/drm/i915/gvt/reg.h
+++ b/drivers/gpu/drm/i915/gvt/reg.h
@@ -91,9 +91,9 @@
 		((((bit) & 0xffff0000) == 0) && !!((val) & (((bit) << 16))))
 
 #define IS_MASKED_BITS_ENABLED(_val, _b) \
-		(((_val) & _MASKED_BIT_ENABLE(_b)) == _MASKED_BIT_ENABLE(_b))
+		(((_val) & REG_MASKED_FIELD_ENABLE(_b)) == REG_MASKED_FIELD_ENABLE(_b))
 #define IS_MASKED_BITS_DISABLED(_val, _b) \
-		((_val) & _MASKED_BIT_DISABLE(_b))
+		((_val) & REG_MASKED_FIELD_DISABLE(_b))
 
 #define FORCEWAKE_RENDER_GEN9_REG 0xa278
 #define FORCEWAKE_ACK_RENDER_GEN9_REG 0x0D84
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2820e8f0f765..9ad4383404ff 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2635,10 +2635,10 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 		{
 			RING_CONTEXT_CONTROL(ce->engine->mmio_base),
 			CTX_CONTEXT_CONTROL,
-			_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
-				      active ?
-				      GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE :
-				      0)
+			REG_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
+					 active ?
+					 GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE :
+					 0)
 		},
 	};
 
@@ -2827,8 +2827,8 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 	 */
 	if (IS_GRAPHICS_VER(stream->perf->i915, 9, 11)) {
 		intel_uncore_write(uncore, GEN8_OA_DEBUG,
-				   _MASKED_BIT_ENABLE(GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
-						      GEN9_OA_DEBUG_INCLUDE_CLK_RATIO));
+				   REG_MASKED_FIELD_ENABLE(GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
+							   GEN9_OA_DEBUG_INCLUDE_CLK_RATIO));
 	}
 
 	/*
@@ -2847,9 +2847,9 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
 {
-	return _MASKED_FIELD(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
-			     (stream->sample_flags & SAMPLE_OA_REPORT) ?
-			     0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	return REG_MASKED_FIELD(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
+				(stream->sample_flags & SAMPLE_OA_REPORT) ?
+				0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
 static int
@@ -2870,15 +2870,15 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	 */
 	if (IS_DG2(i915)) {
 		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
-					     _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
+					     REG_MASKED_FIELD_ENABLE(STALL_DOP_GATING_DISABLE));
 		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
-				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
+				   REG_MASKED_FIELD_ENABLE(GEN12_DISABLE_DOP_GATING));
 	}
 
 	intel_uncore_write(uncore, __oa_regs(stream)->oa_debug,
 			   /* Disable clk ratio reports, like previous Gens. */
-			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
-					      GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
+			   REG_MASKED_FIELD_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
+						   GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
 			   /*
 			    * If the user didn't require OA reports, instruct
 			    * the hardware not to emit ctx switch reports.
@@ -2949,9 +2949,9 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	 */
 	if (IS_DG2(i915)) {
 		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
-					     _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+					     REG_MASKED_FIELD_DISABLE(STALL_DOP_GATING_DISABLE));
 		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
-				   _MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
+				   REG_MASKED_FIELD_DISABLE(GEN12_DISABLE_DOP_GATING));
 	}
 
 	/* disable the context save/restore or OAR counters */
@@ -4475,7 +4475,7 @@ static u32 mask_reg_value(u32 reg, u32 val)
 	 * programmed by userspace doesn't change this.
 	 */
 	if (REG_EQUAL(reg, HALF_SLICE_CHICKEN2))
-		val = val & ~_MASKED_BIT_ENABLE(GEN8_ST_PO_DISABLE);
+		val = val & ~REG_MASKED_FIELD_ENABLE(GEN8_ST_PO_DISABLE);
 
 	/*
 	 * WAIT_FOR_RC6_EXIT has only one bit fulfilling the function
@@ -4483,7 +4483,7 @@ static u32 mask_reg_value(u32 reg, u32 val)
 	 * configs.
 	 */
 	if (REG_EQUAL(reg, WAIT_FOR_RC6_EXIT))
-		val = val & ~_MASKED_BIT_ENABLE(HSW_WAIT_FOR_RC6_EXIT_ENABLE);
+		val = val & ~REG_MASKED_FIELD_ENABLE(HSW_WAIT_FOR_RC6_EXIT_ENABLE);
 
 	return val;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 59c661539895..9d72f6fae4ae 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -105,17 +105,17 @@
 	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
 	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
 
-#define _MASKED_FIELD(mask, value) \
+#define REG_MASKED_FIELD(mask, value) \
 	(BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask), (mask) & 0xffff0000, 0)) + \
 	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(value), (value) & 0xffff0000, 0)) + \
 	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask) && __builtin_constant_p(value), (value) & ~(mask), 0)) + \
 	 ((mask) << 16 | (value)))
 
-#define _MASKED_BIT_ENABLE(a) \
-	(__builtin_choose_expr(__builtin_constant_p(a), _MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })))
+#define REG_MASKED_FIELD_ENABLE(a) \
+	(__builtin_choose_expr(__builtin_constant_p(a), REG_MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); REG_MASKED_FIELD(_a, _a); })))
 
-#define _MASKED_BIT_DISABLE(a) \
-	(_MASKED_FIELD((a), 0))
+#define REG_MASKED_FIELD_DISABLE(a) \
+	(REG_MASKED_FIELD((a), 0))
 
 /*
  * Given the first two numbers __a and __b of arbitrarily many evenly spaced
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index d0400ea2ffc7..68a6f94f2a37 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -454,7 +454,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
 
 	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
-			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableSDEUnitClockGating:bdw */
 	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
@@ -519,13 +519,13 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 
 	if (INTEL_INFO(i915)->gt == 1)
 		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
-				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+				   REG_MASKED_FIELD_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	else {
 		/* must write both registers */
 		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
-				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+				   REG_MASKED_FIELD_ENABLE(DOP_CLOCK_GATING_DISABLE));
 		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2_GT2,
-				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+				   REG_MASKED_FIELD_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	}
 
 	/*
@@ -559,7 +559,7 @@ static void vlv_init_clock_gating(struct drm_i915_private *i915)
 
 	/* WaDisableDopClockGating:vlv */
 	intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
-			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(DOP_CLOCK_GATING_DISABLE));
 
 	/* This is required by WaCatErrorRejectionIssue:vlv */
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
@@ -594,7 +594,7 @@ static void chv_init_clock_gating(struct drm_i915_private *i915)
 
 	/* WaDisableSemaphoreAndSyncFlipWait:chv */
 	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
-			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableCSUnitClockGating:chv */
 	intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
@@ -640,7 +640,7 @@ static void i965gm_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
 			   MI_ARB_STATE,
-			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
 static void i965g_init_clock_gating(struct drm_i915_private *i915)
@@ -652,7 +652,7 @@ static void i965g_init_clock_gating(struct drm_i915_private *i915)
 			   I965_FBC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, 0);
 	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
-			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
 static void gen3_init_clock_gating(struct drm_i915_private *i915)
@@ -665,21 +665,21 @@ static void gen3_init_clock_gating(struct drm_i915_private *i915)
 
 	if (IS_PINEVIEW(i915))
 		intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
-				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
+				   REG_MASKED_FIELD_ENABLE(ECO_GATING_CX_ONLY));
 
 	/* IIR "flip pending" means done if this bit is set */
 	intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
-			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
+			   REG_MASKED_FIELD_DISABLE(ECO_FLIP_DONE));
 
 	/* interrupts should cause a wake up from C3 */
-	intel_uncore_write(&i915->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
+	intel_uncore_write(&i915->uncore, INSTPM, REG_MASKED_FIELD_ENABLE(INSTPM_AGPBUSY_INT_EN));
 
 	/* On GEN3 we really need to make sure the ARB C3 LP bit is set */
 	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
-			   _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
+			   REG_MASKED_FIELD_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
 
 	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
-			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
 static void i85x_init_clock_gating(struct drm_i915_private *i915)
@@ -687,11 +687,11 @@ static void i85x_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
 
 	/* interrupts should cause a wake up from C3 */
-	intel_uncore_write(&i915->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
-			   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
+	intel_uncore_write(&i915->uncore, MI_STATE, REG_MASKED_FIELD_ENABLE(MI_AGPBUSY_INT_EN) |
+			   REG_MASKED_FIELD_DISABLE(MI_AGPBUSY_830_MODE));
 
 	intel_uncore_write(&i915->uncore, MEM_MODE,
-			   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
 
 	/*
 	 * Have FBC ignore 3D activity since we use software
@@ -701,14 +701,14 @@ static void i85x_init_clock_gating(struct drm_i915_private *i915)
 	 * until a 2D blit occurs.
 	 */
 	intel_uncore_write(&i915->uncore, SCPD0,
-			   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
+			   REG_MASKED_FIELD_ENABLE(SCPD_FBC_IGNORE_3D));
 }
 
 static void i830_init_clock_gating(struct drm_i915_private *i915)
 {
 	intel_uncore_write(&i915->uncore, MEM_MODE,
-			   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
-			   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
+			   REG_MASKED_FIELD_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
+			   REG_MASKED_FIELD_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
 }
 
 void intel_clock_gating_init(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index bccedd59a114..5b698d4d7a7f 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -132,8 +132,8 @@ intel_uncore_forcewake_domain_to_str(const enum forcewake_domain_id id)
 }
 
 #define fw_ack(d) readl((d)->reg_ack)
-#define fw_set(d, val) writel(_MASKED_BIT_ENABLE((val)), (d)->reg_set)
-#define fw_clear(d, val) writel(_MASKED_BIT_DISABLE((val)), (d)->reg_set)
+#define fw_set(d, val) writel(REG_MASKED_FIELD_ENABLE((val)), (d)->reg_set)
+#define fw_clear(d, val) writel(REG_MASKED_FIELD_DISABLE((val)), (d)->reg_set)
 
 static inline void
 fw_domain_reset(const struct intel_uncore_forcewake_domain *d)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index f7ed4e18a3ab..2b63fb2cffd6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -66,8 +66,8 @@ bool intel_pxp_is_active(const struct intel_pxp *pxp)
 
 static void kcr_pxp_set_status(const struct intel_pxp *pxp, bool enable)
 {
-	u32 val = enable ? _MASKED_BIT_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES) :
-		  _MASKED_BIT_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+	u32 val = enable ? REG_MASKED_FIELD_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES) :
+		  REG_MASKED_FIELD_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
 
 	intel_uncore_write(pxp->ctrl_gt->uncore, KCR_INIT(pxp->kcr_base), val);
 }
diff --git a/drivers/gpu/drm/xe/xe_eu_stall.c b/drivers/gpu/drm/xe/xe_eu_stall.c
index 39723928a019..c34408cfd292 100644
--- a/drivers/gpu/drm/xe/xe_eu_stall.c
+++ b/drivers/gpu/drm/xe/xe_eu_stall.c
@@ -442,9 +442,9 @@ static void clear_dropped_eviction_line_bit(struct xe_gt *gt, u16 group, u16 ins
 	 * On Xe2 and later GPUs, the bit has to be cleared by writing 0 to it.
 	 */
 	if (GRAPHICS_VER(xe) >= 20)
-		write_ptr_reg = _MASKED_BIT_DISABLE(XEHPC_EUSTALL_REPORT_OVERFLOW_DROP);
+		write_ptr_reg = REG_MASKED_FIELD_DISABLE(XEHPC_EUSTALL_REPORT_OVERFLOW_DROP);
 	else
-		write_ptr_reg = _MASKED_BIT_ENABLE(XEHPC_EUSTALL_REPORT_OVERFLOW_DROP);
+		write_ptr_reg = REG_MASKED_FIELD_ENABLE(XEHPC_EUSTALL_REPORT_OVERFLOW_DROP);
 
 	xe_gt_mcr_unicast_write(gt, XEHPC_EUSTALL_REPORT, write_ptr_reg, group, instance);
 }
@@ -504,7 +504,7 @@ static int xe_eu_stall_data_buf_read(struct xe_eu_stall_data_stream *stream,
 	/* Read pointer can overflow into one additional bit */
 	read_ptr &= (buf_size << 1) - 1;
 	read_ptr_reg = REG_FIELD_PREP(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, (read_ptr >> 6));
-	read_ptr_reg = _MASKED_FIELD(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, read_ptr_reg);
+	read_ptr_reg = REG_MASKED_FIELD(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, read_ptr_reg);
 	xe_gt_mcr_unicast_write(gt, XEHPC_EUSTALL_REPORT1, read_ptr_reg, group, instance);
 	xecore_buf->read = read_ptr;
 	trace_xe_eu_stall_data_read(group, instance, read_ptr, write_ptr,
@@ -674,7 +674,7 @@ static int xe_eu_stall_stream_enable(struct xe_eu_stall_data_stream *stream)
 
 	if (XE_GT_WA(gt, 22016596838))
 		xe_gt_mcr_multicast_write(gt, ROW_CHICKEN2,
-					  _MASKED_BIT_ENABLE(DISABLE_DOP_GATING));
+					  REG_MASKED_FIELD_ENABLE(DISABLE_DOP_GATING));
 
 	for_each_dss_steering(xecore, gt, group, instance) {
 		write_ptr_reg = xe_gt_mcr_unicast_read(gt, XEHPC_EUSTALL_REPORT, group, instance);
@@ -683,7 +683,7 @@ static int xe_eu_stall_stream_enable(struct xe_eu_stall_data_stream *stream)
 			clear_dropped_eviction_line_bit(gt, group, instance);
 		write_ptr = REG_FIELD_GET(XEHPC_EUSTALL_REPORT_WRITE_PTR_MASK, write_ptr_reg);
 		read_ptr_reg = REG_FIELD_PREP(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, write_ptr);
-		read_ptr_reg = _MASKED_FIELD(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, read_ptr_reg);
+		read_ptr_reg = REG_MASKED_FIELD(XEHPC_EUSTALL_REPORT1_READ_PTR_MASK, read_ptr_reg);
 		/* Initialize the read pointer to the write pointer */
 		xe_gt_mcr_unicast_write(gt, XEHPC_EUSTALL_REPORT1, read_ptr_reg, group, instance);
 		write_ptr <<= 6;
@@ -695,10 +695,10 @@ static int xe_eu_stall_stream_enable(struct xe_eu_stall_data_stream *stream)
 	stream->data_drop.reported_to_user = false;
 	bitmap_zero(stream->data_drop.mask, XE_MAX_DSS_FUSE_BITS);
 
-	reg_value = _MASKED_FIELD(EUSTALL_MOCS | EUSTALL_SAMPLE_RATE,
-				  REG_FIELD_PREP(EUSTALL_MOCS, gt->mocs.uc_index << 1) |
-				  REG_FIELD_PREP(EUSTALL_SAMPLE_RATE,
-						 stream->sampling_rate_mult));
+	reg_value = REG_MASKED_FIELD(EUSTALL_MOCS | EUSTALL_SAMPLE_RATE,
+				     REG_FIELD_PREP(EUSTALL_MOCS, gt->mocs.uc_index << 1) |
+				     REG_FIELD_PREP(EUSTALL_SAMPLE_RATE,
+						    stream->sampling_rate_mult));
 	xe_gt_mcr_multicast_write(gt, XEHPC_EUSTALL_CTRL, reg_value);
 	/* GGTT addresses can never be > 32 bits */
 	xe_gt_mcr_multicast_write(gt, XEHPC_EUSTALL_BASE_UPPER, 0);
@@ -830,7 +830,7 @@ static int xe_eu_stall_disable_locked(struct xe_eu_stall_data_stream *stream)
 
 	if (XE_GT_WA(gt, 22016596838))
 		xe_gt_mcr_multicast_write(gt, ROW_CHICKEN2,
-					  _MASKED_BIT_DISABLE(DISABLE_DOP_GATING));
+					  REG_MASKED_FIELD_DISABLE(DISABLE_DOP_GATING));
 
 	xe_force_wake_put(gt_to_fw(gt), stream->fw_ref);
 	xe_pm_runtime_put(gt_to_xe(gt));
diff --git a/drivers/gpu/drm/xe/xe_execlist.c b/drivers/gpu/drm/xe/xe_execlist.c
index 7e8a3a7db741..755a2bff5d7b 100644
--- a/drivers/gpu/drm/xe/xe_execlist.c
+++ b/drivers/gpu/drm/xe/xe_execlist.c
@@ -47,7 +47,7 @@ static void __start_lrc(struct xe_hw_engine *hwe, struct xe_lrc *lrc,
 	struct xe_mmio *mmio = &gt->mmio;
 	struct xe_device *xe = gt_to_xe(gt);
 	u64 lrc_desc;
-	u32 ring_mode = _MASKED_BIT_ENABLE(GFX_DISABLE_LEGACY_MODE);
+	u32 ring_mode = REG_MASKED_FIELD_ENABLE(GFX_DISABLE_LEGACY_MODE);
 
 	lrc_desc = xe_lrc_descriptor(lrc);
 
@@ -61,7 +61,7 @@ static void __start_lrc(struct xe_hw_engine *hwe, struct xe_lrc *lrc,
 
 	if (hwe->class == XE_ENGINE_CLASS_COMPUTE)
 		xe_mmio_write32(mmio, RCU_MODE,
-				_MASKED_BIT_ENABLE(RCU_MODE_CCS_ENABLE));
+				REG_MASKED_FIELD_ENABLE(RCU_MODE_CCS_ENABLE));
 
 	xe_lrc_write_ctx_reg(lrc, CTX_RING_TAIL, lrc->ring.tail);
 	lrc->ring.old_tail = lrc->ring.tail;
@@ -83,7 +83,7 @@ static void __start_lrc(struct xe_hw_engine *hwe, struct xe_lrc *lrc,
 	xe_mmio_read32(mmio, RING_HWS_PGA(hwe->mmio_base));
 
 	if (xe_device_has_msix(gt_to_xe(hwe->gt)))
-		ring_mode |= _MASKED_BIT_ENABLE(GFX_MSIX_INTERRUPT_ENABLE);
+		ring_mode |= REG_MASKED_FIELD_ENABLE(GFX_MSIX_INTERRUPT_ENABLE);
 	xe_mmio_write32(mmio, RING_MODE(hwe->mmio_base), ring_mode);
 
 	xe_mmio_write32(mmio, RING_EXECLIST_SQ_CONTENTS_LO(hwe->mmio_base),
diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
index ea3ad600d7c7..337baf0a6e87 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine.c
+++ b/drivers/gpu/drm/xe/xe_hw_engine.c
@@ -327,21 +327,21 @@ void xe_hw_engine_enable_ring(struct xe_hw_engine *hwe)
 {
 	u32 ccs_mask =
 		xe_hw_engine_mask_per_class(hwe->gt, XE_ENGINE_CLASS_COMPUTE);
-	u32 ring_mode = _MASKED_BIT_ENABLE(GFX_DISABLE_LEGACY_MODE);
+	u32 ring_mode = REG_MASKED_FIELD_ENABLE(GFX_DISABLE_LEGACY_MODE);
 
 	if (hwe->class == XE_ENGINE_CLASS_COMPUTE && ccs_mask)
 		xe_mmio_write32(&hwe->gt->mmio, RCU_MODE,
-				_MASKED_BIT_ENABLE(RCU_MODE_CCS_ENABLE));
+				REG_MASKED_FIELD_ENABLE(RCU_MODE_CCS_ENABLE));
 
 	xe_hw_engine_mmio_write32(hwe, RING_HWSTAM(0), ~0x0);
 	xe_hw_engine_mmio_write32(hwe, RING_HWS_PGA(0),
 				  xe_bo_ggtt_addr(hwe->hwsp));
 
 	if (xe_device_has_msix(gt_to_xe(hwe->gt)))
-		ring_mode |= _MASKED_BIT_ENABLE(GFX_MSIX_INTERRUPT_ENABLE);
+		ring_mode |= REG_MASKED_FIELD_ENABLE(GFX_MSIX_INTERRUPT_ENABLE);
 	xe_hw_engine_mmio_write32(hwe, RING_MODE(0), ring_mode);
 	xe_hw_engine_mmio_write32(hwe, RING_MI_MODE(0),
-				  _MASKED_BIT_DISABLE(STOP_RING));
+				  REG_MASKED_FIELD_DISABLE(STOP_RING));
 	xe_hw_engine_mmio_read32(hwe, RING_MI_MODE(0));
 }
 
diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index 9590b4605952..9dc22f1dc279 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -641,12 +641,12 @@ static const u8 *reg_offsets(struct xe_device *xe, enum xe_engine_class class)
 
 static void set_context_control(u32 *regs, struct xe_hw_engine *hwe)
 {
-	regs[CTX_CONTEXT_CONTROL] = _MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH |
-						       CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+	regs[CTX_CONTEXT_CONTROL] = REG_MASKED_FIELD_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH |
+							    CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
 
 	if (xe_gt_has_indirect_ring_state(hwe->gt))
 		regs[CTX_CONTEXT_CONTROL] |=
-			_MASKED_BIT_ENABLE(CTX_CTRL_INDIRECT_RING_STATE_ENABLE);
+			REG_MASKED_FIELD_ENABLE(CTX_CTRL_INDIRECT_RING_STATE_ENABLE);
 }
 
 static void set_memory_based_intr(u32 *regs, struct xe_hw_engine *hwe)
@@ -1208,7 +1208,7 @@ static ssize_t setup_invalidate_state_cache_wa(struct xe_lrc *lrc,
 
 	*cmd++ = MI_LOAD_REGISTER_IMM | MI_LRI_NUM_REGS(1);
 	*cmd++ = CS_DEBUG_MODE2(0).addr;
-	*cmd++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
+	*cmd++ = REG_MASKED_FIELD_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
 
 	return cmd - batch;
 }
@@ -1546,12 +1546,12 @@ static int xe_lrc_init(struct xe_lrc *lrc, struct xe_hw_engine *hwe,
 	if (init_flags & XE_LRC_CREATE_RUNALONE)
 		xe_lrc_write_ctx_reg(lrc, CTX_CONTEXT_CONTROL,
 				     xe_lrc_read_ctx_reg(lrc, CTX_CONTEXT_CONTROL) |
-				     _MASKED_BIT_ENABLE(CTX_CTRL_RUN_ALONE));
+				     REG_MASKED_FIELD_ENABLE(CTX_CTRL_RUN_ALONE));
 
 	if (init_flags & XE_LRC_CREATE_PXP)
 		xe_lrc_write_ctx_reg(lrc, CTX_CONTEXT_CONTROL,
 				     xe_lrc_read_ctx_reg(lrc, CTX_CONTEXT_CONTROL) |
-				     _MASKED_BIT_ENABLE(CTX_CTRL_PXP_ENABLE));
+				     REG_MASKED_FIELD_ENABLE(CTX_CTRL_PXP_ENABLE));
 
 	lrc->ctx_timestamp = 0;
 	xe_lrc_write_ctx_reg(lrc, CTX_TIMESTAMP, 0);
diff --git a/drivers/gpu/drm/xe/xe_oa.c b/drivers/gpu/drm/xe/xe_oa.c
index dcd393b0931a..9266a6ef9b1a 100644
--- a/drivers/gpu/drm/xe/xe_oa.c
+++ b/drivers/gpu/drm/xe/xe_oa.c
@@ -758,8 +758,8 @@ static int xe_oa_configure_oar_context(struct xe_oa_stream *stream, bool enable)
 		},
 		{
 			RING_CONTEXT_CONTROL(stream->hwe->mmio_base),
-			_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
-				      enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0)
+			REG_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
+					 enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0)
 		},
 	};
 
@@ -782,9 +782,9 @@ static int xe_oa_configure_oac_context(struct xe_oa_stream *stream, bool enable)
 		},
 		{
 			RING_CONTEXT_CONTROL(stream->hwe->mmio_base),
-			_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
-				      enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0) |
-			_MASKED_FIELD(CTX_CTRL_RUN_ALONE, enable ? CTX_CTRL_RUN_ALONE : 0),
+			REG_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
+					 enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0) |
+			REG_MASKED_FIELD(CTX_CTRL_RUN_ALONE, enable ? CTX_CTRL_RUN_ALONE : 0),
 		},
 	};
 
@@ -812,9 +812,9 @@ static int xe_oa_configure_oa_context(struct xe_oa_stream *stream, bool enable)
 
 static u32 oag_configure_mmio_trigger(const struct xe_oa_stream *stream, bool enable)
 {
-	return _MASKED_FIELD(OAG_OA_DEBUG_DISABLE_MMIO_TRG,
-			     enable && stream && stream->sample ?
-			     0 : OAG_OA_DEBUG_DISABLE_MMIO_TRG);
+	return REG_MASKED_FIELD(OAG_OA_DEBUG_DISABLE_MMIO_TRG,
+				enable && stream && stream->sample ?
+				0 : OAG_OA_DEBUG_DISABLE_MMIO_TRG);
 }
 
 static void xe_oa_disable_metric_set(struct xe_oa_stream *stream)
@@ -825,9 +825,9 @@ static void xe_oa_disable_metric_set(struct xe_oa_stream *stream)
 	/* Enable thread stall DOP gating and EU DOP gating. */
 	if (XE_GT_WA(stream->gt, 1508761755)) {
 		xe_gt_mcr_multicast_write(stream->gt, ROW_CHICKEN,
-					  _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+					  REG_MASKED_FIELD_DISABLE(STALL_DOP_GATING_DISABLE));
 		xe_gt_mcr_multicast_write(stream->gt, ROW_CHICKEN2,
-					  _MASKED_BIT_DISABLE(DISABLE_DOP_GATING));
+					  REG_MASKED_FIELD_DISABLE(DISABLE_DOP_GATING));
 	}
 
 	xe_mmio_write32(mmio, __oa_regs(stream)->oa_debug,
@@ -1055,16 +1055,16 @@ static int xe_oa_emit_oa_config(struct xe_oa_stream *stream, struct xe_oa_config
 static u32 oag_report_ctx_switches(const struct xe_oa_stream *stream)
 {
 	/* If user didn't require OA reports, ask HW not to emit ctx switch reports */
-	return _MASKED_FIELD(OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
-			     stream->sample ?
-			     0 : OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	return REG_MASKED_FIELD(OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
+				stream->sample ?
+				0 : OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
 static u32 oag_buf_size_select(const struct xe_oa_stream *stream)
 {
-	return _MASKED_FIELD(OAG_OA_DEBUG_BUF_SIZE_SELECT,
-			     xe_bo_size(stream->oa_buffer.bo) > SZ_16M ?
-			     OAG_OA_DEBUG_BUF_SIZE_SELECT : 0);
+	return REG_MASKED_FIELD(OAG_OA_DEBUG_BUF_SIZE_SELECT,
+				xe_bo_size(stream->oa_buffer.bo) > SZ_16M ?
+				OAG_OA_DEBUG_BUF_SIZE_SELECT : 0);
 }
 
 static int xe_oa_enable_metric_set(struct xe_oa_stream *stream)
@@ -1079,9 +1079,9 @@ static int xe_oa_enable_metric_set(struct xe_oa_stream *stream)
 	 */
 	if (XE_GT_WA(stream->gt, 1508761755)) {
 		xe_gt_mcr_multicast_write(stream->gt, ROW_CHICKEN,
-					  _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
+					  REG_MASKED_FIELD_ENABLE(STALL_DOP_GATING_DISABLE));
 		xe_gt_mcr_multicast_write(stream->gt, ROW_CHICKEN2,
-					  _MASKED_BIT_ENABLE(DISABLE_DOP_GATING));
+					  REG_MASKED_FIELD_ENABLE(DISABLE_DOP_GATING));
 	}
 
 	/* Disable clk ratio reports */
@@ -1096,7 +1096,7 @@ static int xe_oa_enable_metric_set(struct xe_oa_stream *stream)
 			OAG_OA_DEBUG_DISABLE_START_TRG_1_COUNT_QUAL;
 
 	xe_mmio_write32(mmio, __oa_regs(stream)->oa_debug,
-			_MASKED_BIT_ENABLE(oa_debug) |
+			REG_MASKED_FIELD_ENABLE(oa_debug) |
 			oag_report_ctx_switches(stream) |
 			oag_buf_size_select(stream) |
 			oag_configure_mmio_trigger(stream, true));
diff --git a/drivers/gpu/drm/xe/xe_pxp.c b/drivers/gpu/drm/xe/xe_pxp.c
index d61446bf9c19..e2978e48f660 100644
--- a/drivers/gpu/drm/xe/xe_pxp.c
+++ b/drivers/gpu/drm/xe/xe_pxp.c
@@ -312,8 +312,8 @@ void xe_pxp_irq_handler(struct xe_device *xe, u16 iir)
 
 static int kcr_pxp_set_status(const struct xe_pxp *pxp, bool enable)
 {
-	u32 val = enable ? _MASKED_BIT_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES) :
-		  _MASKED_BIT_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+	u32 val = enable ? REG_MASKED_FIELD_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES) :
+		  REG_MASKED_FIELD_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
 
 	CLASS(xe_force_wake, fw_ref)(gt_to_fw(pxp->gt), XE_FW_GT);
 	if (!xe_force_wake_ref_has_domain(fw_ref.domains, XE_FW_GT))
diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
index 60c82b920f47..684a6064b4c1 100644
--- a/drivers/gpu/drm/xe/xe_uc_fw.c
+++ b/drivers/gpu/drm/xe/xe_uc_fw.c
@@ -885,7 +885,7 @@ static int uc_fw_xfer(struct xe_uc_fw *uc_fw, u32 offset, u32 dma_flags)
 
 	/* Start the DMA */
 	xe_mmio_write32(mmio, DMA_CTRL,
-			_MASKED_BIT_ENABLE(dma_flags | START_DMA));
+			REG_MASKED_FIELD_ENABLE(dma_flags | START_DMA));
 
 	/* Wait for DMA to finish */
 	ret = xe_mmio_wait32(mmio, DMA_CTRL, START_DMA, 0, 100000, &dma_ctrl,
@@ -895,7 +895,7 @@ static int uc_fw_xfer(struct xe_uc_fw *uc_fw, u32 offset, u32 dma_flags)
 			xe_uc_fw_type_repr(uc_fw->type), dma_ctrl);
 
 	/* Disable the bits once DMA is over */
-	xe_mmio_write32(mmio, DMA_CTRL, _MASKED_BIT_DISABLE(dma_flags));
+	xe_mmio_write32(mmio, DMA_CTRL, REG_MASKED_FIELD_DISABLE(dma_flags));
 
 	return ret;
 }
-- 
2.47.3

