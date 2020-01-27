Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FF14A071
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041FE6EA78;
	Mon, 27 Jan 2020 09:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC946EA75;
 Mon, 27 Jan 2020 09:07:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20018982-1500050 
 for multiple; Mon, 27 Jan 2020 09:07:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 09:07:12 +0000
Message-Id: <20200127090712.2324227-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200127090712.2324227-1-chris@chris-wilson.co.uk>
References: <20200127090712.2324227-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/4] i915/gem_ctx_switch: Reduce runtime
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

Reduce the upper timeout for stress tests from 150s to a mere 20s, and
quick tests to 2s.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_switch.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/tests/i915/gem_ctx_switch.c b/tests/i915/gem_ctx_switch.c
index 6bbd24972..2f94e326f 100644
--- a/tests/i915/gem_ctx_switch.c
+++ b/tests/i915/gem_ctx_switch.c
@@ -364,18 +364,18 @@ igt_main
 				}
 
 				igt_subtest_f("legacy-%s%s", e->name, p->name)
-					single(fd, light, e2, p->flags, 1, 5);
+					single(fd, light, e2, p->flags, 1, 2);
 				igt_subtest_f("legacy-%s-heavy%s",
 					      e->name, p->name)
-					single(fd, heavy, e2, p->flags, 1, 5);
+					single(fd, heavy, e2, p->flags, 1, 2);
 				igt_subtest_f("legacy-%s-forked%s",
 					      e->name, p->name)
 					single(fd, light, e2, p->flags, ncpus,
-					       150);
+					       20);
 				igt_subtest_f("legacy-%s-forked-heavy%s",
 					      e->name, p->name)
 					single(fd, heavy, e2, p->flags, ncpus,
-					       150);
+					       20);
 			}
 		}
 	}
@@ -390,33 +390,33 @@ igt_main
 				}
 
 				igt_subtest_f("%s%s", e2->name, p->name)
-					single(fd, light, e2, p->flags, 1, 5);
+					single(fd, light, e2, p->flags, 1, 2);
 				igt_subtest_f("%s-heavy%s", e2->name, p->name)
-					single(fd, heavy, e2, p->flags, 1, 5);
+					single(fd, heavy, e2, p->flags, 1, 2);
 				igt_subtest_f("%s-forked%s", e2->name, p->name)
 					single(fd, light, e2, p->flags, ncpus,
-					       150);
+					       20);
 				igt_subtest_f("%s-forked-heavy%s",
 					      e2->name, p->name)
 					single(fd, heavy, e2, p->flags, ncpus,
-					       150);
+					       20);
 			}
 		}
 	}
 
 	igt_subtest("all-light")
-		all(fd, light, 0, 5);
+		all(fd, light, 0, 2);
 	igt_subtest("all-heavy")
-		all(fd, heavy, 0, 5);
+		all(fd, heavy, 0, 2);
 
 	igt_subtest_group {
 		igt_fixture {
 			igt_require(gem_has_queues(fd));
 		}
 		igt_subtest("queue-light")
-			all(fd, light, QUEUE, 5);
+			all(fd, light, QUEUE, 2);
 		igt_subtest("queue-heavy")
-			all(fd, heavy, QUEUE, 5);
+			all(fd, heavy, QUEUE, 2);
 	}
 
 	igt_fixture {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
