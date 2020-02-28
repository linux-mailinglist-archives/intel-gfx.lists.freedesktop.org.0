Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB805173580
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 11:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B97D6EF2D;
	Fri, 28 Feb 2020 10:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D166EF2A;
 Fri, 28 Feb 2020 10:43:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20382876-1500050 
 for multiple; Fri, 28 Feb 2020 10:43:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 10:43:37 +0000
Message-Id: <20200228104340.2895082-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/5] i915/gem_ctx_isolation: Check engine
 relative registers
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some of the non-privileged registers are at the same offset on each
engine. We can improve our coverage for unknown HW layout by using the
reported engine->mmio_base for relative offsets.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_isolation.c | 164 ++++++++++++++++++++-------------
 1 file changed, 100 insertions(+), 64 deletions(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 1b66fec11..eff4b1df2 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -70,6 +70,7 @@ static const struct named_register {
 	uint32_t ignore_bits;
 	uint32_t write_mask; /* some registers bits do not exist */
 	bool masked;
+	bool relative;
 } nonpriv_registers[] = {
 	{ "NOPID", NOCTX, RCS0, 0x2094 },
 	{ "MI_PREDICATE_RESULT_2", NOCTX, RCS0, 0x23bc },
@@ -109,7 +110,6 @@ static const struct named_register {
 	{ "PS_DEPTH_COUNT_1", GEN8, RCS0, 0x22f8, 2 },
 	{ "BB_OFFSET", GEN8, RCS0, 0x2158, .ignore_bits = 0x7 },
 	{ "MI_PREDICATE_RESULT_1", GEN8, RCS0, 0x241c },
-	{ "CS_GPR", GEN8, RCS0, 0x2600, 32 },
 	{ "OA_CTX_CONTROL", GEN8, RCS0, 0x2360 },
 	{ "OACTXID", GEN8, RCS0, 0x2364 },
 	{ "PS_INVOCATION_COUNT_2", GEN8, RCS0, 0x2448, 2, .write_mask = ~0x3 },
@@ -138,79 +138,56 @@ static const struct named_register {
 
 	{ "CTX_PREEMPT", NOCTX /* GEN10 */, RCS0, 0x2248 },
 	{ "CS_CHICKEN1", GEN11, RCS0, 0x2580, .masked = true },
-	{ "HDC_CHICKEN1", GEN_RANGE(10, 10), RCS0, 0x7304, .masked = true },
 
 	/* Privileged (enabled by w/a + FORCE_TO_NONPRIV) */
 	{ "CTX_PREEMPT", NOCTX /* GEN9 */, RCS0, 0x2248 },
 	{ "CS_CHICKEN1", GEN_RANGE(9, 10), RCS0, 0x2580, .masked = true },
 	{ "COMMON_SLICE_CHICKEN2", GEN_RANGE(9, 9), RCS0, 0x7014, .masked = true },
-	{ "HDC_CHICKEN1", GEN_RANGE(9, 9), RCS0, 0x7304, .masked = true },
+	{ "HDC_CHICKEN1", GEN_RANGE(9, 10), RCS0, 0x7304, .masked = true },
 	{ "SLICE_COMMON_ECO_CHICKEN1", GEN_RANGE(11, 11) /* + glk */, RCS0,  0x731c, .masked = true },
 	{ "L3SQREG4", NOCTX /* GEN9:skl,kbl */, RCS0, 0xb118, .write_mask = ~0x1ffff0 },
 	{ "HALF_SLICE_CHICKEN7", GEN_RANGE(11, 11), RCS0, 0xe194, .masked = true },
 	{ "SAMPLER_MODE", GEN_RANGE(11, 11), RCS0, 0xe18c, .masked = true },
 
-	{ "BCS_GPR", GEN9, BCS0, 0x22600, 32 },
 	{ "BCS_SWCTRL", GEN8, BCS0, 0x22200, .write_mask = 0x3, .masked = true },
 
 	{ "MFC_VDBOX1", NOCTX, VCS0, 0x12800, 64 },
 	{ "MFC_VDBOX2", NOCTX, VCS1, 0x1c800, 64 },
 
-	{ "VCS0_GPR", GEN_RANGE(9, 10), VCS0, 0x12600, 32 },
-	{ "VCS1_GPR", GEN_RANGE(9, 10), VCS1, 0x1c600, 32 },
-	{ "VECS_GPR", GEN_RANGE(9, 10), VECS0, 0x1a600, 32 },
-
-	{ "VCS0_GPR", GEN11, VCS0, 0x1c0600, 32 },
-	{ "VCS1_GPR", GEN11, VCS1, 0x1c4600, 32 },
-	{ "VCS2_GPR", GEN11, VCS2, 0x1d0600, 32 },
-	{ "VCS3_GPR", GEN11, VCS3, 0x1d4600, 32 },
-	{ "VECS_GPR", GEN11, VECS0, 0x1c8600, 32 },
+	{ "xCS_GPR", GEN9, ALL, 0x600, 32, .relative = true },
 
 	{}
 }, ignore_registers[] = {
 	{ "RCS timestamp", GEN6, ~0u, 0x2358 },
 	{ "BCS timestamp", GEN7, ~0u, 0x22358 },
 
-	{ "VCS0 timestamp", GEN_RANGE(7, 10), ~0u, 0x12358 },
-	{ "VCS1 timestamp", GEN_RANGE(7, 10), ~0u, 0x1c358 },
-	{ "VECS timestamp", GEN_RANGE(8, 10), ~0u, 0x1a358 },
-
-	{ "VCS0 timestamp", GEN11, ~0u, 0x1c0358 },
-	{ "VCS1 timestamp", GEN11, ~0u, 0x1c4358 },
-	{ "VCS2 timestamp", GEN11, ~0u, 0x1d0358 },
-	{ "VCS3 timestamp", GEN11, ~0u, 0x1d4358 },
-	{ "VECS timestamp", GEN11, ~0u, 0x1c8358 },
+	{ "xCS timestamp", GEN8, ALL, 0x358, .relative = true },
 
 	/* huc read only */
-	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x2000 },
-	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x2014 },
-	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x23b0 },
-
-	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x2000 },
-	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x2014 },
-	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x23b0 },
-
-	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x2000 },
-	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x2014 },
-	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x23b0 },
-
-	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x2000 },
-	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x2014 },
-	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x23b0 },
+	{ "BSD 0x2000", GEN11, ALL, 0x2000, .relative = true },
+	{ "BSD 0x2014", GEN11, ALL, 0x2014, .relative = true },
+	{ "BSD 0x23b0", GEN11, ALL, 0x23b0, .relative = true },
 
 	{}
 };
 
