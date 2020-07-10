Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EB221B259
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 11:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E8F6EBC8;
	Fri, 10 Jul 2020 09:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43406E082;
 Fri, 10 Jul 2020 09:32:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21774857-1500050 
 for multiple; Fri, 10 Jul 2020 10:32:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 10:32:32 +0100
Message-Id: <20200710093234.1438712-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
References: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/6] i915/gem_close: Adapt to allow
 duplicate handles
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

With an upcoming change, we can relax the rule about handles not being
duplicated in the execocbj[]. Duplicate handles must not otherwise
conflict in their placements (e.g. two EXEC_OBJECT_PINNED at different
offsets), but otherwise if they are able to be resolved to the same GPU
address, then the operation is harmless and decreed legal.

Since this is a relaxation in the negative ABI, update the test case to
allow the permissible duplicate handles.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_close.c | 51 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 44 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_close.c b/tests/i915/gem_close.c
index 4fdc1ad79..a9bf2d2d4 100644
--- a/tests/i915/gem_close.c
+++ b/tests/i915/gem_close.c
@@ -24,21 +24,57 @@
 #include "i915/gem.h"
 #include "igt.h"
 
-static bool has_duplicate(int err)
+static int batch_create(int fd)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, 4096);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static int allows_duplicate(int fd)
+{
+	struct drm_i915_gem_exec_object2 obj[2] = {
+		{ .handle = batch_create(fd), },
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = 1,
+	};
+	int err;
+
+	gem_execbuf(fd, &execbuf);
+
+	obj[1] = obj[0];
+	execbuf.buffer_count = 2;
+
+	err = __gem_execbuf(fd, &execbuf);
+	gem_close(fd, obj[0].handle);
+
+	return err;
+}
+
+static bool is_duplicate(int err)
 {
 	return err == -EINVAL || err == -EALREADY;
 }
 
 static void test_many_handles(int fd)
 {
-	uint32_t bbe = MI_BATCH_BUFFER_END;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_exec_object2 obj[2];
 	uint32_t clones[128]; /* XXX try with 1024 */
 	uint32_t original;
+	int expected;
+
+	expected = allows_duplicate(fd);
+	if (expected)
+		igt_assert(is_duplicate(expected));
 
-	original = gem_create(fd, 4096);
-	gem_write(fd, original, 0, &bbe, sizeof(bbe));
+	original = batch_create(fd);
 
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = to_user_pointer(obj);
@@ -54,7 +90,8 @@ static void test_many_handles(int fd)
 		gem_execbuf(fd, &execbuf);
 	}
 
-	/* We do not allow the sam object to be referenced multiple times
+	/*
+	 * We do not allow the same object to be referenced multiple times
 	 * within an execbuf; hence why this practice of cloning a handle
 	 * is only found within test cases.
 	 */
@@ -62,11 +99,11 @@ static void test_many_handles(int fd)
 	obj[0].handle = original;
 	for (int i = 0; i < ARRAY_SIZE(clones); i++) {
 		obj[1].handle = clones[i];
-		igt_assert(has_duplicate(__gem_execbuf(fd, &execbuf)));
+		igt_assert_eq(__gem_execbuf(fd, &execbuf), expected);
 	}
 	/* Any other clone pair should also be detected */
 	obj[1].handle = clones[0];  /* (last, first) */
-	igt_assert(has_duplicate(__gem_execbuf(fd, &execbuf)));
+	igt_assert_eq(__gem_execbuf(fd, &execbuf), expected);
 	execbuf.buffer_count = 1;
 
 	/* Now close the original having used every clone */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
