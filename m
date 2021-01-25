Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA0D3025F1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072136E17F;
	Mon, 25 Jan 2021 14:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623916E10E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693630-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:04 +0000
Message-Id: <20210125140136.10494-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/41] drm/i915/selftests: Exercise relative
 mmio paths to non-privileged registers
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Verify that context isolation is also preserved when accessing
context-local registers with relative-mmio commands.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 88 ++++++++++++++++++++------
 1 file changed, 67 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 7bf34c439876..0524232378e4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -910,7 +910,9 @@ create_user_vma(struct i915_address_space *vm, unsigned long size)
 }
 
 static struct i915_vma *
-store_context(struct intel_context *ce, struct i915_vma *scratch)
+store_context(struct intel_context *ce,
+	      struct i915_vma *scratch,
+	      bool relative)
 {
 	struct i915_vma *batch;
 	u32 dw, x, *cs, *hw;
@@ -939,6 +941,9 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
+		u32 cmd = MI_STORE_REGISTER_MEM_GEN8;
+		u32 offset = 0;
+		u32 mask = ~0;
 
 		if (hw[dw] == 0) {
 			dw++;
@@ -950,11 +955,19 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 			continue;
 		}
 
+		if (hw[dw] & MI_LRI_LRM_CS_MMIO) {
+			mask = 0xfff;
+			if (relative)
+				cmd |= MI_LRI_LRM_CS_MMIO;
+			else
+				offset = ce->engine->mmio_base;
+		}
+
 		dw++;
 		len = (len + 1) / 2;
 		while (len--) {
-			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
-			*cs++ = hw[dw];
+			*cs++ = cmd;
+			*cs++ = (hw[dw] & mask) + offset;
 			*cs++ = lower_32_bits(scratch->node.start + x);
 			*cs++ = upper_32_bits(scratch->node.start + x);
 
@@ -993,6 +1006,7 @@ static struct i915_request *
 record_registers(struct intel_context *ce,
 		 struct i915_vma *before,
 		 struct i915_vma *after,
+		 bool relative,
 		 u32 *sema)
 {
 	struct i915_vma *b_before, *b_after;
@@ -1000,11 +1014,11 @@ record_registers(struct intel_context *ce,
 	u32 *cs;
 	int err;
 
-	b_before = store_context(ce, before);
+	b_before = store_context(ce, before, relative);
 	if (IS_ERR(b_before))
 		return ERR_CAST(b_before);
 
-	b_after = store_context(ce, after);
+	b_after = store_context(ce, after, relative);
 	if (IS_ERR(b_after)) {
 		rq = ERR_CAST(b_after);
 		goto err_before;
@@ -1074,7 +1088,8 @@ record_registers(struct intel_context *ce,
 	goto err_after;
 }
 
-static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
+static struct i915_vma *
+load_context(struct intel_context *ce, u32 poison, bool relative)
 {
 	struct i915_vma *batch;
 	u32 dw, *cs, *hw;
@@ -1101,7 +1116,10 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
+		u32 cmd = MI_INSTR(0x22, 0);
 		u32 len = hw[dw] & 0x7f;
+		u32 offset = 0;
+		u32 mask = ~0;
 
 		if (hw[dw] == 0) {
 			dw++;
@@ -1113,11 +1131,19 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 			continue;
 		}
 
+		if (hw[dw] & MI_LRI_LRM_CS_MMIO) {
+			mask = 0xfff;
+			if (relative)
+				cmd |= MI_LRI_LRM_CS_MMIO;
+			else
+				offset = ce->engine->mmio_base;
+		}
+
 		dw++;
+		*cs++ = cmd | len;
 		len = (len + 1) / 2;
-		*cs++ = MI_LOAD_REGISTER_IMM(len);
 		while (len--) {
-			*cs++ = hw[dw];
+			*cs++ = (hw[dw] & mask) + offset;
 			*cs++ = poison;
 			dw += 2;
 		}
@@ -1134,14 +1160,18 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 	return batch;
 }
 
-static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
+static int
+poison_registers(struct intel_context *ce,
+		 u32 poison,
+		 bool relative,
+		 u32 *sema)
 {
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	u32 *cs;
 	int err;
 
-	batch = load_context(ce, poison);
+	batch = load_context(ce, poison, relative);
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
@@ -1191,7 +1221,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 			     struct i915_vma *ref[2],
 			     struct i915_vma *result[2],
 			     struct intel_context *ce,
-			     u32 poison)
+			     u32 poison, bool relative)
 {
 	u32 x, dw, *hw, *lrc;
 	u32 *A[2], *B[2];
@@ -1240,6 +1270,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
+		bool is_relative = relative;
 
 		if (hw[dw] == 0) {
 			dw++;
@@ -1251,6 +1282,9 @@ static int compare_isolation(struct intel_engine_cs *engine,
 			continue;
 		}
 
+		if (!(hw[dw] & MI_LRI_LRM_CS_MMIO))
+			is_relative = false;
+
 		dw++;
 		len = (len + 1) / 2;
 		while (len--) {
@@ -1262,9 +1296,10 @@ static int compare_isolation(struct intel_engine_cs *engine,
 					break;
 
 				default:
-					pr_err("%s[%d]: Mismatch for register %4x, default %08x, reference %08x, result (%08x, %08x), poison %08x, context %08x\n",
-					       engine->name, dw,
-					       hw[dw], hw[dw + 1],
+					pr_err("%s[%d]: Mismatch for register %4x [using relative? %s], default %08x, reference %08x, result (%08x, %08x), poison %08x, context %08x\n",
+					       engine->name, dw, hw[dw],
+					       yesno(is_relative),
+					       hw[dw + 1],
 					       A[0][x], B[0][x], B[1][x],
 					       poison, lrc[dw + 1]);
 					err = -EINVAL;
@@ -1290,7 +1325,8 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	return err;
 }
 
-static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
+static int
+__lrc_isolation(struct intel_engine_cs *engine, u32 poison, bool relative)
 {
 	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
 	struct i915_vma *ref[2], *result[2];
@@ -1320,7 +1356,7 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 		goto err_ref0;
 	}
 
-	rq = record_registers(A, ref[0], ref[1], sema);
+	rq = record_registers(A, ref[0], ref[1], relative, sema);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_ref1;
@@ -1348,13 +1384,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 		goto err_result0;
 	}
 
-	rq = record_registers(A, result[0], result[1], sema);
+	rq = record_registers(A, result[0], result[1], relative, sema);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_result1;
 	}
 
-	err = poison_registers(B, poison, sema);
+	err = poison_registers(B, poison, relative, sema);
 	if (err) {
 		WRITE_ONCE(*sema, -1);
 		i915_request_put(rq);
@@ -1368,7 +1404,7 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 	}
 	i915_request_put(rq);
 
-	err = compare_isolation(engine, ref, result, A, poison);
+	err = compare_isolation(engine, ref, result, A, poison, relative);
 
 err_result1:
 	i915_vma_put(result[1]);
@@ -1430,13 +1466,23 @@ static int live_lrc_isolation(void *arg)
 		for (i = 0; i < ARRAY_SIZE(poison); i++) {
 			int result;
 
-			result = __lrc_isolation(engine, poison[i]);
+			result = __lrc_isolation(engine, poison[i], false);
 			if (result && !err)
 				err = result;
 
-			result = __lrc_isolation(engine, ~poison[i]);
+			result = __lrc_isolation(engine, ~poison[i], false);
 			if (result && !err)
 				err = result;
+
+			if (intel_engine_has_relative_mmio(engine)) {
+				result = __lrc_isolation(engine, poison[i], true);
+				if (result && !err)
+					err = result;
+
+				result = __lrc_isolation(engine, ~poison[i], true);
+				if (result && !err)
+					err = result;
+			}
 		}
 		intel_engine_pm_put(engine);
 		if (igt_flush_test(gt->i915)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
