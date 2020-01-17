Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8FA14129F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 22:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD876F923;
	Fri, 17 Jan 2020 21:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C856F925;
 Fri, 17 Jan 2020 21:11:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19922563-1500050 
 for multiple; Fri, 17 Jan 2020 21:11:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 21:11:29 +0000
Message-Id: <20200117211129.3303428-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_offset: Exercise many,
 many mmap_offset
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

Just keep on generating a new mmap_offset for the same old buffer, but
for different handles and so exercise the scaling of the obj->mmo lists.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
---
 tests/i915/gem_mmap_offset.c | 66 ++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
index 95e1e3e6c..005839c38 100644
--- a/tests/i915/gem_mmap_offset.c
+++ b/tests/i915/gem_mmap_offset.c
@@ -326,6 +326,69 @@ static void close_race(int i915, int timeout)
 	munmap(handles, len);
 }
 
+static void open_flood(int i915, int timeout)
+{
+	unsigned long count;
+	uint32_t handle;
+	int dmabuf;
+	int *ctl;
+
+	ctl = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+	igt_assert(ctl != MAP_FAILED);
+
+	handle = gem_create(i915, 4096);
+	dmabuf = prime_handle_to_fd(i915, handle);
+
+	for_each_mmap_offset_type(t) {
+		struct drm_i915_gem_mmap_offset arg = {
+			.handle = handle,
+			.flags = t->type,
+		};
+
+		if (mmap_offset_ioctl(i915, &arg))
+			continue;
+
+		igt_fork(child, 1) {
+			i915 = gem_reopen_driver(i915);
+			arg.handle = prime_fd_to_handle(i915, dmabuf);
+
+			do {
+				igt_assert_eq(mmap_offset_ioctl(i915, &arg), 0);
+			} while (!READ_ONCE(*ctl));
+		}
+	}
+	gem_close(i915, handle);
+
+	count = 0;
+	igt_until_timeout(timeout) {
+		int tmp;
+
+		tmp = gem_reopen_driver(i915);
+		handle = prime_fd_to_handle(i915, dmabuf);
+
+		for_each_mmap_offset_type(t) {
+			struct drm_i915_gem_mmap_offset arg = {
+				.handle = handle,
+				.flags = t->type,
+			};
+
+			mmap_offset_ioctl(i915, &arg);
+		}
+
+		close(tmp);
+		count++;
+	}
+
+	igt_info("Completed %lu cycles\n", count);
+
+	close(dmabuf);
+	close(i915);
+
+	*ctl = 1;
+	igt_waitchildren();
+	munmap(ctl, 4096);
+}
+
 static uint64_t atomic_compare_swap_u64(_Atomic(uint64_t) *ptr,
 					uint64_t oldval, uint64_t newval)
 {
@@ -488,6 +551,9 @@ igt_main
 	igt_subtest_f("close-race")
 		close_race(i915, 20);
 
+	igt_subtest_f("open-flood")
+		open_flood(i915, 20);
+
 	igt_subtest_f("clear")
 		always_clear(i915, 20);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
