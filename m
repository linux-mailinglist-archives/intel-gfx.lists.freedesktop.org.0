Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96A17913F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 14:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F3589F6D;
	Wed,  4 Mar 2020 13:25:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9569B89E33;
 Wed,  4 Mar 2020 13:25:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 05:25:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="274665356"
Received: from srware-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.25.112])
 by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2020 05:25:00 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 Mar 2020 13:24:57 +0000
Message-Id: <20200304132457.13258-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] gem_wsim: Fix calibration for default and
 virtual engine
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When providing engine calibrations on the command line, we need to apply
the one given for RCS to DEFAULT as well.

Also when load balancing is used we need to get calibration from one of
the real engines from the map which should provide a better match.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 50 +++++++++++++++++++++++++++++++------------
 1 file changed, 36 insertions(+), 14 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index aaf3a16198df..a1bbcef031bb 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -111,8 +111,12 @@ struct bond {
 	enum intel_engine_id master;
 };
 
+struct workload;
+
 struct w_step
 {
+	struct workload *wrk;
+
 	/* Workload step metadata */
 	enum w_type type;
 	unsigned int context;
@@ -1140,17 +1144,37 @@ static unsigned int get_duration(struct workload *wrk, struct w_step *w)
 		       (dur->max + 1 - dur->min);
 }
 
-static unsigned long get_bb_sz(unsigned int duration, enum intel_engine_id engine)
+static struct ctx *
+__get_ctx(struct workload *wrk, const struct w_step *w)
 {
-	return ALIGN(duration * engine_calib_map[engine] * sizeof(uint32_t) /
-		nop_calibration_us, sizeof(uint32_t));
+	return &wrk->ctx_list[w->context * 2];
+}
+
+static unsigned long
+get_bb_sz(const struct w_step *w, unsigned int duration)
+{
+	enum intel_engine_id engine = w->engine;
+	struct ctx *ctx = __get_ctx(w->wrk, w);
+	unsigned long d;
+
+	if (ctx->engine_map && engine == DEFAULT)
+		/* Assume first engine calibration. */
+		engine = ctx->engine_map[0];
+
+	igt_assert(engine_calib_map[engine]);
+	d = ALIGN(duration * engine_calib_map[engine] * sizeof(uint32_t) /
+		  nop_calibration_us,
+		  sizeof(uint32_t));
+	igt_assert(d);
+
+	return d;
 }
 
 static void
 init_bb(struct w_step *w, unsigned int flags)
 {
 	const unsigned int arb_period =
-			get_bb_sz(w->preempt_us, w->engine) / sizeof(uint32_t);
+			get_bb_sz(w, w->preempt_us) / sizeof(uint32_t);
 	const unsigned int mmap_len = ALIGN(w->bb_sz, 4096);
 	unsigned int i;
 	uint32_t *ptr;
@@ -1295,12 +1319,6 @@ find_engine_in_map(struct ctx *ctx, enum intel_engine_id engine)
 	return 0;
 }
 
-static struct ctx *
-__get_ctx(struct workload *wrk, struct w_step *w)
-{
-	return &wrk->ctx_list[w->context * 2];
-}
-
 static void
 eb_update_flags(struct workload *wrk, struct w_step *w,
 		enum intel_engine_id engine, unsigned int flags)
@@ -1377,10 +1395,10 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 
 	if (w->unbound_duration)
 		/* nops + MI_ARB_CHK + MI_BATCH_BUFFER_START */
-		w->bb_sz = max(PAGE_SIZE, get_bb_sz(w->preempt_us, w->engine)) +
+		w->bb_sz = max(PAGE_SIZE, get_bb_sz(w, w->preempt_us)) +
 			   (1 + 3) * sizeof(uint32_t);
 	else
-		w->bb_sz = get_bb_sz(w->duration.max, w->engine);
+		w->bb_sz = get_bb_sz(w, w->duration.max);
 
 	w->bb_handle = w->obj[j].handle = gem_create(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
 	init_bb(w, flags);
@@ -1568,6 +1586,8 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 		int ctx = w->context * 2 + 1; /* Odd slots are special. */
 		int delta;
 
+		w->wrk = wrk;
+
 		if (ctx <= max_ctx)
 			continue;
 
@@ -2681,7 +2701,7 @@ do_eb(struct workload *wrk, struct w_step *w, enum intel_engine_id engine,
 	w->eb.batch_start_offset =
 		w->unbound_duration ?
 		0 :
-		ALIGN(w->bb_sz - get_bb_sz(get_duration(wrk, w), w->engine),
+		ALIGN(w->bb_sz - get_bb_sz(w, get_duration(wrk, w)),
 		      2 * sizeof(uint32_t));
 
 	for (i = 0; i < w->fence_deps.nr; i++) {
@@ -3331,6 +3351,8 @@ int main(int argc, char **argv)
 						goto err;
 					} else {
 						engine_calib_map[eng] = calib_val;
+						if (eng == RCS)
+							engine_calib_map[DEFAULT] = calib_val;
 						has_nop_calibration = true;
 					}
 				} else {
@@ -3444,7 +3466,7 @@ int main(int argc, char **argv)
 		bool missing = false;
 
 		for (i = 0; i < NUM_ENGINES; i++) {
-			if (i == DEFAULT || i == VCS)
+			if (i == VCS)
 				continue;
 
 			if (!engine_calib_map[i]) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
