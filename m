Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB931ED2C0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 16:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A038789C9A;
	Wed,  3 Jun 2020 14:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF1389C09
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 14:57:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 16:57:07 +0200
Message-Id: <20200603145713.3835124-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/24] drm/i915/selftests: Fix locking inversion
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
index 46379df7b52d..c56a7e7a5abd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4910,6 +4910,7 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 {
 	struct intel_context *ce;
 	struct i915_request *rq;
+	struct i915_gem_ww_ctx ww;
 	enum {
 		RING_START_IDX = 0,
 		RING_TAIL_IDX,
@@ -4924,7 +4925,11 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
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
 
@@ -4953,11 +4958,9 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
 	*cs++ = 0;
 
-	i915_vma_lock(scratch);
 	err = i915_request_await_object(rq, scratch->obj, true);
 	if (!err)
 		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(scratch);
 
 	i915_request_get(rq);
 	i915_request_add(rq);
@@ -4994,6 +4997,12 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
