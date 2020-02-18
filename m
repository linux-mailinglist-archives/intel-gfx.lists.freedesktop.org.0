Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7788B162D34
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1AAC89D30;
	Tue, 18 Feb 2020 17:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D2D89D30;
 Tue, 18 Feb 2020 17:42:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20266933-1500050 
 for multiple; Tue, 18 Feb 2020 17:42:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:42:19 +0000
Message-Id: <20200218174219.1301127-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200218122648.1252102-1-chris@chris-wilson.co.uk>
References: <20200218122648.1252102-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Exercise implicit
 ordering between engines
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
Cc: igt-dev@lists.freedesktop.org,
 Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check that reads are serialised after a write, and that a subsequent
write is after all reads.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
Cc: Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
---
 tests/i915/gem_exec_schedule.c | 73 ++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index a20985864..cfd06aa55 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -241,6 +241,61 @@ static void fifo(int fd, unsigned ring)
 	igt_assert_eq_u32(result, 2);
 }
 
+enum implicit_dir {
+	READ_WRITE = 0x1,
+	WRITE_READ = 0x2,
+};
+
+static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
+{
+	IGT_CORK_FENCE(cork);
+	unsigned int count;
+	uint32_t scratch;
+	uint32_t result;
+	int fence;
+
+	count = 0;
+	for_each_physical_engine(other, i915) {
+		if (eb_ring(other) == ring)
+			continue;
+
+		count++;
+	}
+	igt_require(count);
+
+	scratch = gem_create(i915, 4096);
+	fence = igt_cork_plug(&cork, i915);
+
+	if (dir & WRITE_READ)
+		store_dword_fenced(i915, 0,
+				   ring, scratch, 0, -ring,
+				   fence, I915_GEM_DOMAIN_RENDER);
+
+	for_each_physical_engine(other, i915) {
+		if (eb_ring(other) == ring)
+			continue;
+
+		store_dword_fenced(i915, 0,
+				   eb_ring(other), scratch, 0, eb_ring(other),
+				   fence, 0);
+	}
+
+	if (dir & READ_WRITE)
+		store_dword_fenced(i915, 0,
+				   ring, scratch, 0, ring,
+				   fence, I915_GEM_DOMAIN_RENDER);
+
+	unplug_show_queue(i915, &cork, ring);
+	close(fence);
+
+	result =  __sync_read_u32(i915, scratch, 0);
+	gem_close(i915, scratch);
+
+	igt_assert_neq_u32(result, -ring);
+	if (dir & READ_WRITE)
+		igt_assert_eq_u32(result, ring);
+}
+
 static void independent(int fd, unsigned int engine)
 {
 	IGT_CORK_FENCE(cork);
@@ -2042,6 +2097,24 @@ igt_main
 				fifo(fd, eb_ring(e));
 			}
 
+			igt_subtest_f("implicit-read-write-%s", e->name) {
+				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
+				igt_require(gem_can_store_dword(fd, eb_ring(e)));
+				implicit_rw(fd, eb_ring(e), READ_WRITE);
+			}
+
+			igt_subtest_f("implicit-write-read-%s", e->name) {
+				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
+				igt_require(gem_can_store_dword(fd, eb_ring(e)));
+				implicit_rw(fd, eb_ring(e), WRITE_READ);
+			}
+
+			igt_subtest_f("implicit-both-%s", e->name) {
+				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
+				igt_require(gem_can_store_dword(fd, eb_ring(e)));
+				implicit_rw(fd, eb_ring(e), READ_WRITE | WRITE_READ);
+			}
+
 			igt_subtest_f("independent-%s", e->name) {
 				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
 				igt_require(gem_can_store_dword(fd, eb_ring(e)));
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
