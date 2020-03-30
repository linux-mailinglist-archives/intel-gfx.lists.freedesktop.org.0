Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC301977BA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F4B89944;
	Mon, 30 Mar 2020 09:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D78D89933;
 Mon, 30 Mar 2020 09:21:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20737344-1500050 
 for multiple; Mon, 30 Mar 2020 10:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 10:21:14 +0100
Message-Id: <20200330092117.810776-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915/gem_bad_reloc: Reduce negative
 testing
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

The plain negative-reloc tests do no execute anything on the GPU and so
cannot determine if the GPU would fallover, they only exercise the
kernel's placement which is uniform across the engines. We should also
cover the engines with perhaps MI_STORE_DWORD, but for the moment the
solitary exercise of blt remains.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_bad_reloc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/tests/i915/gem_bad_reloc.c b/tests/i915/gem_bad_reloc.c
index 96c9babe6..57efc77c3 100644
--- a/tests/i915/gem_bad_reloc.c
+++ b/tests/i915/gem_bad_reloc.c
@@ -50,7 +50,7 @@ IGT_TEST_DESCRIPTION("Simulates SNA behaviour using negative self-relocations"
  * than the total size of the GTT), the GPU will hang.
  * See https://bugs.freedesktop.org/show_bug.cgi?id=78533
  */
-static void negative_reloc(int fd, unsigned engine, unsigned flags)
+static void negative_reloc(int fd, unsigned flags)
 {
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj;
@@ -60,7 +60,6 @@ static void negative_reloc(int fd, unsigned engine, unsigned flags)
 	uint64_t *offsets;
 	int i;
 
-	gem_require_ring(fd, engine);
 	igt_require(intel_gen(intel_get_drm_devid(fd)) >= 7);
 
 	memset(&obj, 0, sizeof(obj));
@@ -70,7 +69,7 @@ static void negative_reloc(int fd, unsigned engine, unsigned flags)
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = (uintptr_t)&obj;
 	execbuf.buffer_count = 1;
-	execbuf.flags = engine | (flags & USE_LUT);
+	execbuf.flags = flags & USE_LUT;
 	igt_require(__gem_execbuf(fd, &execbuf) == 0);
 
 	igt_info("Found offset %lld for 4k batch\n", (long long)obj.offset);
@@ -185,7 +184,6 @@ static void negative_reloc_blt(int fd)
 
 igt_main
 {
-	const struct intel_execution_engine *e;
 	int fd = -1;
 
 	igt_fixture {
@@ -194,13 +192,11 @@ igt_main
 		gem_require_blitter(fd);
 	}
 
-	for (e = intel_execution_engines; e->name; e++) {
-		igt_subtest_f("negative-reloc-%s", e->name)
-			negative_reloc(fd, eb_ring(e), 0);
+	igt_subtest("negative-reloc")
+		negative_reloc(fd, 0);
 
-		igt_subtest_f("negative-reloc-lut-%s", e->name)
-			negative_reloc(fd, eb_ring(e), USE_LUT);
-	}
+	igt_subtest("negative-reloc-lut")
+		negative_reloc(fd, USE_LUT);
 
 	igt_subtest("negative-reloc-bltcopy")
 		negative_reloc_blt(fd);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
