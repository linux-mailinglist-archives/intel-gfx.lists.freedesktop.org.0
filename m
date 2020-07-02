Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBC1212B76
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 19:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3776E0F8;
	Thu,  2 Jul 2020 17:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F19D6E0F8;
 Thu,  2 Jul 2020 17:46:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21693839-1500050 
 for multiple; Thu, 02 Jul 2020 18:46:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 18:46:20 +0100
Message-Id: <20200702174620.230048-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200702123908.227124-1-chris@chris-wilson.co.uk>
References: <20200702123908.227124-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf: Instantiate a local drm_fd for
 the unprivileged helper
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

While the test is blocked, we keep trying the gen12_single_ctx_helper().
As this is using the parent's drm_fd, all of our context allocations are
persistent. Reopen the device in the child so that when we exit, our
allocations are freed along with the process -- avoiding a total memory
leak if the test is stuck.

This does not explain why the test was stuck, it just prevents us from
exacerbating the error condition. Hopefully leaving the system in a more
debuggable state.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2126
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 tests/i915/perf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/tests/i915/perf.c b/tests/i915/perf.c
index d4ebae30d..92edc9f1f 100644
--- a/tests/i915/perf.c
+++ b/tests/i915/perf.c
@@ -4120,8 +4120,13 @@ gen12_test_single_ctx_render_target_writes_a_counter(void)
 
 	do {
 		igt_fork_helper(&child) {
+			/* A local device for local resources. */
+			drm_fd = gem_reopen_driver(drm_fd);
+
 			igt_drop_root();
 			gen12_single_ctx_helper();
+
+			close(drm_fd);
 		}
 		child_ret = igt_wait_helper(&child);
 		igt_assert(WEXITSTATUS(child_ret) == EAGAIN ||
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
