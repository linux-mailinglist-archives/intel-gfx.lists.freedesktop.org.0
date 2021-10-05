Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50654422508
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 13:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632DB6EB49;
	Tue,  5 Oct 2021 11:31:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92166EB49;
 Tue,  5 Oct 2021 11:31:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="224489807"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="224489807"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 04:31:45 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487990222"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 04:31:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue,  5 Oct 2021 12:31:35 +0100
Message-Id: <20211005113135.768295-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Handle Intel igfx + Intel dgfx hybrid
 graphics setup
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

In short this makes i915 work for hybrid setups (DRI_PRIME=1 with Mesa)
when rendering is done on Intel dgfx and scanout/composition on Intel
igfx.

Before this patch the driver was not quite ready for that setup, mainly
because it was able to emit a semaphore wait between the two GPUs, which
results in deadlocks because semaphore target location in HWSP is neither
shared between the two, nor mapped in both GGTT spaces.

To fix it the patch adds an additional check to a couple of relevant code
paths in order to prevent using semaphores for inter-engine
synchronisation when relevant objects are not in the same GGTT space.

v2:
 * Avoid adding rq->i915. (Chris)

v3:
 * Use GGTT which describes the limit more precisely.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 79da5eca60af..4f189982f67e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1145,6 +1145,12 @@ __emit_semaphore_wait(struct i915_request *to,
 	return 0;
 }
 
+static bool
+can_use_semaphore_wait(struct i915_request *to, struct i915_request *from)
+{
+	return to->engine->gt->ggtt == from->engine->gt->ggtt;
+}
+
 static int
 emit_semaphore_wait(struct i915_request *to,
 		    struct i915_request *from,
@@ -1153,6 +1159,9 @@ emit_semaphore_wait(struct i915_request *to,
 	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
 	struct i915_sw_fence *wait = &to->submit;
 
+	if (!can_use_semaphore_wait(to, from))
+		goto await_fence;
+
 	if (!intel_context_use_semaphores(to->context))
 		goto await_fence;
 
@@ -1256,7 +1265,8 @@ __i915_request_await_execution(struct i915_request *to,
 	 * immediate execution, and so we must wait until it reaches the
 	 * active slot.
 	 */
-	if (intel_engine_has_semaphores(to->engine) &&
+	if (can_use_semaphore_wait(to, from) &&
+	    intel_engine_has_semaphores(to->engine) &&
 	    !i915_request_has_initial_breadcrumb(to)) {
 		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
 		if (err < 0)
-- 
2.30.2

