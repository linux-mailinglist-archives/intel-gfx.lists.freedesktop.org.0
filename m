Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A26F186982
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705D96E3EF;
	Mon, 16 Mar 2020 10:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1904C6E3EB;
 Mon, 16 Mar 2020 10:54:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574110-1500050 
 for multiple; Mon, 16 Mar 2020 10:54:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 10:54:27 +0000
Message-Id: <20200316105427.517192-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316105427.517192-1-chris@chris-wilson.co.uk>
References: <20200316105427.517192-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/sysfs_heartbeat_interval: Check
 for support prior to 'nopreempt' test
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

To turn off preemption, we now require per-engine resets.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/sysfs_heartbeat_interval.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/sysfs_heartbeat_interval.c b/tests/i915/sysfs_heartbeat_interval.c
index 0ba19b263..ef131a16c 100644
--- a/tests/i915/sysfs_heartbeat_interval.c
+++ b/tests/i915/sysfs_heartbeat_interval.c
@@ -227,7 +227,7 @@ static void test_nopreempt(int i915, int engine)
 	 */
 
 	/* Test heartbeats with forced preemption  disabled */
-	igt_sysfs_printf(engine, "preempt_timeout_ms", "%u", 0);
+	igt_require(igt_sysfs_printf(engine, "preempt_timeout_ms", "%u", 0) > 0);
 
 	igt_assert(igt_sysfs_scanf(engine, ATTR, "%u", &saved) == 1);
 	igt_debug("Initial %s:%u\n", ATTR, saved);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
