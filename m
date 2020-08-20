Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4E24C548
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 20:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C026E9CD;
	Thu, 20 Aug 2020 18:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9E76E9C8;
 Thu, 20 Aug 2020 18:26:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22190676-1500050 
 for multiple; Thu, 20 Aug 2020 19:26:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 19:26:40 +0100
Message-Id: <20200820182640.65842-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820182640.65842-1-chris@chris-wilson.co.uk>
References: <20200820182640.65842-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/4] i915/gem_exec_alignment: 32b printf
 cleanups
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

PRIu64 to the rescue!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_alignment.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_alignment.c b/tests/i915/gem_exec_alignment.c
index 17a14bef4..7bbd2a8fc 100644
--- a/tests/i915/gem_exec_alignment.c
+++ b/tests/i915/gem_exec_alignment.c
@@ -204,7 +204,7 @@ naughty_child(int i915, int link, uint32_t shared, unsigned int flags)
 	execbuf.buffer_count =
 		create_batch(i915, obj, execbuf.buffer_count, count, flags);
 	gem_execbuf(i915, &execbuf);
-	igt_debug("Created %lu buffers ready for delay\n", count);
+	igt_debug("Created %"PRIu64" buffers ready for delay\n", count);
 
 	/* Calibrate a long execbuf() */
 	memset(&tv, 0, sizeof(tv));
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
