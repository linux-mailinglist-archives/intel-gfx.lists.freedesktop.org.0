Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9545F1A8A82
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 21:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A176E570;
	Tue, 14 Apr 2020 19:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34A26E56D;
 Tue, 14 Apr 2020 19:05:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20899716-1500050 
 for multiple; Tue, 14 Apr 2020 20:05:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 20:05:09 +0100
Message-Id: <20200414190509.2868509-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
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
Cc: igt-dev@lists.freedesktop.org, michal.winiarski@intel.com,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The poll() is proving unreliable, where our tests timeout without the
spinner being terminated. Let's try a blocking read instead!

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1676
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_dummyload.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 99ca84ad8..a59afd45b 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -399,12 +399,13 @@ igt_spin_factory(int fd, const struct igt_spin_factory *opts)
 static void *timer_thread(void *data)
 {
 	igt_spin_t *spin = data;
-	struct pollfd pfd = {
-		.fd = spin->timerfd,
-		.events = POLLIN,
-	};
+	uint64_t overruns = 0;
+	int ret;
 
-	if (poll(&pfd, 1, -1) >= 0)
+	do {
+		ret = read(spin->timerfd, &overruns, sizeof(overruns));
+	} while (ret == -1 && errno == EINTR);
+	if (overruns)
 		igt_spin_end(spin);
 
 	return NULL;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
