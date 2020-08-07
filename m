Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A923E971
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 10:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A546E956;
	Fri,  7 Aug 2020 08:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E3C6E956
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 08:45:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22057947-1500050 
 for multiple; Fri, 07 Aug 2020 09:44:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 09:44:55 +0100
Message-Id: <20200807084455.473035-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_fence: Use default-context
 for syncobj-timeline-wait
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

syncobj-timeline-wait is only exercising waits on the syncobj along a
single timeline, for which it can use the universally available default
context, and so not try and fail to create a HW context on very old
platforms.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2308
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 tests/i915/gem_exec_fence.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index c9b95fe64..b240c30bf 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -1970,7 +1970,6 @@ static void test_syncobj_timeline_wait(int fd)
 		MI_BATCH_BUFFER_END,
 		MI_NOOP,
 	};
-	uint32_t gem_context = gem_context_clone_with_engines(fd, 0);
 	struct drm_i915_gem_exec_object2 obj;
 	struct drm_i915_gem_execbuffer2 execbuf;
 	struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
@@ -1988,7 +1987,7 @@ static void test_syncobj_timeline_wait(int fd)
 
 	gem_quiescent_gpu(fd);
 
-	spin = igt_spin_new(fd, .ctx = gem_context, .engine = ALL_ENGINES);
+	spin = igt_spin_new(fd, .engine = ALL_ENGINES);
 
 	memset(&timeline_fences, 0, sizeof(timeline_fences));
 	timeline_fences.base.name = DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES;
@@ -2000,7 +1999,6 @@ static void test_syncobj_timeline_wait(int fd)
 	execbuf.buffers_ptr = to_user_pointer(&obj);
 	execbuf.buffer_count = 1;
 	execbuf.batch_len = sizeof(bbe);
-	execbuf.rsvd1 = gem_context;
 
 	memset(&obj, 0, sizeof(obj));
 	obj.handle = gem_create(fd, 4096);
@@ -2055,8 +2053,6 @@ static void test_syncobj_timeline_wait(int fd)
 		gem_sync(fd, handle[i]);
 		gem_close(fd, handle[i]);
 	}
-
-	gem_context_destroy(fd, gem_context);
 }
 
 static const char *test_syncobj_timeline_export_desc =
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
