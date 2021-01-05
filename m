Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D10A2EB4DA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 22:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA05189BD4;
	Tue,  5 Jan 2021 21:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01BFB89BE8;
 Tue,  5 Jan 2021 21:26:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23512054-1500050 
 for multiple; Tue, 05 Jan 2021 21:26:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 21:26:06 +0000
Message-Id: <20210105212606.3399854-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210105212606.3399854-1-chris@chris-wilson.co.uk>
References: <20210105212606.3399854-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_spin_batch: Check for
 userptr before use
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

If the device cannot handle coherent memory, it will disallow userptr.
Check before use.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2904
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_spin_batch.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_spin_batch.c b/tests/i915/gem_spin_batch.c
index c2ce2373b..2ec278857 100644
--- a/tests/i915/gem_spin_batch.c
+++ b/tests/i915/gem_spin_batch.c
@@ -176,6 +176,25 @@ static void spin_all(int i915, unsigned int flags)
 	}
 }
 
+static bool has_userptr(int fd)
+{
+	struct drm_i915_gem_userptr userptr;
+	int err;
+
+	memset(&userptr, 0, sizeof(userptr));
+	userptr.user_size = 8192;
+	userptr.user_ptr = -4096;
+
+	err = 0;
+	if (drmIoctl(fd, DRM_IOCTL_I915_GEM_USERPTR, &userptr)) {
+		err = errno;
+		igt_assume(err);
+	}
+	errno = 0;
+
+	return err == EFAULT;
+}
+
 igt_main
 {
 	const struct intel_execution_engine2 *e2;
@@ -235,8 +254,10 @@ igt_main
 	igt_subtest("spin-each")
 		spin_on_all_engines(fd, 0, 3);
 
-	igt_subtest("user-each")
+	igt_subtest("user-each") {
+		igt_require(has_userptr(fd));
 		spin_on_all_engines(fd, IGT_SPIN_USERPTR, 3);
+	}
 
 	igt_fixture {
 		igt_stop_hang_detector();
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
