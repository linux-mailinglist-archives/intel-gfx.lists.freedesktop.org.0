Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F82021AAB4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 00:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4646EB49;
	Thu,  9 Jul 2020 22:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF4B6EB46
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 22:45:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21771003-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 23:45:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 23:45:04 +0100
Message-Id: <20200709224504.11345-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709224504.11345-1-chris@chris-wilson.co.uk>
References: <20200709224504.11345-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/selftest: Check that GPR are restored
 across noa_wait
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Perf implements a GPU delay (noa_wait) by looping until the CS timestamp
has passed a certain point. This use MI_MATH and the general purpose
registers of the user's context, and since it is clobbering the user
state it must carefully save and restore the user's data around the
noa_wait. We can verify this by loading some values in the GPR that we
know will be clobbered the noa_wait, and then inspecting the GPR after
the noa_wait completes and confirming that have been restored.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_perf.c | 124 +++++++++++++++++++++
 1 file changed, 124 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index be54570c407c..be63cfe82feb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -280,11 +280,135 @@ static int live_noa_delay(void *arg)
 	return err;
 }
 
+static int live_noa_gpr(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct i915_perf_stream *stream;
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 *cs, *store;
+	void *scratch;
+	u32 gpr0;
+	int err;
+	int i;
+
+	/* Check that the delay does not clobber user context state (GPR) */
+
+	stream = test_stream(&i915->perf);
+	if (!stream)
+		return -ENOMEM;
+
+	gpr0 = i915_mmio_reg_offset(GEN8_RING_CS_GPR(stream->engine->mmio_base, 0));
+
+	ce = intel_context_create(stream->engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out;
+	}
+
+	scratch = kmap(ce->vm->scratch[0].base.page);
+	memset(scratch, POISON_FREE, PAGE_SIZE);
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_ce;
+	}
+	i915_request_get(rq);
+
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (err) {
+			i915_request_add(rq);
+			goto out_rq;
+		}
+	}
+
+	cs = intel_ring_begin(rq, 2 * 32 + 2);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		goto out_rq;
+	}
+
+	*cs++ = MI_LOAD_REGISTER_IMM(32);
+	for (i = 0; i < 32; i++) {
+		*cs++ = gpr0 + i * sizeof(u32);
+		*cs++ = STACK_MAGIC;
+	}
+	*cs++ = MI_NOOP;
+	intel_ring_advance(rq, cs);
+
+	err = rq->engine->emit_bb_start(rq,
+					i915_ggtt_offset(stream->noa_wait), 0,
+					I915_DISPATCH_SECURE);
+	if (err) {
+		i915_request_add(rq);
+		goto out_rq;
+	}
+
+	store = memset32(rq->engine->status_page.addr + 512, 0, 32);
+	for (i = 0; i < 32; i++) {
+		u32 cmd;
+
+		cs = intel_ring_begin(rq, 4);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			goto out_rq;
+		}
+
+		cmd = MI_STORE_REGISTER_MEM;
+		if (INTEL_GEN(i915) >= 8)
+			cmd++;
+		cmd |= MI_USE_GGTT;
+
+		*cs++ = cmd;
+		*cs++ = gpr0 + i * sizeof(u32);
+		*cs++ = i915_ggtt_offset(rq->engine->status_page.vma) +
+			offset_in_page(store) +
+			i * sizeof(u32);
+		*cs++ = 0;
+		intel_ring_advance(rq, cs);
+	}
+
+	i915_request_add(rq);
+
+	if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE, HZ / 2) < 0) {
+		intel_gt_set_wedged(stream->engine->gt);
+		err = -EIO;
+		goto out_rq;
+	}
+
+	for (i = 0; i < 32; i++) {
+		if (store[i] == STACK_MAGIC)
+			continue;
+
+		pr_err("GPR[%d] lost, found:%08x, expected:%08x!\n",
+		       i, store[i], STACK_MAGIC);
+		err = -EINVAL;
+	}
+
+	if (memchr_inv(scratch, POISON_FREE, PAGE_SIZE)) {
+		pr_err("scratch page overwritten!\n");
+		igt_hexdump(scratch, 4096);
+		err = -EINVAL;
+	}
+
+out_rq:
+	i915_request_put(rq);
+out_ce:
+	kunmap(ce->vm->scratch[0].base.page);
+	intel_context_put(ce);
+out:
+	stream_destroy(stream);
+	return err;
+}
+
 int i915_perf_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_sanitycheck),
 		SUBTEST(live_noa_delay),
+		SUBTEST(live_noa_gpr),
 	};
 	struct i915_perf *perf = &i915->perf;
 	int err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
