Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9947911E76D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 17:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25CD6EAF2;
	Fri, 13 Dec 2019 16:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26DD6EAF2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 16:03:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19569982-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 16:03:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 16:03:47 +0000
Message-Id: <20191213160347.1789004-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Use EAGAIN for trylock failures
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While not good behaviour, it is, however, established behaviour that we
can punt EAGAIN to userspace if we need to retry the ioctl. When trying
to acquire a mutex, prefer to use EAGAIN to propagate losing the race
so that if it does end up back in userspace, we try again.

Fixes: c81471f5e95c ("drm/i915: Copy across scheduler behaviour flags across submit fences")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/800
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 2 +-
 drivers/gpu/drm/i915/i915_request.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 038e05a6336c..d71aafb66d6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -527,7 +527,7 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 
 	GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
 
-	err = -EBUSY;
+	err = -EAGAIN;
 	if (mutex_trylock(&tl->mutex)) {
 		struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 51bb8a0812a1..fb8738987aeb 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -783,7 +783,7 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 	if (!tl) /* already started or maybe even completed */
 		return 0;
 
-	fence = ERR_PTR(-EBUSY);
+	fence = ERR_PTR(-EAGAIN);
 	if (mutex_trylock(&tl->mutex)) {
 		fence = NULL;
 		if (!i915_request_started(signal) &&
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
