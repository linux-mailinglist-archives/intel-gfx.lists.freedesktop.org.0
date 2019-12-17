Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C79122D5E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7FB6E9E4;
	Tue, 17 Dec 2019 13:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078FD6E9E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 13:47:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19609516-1500050 
 for multiple; Tue, 17 Dec 2019 13:47:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 13:47:29 +0000
Message-Id: <20191217134729.3297818-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Keep request alive while
 attaching fences
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since commit e5dadff4b093 ("drm/i915: Protect request retirement with
timeline->mutex"), the request retirement can happen outside of the
struct_mutex serialised only by the timeline->mutex. We drop the
timeline->mutex on submitting the request (i915_request_add) so after
that point, it is liable to be freed. Make sure our local reference is
kept alive until we have finished attaching it to the signalers. (Note
that this erodes the argument that i915_request_add should consume the
reference, but that is a slightly larger patch!)

Fixes: e5dadff4b093 ("drm/i915: Protect request retirement with timeline->mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 81eaf812c9da..7d07131aa3f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2730,6 +2730,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	err = eb_submit(&eb);
 err_request:
 	add_to_client(eb.request, file);
+	i915_request_get(eb.request);
 	i915_request_add(eb.request);
 
 	if (fences)
@@ -2745,6 +2746,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			fput(out_fence->file);
 		}
 	}
+	i915_request_put(eb.request);
 
 err_batch_unpin:
 	if (eb.batch_flags & I915_DISPATCH_SECURE)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
