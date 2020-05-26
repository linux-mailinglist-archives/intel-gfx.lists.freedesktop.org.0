Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 982311E23D7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 16:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E194E6E1F9;
	Tue, 26 May 2020 14:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6EC6E1F6;
 Tue, 26 May 2020 14:17:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21298287-1500050 
 for multiple; Tue, 26 May 2020 15:17:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 15:17:23 +0100
Message-Id: <20200526141723.401469-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Update inter-engine
 semaphore detection
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

The kernel no longer uses semaphores between engines, unless it can do
so by preempting them with timeslices. Update the semaphore-busy to only
run when we expect semaphore usage, i.e. not on bdw/bsw.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1939
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/perf_pmu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
index e54a0d47e..e80f730cf 100644
--- a/tests/perf_pmu.c
+++ b/tests/perf_pmu.c
@@ -822,6 +822,7 @@ sema_busy(int gem_fd,
 	int fd;
 
 	igt_require(gem_scheduler_has_semaphores(gem_fd));
+	igt_require(gem_scheduler_has_preemption(gem_fd));
 
 	fd = open_group(gem_fd,
 			I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
