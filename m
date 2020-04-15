Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6C81AAA1F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DE76E9E9;
	Wed, 15 Apr 2020 14:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCD86E9E9;
 Wed, 15 Apr 2020 14:39:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20907389-1500050 
 for multiple; Wed, 15 Apr 2020 15:39:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 15:39:00 +0100
Message-Id: <20200415143900.2927491-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414190509.2868509-1-chris@chris-wilson.co.uk>
References: <20200414190509.2868509-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Use read() for timerfd timeout
 detection
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

The poll() is proving unreliable, where our tests timeout without the
spinner being terminated. Let's try a blocking read instead!

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1676
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
---
 lib/igt_dummyload.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 99ca84ad8..ae0fb9378 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -399,14 +399,14 @@ igt_spin_factory(int fd, const struct igt_spin_factory *opts)
 static void *timer_thread(void *data)
 {
 	igt_spin_t *spin = data;
-	struct pollfd pfd = {
-		.fd = spin->timerfd,
-		.events = POLLIN,
-	};
+	uint64_t overruns = 0;
 
-	if (poll(&pfd, 1, -1) >= 0)
-		igt_spin_end(spin);
+	/* Wait until we see the timer fire, or we get cancelled */
+	do {
+		read(spin->timerfd, &overruns, sizeof(overruns));
+	} while (!overruns);
 
+	igt_spin_end(spin);
 	return NULL;
 }
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
