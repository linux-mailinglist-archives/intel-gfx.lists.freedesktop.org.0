Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BFD1B275F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55166E0CE;
	Tue, 21 Apr 2020 13:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C956E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 13:17:04 +0000 (UTC)
IronPort-SDR: ZAJsMo0GTZX7/PhzUZRXYO1hCCeIZPbPwg9h0iFF2nJi+DaWujQ7F959iW27LFmhiz1AKv5CYW
 4fVGMwV9JJ0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 06:17:04 -0700
IronPort-SDR: g46RgOgUsmPakCbSh9qMri1qdy0MC/nApRKKhlECVJAUV8s8qa8cPNPw5MKd8idJv7DVWdII3r
 0BtrYJop/lZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="258707918"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2020 06:17:03 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 561C6843785; Tue, 21 Apr 2020 16:16:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 16:16:29 +0300
Message-Id: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Make define for lrc state offset
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

More often than not, we need a byte offset into lrc
register state from the start of the hw state. Make it so.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_sseu.c |  3 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_lrc.h          |  1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 14 +++++++-------
 drivers/gpu/drm/i915/i915_perf.c             |  2 +-
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
index 57a30956c922..487299cb91f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
@@ -25,8 +25,7 @@ static int gen8_emit_rpcs_config(struct i915_request *rq,
 		return PTR_ERR(cs);
 
 	offset = i915_ggtt_offset(ce->state) +
-		 LRC_STATE_PN * PAGE_SIZE +
-		 CTX_R_PWR_CLK_STATE * 4;
+		 LRC_STATE_OFFSET + CTX_R_PWR_CLK_STATE * 4;
 
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 	*cs++ = lower_32_bits(offset);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 34f67eb9bfa1..6a4fa7c6176a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1161,7 +1161,7 @@ static void restore_default_state(struct intel_context *ce,
 
 	if (engine->pinned_default_state)
 		memcpy(regs, /* skip restoring the vanilla PPHWSP */
-		       engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
+		       engine->pinned_default_state + LRC_STATE_OFFSET,
 		       engine->context_size - PAGE_SIZE);
 
 	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
@@ -3136,7 +3136,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
 
 static void execlists_context_unpin(struct intel_context *ce)
 {
-	check_redzone((void *)ce->lrc_reg_state - LRC_STATE_PN * PAGE_SIZE,
+	check_redzone((void *)ce->lrc_reg_state - LRC_STATE_OFFSET,
 		      ce->engine);
 
 	i915_gem_object_unpin_map(ce->state->obj);
@@ -3183,7 +3183,7 @@ __execlists_context_pin(struct intel_context *ce,
 		return PTR_ERR(vaddr);
 
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
-	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
+	ce->lrc_reg_state = vaddr + LRC_STATE_OFFSET;
 	__execlists_update_reg_state(ce, engine, ce->ring->tail);
 
 	return 0;
@@ -4846,7 +4846,7 @@ populate_lr_context(struct intel_context *ce,
 	 * The second page of the context object contains some registers which
 	 * must be set up prior to the first execution.
 	 */
-	execlists_init_reg_state(vaddr + LRC_STATE_PN * PAGE_SIZE,
+	execlists_init_reg_state(vaddr + LRC_STATE_OFFSET,
 				 ce, engine, ring, inhibit);
 
 	ret = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index dfbc214e14f5..91fd8e452d9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -90,6 +90,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine);
 #define LRC_PPHWSP_SZ	(1)
 /* After the PPHWSP we have the logical state for the context */
 #define LRC_STATE_PN	(LRC_PPHWSP_PN + LRC_PPHWSP_SZ)
+#define LRC_STATE_OFFSET (LRC_STATE_PN * PAGE_SIZE)
 
 /* Space within PPHWSP reserved to be used as scratch */
 #define LRC_PPHWSP_SCRATCH		0x34
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f5e35afe1b2..32d2b0850dec 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4131,7 +4131,7 @@ static int live_lrc_layout(void *arg)
 			err = PTR_ERR(hw);
 			break;
 		}
-		hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+		hw += LRC_STATE_OFFSET / sizeof(*hw);
 
 		execlists_init_reg_state(memset(lrc, POISON_INUSE, PAGE_SIZE),
 					 engine->kernel_context,
@@ -4284,7 +4284,7 @@ static int live_lrc_fixed(void *arg)
 			err = PTR_ERR(hw);
 			break;
 		}
-		hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+		hw += LRC_STATE_OFFSET / sizeof(*hw);
 
 		for (t = tbl; t->name; t++) {
 			int dw = find_offset(hw, t->reg);
@@ -4870,7 +4870,7 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 	x = 0;
 	dw = 0;
 	hw = ce->engine->pinned_default_state;
-	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
 
@@ -5023,7 +5023,7 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 
 	dw = 0;
 	hw = ce->engine->pinned_default_state;
-	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
 
@@ -5147,12 +5147,12 @@ static int compare_isolation(struct intel_engine_cs *engine,
 		err = PTR_ERR(lrc);
 		goto err_B1;
 	}
-	lrc += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+	lrc += LRC_STATE_OFFSET / sizeof(*hw);
 
 	x = 0;
 	dw = 0;
 	hw = engine->pinned_default_state;
-	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
+	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
 
@@ -5394,7 +5394,7 @@ static struct i915_request *garbage(struct intel_context *ce,
 	prandom_bytes_state(prng,
 			    ce->lrc_reg_state,
 			    ce->engine->context_size -
-			    LRC_STATE_PN * PAGE_SIZE);
+			    LRC_STATE_OFFSET);
 
 	rq = intel_context_create_request(ce);
 	if (IS_ERR(rq)) {
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 5cde3e4e7be6..dec1b33e4da8 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2098,7 +2098,7 @@ gen8_store_flex(struct i915_request *rq,
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	offset = i915_ggtt_offset(ce->state) + LRC_STATE_PN * PAGE_SIZE;
+	offset = i915_ggtt_offset(ce->state) + LRC_STATE_OFFSET;
 	do {
 		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*cs++ = offset + flex->offset * sizeof(u32);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