-static const char *register_name(uint32_t offset, char *buf, size_t len)
+static const char *
+register_name(uint32_t offset, uint32_t mmio_base, char *buf, size_t len)
 {
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
 		unsigned int width = r->count ? 4*r->count : 4;
-		if (offset >= r->offset && offset < r->offset + width) {
+		uint32_t base;
+
+		base = r->offset;
+		if (r->relative)
+			base += mmio_base;
+
+		if (offset >= base && offset < base + width) {
 			if (r->count <= 1)
 				return r->name;
 
 			snprintf(buf, len, "%s[%d]",
-				 r->name, (offset - r->offset)/4);
+				 r->name, (offset - base) / 4);
 			return buf;
 		}
 	}
@@ -218,22 +195,35 @@ static const char *register_name(uint32_t offset, char *buf, size_t len)
 	return "unknown";
 }
 
-static const struct named_register *lookup_register(uint32_t offset)
+static const struct named_register *
+lookup_register(uint32_t offset, uint32_t mmio_base)
 {
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
 		unsigned int width = r->count ? 4*r->count : 4;
-		if (offset >= r->offset && offset < r->offset + width)
+		uint32_t base;
+
+		base = r->offset;
+		if (r->relative)
+			base += mmio_base;
+
+		if (offset >= base && offset < base + width)
 			return r;
 	}
 
 	return NULL;
 }
 
