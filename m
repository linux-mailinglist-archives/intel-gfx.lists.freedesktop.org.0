Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D214A010
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 09:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A9D6EA4F;
	Mon, 27 Jan 2020 08:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B076EA4F;
 Mon, 27 Jan 2020 08:51:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20018752-1500050 
 for multiple; Mon, 27 Jan 2020 08:51:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 08:51:23 +0000
Message-Id: <20200127085123.2229746-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_pipe_control_store_loop: Limit
 runtime
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

Use a runtime limit, not a fixed amount of work, so that it doesn't take
several hundred seconds on the slower machines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_pipe_control_store_loop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/i915/gem_pipe_control_store_loop.c b/tests/i915/gem_pipe_control_store_loop.c
index b8a21d780..9330a47c8 100644
--- a/tests/i915/gem_pipe_control_store_loop.c
+++ b/tests/i915/gem_pipe_control_store_loop.c
@@ -62,13 +62,13 @@ uint32_t devid;
 
 /* Like the store dword test, but we create new command buffers each time */
 static void
-store_pipe_control_loop(bool preuse_buffer)
+store_pipe_control_loop(bool preuse_buffer, int timeout)
 {
 	int i, val = 0;
 	uint32_t *buf;
 	drm_intel_bo *target_bo;
 
-	for (i = 0; i < SLOW_QUICK(0x10000, 4); i++) {
+	igt_until_timeout(timeout) {
 		/* we want to check tlb consistency of the pipe_control target,
 		 * so get a new buffer every time around */
 		target_bo = drm_intel_bo_alloc(bufmgr, "target bo", 4096, 4096);
@@ -182,10 +182,10 @@ igt_main
 	}
 
 	igt_subtest("fresh-buffer")
-		store_pipe_control_loop(false);
+		store_pipe_control_loop(false, 2);
 
 	igt_subtest("reused-buffer")
-		store_pipe_control_loop(true);
+		store_pipe_control_loop(true, 2);
 
 	igt_fixture {
 		intel_batchbuffer_free(batch);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
