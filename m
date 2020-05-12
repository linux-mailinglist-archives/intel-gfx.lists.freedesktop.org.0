Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110441CFA6E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249746E93C;
	Tue, 12 May 2020 16:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334136E937;
 Tue, 12 May 2020 16:20:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21175385-1500050 
 for multiple; Tue, 12 May 2020 17:20:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 17:20:44 +0100
Message-Id: <20200512162046.674703-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] i915/pm_rpm: Drop obsolete "gem_idle"
 subtest
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

An obscure and very dated subtest, it's even covered by the other
subtests -- if the kernel still worked in any fashion assumed by the
test.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/i915_pm_rpm.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/tests/i915/i915_pm_rpm.c b/tests/i915/i915_pm_rpm.c
index 47e74856e..22151aa73 100644
--- a/tests/i915/i915_pm_rpm.c
+++ b/tests/i915/i915_pm_rpm.c
@@ -1393,16 +1393,6 @@ static void gem_execbuf_stress_subtest(int rounds, int wait_flags)
 	gem_close(drm_fd, handle);
 }
 
-/* When this test was written, it triggered WARNs and DRM_ERRORs on dmesg. */
-static void gem_idle_subtest(void)
-{
-	disable_all_screens_and_wait(&ms_data);
-
-	sleep(5);
-
-	gem_test_engine(drm_fd, -1);
-}
-
 static void gem_evict_pwrite_subtest(void)
 {
 	struct {
@@ -2047,8 +2037,6 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		gem_pread_subtest();
 	igt_subtest("gem-execbuf")
 		gem_execbuf_subtest();
-	igt_subtest("gem-idle")
-		gem_idle_subtest();
 	igt_subtest("gem-evict-pwrite") {
 		gem_require_mappable_ggtt(drm_fd);
 		gem_evict_pwrite_subtest();
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