-static bool ignore_register(uint32_t offset)
+static bool ignore_register(uint32_t offset, uint32_t mmio_base)
 {
 	for (const struct named_register *r = ignore_registers; r->name; r++) {
 		unsigned int width = r->count ? 4*r->count : 4;
-		if (offset >= r->offset && offset < r->offset + width)
+		uint32_t base;
+
+		base = r->offset;
+		if (r->relative)
+			base += mmio_base;
+
+		if (offset >= base && offset < base + width)
 			return true;
 	}
 
@@ -248,6 +238,7 @@ static void tmpl_regs(int fd,
 {
 	const unsigned int gen_bit = 1 << intel_gen(intel_get_drm_devid(fd));
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int regs_size;
 	uint32_t *regs;
 
@@ -259,12 +250,20 @@ static void tmpl_regs(int fd,
 		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
 
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
+		uint32_t offset;
+
 		if (!(r->engine_mask & engine_bit))
 			continue;
 		if (!(r->gen_mask & gen_bit))
 			continue;
-		for (unsigned count = r->count ?: 1, offset = r->offset;
-		     count--; offset += 4) {
+		if (r->relative && !mmio_base)
+			continue;
+
+		offset = r->offset;
+		if (r->relative)
+			offset += mmio_base;
+
+		for (unsigned count = r->count ?: 1; count--; offset += 4) {
 			uint32_t x = value;
 			if (r->write_mask)
 				x &= r->write_mask;
@@ -284,6 +283,7 @@ static uint32_t read_regs(int fd,
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	const bool r64b = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_relocation_entry *reloc;
@@ -311,13 +311,20 @@ static uint32_t read_regs(int fd,
 
 	n = 0;
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
+		uint32_t offset;
+
 		if (!(r->engine_mask & engine_bit))
 			continue;
 		if (!(r->gen_mask & gen_bit))
 			continue;
+		if (r->relative && !mmio_base)
+			continue;
+
+		offset = r->offset;
+		if (r->relative)
+			offset += mmio_base;
 
-		for (unsigned count = r->count ?: 1, offset = r->offset;
-		     count--; offset += 4) {
+		for (unsigned count = r->count ?: 1; count--; offset += 4) {
 			*b++ = 0x24 << 23 | (1 + r64b); /* SRM */
 			*b++ = offset;
 			reloc[n].target_handle = obj[0].handle;
@@ -357,6 +364,7 @@ static void write_regs(int fd,
 {
 	const unsigned int gen_bit = 1 << intel_gen(intel_get_drm_devid(fd));
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	struct drm_i915_gem_exec_object2 obj;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	unsigned int batch_size;
@@ -372,12 +380,20 @@ static void write_regs(int fd,
 	gem_set_domain(fd, obj.handle,
 		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
+		uint32_t offset;
+
 		if (!(r->engine_mask & engine_bit))
 			continue;
 		if (!(r->gen_mask & gen_bit))
 			continue;
-		for (unsigned count = r->count ?: 1, offset = r->offset;
-		     count--; offset += 4) {
+		if (r->relative && !mmio_base)
+			continue;
+
+		offset = r->offset;
+		if (r->relative)
+			offset += mmio_base;
+
+		for (unsigned count = r->count ?: 1; count--; offset += 4) {
 			uint32_t x = value;
 			if (r->write_mask)
 				x &= r->write_mask;
@@ -410,6 +426,7 @@ static void restore_regs(int fd,
 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	const bool r64b = gen >= 8;
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
@@ -437,13 +454,20 @@ static void restore_regs(int fd,
 
 	n = 0;
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
+		uint32_t offset;
+
 		if (!(r->engine_mask & engine_bit))
 			continue;
 		if (!(r->gen_mask & gen_bit))
 			continue;
+		if (r->relative && !mmio_base)
+			continue;
+
+		offset = r->offset;
+		if (r->relative)
+			offset += mmio_base;
 
-		for (unsigned count = r->count ?: 1, offset = r->offset;
-		     count--; offset += 4) {
+		for (unsigned count = r->count ?: 1; count--; offset += 4) {
 			*b++ = 0x29 << 23 | (1 + r64b); /* LRM */
 			*b++ = offset;
 			reloc[n].target_handle = obj[0].handle;
@@ -479,6 +503,7 @@ static void dump_regs(int fd,
 	const int gen = intel_gen(intel_get_drm_devid(fd));
 	const unsigned int gen_bit = 1 << gen;
 	const unsigned int engine_bit = ENGINE(e->class, e->instance);
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int regs_size;
 	uint32_t *out;
 
@@ -489,26 +514,36 @@ static void dump_regs(int fd,
 	gem_set_domain(fd, regs, I915_GEM_DOMAIN_CPU, 0);
 
 	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
+		uint32_t offset;
+
 		if (!(r->engine_mask & engine_bit))
 			continue;
 		if (!(r->gen_mask & gen_bit))
 			continue;
+		if (r->relative && !mmio_base)
+			continue;
+
+		offset = r->offset;
+		if (r->relative)
+			offset += mmio_base;
 
 		if (r->count <= 1) {
 			igt_debug("0x%04x (%s): 0x%08x\n",
-				  r->offset, r->name, out[r->offset/4]);
+				  offset, r->name, out[offset / 4]);
 		} else {
 			for (unsigned x = 0; x < r->count; x++)
 				igt_debug("0x%04x (%s[%d]): 0x%08x\n",
-					  r->offset+4*x, r->name, x,
-					  out[r->offset/4 + x]);
+					  offset + 4 * x, r->name, x,
+					  out[offset / 4 + x]);
 		}
 	}
 	munmap(out, regs_size);
 }
 
-static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
+static void compare_regs(int fd, const struct intel_execution_engine2 *e,
+			 uint32_t A, uint32_t B, const char *who)
 {
+	const uint32_t mmio_base = gem_engine_mmio_base(fd, e->name);
 	unsigned int num_errors;
 	unsigned int regs_size;
 	uint32_t *a, *b;
@@ -532,11 +567,11 @@ static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
 		if (a[n] == b[n])
 			continue;
 
-		if (ignore_register(offset))
+		if (ignore_register(offset, mmio_base))
 			continue;
 
 		mask = ~0u;
-		r = lookup_register(offset);
+		r = lookup_register(offset, mmio_base);
 		if (r && r->masked)
 			mask >>= 16;
 		if (r && r->ignore_bits)
@@ -547,7 +582,7 @@ static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
 
 		igt_warn("Register 0x%04x (%s): A=%08x B=%08x\n",
 			 offset,
-			 register_name(offset, buf, sizeof(buf)),
+			 register_name(offset, mmio_base, buf, sizeof(buf)),
 			 a[n] & mask, b[n] & mask);
 		num_errors++;
 	}
@@ -638,7 +673,7 @@ static void nonpriv(int fd,
 
 		igt_spin_free(fd, spin);
 
-		compare_regs(fd, tmpl, regs[1], "nonpriv read/writes");
+		compare_regs(fd, e, tmpl, regs[1], "nonpriv read/writes");
 
 		for (int n = 0; n < ARRAY_SIZE(regs); n++)
 			gem_close(fd, regs[n]);
@@ -707,8 +742,9 @@ static void isolation(int fd,
 		igt_spin_free(fd, spin);
 
 		if (!(flags & DIRTY1))
-			compare_regs(fd, regs[0], tmp, "two reads of the same ctx");
-		compare_regs(fd, regs[0], regs[1], "two virgin contexts");
+			compare_regs(fd, e, regs[0], tmp,
+				     "two reads of the same ctx");
+		compare_regs(fd, e, regs[0], regs[1], "two virgin contexts");
 
 		for (int n = 0; n < ARRAY_SIZE(ctx); n++) {
 			gem_close(fd, regs[n]);
@@ -827,13 +863,13 @@ static void preservation(int fd,
 		char buf[80];
 
 		snprintf(buf, sizeof(buf), "dirty %x context\n", values[v]);
-		compare_regs(fd, regs[v][0], regs[v][1], buf);
+		compare_regs(fd, e, regs[v][0], regs[v][1], buf);
 
 		gem_close(fd, regs[v][0]);
 		gem_close(fd, regs[v][1]);
 		gem_context_destroy(fd, ctx[v]);
 	}
-	compare_regs(fd, regs[num_values][0], regs[num_values][1], "clean");
+	compare_regs(fd, e, regs[num_values][0], regs[num_values][1], "clean");
 	gem_context_destroy(fd, ctx[num_values]);
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
