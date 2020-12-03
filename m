Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F962CD3A2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 11:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E09B6E0C9;
	Thu,  3 Dec 2020 10:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0B76E0C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 10:35:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23199946-1500050 
 for multiple; Thu, 03 Dec 2020 10:34:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 10:34:32 +0000
Message-Id: <20201203103432.31526-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Propagate error from cancelled
 submit due to context closure
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the course of discovering and closing many races with context closure
and execbuf submission, since commit 61231f6bd056 ("drm/i915/gem: Check
that the context wasn't closed during setup") we started checking that
the context was not closed by another userspace thread during the execbuf
ioctl. In doing so we cancelled the inflight request (by telling it to be
skipped), but kept reporting success since we do submit a request, albeit
one that doesn't execute. As the error is known before we return from the
ioctl, we can report the error we detect immediately, rather than leave
it on the fence status. With the immediate propagation of the error, it
is easier for userspace to handle.

Fixes: 61231f6bd056 ("drm/i915/gem: Check that the context wasn't closed during setup")
Testcase: igt/gem_ctx_exec/basic-close-race
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v5.7+
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1904e6e5ea64..b07dc1156a0e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3097,7 +3097,7 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
 			break;
 }
 
-static void eb_request_add(struct i915_execbuffer *eb)
+static int eb_request_add(struct i915_execbuffer *eb, int err)
 {
 	struct i915_request *rq = eb->request;
 	struct intel_timeline * const tl = i915_request_timeline(rq);
@@ -3118,6 +3118,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		/* Serialise with context_close via the add_to_timeline */
 		i915_request_set_error_once(rq, -ENOENT);
 		__i915_request_skip(rq);
+		err = -ENOENT; /* override any transient errors */
 	}
 
 	__i915_request_queue(rq, &attr);
@@ -3127,6 +3128,8 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		retire_requests(tl, prev);
 
 	mutex_unlock(&tl->mutex);
+
+	return err;
 }
 
 static const i915_user_extension_fn execbuf_extensions[] = {
@@ -3332,7 +3335,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	err = eb_submit(&eb, batch);
 err_request:
 	i915_request_get(eb.request);
-	eb_request_add(&eb);
+	err = eb_request_add(&eb, err);
 
 	if (eb.fences)
 		signal_fence_array(&eb);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
