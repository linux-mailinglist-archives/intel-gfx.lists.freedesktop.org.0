Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2242F1D9785
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2073E6E33C;
	Tue, 19 May 2020 13:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63D56E339
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:20:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21228634-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 14:20:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 14:20:44 +0100
Message-Id: <20200519132046.22443-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/selftests: Add tests for timeslicing
 virtual engines
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

Make sure that we can execute a virtual request on an already busy
engine, and conversely that we can execute a normal request if the
engines are already fully occupied by virtual requests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 200 ++++++++++++++++++++++++-
 1 file changed, 197 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 94854a467e66..7ab0e804f73a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3600,9 +3600,11 @@ static int nop_virtual_engine(struct intel_gt *gt,
 	return err;
 }
 
-static unsigned int select_siblings(struct intel_gt *gt,
-				    unsigned int class,
-				    struct intel_engine_cs **siblings)
+static unsigned int
+__select_siblings(struct intel_gt *gt,
+		  unsigned int class,
+		  struct intel_engine_cs **siblings,
+		  bool (*filter)(const struct intel_engine_cs *))
 {
 	unsigned int n = 0;
 	unsigned int inst;
@@ -3611,12 +3613,23 @@ static unsigned int select_siblings(struct intel_gt *gt,
 		if (!gt->engine_class[class][inst])
 			continue;
 
+		if (filter && !filter(gt->engine_class[class][inst]))
+			continue;
+
 		siblings[n++] = gt->engine_class[class][inst];
 	}
 
 	return n;
 }
 
+static unsigned int
+select_siblings(struct intel_gt *gt,
+		unsigned int class,
+		struct intel_engine_cs **siblings)
+{
+	return __select_siblings(gt, class, siblings, NULL);
+}
+
 static int live_virtual_engine(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -3771,6 +3784,186 @@ static int live_virtual_mask(void *arg)
 	return 0;
 }
 
+static long slice_timeout(struct intel_engine_cs *engine)
+{
+	long timeout;
+
+	/* Enough time for a timeslice to kick in, and kick out */
+	timeout = 2 * msecs_to_jiffies_timeout(timeslice(engine));
+
+	/* Enough time for the nop request to complete */
+	timeout += HZ / 5;
+
+	return timeout;
+}
+
+static int slicein_virtual_engine(struct intel_gt *gt,
+				  struct intel_engine_cs **siblings,
+				  unsigned int nsibling)
+{
+	const long timeout = slice_timeout(siblings[0]);
+	struct intel_context *ce;
+	struct i915_request *rq;
+	struct igt_spinner spin;
+	unsigned int n;
+	int err = 0;
+
+	/*
+	 * Virtual requests must take part in timeslicing on the target engines.
+	 */
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for (n = 0; n < nsibling; n++) {
+		ce = intel_context_create(siblings[n]);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out;
+		}
+
+		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out;
+		}
+
+		i915_request_add(rq);
+	}
+
+	ce = intel_execlists_create_virtual(siblings, nsibling);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out;
+	}
+
+	rq = intel_context_create_request(ce);
+	intel_context_put(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out;
+	}
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+	if (i915_request_wait(rq, 0, timeout) < 0) {
+		GEM_TRACE_ERR("%s(%s) failed to slice in virtual request\n",
+			      __func__, rq->engine->name);
+		GEM_TRACE_DUMP();
+		intel_gt_set_wedged(gt);
+		err = -EIO;
+	}
+	i915_request_put(rq);
+
+out:
+	igt_spinner_end(&spin);
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+	igt_spinner_fini(&spin);
+	return err;
+}
+
+static int sliceout_virtual_engine(struct intel_gt *gt,
+				   struct intel_engine_cs **siblings,
+				   unsigned int nsibling)
+{
+	const long timeout = slice_timeout(siblings[0]);
+	struct intel_context *ce;
+	struct i915_request *rq;
+	struct igt_spinner spin;
+	unsigned int n;
+	int err = 0;
+
+	/*
+	 * Virtual requests must allow others a fair timeslice.
+	 */
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	/* XXX We do not handle oversubscription and fairness with normal rq */
+	for (n = 0; n < nsibling; n++) {
+		ce = intel_execlists_create_virtual(siblings, nsibling);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out;
+		}
+
+		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out;
+		}
+
+		i915_request_add(rq);
+	}
+
+	for (n = 0; !err && n < nsibling; n++) {
+		ce = intel_context_create(siblings[n]);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out;
+		}
+
+		rq = intel_context_create_request(ce);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out;
+		}
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+		if (i915_request_wait(rq, 0, timeout) < 0) {
+			GEM_TRACE_ERR("%s(%s) failed to slice out virtual request\n",
+				      __func__, siblings[n]->name);
+			GEM_TRACE_DUMP();
+			intel_gt_set_wedged(gt);
+			err = -EIO;
+		}
+		i915_request_put(rq);
+	}
+
+out:
+	igt_spinner_end(&spin);
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+	igt_spinner_fini(&spin);
+	return err;
+}
+
+static int live_virtual_slice(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
+	unsigned int class;
+	int err;
+
+	if (intel_uc_uses_guc_submission(&gt->uc))
+		return 0;
+
+	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
+		unsigned int nsibling;
+
+		nsibling = __select_siblings(gt, class, siblings,
+					     intel_engine_has_timeslices);
+		if (nsibling < 2)
+			continue;
+
+		err = slicein_virtual_engine(gt, siblings, nsibling);
+		if (err)
+			return err;
+
+		err = sliceout_virtual_engine(gt, siblings, nsibling);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int preserved_virtual_engine(struct intel_gt *gt,
 				    struct intel_engine_cs **siblings,
 				    unsigned int nsibling)
@@ -4315,6 +4508,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_virtual_engine),
 		SUBTEST(live_virtual_mask),
 		SUBTEST(live_virtual_preserved),
+		SUBTEST(live_virtual_slice),
 		SUBTEST(live_virtual_bond),
 		SUBTEST(live_virtual_reset),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
