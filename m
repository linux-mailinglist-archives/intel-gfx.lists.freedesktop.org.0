Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02C71C84B2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F6C6E0A2;
	Thu,  7 May 2020 08:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8041B6E06D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:22:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21135438-1500050 
 for multiple; Thu, 07 May 2020 09:21:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 09:21:23 +0100
Message-Id: <20200507082124.1673-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507082124.1673-1-chris@chris-wilson.co.uk>
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Treat submit-fence as weak
 dependency for new clients
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

The submit-fence adds a weak dependency to the requests, and for the
purpose of our FQ_CODEL hinting we do not want to treat as a
restriction. This is primarily because clients may treat submit-fences
as a bidirectional bonding between a pair of co-ordinating requests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 966523a8503f..e8bf0cf02fd7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2565,6 +2565,17 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
 			break;
 }
 
+static bool new_client(struct i915_request *rq)
+{
+	struct i915_dependency *p;
+
+	list_for_each_entry(p, &rq->sched.signalers_list, signal_link)
+		if (!(p->flags & I915_DEPENDENCY_WEAK))
+			return false;
+
+	return true;
+}
+
 static void eb_request_add(struct i915_execbuffer *eb)
 {
 	struct i915_request *rq = eb->request;
@@ -2604,7 +2615,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		 * Allow interactive/synchronous clients to jump ahead of
 		 * the bulk clients. (FQ_CODEL)
 		 */
-		if (list_empty(&rq->sched.signalers_list))
+		if (new_client(rq))
 			attr.priority |= I915_PRIORITY_WAIT;
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
