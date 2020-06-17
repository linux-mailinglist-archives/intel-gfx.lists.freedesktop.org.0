Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2A11FD17A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9FD6E135;
	Wed, 17 Jun 2020 16:01:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B136E136
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:37 +0000 (UTC)
IronPort-SDR: s5E/xd3I4RcPIcjb3PVvS/42M1ZT05FyOTUzBWM7nXCqLe3ylYYVTh9RKx6O+m8J08u7C/EWv1
 IZutcYNfLgOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:37 -0700
IronPort-SDR: czF8+ZGnfi3AD/mR/nPLskjUg7gZzinSihcHRCY6AoLyVLcTF05Ag6Fw8FPKR292ns8X/Utf6l
 yqtoMv5GrAig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186149"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:15 +0100
Message-Id: <20200617160120.16555-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 05/10] gem_wsim: Support random buffer
 sizes
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

See README for more details.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c  | 71 +++++++++++++++++++++++++++++++++---------
 benchmarks/wsim/README |  4 +++
 2 files changed, 61 insertions(+), 14 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 5893de38a98e..c1405596c46a 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -117,12 +117,18 @@ struct bond {
 	enum intel_engine_id master;
 };
 
+struct work_buffer_size {
+	unsigned long size;
+	unsigned long min;
+	unsigned long max;
+};
+
 struct working_set {
 	int id;
 	bool shared;
 	unsigned int nr;
 	uint32_t *handles;
-	unsigned long *sizes;
+	struct work_buffer_size *sizes;
 };
 
 struct workload;
@@ -203,6 +209,7 @@ struct workload
 	bool print_stats;
 
 	uint32_t bb_prng;
+	uint32_t bo_prng;
 
 	struct timespec repeat_start;
 
@@ -757,10 +764,12 @@ static int add_buffers(struct working_set *set, char *str)
 	 * 4m
 	 * 4g
 	 * 10n4k - 10 4k batches
+	 * 4096-16k - random size in range
 	 */
-	unsigned long *sizes, size;
+	struct work_buffer_size *sizes;
+	unsigned long min_sz, max_sz;
+	char *n, *max = NULL;
 	unsigned int add, i;
-	char *n;
 
 	n = index(str, 'n');
 	if (n) {
@@ -773,16 +782,34 @@ static int add_buffers(struct working_set *set, char *str)
 		add = 1;
 	}
 
-	size = parse_size(str);
-	if (!size)
+	n = index(str, '-');
+	if (n) {
+		*n = 0;
+		max = ++n;
+	}
+
+	min_sz = parse_size(str);
+	if (!min_sz)
 		return -1;
 
+	if (max) {
+		max_sz = parse_size(max);
+		if (!max_sz)
+			return -1;
+	} else {
+		max_sz = min_sz;
+	}
+
 	sizes = realloc(set->sizes, (set->nr + add) * sizeof(*sizes));
 	if (!sizes)
 		return -1;
 
-	for (i = 0; i < add; i++)
-		sizes[set->nr + i] = size;
+	for (i = 0; i < add; i++) {
+		struct work_buffer_size *sz = &sizes[set->nr + i];
+		sz->min = min_sz;
+		sz->max = max_sz;
+		sz->size = 0;
+	}
 
 	set->nr += add;
 	set->sizes = sizes;
@@ -824,7 +851,7 @@ static uint64_t engine_list_mask(const char *_str)
 	return mask;
 }
 
