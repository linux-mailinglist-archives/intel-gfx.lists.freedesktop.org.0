Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCD51FEFDF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87686E3E1;
	Thu, 18 Jun 2020 10:48:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B226EB51;
 Thu, 18 Jun 2020 10:48:00 +0000 (UTC)
IronPort-SDR: 0+0k7YIeGKtDyb8o56N+7G/X797CjWacyreUFpn14iUzZNul4zCbPKGv0c9IojDeYYtk+++2E1
 2t9/3V6+r6lQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269043"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269043"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:48:00 -0700
IronPort-SDR: XdXccWruH4MymLfVwl3FQAkDMU9q1u5hxVgnB0hg0+CtNTwSMg+E7cT+ee1Kn7XTlXkUHfwTeL
 COE2Ir144Org==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378591"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:47:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:43 +0100
Message-Id: <20200618104747.24005-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 07/11] gem_wsim: Log max and active
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
Cc: Intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

It is useful to know how much memory workload is allocating.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 benchmarks/gem_wsim.c | 100 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 95 insertions(+), 5 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 2d6d0a6a7b4b..8788f752121b 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -874,7 +874,8 @@ static uint64_t engine_list_mask(const char *_str)
 	return mask;
 }
 
-static void allocate_working_set(struct workload *wrk, struct working_set *set);
+static unsigned long
+allocate_working_set(struct workload *wrk, struct working_set *set);
 
 static long __duration(long dur, double scale)
 {
@@ -1294,8 +1295,14 @@ add_step:
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
@@ -1750,8 +1757,10 @@ get_buffer_size(struct workload *wrk, const struct work_buffer_size *sz)
 		       (sz->max + 1 - sz->min);
 }
 
-static void allocate_working_set(struct workload *wrk, struct working_set *set)
+static unsigned long
+allocate_working_set(struct workload *wrk, struct working_set *set)
 {
+	unsigned long total = 0;
 	unsigned int i;
 
 	set->handles = calloc(set->nr, sizeof(*set->handles));
@@ -1760,7 +1769,82 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set)
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
@@ -1768,6 +1852,7 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set)
 static int prepare_workload(unsigned int id, struct workload *wrk)
 {
 	struct working_set **sets;
+	unsigned long total = 0;
 	uint32_t share_vm = 0;
 	int max_ctx = -1;
 	struct w_step *w;
@@ -2008,9 +2093,12 @@ static int prepare_workload(unsigned int id, struct workload *wrk)
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
@@ -2058,6 +2146,8 @@ static int prepare_workload(unsigned int id, struct workload *wrk)
 		alloc_step_batch(wrk, w);
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
