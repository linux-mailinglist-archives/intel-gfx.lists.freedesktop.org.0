Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061B715AF60
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 19:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8436EAD4;
	Wed, 12 Feb 2020 18:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179996EAD8;
 Wed, 12 Feb 2020 18:02:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 10:02:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="227893599"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Feb 2020 10:02:38 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 10:01:44 -0800
Message-Id: <def58c82f6cabd1f811cca6d48d7dac1c1bd08f9.1581381780.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <f0cabbe9cbe9873967b000dd64fb10394c3fc9bd.1581381780.git.dale.b.stimson@intel.com>
References: <cover.1581381780.git.dale.b.stimson@intel.com>
 <2f2d74a2aa0bb1ab0050bdeb5a272ae9d7f61c69.1581381780.git.dale.b.stimson@intel.com>
 <f0cabbe9cbe9873967b000dd64fb10394c3fc9bd.1581381780.git.dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_ctx_isolation: Check engine
 relative registers - Part 2
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

Modify previous i915/gem_ctx_isolation "Check engine relative registers"
for modified mmio_base infrastructure.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 tests/i915/gem_ctx_isolation.c | 87 +++++++++++++++++++---------------
 1 file changed, 48 insertions(+), 39 deletions(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index eff4b1df2..eec78c729 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -233,12 +233,12 @@ static bool ignore_register(uint32_t offset, uint32_t mmio_base)
 static void tmpl_regs(int fd,
 		      uint32_t ctx,
 		      const struct intel_execution_engine2 *e,
+		      uint32_t mmio_base,
 		      uint32_t handle,
 		      uint32_t value)
 {
 	const unsigned int gen_bit = 1 << intel_gen(intel_get_drm_devid(fd));
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int regs_size;
 	uint32_t *regs;
 
@@ -278,12 +278,12 @@ static void tmpl_regs(int fd,
 static uint32_t read_regs(int fd,
 			  uint32_t ctx,
 			  const struct intel_execution_engine2 *e,
+			  uint32_t mmio_base,
 			  unsigned int flags)
 {
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	const bool r64b = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry *reloc;
@@ -359,12 +359,12 @@ static uint32_t read_regs(int fd,
 static void write_regs(int fd,
 		       uint32_t ctx,
 		       const struct intel_execution_engine2 *e,
+		       uint32_t mmio_base,
 		       unsigned int flags,
 		       uint32_t value)
 {
 	const unsigned int gen_bit = 1 << intel_gen(intel_get_drm_devid(fd));
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	struct drm_i915_gem_exec_object2 obj;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	unsigned int batch_size;
@@ -420,13 +420,13 @@ static void write_regs(int fd,
 static void restore_regs(int fd,
 			 uint32_t ctx,
 			 const struct intel_execution_engine2 *e,
+			 uint32_t mmio_base,
 			 unsigned int flags,
 			 uint32_t regs)
 {
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	const bool r64b = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -498,12 +498,12 @@ static void restore_regs(int fd,
 __attribute__((unused))
 static void dump_regs(int fd,
 		      const struct intel_execution_engine2 *e,
+		      uint32_t mmio_base,
 		      unsigned int regs)
 {
 	const int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int regs_size;
 	uint32_t *out;
 
@@ -541,9 +541,9 @@ static void dump_regs(int fd,
 }
 
 static void compare_regs(int fd, const struct intel_execution_engine2 *e,
+			 uint32_t mmio_base,
 			 uint32_t A, uint32_t B, const char *who)
 {
-	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int num_errors;
 	unsigned int regs_size;
 	uint32_t *a, *b;
@@ -596,6 +596,7 @@ static void compare_regs(int fd, const struct intel_execution_engine2 *e,
 
 static void nonpriv(int fd,
 		    const struct intel_execution_engine2 *e,
+		    uint32_t mmio_base,
 		    unsigned int flags)
 {
 	static const uint32_t values[] = {
@@ -623,16 +624,16 @@ static void nonpriv(int fd,
 
 		ctx = gem_context_clone_with_engines(fd, 0);
 
-		tmpl = read_regs(fd, ctx, e, flags);
-		regs[0] = read_regs(fd, ctx, e, flags);
+		tmpl = read_regs(fd, ctx, e, mmio_base, flags);
+		regs[0] = read_regs(fd, ctx, e, mmio_base, flags);
 
-		tmpl_regs(fd, ctx, e, tmpl, values[v]);
+		tmpl_regs(fd, ctx, e, mmio_base, tmpl, values[v]);
 
 		spin = igt_spin_new(fd, .ctx = ctx, .engine = e->flags);
 
 		igt_debug("%s[%d]: Setting all registers to 0x%08x\n",
 			  __func__, v, values[v]);
-		write_regs(fd, ctx, e, flags, values[v]);
+		write_regs(fd, ctx, e, mmio_base, flags, values[v]);
 
 		if (flags & DIRTY2) {
 			uint32_t sw = gem_context_clone_with_engines(fd, 0);
@@ -663,17 +664,17 @@ static void nonpriv(int fd,
 			gem_context_destroy(fd, sw);
 		}
 
-		regs[1] = read_regs(fd, ctx, e, flags);
+		regs[1] = read_regs(fd, ctx, e, mmio_base, flags);
 
 		/*
 		 * Restore the original register values before the HW idles.
 		 * Or else it may never restart!
 		 */
-		restore_regs(fd, ctx, e, flags, regs[0]);
+		restore_regs(fd, ctx, e, mmio_base, flags, regs[0]);
 
 		igt_spin_free(fd, spin);
 
-		compare_regs(fd, e, tmpl, regs[1], "nonpriv read/writes");
+		compare_regs(fd, e, mmio_base, tmpl, regs[1], "nonpriv read/writes");
 
 		for (int n = 0; n < ARRAY_SIZE(regs); n++)
 			gem_close(fd, regs[n]);
@@ -684,6 +685,7 @@ static void nonpriv(int fd,
 
 static void isolation(int fd,
 		      const struct intel_execution_engine2 *e,
+		      uint32_t mmio_base,
 		      unsigned int flags)
 {
 	static const uint32_t values[] = {
@@ -705,14 +707,14 @@ static void isolation(int fd,
 		uint32_t ctx[2], regs[2], tmp;
 
 		ctx[0] = gem_context_clone_with_engines(fd, 0);
-		regs[0] = read_regs(fd, ctx[0], e, flags);
+		regs[0] = read_regs(fd, ctx[0], e, mmio_base, flags);
 
 		spin = igt_spin_new(fd, .ctx = ctx[0], .engine = e->flags);
 
 		if (flags & DIRTY1) {
 			igt_debug("%s[%d]: Setting all registers of ctx 0 to 0x%08x\n",
 				  __func__, v, values[v]);
-			write_regs(fd, ctx[0], e, flags, values[v]);
+			write_regs(fd, ctx[0], e, mmio_base, flags, values[v]);
 		}
 
 		/*
@@ -724,27 +726,27 @@ static void isolation(int fd,
 		 * see the corruption from the previous context instead!
 		 */
 		ctx[1] = gem_context_clone_with_engines(fd, 0);
-		regs[1] = read_regs(fd, ctx[1], e, flags);
+		regs[1] = read_regs(fd, ctx[1], e, mmio_base, flags);
 
 		if (flags & DIRTY2) {
 			igt_debug("%s[%d]: Setting all registers of ctx 1 to 0x%08x\n",
 				  __func__, v, ~values[v]);
-			write_regs(fd, ctx[1], e, flags, ~values[v]);
+			write_regs(fd, ctx[1], e, mmio_base, flags, ~values[v]);
 		}
 
 		/*
 		 * Restore the original register values before the HW idles.
 		 * Or else it may never restart!
 		 */
-		tmp = read_regs(fd, ctx[0], e, flags);
-		restore_regs(fd, ctx[0], e, flags, regs[0]);
+		tmp = read_regs(fd, ctx[0], e, mmio_base, flags);
+		restore_regs(fd, ctx[0], e, mmio_base, flags, regs[0]);
 
 		igt_spin_free(fd, spin);
 
 		if (!(flags & DIRTY1))
-			compare_regs(fd, e, regs[0], tmp,
+			compare_regs(fd, e, mmio_base, regs[0], tmp,
 				     "two reads of the same ctx");
-		compare_regs(fd, e, regs[0], regs[1], "two virgin contexts");
+		compare_regs(fd, e, mmio_base, regs[0], regs[1], "two virgin contexts");
 
 		for (int n = 0; n < ARRAY_SIZE(ctx); n++) {
 			gem_close(fd, regs[n]);
@@ -794,6 +796,7 @@ static void inject_reset_context(int fd, const struct intel_execution_engine2 *e
 
 static void preservation(int fd,
 			 const struct intel_execution_engine2 *e,
+			 uint32_t mmio_base,
 			 unsigned int flags)
 {
 	static const uint32_t values[] = {
@@ -814,15 +817,15 @@ static void preservation(int fd,
 
 	ctx[num_values] = gem_context_clone_with_engines(fd, 0);
 	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
-	regs[num_values][0] = read_regs(fd, ctx[num_values], e, flags);
+	regs[num_values][0] = read_regs(fd, ctx[num_values], e, mmio_base, flags);
 	for (int v = 0; v < num_values; v++) {
 		ctx[v] = gem_context_clone_with_engines(fd, 0);
-		write_regs(fd, ctx[v], e, flags, values[v]);
+		write_regs(fd, ctx[v], e, mmio_base, flags, values[v]);
 
-		regs[v][0] = read_regs(fd, ctx[v], e, flags);
+		regs[v][0] = read_regs(fd, ctx[v], e, mmio_base, flags);
 
 	}
-	gem_close(fd, read_regs(fd, ctx[num_values], e, flags));
+	gem_close(fd, read_regs(fd, ctx[num_values], e, mmio_base, flags));
 	igt_spin_free(fd, spin);
 
 	if (flags & RESET)
@@ -855,21 +858,21 @@ static void preservation(int fd,
 
 	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
 	for (int v = 0; v < num_values; v++)
-		regs[v][1] = read_regs(fd, ctx[v], e, flags);
-	regs[num_values][1] = read_regs(fd, ctx[num_values], e, flags);
+		regs[v][1] = read_regs(fd, ctx[v], e, mmio_base, flags);
+	regs[num_values][1] = read_regs(fd, ctx[num_values], e, mmio_base, flags);
 	igt_spin_free(fd, spin);
 
 	for (int v = 0; v < num_values; v++) {
 		char buf[80];
 
 		snprintf(buf, sizeof(buf), "dirty %x context\n", values[v]);
-		compare_regs(fd, e, regs[v][0], regs[v][1], buf);
+		compare_regs(fd, e, mmio_base, regs[v][0], regs[v][1], buf);
 
 		gem_close(fd, regs[v][0]);
 		gem_close(fd, regs[v][1]);
 		gem_context_destroy(fd, ctx[v]);
 	}
-	compare_regs(fd, e, regs[num_values][0], regs[num_values][1], "clean");
+	compare_regs(fd, e, mmio_base, regs[num_values][0], regs[num_values][1], "clean");
 	gem_context_destroy(fd, ctx[num_values]);
 }
 
@@ -893,6 +896,8 @@ igt_main
 	unsigned int has_context_isolation = 0;
 	const struct intel_execution_engine2 *e;
 	int fd = -1;
+	struct eng_mmio_base_table_s *mbp;
+	uint32_t mmio_base;
 
 	igt_fixture {
 		int gen;
@@ -911,34 +916,36 @@ igt_main
 		igt_skip_on(gen > LAST_KNOWN_GEN);
 	}
 
-	/* __for_each_physical_engine switches context to all engines. */
+	mbp = gem_engine_mmio_base_info_get(fd);
 
+	/* __for_each_physical_engine switches context to all engines. */
 	__for_each_physical_engine(fd, e) {
 		igt_subtest_group {
 			igt_fixture {
 				igt_require(has_context_isolation & (1 << e->class));
 				gem_require_ring(fd, e->flags);
 				igt_fork_hang_detector(fd);
+				mmio_base = gem_engine_mmio_base(mbp, e->name);
 			}
 
 			igt_subtest_f("%s-nonpriv", e->name)
-				nonpriv(fd, e, 0);
+				nonpriv(fd, e, mmio_base, 0);
 			igt_subtest_f("%s-nonpriv-switch", e->name)
-				nonpriv(fd, e, DIRTY2);
+				nonpriv(fd, e, mmio_base, DIRTY2);
 
 			igt_subtest_f("%s-clean", e->name)
-				isolation(fd, e, 0);
+				isolation(fd, e, mmio_base, 0);
 			igt_subtest_f("%s-dirty-create", e->name)
-				isolation(fd, e, DIRTY1);
+				isolation(fd, e, mmio_base, DIRTY1);
 			igt_subtest_f("%s-dirty-switch", e->name)
-				isolation(fd, e, DIRTY2);
+				isolation(fd, e, mmio_base, DIRTY2);
 
 			igt_subtest_f("%s-none", e->name)
-				preservation(fd, e, 0);
+				preservation(fd, e, mmio_base, 0);
 			igt_subtest_f("%s-S3", e->name)
-				preservation(fd, e, S3);
+				preservation(fd, e, mmio_base, S3);
 			igt_subtest_f("%s-S4", e->name)
-				preservation(fd, e, S4);
+				preservation(fd, e, mmio_base, S4);
 
 			igt_fixture {
 				igt_stop_hang_detector();
@@ -946,9 +953,11 @@ igt_main
 
 			igt_subtest_f("%s-reset", e->name) {
 				igt_hang_t hang = igt_allow_hang(fd, 0, 0);
-				preservation(fd, e, RESET);
+				preservation(fd, e, mmio_base, RESET);
 				igt_disallow_hang(fd, hang);
 			}
 		}
 	}
+
+	gem_engine_mmio_base_info_free(mbp);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
