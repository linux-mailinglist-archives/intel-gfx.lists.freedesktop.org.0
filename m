Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80431A1EB6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1ED6EA15;
	Wed,  8 Apr 2020 10:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03CF6EA14;
 Wed,  8 Apr 2020 10:24:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20837305-1500050 
 for multiple; Wed, 08 Apr 2020 11:24:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 Apr 2020 11:24:08 +0100
Message-Id: <20200408102408.1959598-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] kms_flip: Reduce hang tests to minimum
 duration
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hang tests are slow since we must wait for the kernel to detect the GPU
hang before it forcibly completes the execution and signals the fence.
The flip is not allowed before the fence is signaled and so must wait.
Our test is that the flip does eventually occur, we only need to do that
once, and let the power of repeated runs across many machines weed out
the corner cases.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/kms_flip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index afaed69aa..4535ecc8b 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -1546,8 +1546,8 @@ igt_main
 					"flip-vs-wf_vblank" },
 		{ 30, TEST_FLIP | TEST_VBLANK | TEST_VBLANK_BLOCK |
 			TEST_CHECK_TS, "flip-vs-blocking-wf-vblank" },
-		{ 30, TEST_FLIP | TEST_MODESET | TEST_HANG | TEST_NOEVENT, "flip-vs-modeset-vs-hang" },
-		{ 30, TEST_FLIP | TEST_PAN | TEST_HANG, "flip-vs-panning-vs-hang" },
+		{ 1, TEST_FLIP | TEST_MODESET | TEST_HANG | TEST_NOEVENT, "flip-vs-modeset-vs-hang" },
+		{ 1, TEST_FLIP | TEST_PAN | TEST_HANG, "flip-vs-panning-vs-hang" },
 
 		{ 1, TEST_DPMS_OFF | TEST_MODESET | TEST_FLIP,
 					"flip-vs-dpms-off-vs-modeset" },
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