-static void allocate_working_set(struct working_set *set);
+static void allocate_working_set(struct workload *wrk, struct working_set *set);
 
 #define int_field(_STEP_, _FIELD_, _COND_, _ERR_) \
 	if ((field = strtok_r(fstart, ".", &fctx))) { \
@@ -1177,10 +1204,12 @@ add_step:
 
 	wrk->nr_steps = nr_steps;
 	wrk->steps = steps;
+	wrk->flags = flags;
 	wrk->prio = arg->prio;
 	wrk->sseu = arg->sseu;
 	wrk->max_working_set_id = -1;
 	wrk->working_sets = NULL;
+	wrk->bo_prng = (wrk->flags & SYNCEDCLIENTS) ? master_prng : rand();
 
 	free(desc);
 
@@ -1234,7 +1263,7 @@ add_step:
 	 */
 	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
 		if (w->type == WORKINGSET && w->working_set.shared)
-			allocate_working_set(&w->working_set);
+			allocate_working_set(wrk, &w->working_set);
 	}
 
 	wrk->max_working_set_id = -1;
@@ -1267,6 +1296,7 @@ clone_workload(struct workload *_wrk)
 	igt_assert(wrk);
 	memset(wrk, 0, sizeof(*wrk));
 
+	wrk->flags = _wrk->flags;
 	wrk->prio = _wrk->prio;
 	wrk->sseu = _wrk->sseu;
 	wrk->nr_steps = _wrk->nr_steps;
@@ -1515,7 +1545,7 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 
 			igt_assert(set->nr);
 			igt_assert(entry->target < set->nr);
-			igt_assert(set->sizes[entry->target]);
+			igt_assert(set->sizes[entry->target].size);
 
 			dep_handle = set->handles[entry->target];
 		}
@@ -1683,15 +1713,27 @@ static size_t sizeof_engines_bond(int count)
 			engines[count]);
 }
 
-static void allocate_working_set(struct working_set *set)
+static unsigned long
+get_buffer_size(struct workload *wrk, const struct work_buffer_size *sz)
+{
+	if (sz->min == sz->max)
+		return sz->min;
+	else
+		return sz->min + hars_petruska_f54_1_random(&wrk->bo_prng) %
+		       (sz->max + 1 - sz->min);
+}
+
+static void allocate_working_set(struct workload *wrk, struct working_set *set)
 {
 	unsigned int i;
 
 	set->handles = calloc(set->nr, sizeof(*set->handles));
 	igt_assert(set->handles);
 
-	for (i = 0; i < set->nr; i++)
-		set->handles[i] = alloc_bo(fd, set->sizes[i]);
+	for (i = 0; i < set->nr; i++) {
+		set->sizes[i].size = get_buffer_size(wrk, &set->sizes[i]);
+		set->handles[i] = alloc_bo(fd, set->sizes[i].size);
+	}
 }
 
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
@@ -1707,6 +1749,7 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 
 	wrk->id = id;
 	wrk->bb_prng = (wrk->flags & SYNCEDCLIENTS) ? master_prng : rand();
+	wrk->bo_prng = (wrk->flags & SYNCEDCLIENTS) ? master_prng : rand();
 	wrk->run = true;
 
 	/*
@@ -1939,7 +1982,7 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 	 */
 	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
 		if (w->type == WORKINGSET && !w->working_set.shared)
-			allocate_working_set(&w->working_set);
+			allocate_working_set(wrk, &w->working_set);
 	}
 
 	/*
diff --git a/benchmarks/wsim/README b/benchmarks/wsim/README
index 3d9143226740..8c71f2fe6579 100644
--- a/benchmarks/wsim/README
+++ b/benchmarks/wsim/README
@@ -307,11 +307,15 @@ For size a byte size can be given, or suffix 'k', 'm' or 'g' can be used (case
 insensitive). Prefix in the format of "<int>n<size>" can also be given to create
 multiple objects of the same size.
 
+Ranges can also be specified using the <min>-<max> syntax.
+
 Examples:
 
   w.1.4k - Working set 1 with a single 4KiB object in it.
   W.2.2M/32768 - Working set 2 with one 2MiB and one 32768 byte object.
   w.3.10n4k/2n20000 - Working set 3 with ten 4KiB and two 20000 byte objects.
+  w.4.4n4k-1m - Working set 4 with four objects of random size between 4KiB and
+		1MiB.
 
 Working set objects can be referenced as data dependency targets using the new
 'r'/'w' syntax. Simple example:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
