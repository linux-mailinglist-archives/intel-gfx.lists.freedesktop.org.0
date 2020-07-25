Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1AF22D63C
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jul 2020 10:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBDF6E027;
	Sat, 25 Jul 2020 08:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D116E027
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jul 2020 08:54:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21926792-1500050 
 for multiple; Sat, 25 Jul 2020 09:54:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Jul 2020 09:54:24 +0100
Message-Id: <20200725085424.523604-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] drm_import_export: Check for working and
 known GPU
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since this relies on libdrm being updated for new GPUs [spoiler
warning], just mark future failures with a skip until support lands.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2220
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/drm_import_export.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/tests/drm_import_export.c b/tests/drm_import_export.c
index 6174c9973..d8ae84b32 100644
--- a/tests/drm_import_export.c
+++ b/tests/drm_import_export.c
@@ -40,6 +40,8 @@
 #include <unistd.h>
 #include <sys/syscall.h>
 
+#include "i915/gem.h"
+
 #define DURATION 10
 
 int fd;
@@ -235,13 +237,14 @@ igt_main {
 	igt_fixture {
 		fd1 = drm_open_driver(DRIVER_INTEL);
 		igt_assert(fd1 >= 0);
+		igt_require_gem(fd1);
+
 		bufmgr1 = drm_intel_bufmgr_gem_init(fd1, 8 *1024);
-		igt_assert(bufmgr1);
+		igt_require(bufmgr1);
 
 		drm_intel_bufmgr_gem_enable_reuse(bufmgr1);
 
-		fd = drm_open_driver(DRIVER_INTEL);
-		igt_assert(fd >= 0);
+		fd = gem_reopen_driver(fd1);
 		bufmgr = drm_intel_bufmgr_gem_init(fd, 8 *1024);
 		igt_assert(bufmgr);
 
-- 
2.28.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
