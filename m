Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 909071CFA6F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB4B6E940;
	Tue, 12 May 2020 16:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1796E937;
 Tue, 12 May 2020 16:20:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21175387-1500050 
 for multiple; Tue, 12 May 2020 17:20:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 17:20:46 +0100
Message-Id: <20200512162046.674703-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512162046.674703-1-chris@chris-wilson.co.uk>
References: <20200512162046.674703-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] lib/i915: Discard unused
 gem_test_engine()
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

Last user removed, remove the definition of gem_test_engine().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem_submission.c | 49 ---------------------------------------
 lib/i915/gem_submission.h |  2 --
 2 files changed, 51 deletions(-)

diff --git a/lib/i915/gem_submission.c b/lib/i915/gem_submission.c
index 6bea6aa3d..5dc6ea93d 100644
--- a/lib/i915/gem_submission.c
+++ b/lib/i915/gem_submission.c
@@ -160,55 +160,6 @@ bool gem_has_guc_submission(int fd)
 	return gem_submission_method(fd) & GEM_SUBMISSION_GUC;
 }
 
-static bool is_wedged(int i915)
-{
-	int err = 0;
-	if (ioctl(i915, DRM_IOCTL_I915_GEM_THROTTLE))
-		err = -errno;
-	return err == -EIO;
-}
-
-/**
- * gem_test_engine:
- * @i915: open i915 drm file descriptor
- * @engine: the engine (I915_EXEC_RING id) to exercise
- *
- * Execute a nop batch on the engine specified, or ALL_ENGINES for all,
- * and check it executes.
- */
-void gem_test_engine(int i915, unsigned int engine)
-{
-	const uint32_t bbe = MI_BATCH_BUFFER_END;
-	struct drm_i915_gem_exec_object2 obj = { };
-	struct drm_i915_gem_execbuffer2 execbuf = {
-		.buffers_ptr = to_user_pointer(&obj),
-		.buffer_count = 1,
-	};
-
-	i915 = gem_reopen_driver(i915);
-	igt_assert(!is_wedged(i915));
-
-	obj.handle = gem_create(i915, 4096);
-	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
-
-	if (engine == ALL_ENGINES) {
-		const struct intel_execution_engine2 *e2;
-
-		__for_each_physical_engine(i915, e2) {
-			execbuf.flags = e2->flags;
-			gem_execbuf(i915, &execbuf);
-		}
-	} else {
-		execbuf.flags = engine;
-		gem_execbuf(i915, &execbuf);
-	}
-	gem_sync(i915, obj.handle);
-	gem_close(i915, obj.handle);
-
-	igt_assert(!is_wedged(i915));
-	close(i915);
-}
-
 int gem_cmdparser_version(int i915, uint32_t engine)
 {
 	int version = 0;
diff --git a/lib/i915/gem_submission.h b/lib/i915/gem_submission.h
index b030ed9fc..52fdb8bfc 100644
--- a/lib/i915/gem_submission.h
+++ b/lib/i915/gem_submission.h
@@ -46,6 +46,4 @@ static inline bool gem_has_cmdparser(int i915, uint32_t engine)
 bool gem_has_blitter(int i915);
 void gem_require_blitter(int i915);
 
-void gem_test_engine(int fd, unsigned int engine);
-
 #endif /* GEM_SUBMISSION_H */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
