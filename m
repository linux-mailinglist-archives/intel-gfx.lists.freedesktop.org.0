Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F97B11B930
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527636EB91;
	Wed, 11 Dec 2019 16:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2EB6EB94;
 Wed, 11 Dec 2019 16:48:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19544459-1500050 
 for multiple; Wed, 11 Dec 2019 16:48:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 16:48:38 +0000
Message-Id: <20191211164838.137117-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_parse: Check
 batch_start_offset
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

Validate that the cmdparser works with whatever offset we use for our
batches.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parse.c | 55 +++++++++++++++++++++++++++++++------
 1 file changed, 46 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_exec_parse.c b/tests/i915/gem_exec_parse.c
index 0c6de677e..5578340f7 100644
--- a/tests/i915/gem_exec_parse.c
+++ b/tests/i915/gem_exec_parse.c
@@ -82,8 +82,10 @@ __checked_execbuf(int i915, struct drm_i915_gem_execbuffer2 *eb)
 	return 0;
 }
 
-static uint64_t __exec_batch_patched(int fd, uint32_t cmd_bo, uint32_t *cmds,
-				     int size, int patch_offset)
+static uint64_t __exec_batch_patched(int fd,
+				     uint32_t cmd_bo, unsigned int offset,
+				     uint32_t *cmds, unsigned int size,
+				     unsigned int patch_offset)
 {
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj[2];
@@ -92,14 +94,14 @@ static uint64_t __exec_batch_patched(int fd, uint32_t cmd_bo, uint32_t *cmds,
 	uint32_t target_bo = gem_create(fd, 4096);
 	uint64_t actual_value = 0;
 
-	gem_write(fd, cmd_bo, 0, cmds, size);
+	gem_write(fd, cmd_bo, offset, cmds, size);
 
 	memset(obj, 0, sizeof(obj));
 	obj[0].handle = target_bo;
 	obj[1].handle = cmd_bo;
 
 	memset(reloc, 0, sizeof(reloc));
-	reloc[0].offset = patch_offset;
+	reloc[0].offset = offset + patch_offset;
 	reloc[0].target_handle = obj[0].handle;
 	reloc[0].delta = 0;
 	reloc[0].read_domains = I915_GEM_DOMAIN_COMMAND;
@@ -110,6 +112,7 @@ static uint64_t __exec_batch_patched(int fd, uint32_t cmd_bo, uint32_t *cmds,
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = to_user_pointer(obj);
 	execbuf.buffer_count = 2;
+	execbuf.batch_start_offset = offset;
 	execbuf.batch_len = size;
 	execbuf.flags = I915_EXEC_RENDER;
 
@@ -123,12 +126,25 @@ static uint64_t __exec_batch_patched(int fd, uint32_t cmd_bo, uint32_t *cmds,
 	return actual_value;
 }
 
-static void exec_batch_patched(int fd, uint32_t cmd_bo, uint32_t *cmds,
-			       int size, int patch_offset,
+static void exec_batch_patched(int fd, uint32_t cmd_bo,
+			       uint32_t *cmds, unsigned int size,
+			       unsigned int patch_offset,
 			       uint64_t expected_value)
 {
-	igt_assert_eq(__exec_batch_patched(fd, cmd_bo, cmds,
-					   size, patch_offset),
+	igt_assert_eq(__exec_batch_patched(fd, cmd_bo, 0,
+					   cmds, size,
+					   patch_offset),
+		      expected_value);
+}
+
+static void exec_batch_offset(int fd, uint32_t cmd_bo, unsigned int offset,
+			      uint32_t *cmds, unsigned int size,
+			      unsigned int patch_offset,
+			      uint64_t expected_value)
+{
+	igt_assert_eq(__exec_batch_patched(fd, cmd_bo, offset,
+					   cmds, size,
+					   patch_offset),
 		      expected_value);
 }
 
@@ -408,7 +424,7 @@ static void hsw_load_register_reg(void)
 		exec_batch(fd, handle, do_lrr, sizeof(do_lrr),
 			   I915_EXEC_RENDER,
 			   0);
-		var = __exec_batch_patched(fd, handle,
+		var = __exec_batch_patched(fd, handle, 0,
 					   store_gpr0, sizeof(store_gpr0),
 					   2 * sizeof(uint32_t)); /* reloc */
 		igt_assert_neq(var, 0xabcdabc0);
@@ -471,6 +487,27 @@ igt_main
 				   0x12000000);
 	}
 
+	igt_subtest("basic-offset") {
+		uint32_t pc[] = {
+			GFX_OP_PIPE_CONTROL,
+			PIPE_CONTROL_QW_WRITE,
+			0, /* To be patched */
+			0x12000000,
+			0,
+			MI_BATCH_BUFFER_END,
+		};
+		uint32_t scrub[1024];
+
+		memset(scrub, 0xc5, sizeof(scrub));
+		for (int i = 0; i <= 4096 - sizeof(pc); i += 8) {
+			gem_write(fd, handle, 0, scrub, sizeof(scrub));
+			exec_batch_offset(fd, handle, i,
+					  pc, sizeof(pc),
+					  8, /* patch offset, */
+					  0x12000000);
+		}
+	}
+
 	igt_subtest("basic-rejected") {
 		uint32_t invalid_cmd[] = {
 			INSTR_INVALID_CLIENT << INSTR_CLIENT_SHIFT,
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
