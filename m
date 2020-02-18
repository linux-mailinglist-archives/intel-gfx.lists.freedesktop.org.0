Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB27C1628D5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 15:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7016E02E;
	Tue, 18 Feb 2020 14:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC386E02E;
 Tue, 18 Feb 2020 14:47:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20264741-1500050 
 for multiple; Tue, 18 Feb 2020 14:47:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 14:47:02 +0000
Message-Id: <20200218144702.1270825-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Don't specify a non-existent blitter
 ring
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

I915_EXEC_BLT only exists on gen6+

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1256
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/intel_batchbuffer.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/lib/intel_batchbuffer.c b/lib/intel_batchbuffer.c
index 5a00481cf..f1a45b473 100644
--- a/lib/intel_batchbuffer.c
+++ b/lib/intel_batchbuffer.c
@@ -695,20 +695,13 @@ fill_object(struct drm_i915_gem_exec_object2 *obj, uint32_t gem_handle,
 
 static void exec_blit(int fd,
 		      struct drm_i915_gem_exec_object2 *objs, uint32_t count,
-		      uint32_t batch_len /* in dwords */)
+		      int gen)
 {
-	struct drm_i915_gem_execbuffer2 exec;
-
-	exec.buffers_ptr = to_user_pointer(objs);
-	exec.buffer_count = count;
-	exec.batch_start_offset = 0;
-	exec.batch_len = batch_len * 4;
-	exec.DR1 = exec.DR4 = 0;
-	exec.num_cliprects = 0;
-	exec.cliprects_ptr = 0;
-	exec.flags = I915_EXEC_BLT;
-	i915_execbuffer2_set_context_id(exec, 0);
-	exec.rsvd2 = 0;
+	struct drm_i915_gem_execbuffer2 exec = {
+		.buffers_ptr = to_user_pointer(objs),
+		.buffer_count = count,
+		.flags = gen >= 6 ? I915_EXEC_BLT : 0,
+	};
 
 	gem_execbuf(fd, &exec);
 }
@@ -892,7 +885,7 @@ void igt_blitter_src_copy(int fd,
 	objs[0].flags |= EXEC_OBJECT_NEEDS_FENCE;
 	objs[1].flags |= EXEC_OBJECT_NEEDS_FENCE;
 
-	exec_blit(fd, objs, 3, ARRAY_SIZE(batch));
+	exec_blit(fd, objs, 3, gen);
 
 	gem_close(fd, batch_handle);
 }
@@ -985,7 +978,7 @@ void igt_blitter_fast_copy__raw(int fd,
 	fill_object(&objs[1], src_handle, NULL, 0);
 	fill_object(&objs[2], batch_handle, relocs, 2);
 
-	exec_blit(fd, objs, 3, ARRAY_SIZE(batch));
+	exec_blit(fd, objs, 3, intel_gen(intel_get_drm_devid(fd)));
 
 	gem_close(fd, batch_handle);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
