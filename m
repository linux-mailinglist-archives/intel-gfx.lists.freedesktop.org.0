Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FC82D969B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3DF6E15A;
	Mon, 14 Dec 2020 10:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC8C6E1B5;
 Mon, 14 Dec 2020 10:51:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23318472-1500050 
 for multiple; Mon, 14 Dec 2020 10:51:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:51:21 +0000
Message-Id: <20201214105123.542518-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201214105123.542518-1-chris@chris-wilson.co.uk>
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] i915/gem_exec_balancer: Measure
 timeslicing fairness
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Oversaturate the virtual engines on the system and check that each
workload receives a fair share of the available GPU time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_balancer.c | 154 +++++++++++++++++++++++++++++++++
 1 file changed, 154 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 35a032ccb..5efd586ad 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -2763,6 +2763,157 @@ static void smoketest(int i915, int timeout)
 	gem_close(i915, batch[0].handle);
 }
 
+static uint32_t read_ctx_timestamp(int i915, uint32_t ctx)
+{
+	struct drm_i915_gem_relocation_entry reloc;
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = gem_create(i915, 4096),
+		.offset = 32 << 20,
+		.relocs_ptr = to_user_pointer(&reloc),
+		.relocation_count = 1,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.rsvd1 = ctx,
+	};
+	uint32_t *map, *cs;
+	uint32_t ts;
+
+	cs = map = gem_mmap__device_coherent(i915, obj.handle,
+					     0, 4096, PROT_WRITE);
+
+	*cs++ = 0x24 << 23 | 1 << 19 | 2; /* relative SRM */
+	*cs++ = 0x3a8; /* CTX_TIMESTAMP */
+	memset(&reloc, 0, sizeof(reloc));
+	reloc.target_handle = obj.handle;
+	reloc.presumed_offset = obj.offset;
+	reloc.offset = offset_in_page(cs);
+	reloc.delta = 4000;
+	*cs++ = obj.offset + 4000;
+	*cs++ = obj.offset >> 32;
+
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	gem_execbuf(i915, &execbuf);
+	gem_sync(i915, obj.handle);
+	gem_close(i915, obj.handle);
+
+	ts = map[1000];
+	munmap(map, 4096);
+
+	return ts;
+}
+
+static int cmp_u32(const void *A, const void *B)
+{
+	const uint32_t *a = A, *b = B;
+
+	if (*a < *b)
+		return -1;
+	else if (*a > *b)
+		return 1;
+	else
+		return 0;
+}
+
+static int read_ctx_timestamp_frequency(int i915)
+{
+	int value = 12500000; /* icl!!! are you feeling alright? CTX vs CS */
+	drm_i915_getparam_t gp = {
+		.value = &value,
+		.param = I915_PARAM_CS_TIMESTAMP_FREQUENCY,
+	};
+	if (intel_gen(intel_get_drm_devid(i915)) != 11)
+		ioctl(i915, DRM_IOCTL_I915_GETPARAM, &gp);
+	return value;
+}
+
+static uint64_t div64_u64_round_up(uint64_t x, uint64_t y)
+{
+	return (x + y - 1) / y;
+}
+
+static uint64_t ticks_to_ns(int i915, uint64_t ticks)
+{
+	return div64_u64_round_up(ticks * NSEC_PER_SEC,
+				  read_ctx_timestamp_frequency(i915));
+}
+
+static void __fairslice(int i915,
+			const struct i915_engine_class_instance *ci,
+			unsigned int count)
+{
+	igt_spin_t *spin = NULL;
+	uint32_t ctx[count + 1];
+	uint32_t ts[count + 1];
+
+	igt_debug("Launching %zd spinners on %s\n",
+		  ARRAY_SIZE(ctx), class_to_str(ci->engine_class));
+	igt_assert(ARRAY_SIZE(ctx) >= 3);
+
+	for (int i = 0; i < ARRAY_SIZE(ctx); i++) {
+		ctx[i] = load_balancer_create(i915, ci, count);
+		if (spin == NULL) {
+			spin = __igt_spin_new(i915, .ctx = ctx[i]);
+		} else {
+			struct drm_i915_gem_execbuffer2 eb = {
+				.buffer_count = 1,
+				.buffers_ptr = to_user_pointer(&spin->obj[IGT_SPIN_BATCH]),
+				.rsvd1 = ctx[i],
+			};
+			gem_execbuf(i915, &eb);
+		}
+	}
+
+	sleep(2); /* over the course of many timeslices */
+
+	igt_assert(gem_bo_busy(i915, spin->handle));
+	igt_spin_end(spin);
+	igt_debug("Cancelled spinners\n");
+
+	for (int i = 0; i < ARRAY_SIZE(ctx); i++)
+		ts[i] = read_ctx_timestamp(i915, ctx[i]);
+
+	for (int i = 0; i < ARRAY_SIZE(ctx); i++)
+		gem_context_destroy(i915, ctx[i]);
+	igt_spin_free(i915, spin);
+
+	qsort(ts, ARRAY_SIZE(ctx), sizeof(*ts), cmp_u32);
+	igt_info("%s: [%.1f, %.1f, %.1f] ms, expect %1.fms\n",
+		 class_to_str(ci->engine_class),
+		 1e-6 * ticks_to_ns(i915, ts[0]),
+		 1e-6 * ticks_to_ns(i915, ts[(count + 1) / 2]),
+		 1e-6 * ticks_to_ns(i915, ts[count]),
+		 2e3 * count / ARRAY_SIZE(ctx));
+
+	igt_assert_f(ts[count], "CTX_TIMESTAMP not reported!\n");
+	igt_assert_f((ts[count] - ts[0]) * 6 < ts[(count + 1) / 2],
+		     "Range of timeslices greater than tolerable: %.2fms > %.2fms; unfair!\n",
+		     1e-6 * ticks_to_ns(i915, ts[count] - ts[0]),
+		     1e-6 * ticks_to_ns(i915, ts[(count  + 1) / 2]) / 6);
+}
+
+static void fairslice(int i915)
+{
+	/* Relative CS mmio */
+	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 11);
+
+	for (int class = 0; class < 32; class++) {
+		struct i915_engine_class_instance *ci;
+		unsigned int count = 0;
+
+		ci = list_engines(i915, 1u << class, &count);
+		if (!ci || count < 2) {
+			free(ci);
+			continue;
+		}
+
+		__fairslice(i915, ci, count);
+		free(ci);
+	}
+}
+
 static bool has_context_engines(int i915)
 {
 	struct drm_i915_gem_context_param p = {
@@ -2848,6 +2999,9 @@ igt_main
 				full(i915, p->flags);
 	}
 
+	igt_subtest("fairslice")
+		fairslice(i915);
+
 	igt_subtest("nop")
 		nop(i915);
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
