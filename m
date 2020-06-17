Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473AE1FD17C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7302F6E182;
	Wed, 17 Jun 2020 16:01:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D686E136
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:40 +0000 (UTC)
IronPort-SDR: fCVGvMvPw8HYi/SEHmXB+V7wGRYs5wTO8x2itDFAdXSKZ6dQWetexluliDbAhwxOpaWrG3O48x
 F90piMIDqezg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:40 -0700
IronPort-SDR: 6AdQzL9CSLRajnV4sbDPg9wMOJLUrRy/VJ3j7neHzz+CFUXZJCqtGypBc7Pkf6tR9BhW5TlZ6v
 JAqo2IEIGEhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186191"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:17 +0100
Message-Id: <20200617160120.16555-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 07/10] gem_wsim: Log max and active
 working set sizes in verbose mode
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

It is useful to know how much memory workload is allocating.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 100 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 95 insertions(+), 5 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 025385a144b8..96ee923fb699 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -852,7 +852,8 @@ static uint64_t engine_list_mask(const char *_str)
 	return mask;
 }
 
-static void allocate_working_set(struct workload *wrk, struct working_set *set);
+static unsigned long
+allocate_working_set(struct workload *wrk, struct working_set *set);
 
 static long __duration(long dur, double scale)
 {
@@ -1270,8 +1271,14 @@ add_step:
 	 * Allocate shared working sets.
 	 */
 	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
-		if (w->type == WORKINGSET && w->working_set.shared)
-			allocate_working_set(wrk, &w->working_set);
+		if (w->type == WORKINGSET && w->working_set.shared) {
+			unsigned long total =
+				allocate_working_set(wrk, &w->working_set);
+
+			if (verbose > 1)
+				printf("%u: %lu bytes in shared working set %u\n",
+				       wrk->id, total, w->working_set.id);
+		}
 	}
 
 	wrk->max_working_set_id = -1;
@@ -1731,8 +1738,10 @@ get_buffer_size(struct workload *wrk, const struct work_buffer_size *sz)
 		       (sz->max + 1 - sz->min);
 }
 
-static void allocate_working_set(struct workload *wrk, struct working_set *set)
+static unsigned long
+allocate_working_set(struct workload *wrk, struct working_set *set)
 {
+	unsigned long total = 0;
 	unsigned int i;
 
 	set->handles = calloc(set->nr, sizeof(*set->handles));
@@ -1741,7 +1750,82 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set)
 	for (i = 0; i < set->nr; i++) {
 		set->sizes[i].size = get_buffer_size(wrk, &set->sizes[i]);
 		set->handles[i] = alloc_bo(fd, set->sizes[i].size);
+		total += set->sizes[i].size;
+	}
+
+	return total;
+}
+
+static bool
+find_dep(struct dep_entry *deps, unsigned int nr, struct dep_entry dep)
+{
+	unsigned int i;
+
+	for (i = 0; i < nr; i++) {
+		if (deps[i].working_set == dep.working_set &&
+		    deps[i].target == dep.target)
+			return true;
 	}
+
+	return false;
+}
+
+static void measure_active_set(struct workload *wrk)
+{
+	unsigned long total = 0, batch_sizes = 0;
+	struct dep_entry *deps = NULL;
+	unsigned int nr = 0, i, j;
+	struct w_step *w;
+
+	if (verbose < 3)
+		return;
+
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type != BATCH)
+			continue;
+
+		batch_sizes += w->bb_sz;
+
+		for (j = 0; j < w->data_deps.nr; j++) {
+			struct dep_entry *dep = &w->data_deps.list[j];
+			struct dep_entry _dep = *dep;
+
+			if (dep->working_set == -1 && dep->target < 0) {
+				int idx = w->idx + dep->target;
+
+				igt_assert(idx >= 0 && idx < w->idx);
+				igt_assert(wrk->steps[idx].type == BATCH);
+
+				_dep.target = wrk->steps[idx].obj[0].handle;
+			}
+
+			if (!find_dep(deps, nr, _dep)) {
+				if (dep->working_set == -1) {
+					total += 4096;
+				} else {
+					struct working_set *set;
+
+					igt_assert(dep->working_set <=
+						   wrk->max_working_set_id);
+
+					set = wrk->working_sets[dep->working_set];
+					igt_assert(set->nr);
+					igt_assert(dep->target < set->nr);
+					igt_assert(set->sizes[dep->target].size);
+
+					total += set->sizes[dep->target].size;
+				}
+
+				deps = realloc(deps, (nr + 1) * sizeof(*deps));
+				deps[nr++] = *dep;
+			}
+		}
+	}
+
+	free(deps);
+
+	printf("%u: %lu bytes active working set in %u buffers. %lu in batch buffers.\n",
+	       wrk->id, total, nr, batch_sizes);
 }
 
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
@@ -1750,6 +1834,7 @@ static int
 prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 {
 	struct working_set **sets;
+	unsigned long total = 0;
 	uint32_t share_vm = 0;
 	int max_ctx = -1;
 	struct w_step *w;
@@ -1990,9 +2075,12 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 	 */
 	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
 		if (w->type == WORKINGSET && !w->working_set.shared)
-			allocate_working_set(wrk, &w->working_set);
+			total += allocate_working_set(wrk, &w->working_set);
 	}
 
+	if (verbose > 2)
+		printf("%u: %lu bytes in working sets.\n", wrk->id, total);
+
 	/*
 	 * Map of working set ids.
 	 */
@@ -2040,6 +2128,8 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 		alloc_step_batch(wrk, w, flags);
 	}
 
+	measure_active_set(wrk);
+
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
