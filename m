Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B442CEF46
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 15:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE8E6E1AA;
	Fri,  4 Dec 2020 14:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39636E194
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 14:03:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23215332-1500050 
 for multiple; Fri, 04 Dec 2020 14:03:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 14:03:14 +0000
Message-Id: <20201204140315.24341-23-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204140315.24341-1-chris@chris-wilson.co.uk>
References: <20201204140315.24341-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/24] drm/i915/selftests: Exercise relative
 timeline modes
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

A quick test to verify that the backend accepts each type of timeline
and can use them to track and control request emission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 93 +++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 6f355c8a4f81..0d7576953c6d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -1364,9 +1364,102 @@ static int live_hwsp_recycle(void *arg)
 	return err;
 }
 
+static int live_hwsp_relative(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/*
+	 * Check backend support for different timeline modes.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		enum intel_timeline_mode mode;
+
+		if (!engine->schedule)
+			continue;
+
+		for (mode = INTEL_TIMELINE_ABSOLUTE;
+		     mode <= INTEL_TIMELINE_GLOBAL;
+		     mode++) {
+			struct intel_timeline *tl;
+			struct i915_request *rq;
+			struct intel_context *ce;
+			const char *msg;
+			int err;
+
+			if (mode == INTEL_TIMELINE_CONTEXT &&
+			    INTEL_GEN(gt->i915) < 8)
+				continue;
+
+			ce = intel_context_create(engine);
+			if (IS_ERR(ce))
+				return PTR_ERR(ce);
+
+			err = intel_context_alloc_state(ce);
+			if (err) {
+				intel_context_put(ce);
+				return err;
+			}
+
+			switch (mode) {
+			case INTEL_TIMELINE_ABSOLUTE:
+				tl = intel_timeline_create(gt);
+				msg = "local";
+				break;
+
+			case INTEL_TIMELINE_CONTEXT:
+				tl = __intel_timeline_create(gt,
+							     ce->state,
+							     256 | INTEL_TIMELINE_CONTEXT);
+				msg = "ppHWSP";
+				break;
+
+			case INTEL_TIMELINE_GLOBAL:
+				tl = __intel_timeline_create(gt,
+							     engine->status_page.vma,
+							     256);
+				msg = "HWSP";
+				break;
+			}
+			if (IS_ERR(tl)) {
+				intel_context_put(ce);
+				return PTR_ERR(tl);
+			}
+
+			pr_info("Testing %s timeline on %s\n",
+				msg, engine->name);
+
+			intel_timeline_put(ce->timeline);
+			ce->timeline = tl;
+
+			rq = intel_context_create_request(ce);
+			intel_context_put(ce);
+			if (IS_ERR(rq))
+				return PTR_ERR(rq);
+
+			GEM_BUG_ON(rcu_access_pointer(rq->timeline) != tl);
+
+			i915_request_get(rq);
+			i915_request_add(rq);
+
+			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+				i915_request_put(rq);
+				return -EIO;
+			}
+
+			i915_request_put(rq);
+		}
+	}
+
+	return 0;
+}
+
 int intel_timeline_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_hwsp_relative),
 		SUBTEST(live_hwsp_recycle),
 		SUBTEST(live_hwsp_engine),
 		SUBTEST(live_hwsp_alternate),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
