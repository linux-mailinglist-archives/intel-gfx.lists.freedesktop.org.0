Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC05D44350F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 19:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7DE73545;
	Tue,  2 Nov 2021 18:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B1473545
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 18:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218526473"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218526473"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 11:03:52 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="577263138"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 11:03:51 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Nov 2021 11:03:47 -0700
Message-Id: <20211102180347.25674-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Detect offset in context image
 for OA ctx control reg
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

Not for review. Just trying out a selftest on CI machines.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_perf.c | 111 ++++++++++++++++++++-
 1 file changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 9e9a6cb1d9e5..75ffb1c114ed 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -8,6 +8,7 @@
 
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_lrc_reg.h"
 
 #include "i915_selftest.h"
 
@@ -152,6 +153,108 @@ static int live_sanitycheck(void *arg)
 	return 0;
 }
 
+#define MI_OPCODE(x) (((x) >> 23) & 0x3f)
+#define MI_LRI_CMD(x) (MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
+#define MI_LRI_LEN(x) (((x) & 0xff) + 1)
+static int __find_reg_in_lri(u32 *state, u32 reg, u32 *offset)
+{
+	u32 idx = *offset;
+	u32 len = MI_LRI_LEN(state[idx]) + idx;
+
+	idx++;
+	for (; idx < len; idx += 2)
+		if (state[idx] == reg)
+			break;
+
+	*offset = idx;
+	return state[idx] == reg;
+}
+
+static void __context_image_offset(struct intel_context *ce, u32 reg)
+{
+	u32 *state = ce->lrc_reg_state;
+	u32 len = (ce->engine->context_size - PAGE_SIZE) / 4;
+	u32 offset;
+
+	for (offset = 0; offset < len; ) {
+		if (MI_LRI_CMD(state[offset])) {
+			if (__find_reg_in_lri(state, reg, &offset))
+				break;
+		} else {
+			offset++;
+		}
+	}
+
+	if (offset < len)
+		printk(KERN_ALERT "OA: offset %08x for %08x\n", offset, reg);
+	else
+		printk(KERN_ALERT "OA: offset not found for %08x\n", reg);
+}
+
+static int __live_lrc_state(struct intel_engine_cs *engine,
+			    struct i915_vma *scratch)
+{
+	struct intel_context *ce;
+	struct i915_gem_ww_ctx ww;
+	i915_reg_t reg;
+	int err;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_gem_object_lock(scratch->obj, &ww);
+	if (!err)
+		err = intel_context_pin_ww(ce, &ww);
+	if (err)
+		goto err_put;
+
+	reg = GEN12_OACTXCONTROL;
+	__context_image_offset(ce, i915_mmio_reg_offset(reg));
+
+	intel_context_unpin(ce);
+err_put:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	intel_context_put(ce);
+	return err;
+}
+
+static int __live_oactxctrl_offset(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_gt *gt = &i915->gt;
+	struct intel_engine_cs *engine;
+	struct i915_vma *scratch;
+	enum intel_engine_id id;
+	int err = 0;
+
+	scratch = __vm_create_scratch_for_read_pinned(&gt->ggtt->vm, PAGE_SIZE);
+	if (IS_ERR(scratch))
+		return PTR_ERR(scratch);
+
+	for_each_engine(engine, gt, id) {
+		if (engine->class != RENDER_CLASS)
+			continue;
+
+		err = __live_lrc_state(engine, scratch);
+		if (err)
+			break;
+	}
+
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+
+	i915_vma_unpin_and_release(&scratch, 0);
+	return err;
+}
+
 static int write_timestamp(struct i915_request *rq, int slot)
 {
 	u32 *cs;
@@ -188,7 +291,7 @@ static ktime_t poll_status(struct i915_request *rq, int slot)
 	return ktime_get();
 }
 
-static int live_noa_delay(void *arg)
+static int __live_noa_delay(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	struct i915_perf_stream *stream;
@@ -280,6 +383,12 @@ static int live_noa_delay(void *arg)
 	return err;
 }
 
+static int live_noa_delay(void *arg)
+{
+	__live_oactxctrl_offset(arg);
+	return __live_noa_delay(arg);
+}
+
 static int live_noa_gpr(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-- 
2.20.1

