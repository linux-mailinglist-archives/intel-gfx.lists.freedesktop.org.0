Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92AE290363
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8366EC3B;
	Fri, 16 Oct 2020 10:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD656EAC4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:38 +0200
Message-Id: <20201016104444.1492028-56-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 55/61] drm/i915/selftests: Prepare timeline
 tests for obj->mm.lock removal
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

We can no longer call intel_timeline_pin with a null argument,
so add a ww loop that locks the backing object.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 26 ++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 6d6092a28e6b..cd8374780f7c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -36,6 +36,26 @@ static unsigned long hwsp_cacheline(struct intel_timeline *tl)
 	return (address + offset_in_page(tl->hwsp_offset)) / CACHELINE_BYTES;
 }
 
+static int selftest_tl_pin(struct intel_timeline *tl)
+{
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_gem_object_lock(tl->hwsp_ggtt->obj, &ww);
+	if (!err)
+		err = intel_timeline_pin(tl, &ww);
+
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
 #define CACHELINES_PER_PAGE (PAGE_SIZE / CACHELINE_BYTES)
 
 struct mock_hwsp_freelist {
@@ -77,7 +97,7 @@ static int __mock_hwsp_timeline(struct mock_hwsp_freelist *state,
 		if (IS_ERR(tl))
 			return PTR_ERR(tl);
 
-		err = intel_timeline_pin(tl, NULL);
+		err = selftest_tl_pin(tl);
 		if (err) {
 			intel_timeline_put(tl);
 			return err;
@@ -463,7 +483,7 @@ checked_tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32
 	struct i915_request *rq;
 	int err;
 
-	err = intel_timeline_pin(tl, NULL);
+	err = selftest_tl_pin(tl);
 	if (err) {
 		rq = ERR_PTR(err);
 		goto out;
@@ -663,7 +683,7 @@ static int live_hwsp_wrap(void *arg)
 	if (!tl->has_initial_breadcrumb)
 		goto out_free;
 
-	err = intel_timeline_pin(tl, NULL);
+	err = selftest_tl_pin(tl);
 	if (err)
 		goto out_free;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
