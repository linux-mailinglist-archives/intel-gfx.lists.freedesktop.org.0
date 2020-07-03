Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A10B82139F0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 14:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7905F6E359;
	Fri,  3 Jul 2020 12:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786FA6EB6E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 12:22:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jul 2020 14:22:17 +0200
Message-Id: <20200703122221.591656-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/23] drm/i915/selftests: Fix locking inversion
 in lrc selftest.
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

This function does not use intel_context_create_request, so it has
to use the same locking order as normal code. This is required to
shut up lockdep in selftests.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 19ae1e6ba976..65abb3a14c2d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4999,6 +4999,7 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 {
 	struct intel_context *ce;
 	struct i915_request *rq;
+	struct i915_gem_ww_ctx ww;
 	enum {
 		RING_START_IDX = 0,
 		RING_TAIL_IDX,
@@ -5013,7 +5014,11 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	err = intel_context_pin(ce);
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_gem_object_lock(scratch->obj, &ww);
+	if (!err)
+		err = intel_context_pin_ww(ce, &ww);
 	if (err)
 		goto err_put;
 
@@ -5042,11 +5047,9 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
 	*cs++ = 0;
 
-	i915_vma_lock(scratch);
 	err = i915_request_await_object(rq, scratch->obj, true);
 	if (!err)
 		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(scratch);
 
 	i915_request_get(rq);
 	i915_request_add(rq);
@@ -5083,6 +5086,12 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 err_unpin:
 	intel_context_unpin(ce);
 err_put:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	intel_context_put(ce);
 	return err;
 }
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
