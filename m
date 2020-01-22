Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC759145F26
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 00:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6296F935;
	Wed, 22 Jan 2020 23:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF166F932;
 Wed, 22 Jan 2020 23:30:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:30:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220478465"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 22 Jan 2020 15:30:51 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:26:57 -0800
Message-Id: <225f88d1044053674cbd632998c69c0c677a530e.1579731227.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
References: <cover.1579731227.git.dale.b.stimson@intel.com>
 <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] DBS: tests/i915/gem_ctx_isolation:
 use the gem_engine_topology library, part 2
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

Switch from simple iteration over all potential engines to using
macro __for_each_physical_engine which only returns engines that are
actually present.

For each context (as it is created) call gem_context_set_all_engines
so that execbuf will interpret the engine specification in the new way.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 tests/i915/gem_ctx_isolation.c | 41 ++++++++++++++++++++++++++--------
 1 file changed, 32 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 25113b054..31a20ed3a 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -240,6 +240,25 @@ static bool ignore_register(uint32_t offset)
 	return false;
 }
 
+/*
+ * context_create_plus_all_engines - Same as gem_context_create plus setup.
+ *
+ * This is a convenience function that may be called instead of the sequence
+ * of gem_context_create followed by gem_context_set_all_engines.
+ * If gem_has_engine_topology(), then function gem_context_set_all_engines
+ * indicates that future execbuf calls for this context should interpret the
+ * engine specification in a gem_engine_topology-compatible way.
+ */
+static uint32_t context_create_plus_all_engines(int fd)
+{
+	uint32_t ctx;
+
+	ctx = gem_context_create(fd);
+	gem_context_set_all_engines(fd, ctx);
+
+	return ctx;
+}
+
 static void tmpl_regs(int fd,
 		      uint32_t ctx,
 		      const struct intel_execution_engine2 *e,
@@ -586,7 +605,8 @@ static void nonpriv(int fd,
 		igt_spin_t *spin = NULL;
 		uint32_t ctx, regs[2], tmpl;
 
-		ctx = gem_context_create(fd);
+		ctx = context_create_plus_all_engines(fd);
+
 		tmpl = read_regs(fd, ctx, e, flags);
 		regs[0] = read_regs(fd, ctx, e, flags);
 
@@ -599,7 +619,7 @@ static void nonpriv(int fd,
 		write_regs(fd, ctx, e, flags, values[v]);
 
 		if (flags & DIRTY2) {
-			uint32_t sw = gem_context_create(fd);
+			uint32_t sw = context_create_plus_all_engines(fd);
 			igt_spin_t *syncpt, *dirt;
 
 			/* Explicit sync to keep the switch between write/read */
@@ -668,7 +688,7 @@ static void isolation(int fd,
 		igt_spin_t *spin = NULL;
 		uint32_t ctx[2], regs[2], tmp;
 
-		ctx[0] = gem_context_create(fd);
+		ctx[0] = context_create_plus_all_engines(fd);
 		regs[0] = read_regs(fd, ctx[0], e, flags);
 
 		spin = igt_spin_new(fd, .ctx = ctx[0], .engine = e->flags);
@@ -687,7 +707,7 @@ static void isolation(int fd,
 		 * the default values from this context, but if goes badly we
 		 * see the corruption from the previous context instead!
 		 */
-		ctx[1] = gem_context_create(fd);
+		ctx[1] = context_create_plus_all_engines(fd);
 		regs[1] = read_regs(fd, ctx[1], e, flags);
 
 		if (flags & DIRTY2) {
@@ -727,7 +747,7 @@ static void isolation(int fd,
 static void inject_reset_context(int fd, const struct intel_execution_engine2 *e)
 {
 	struct igt_spin_factory opts = {
-		.ctx = gem_context_create(fd),
+		.ctx = context_create_plus_all_engines(fd),
 		.engine = e->flags,
 		.flags = IGT_SPIN_FAST,
 	};
@@ -775,11 +795,11 @@ static void preservation(int fd,
 
 	gem_quiescent_gpu(fd);
 
-	ctx[num_values] = gem_context_create(fd);
+	ctx[num_values] = context_create_plus_all_engines(fd);
 	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
 	regs[num_values][0] = read_regs(fd, ctx[num_values], e, flags);
 	for (int v = 0; v < num_values; v++) {
-		ctx[v] = gem_context_create(fd);
+		ctx[v] = context_create_plus_all_engines(fd);
 		write_regs(fd, ctx[v], e, flags, values[v]);
 
 		regs[v][0] = read_regs(fd, ctx[v], e, flags);
@@ -854,6 +874,7 @@ static unsigned int __has_context_isolation(int fd)
 igt_main
 {
 	unsigned int has_context_isolation = 0;
+	const struct intel_execution_engine2 *e;
 	int fd = -1;
 
 	igt_fixture {
@@ -871,10 +892,12 @@ igt_main
 		igt_warn_on_f(gen > LAST_KNOWN_GEN,
 			      "GEN not recognized! Test needs to be updated to run.\n");
 		igt_skip_on(gen > LAST_KNOWN_GEN);
+
+		/* Context 0 is created on device open. */
+		gem_context_set_all_engines(fd, 0);
 	}
 
-	for (const struct intel_execution_engine2 *e = intel_execution_engines2;
-	     e->name; e++) {
+	__for_each_physical_engine(fd, e) {
 		igt_subtest_group {
 			igt_fixture {
 				igt_require(has_context_isolation & (1 << e->class));
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
