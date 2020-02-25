Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811416BFCF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102146EA9E;
	Tue, 25 Feb 2020 11:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458B36E1F7;
 Tue, 25 Feb 2020 11:45:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20344149-1500050 
 for multiple; Tue, 25 Feb 2020 11:45:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 11:44:54 +0000
Message-Id: <20200225114454.337180-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] perf: Avoid the regular drm_open_driver
 exithandler
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

Due to the way i915_perf_open() works, it installs a wakeref on the fd.
This wakeref prevents the normal drm_open_driver() exithandler from
returning (as that waits for all wakerefs to ensure the GPU is idle). We
need to manually control the nesting of cleanup, and so need to use
__drm_open_driver() to avoid the default exithandler.

References: https://gitlab.freedesktop.org/drm/intel/issues/1085#note_419148
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/perf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/perf.c b/tests/perf.c
index 7b11f668c..869e5f1e9 100644
--- a/tests/perf.c
+++ b/tests/perf.c
@@ -4489,7 +4489,8 @@ igt_main
 		 */
 		igt_assert_eq(drm_fd, -1);
 
-		drm_fd = drm_open_driver(DRIVER_INTEL);
+		/* Avoid the normal exithandler, our perf-fd interferes */
+		drm_fd = __drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(drm_fd);
 
 		devid = intel_get_drm_devid(drm_fd);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
