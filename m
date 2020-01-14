Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E38EF13A3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 10:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596FE6E33C;
	Tue, 14 Jan 2020 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E34B6E330
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 09:37:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19871426-1500050 
 for multiple; Tue, 14 Jan 2020 09:36:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 09:36:38 +0000
Message-Id: <20200114093648.2090633-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/gem: Honour O_NONBLOCK before
 throttling execbuf submissions
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

Check the user's flags on the struct file before deciding whether or not
to stall before submitting a request. This allows us to reasonably
cheaply honour O_NONBLOCK without checking at more critical phases
during request submission.

Suggested-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d5a0f5ae4a8b..d1c9ed391ca7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2290,15 +2290,22 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	intel_context_timeline_unlock(tl);
 
 	if (rq) {
-		if (i915_request_wait(rq,
-				      I915_WAIT_INTERRUPTIBLE,
-				      MAX_SCHEDULE_TIMEOUT) < 0) {
-			i915_request_put(rq);
-			err = -EINTR;
-			goto err_exit;
-		}
+		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
+		long timeout;
+
+		timeout = MAX_SCHEDULE_TIMEOUT;
+		if (nonblock)
+			timeout = 0;
 
+		timeout = i915_request_wait(rq,
+					    I915_WAIT_INTERRUPTIBLE,
+					    timeout);
 		i915_request_put(rq);
+
+		if (timeout < 0) {
+			err = nonblock ? -EWOULDBLOCK : timeout;
+			goto err_exit;
+		}
 	}
 
 	eb->engine = ce->engine;
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
