Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B01FEFDD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8466EB15;
	Thu, 18 Jun 2020 10:47:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500426E3E1;
 Thu, 18 Jun 2020 10:47:54 +0000 (UTC)
IronPort-SDR: CvEG4O9uBb7jh6dIkJoRyJ8EM2SYUmE1YwVHlT6S2Tq7xOX1dQl41/Rx2eWdP0LDuGeaYrv9Pu
 zuc09swSIbbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269018"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269018"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:47:53 -0700
IronPort-SDR: lCgYkQ+SF2km3zjnlvaTAgkZDP9+m0kMM4CHOlkTRcqfzh8+c96ZrvaL2XKGx0pLtdVP4Dh5RO
 pi3Cx7UozTLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378554"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:47:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:38 +0100
Message-Id: <20200618104747.24005-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 02/11] gem_wsim: Buffer objects working
 sets and complex dependencies
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

Add support for defining buffer object working sets and targetting them as
data dependencies. For more information please see the README file.

v2:
 * More robustness in parsing here and there. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c                   | 475 +++++++++++++++++++++---
 benchmarks/wsim/README                  |  59 +++
 benchmarks/wsim/cloud-gaming-60fps.wsim |  11 +
 benchmarks/wsim/composited-ui.wsim      |   7 +
 4 files changed, 498 insertions(+), 54 deletions(-)
 create mode 100644 benchmarks/wsim/cloud-gaming-60fps.wsim
 create mode 100644 benchmarks/wsim/composited-ui.wsim

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 5cc71c56fe6e..dc47470c621d 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -88,14 +88,21 @@ enum w_type
 	LOAD_BALANCE,
 	BOND,
 	TERMINATE,
-	SSEU
+	SSEU,
+	WORKINGSET,
+};
+
+struct dep_entry {
+	int target;
+	bool write;
+	int working_set; /* -1 = step dependecy, >= 0 working set id */
 };
 
 struct deps
 {
 	int nr;
 	bool submit_fence;
-	int *list;
+	struct dep_entry *list;
 };
 
 struct w_arg {
@@ -110,6 +117,14 @@ struct bond {
 	enum intel_engine_id master;
 };
 
+struct working_set {
+	int id;
+	bool shared;
+	unsigned int nr;
+	uint32_t *handles;
+	unsigned long *sizes;
+};
+
 struct workload;
 
 struct w_step
@@ -143,6 +158,7 @@ struct w_step
 			enum intel_engine_id bond_master;
 		};
 		int sseu;
+		struct working_set working_set;
 	};
 
 	/* Implementation details */
@@ -193,6 +209,9 @@ struct workload
 	unsigned int nr_ctxs;
 	struct ctx *ctx_list;
 
+	struct working_set **working_sets; /* array indexed by set id */
+	int max_working_set_id;
+
 	int sync_timeline;
 	uint32_t sync_seqno;
 
@@ -281,11 +300,129 @@ print_engine_calibrations(void)
 	printf("\n");
 }
 
+static void add_dep(struct deps *deps, struct dep_entry entry)
+{
+	deps->list = realloc(deps->list, sizeof(*deps->list) * (deps->nr + 1));
+	igt_assert(deps->list);
+
+	deps->list[deps->nr++] = entry;
+}
+
+static int
+parse_working_set_deps(struct workload *wrk,
+		       struct deps *deps,
+		       struct dep_entry _entry,
+		       char *str)
+{
+	/*
+	 * 1 - target handle index in the specified working set.
+	 * 2-4 - range
+	 */
+	struct dep_entry entry = _entry;
+	char *s;
+
+	s = index(str, '-');
+	if (s) {
+		int from, to;
+
+		from = atoi(str);
+		if (from < 0)
+			return -1;
+
+		to = atoi(++s);
+		if (to <= 0)
+			return -1;
+
+		if (to <= from)
+			return -1;
+
+		for (entry.target = from; entry.target <= to; entry.target++)
+			add_dep(deps, entry);
+	} else {
+		entry.target = atoi(str);
+		if (entry.target < 0)
+			return -1;
+
+		add_dep(deps, entry);
+	}
+
+	return 0;
+}
+
+static int
+parse_dependency(unsigned int nr_steps, struct w_step *w, char *str)
+{
+	struct dep_entry entry = { .working_set = -1 };
+	bool submit_fence = false;
+	char *s;
+
+	switch (str[0]) {
+	case '-':
+		if (str[1] < '0' || str[1] > '9')
+			return -1;
+
+		entry.target = atoi(str);
+		if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
+			return -1;
+
+		add_dep(&w->data_deps, entry);
+
+		break;
+	case 's':
+		submit_fence = true;
+		/* Fall-through. */
+	case 'f':
+		/* Multiple fences not yet supported. */
+		igt_assert_eq(w->fence_deps.nr, 0);
+
+		entry.target = atoi(++str);
+		if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
+			return -1;
+
+		add_dep(&w->fence_deps, entry);
+
+		w->fence_deps.submit_fence = submit_fence;
+		break;
+	case 'w':
+		entry.write = true;
+		/* Fall-through. */
+	case 'r':
+		/*
+		 * [rw]N-<str>
+		 * r1-<str> or w2-<str>, where N is working set id.
+		 */
+		s = index(++str, '-');
+		if (!s)
+			return -1;
+
+		entry.working_set = atoi(str);
+		if (entry.working_set < 0)
+			return -1;
+
+		if (parse_working_set_deps(w->wrk, &w->data_deps, entry, ++s))
+			return -1;
+
+		break;
+	default:
+		return -1;
+	};
+
+	return 0;
+}
+
 static int
 parse_dependencies(unsigned int nr_steps, struct w_step *w, char *_desc)
 {
 	char *desc = strdup(_desc);
 	char *token, *tctx = NULL, *tstart = desc;
+	int ret = 0;
+
+	/*
+	 * Skip when no dependencies to avoid having to detect
+	 * non-sensical "0/0/..." below.
+	 */
+	if (!strcmp(_desc, "0"))
+		goto out;
 
 	igt_assert(desc);
 	igt_assert(!w->data_deps.nr && w->data_deps.nr == w->fence_deps.nr);
@@ -293,47 +430,17 @@ parse_dependencies(unsigned int nr_steps, struct w_step *w, char *_desc)
 		   w->data_deps.list == w->fence_deps.list);
 
 	while ((token = strtok_r(tstart, "/", &tctx)) != NULL) {
-		bool submit_fence = false;
-		char *str = token;
-		struct deps *deps;
-		int dep;
-
 		tstart = NULL;
 
-		if (str[0] == '-' || (str[0] >= '0' && str[0] <= '9')) {
-			deps = &w->data_deps;
-		} else {
-			if (str[0] == 's')
-				submit_fence = true;
-			else if (str[0] != 'f')
-				return -1;
-
-			deps = &w->fence_deps;
-			str++;
-		}
-
-		dep = atoi(str);
-		if (dep > 0 || ((int)nr_steps + dep) < 0) {
-			if (deps->list)
-				free(deps->list);
-			return -1;
-		}
-
-		if (dep < 0) {
-			deps->nr++;
-			/* Multiple fences not yet supported. */
-			igt_assert(deps->nr == 1 || deps != &w->fence_deps);
-			deps->list = realloc(deps->list,
-					     sizeof(*deps->list) * deps->nr);
-			igt_assert(deps->list);
-			deps->list[deps->nr - 1] = dep;
-			deps->submit_fence = submit_fence;
-		}
+		ret = parse_dependency(nr_steps, w, token);
+		if (ret)
+			break;
 	}
 
+out:
 	free(desc);
 
-	return 0;
+	return ret;
 }
 
 static void __attribute__((format(printf, 1, 2)))
@@ -624,6 +731,101 @@ static int parse_engine_map(struct w_step *step, const char *_str)
 	return 0;
 }
 
+static unsigned long parse_size(char *str)
+{
+	const unsigned int len = strlen(str);
+	unsigned int mult = 1;
+	long val;
+
+	/* "1234567890[gGmMkK]" */
+
+	if (len == 0)
+		return 0;
+
+	switch (str[len - 1]) {
+	case 'g':
+	case 'G':
+		mult *= 1024;
+		/* Fall-throuogh. */
+	case 'm':
+	case 'M':
+		mult *= 1024;
+		/* Fall-throuogh. */
+	case 'k':
+	case 'K':
+		mult *= 1024;
+
+		str[len - 1] = 0;
+		/* Fall-throuogh. */
+
+	case '0' ... '9':
+		break;
+	default:
+		return 0; /* Unrecognized non-digit. */
+	}
+
+	val = atol(str);
+	if (val <= 0)
+		return 0;
+
+	return val * mult;
+}
+
+static int add_buffers(struct working_set *set, char *str)
+{
+	/*
+	 * 4096
+	 * 4k
+	 * 4m
+	 * 4g
+	 * 10n4k - 10 4k batches
+	 */
+	unsigned long *sizes, size;
+	int add, i;
+	char *n;
+
+	n = index(str, 'n');
+	if (n) {
+		*n = 0;
+		add = atoi(str);
+		if (add <= 0)
+			return -1;
+		str = ++n;
+	} else {
+		add = 1;
+	}
+
+	size = parse_size(str);
+	if (!size)
+		return -1;
+
+	sizes = realloc(set->sizes, (set->nr + add) * sizeof(*sizes));
+	if (!sizes)
+		return -1;
+
+	for (i = 0; i < add; i++)
+		sizes[set->nr + i] = size;
+
+	set->nr += add;
+	set->sizes = sizes;
+
+	return 0;
+}
+
+static int parse_working_set(struct working_set *set, char *str)
+{
+	char *token, *tctx = NULL, *tstart = str;
+
+	while ((token = strtok_r(tstart, "/", &tctx))) {
+		tstart = NULL;
+
+		if (add_buffers(set, token))
+			return -1;
+	}
+
+	return 0;
+}
+
 static uint64_t engine_list_mask(const char *_str)
 {
 	uint64_t mask = 0;
@@ -644,6 +846,8 @@ static uint64_t engine_list_mask(const char *_str)
 	return mask;
 }
 
+static void allocate_working_set(struct working_set *set);
+
 #define int_field(_STEP_, _FIELD_, _COND_, _ERR_) \
 	if ((field = strtok_r(fstart, ".", &fctx))) { \
 		tmp = atoi(field); \
@@ -661,7 +865,7 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 	char *desc = strdup(arg->desc);
 	char *_token, *token, *tctx = NULL, *tstart = desc;
 	char *field, *fctx = NULL, *fstart;
-	struct w_step step, *steps = NULL;
+	struct w_step step, *w, *steps = NULL;
 	unsigned int valid;
 	int i, j, tmp;
 
@@ -851,6 +1055,28 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 
 				step.type = BOND;
 				goto add_step;
+			} else if (!strcmp(field, "w") || !strcmp(field, "W")) {
+				unsigned int nr = 0;
+
+				step.working_set.shared = field[0] == 'W';
+
+				while ((field = strtok_r(fstart, ".", &fctx))) {
+					tmp = atoi(field);
+					if (nr == 0) {
+						step.working_set.id = tmp;
+					} else {
+						tmp = parse_working_set(&step.working_set,
+									field);
+						check_arg(tmp < 0,
+							  "Invalid working set at step %u!\n",
+							  nr_steps);
+					}
+
+					nr++;
+				}
+
+				step.type = WORKINGSET;
+				goto add_step;
 			}
 
 			if (!field) {
@@ -975,6 +1201,8 @@ add_step:
 	wrk->steps = steps;
 	wrk->prio = arg->prio;
 	wrk->sseu = arg->sseu;
+	wrk->max_working_set_id = -1;
+	wrk->working_sets = NULL;
 
 	free(desc);
 
@@ -984,7 +1212,7 @@ add_step:
 	 */
 	for (i = 0; i < nr_steps; i++) {
 		for (j = 0; j < steps[i].fence_deps.nr; j++) {
-			tmp = steps[i].idx + steps[i].fence_deps.list[j];
+			tmp = steps[i].idx + steps[i].fence_deps.list[j].target;
 			check_arg(tmp < 0 || tmp >= i ||
 				  (steps[tmp].type != BATCH &&
 				   steps[tmp].type != SW_FENCE),
@@ -1003,6 +1231,51 @@ add_step:
 		}
 	}
 
+	/*
+	 * Check no duplicate working set ids.
+	 */
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		struct w_step *w2;
+
+		if (w->type != WORKINGSET)
+			continue;
+
+		for (j = 0, w2 = wrk->steps; j < wrk->nr_steps; w2++, j++) {
+			if (j == i)
+				continue;
+			if (w2->type != WORKINGSET)
+				continue;
+
+			check_arg(w->working_set.id == w2->working_set.id,
+				  "Duplicate working set id at %u!\n", j);
+		}
+	}
+
+	/*
+	 * Allocate shared working sets.
+	 */
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type == WORKINGSET && w->working_set.shared)
+			allocate_working_set(&w->working_set);
+	}
+
+	wrk->max_working_set_id = -1;
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type == WORKINGSET &&
+		    w->working_set.shared &&
+		    w->working_set.id > wrk->max_working_set_id)
+			wrk->max_working_set_id = w->working_set.id;
+	}
+
+	wrk->working_sets = calloc(wrk->max_working_set_id + 1,
+				   sizeof(*wrk->working_sets));
+	igt_assert(wrk->working_sets);
+
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type == WORKINGSET && w->working_set.shared)
+			wrk->working_sets[w->working_set.id] = &w->working_set;
+	}
+
 	return wrk;
 }
 
@@ -1024,6 +1297,18 @@ clone_workload(struct workload *_wrk)
 
 	memcpy(wrk->steps, _wrk->steps, sizeof(struct w_step) * wrk->nr_steps);
 
+	wrk->max_working_set_id = _wrk->max_working_set_id;
+	if (wrk->max_working_set_id >= 0) {
+		wrk->working_sets = calloc(wrk->max_working_set_id + 1,
+					sizeof(*wrk->working_sets));
+		igt_assert(wrk->working_sets);
+
+		memcpy(wrk->working_sets,
+		       _wrk->working_sets,
+		       (wrk->max_working_set_id + 1) *
+		       sizeof(*wrk->working_sets));
+	}
+
 	/* Check if we need a sw sync timeline. */
 	for (i = 0; i < wrk->nr_steps; i++) {
 		if (wrk->steps[i].type == SW_FENCE) {
@@ -1222,17 +1507,36 @@ alloc_step_batch(struct workload *wrk, struct w_step *w)
 	igt_assert(j < nr_obj);
 
 	for (i = 0; i < w->data_deps.nr; i++) {
-		igt_assert(w->data_deps.list[i] <= 0);
-		if (w->data_deps.list[i]) {
-			int dep_idx = w->idx + w->data_deps.list[i];
+		struct dep_entry *entry = &w->data_deps.list[i];
+		uint32_t dep_handle;
 
+		if (entry->working_set == -1) {
+			int dep_idx = w->idx + entry->target;
+
+			igt_assert(entry->target <= 0);
 			igt_assert(dep_idx >= 0 && dep_idx < w->idx);
 			igt_assert(wrk->steps[dep_idx].type == BATCH);
 
-			w->obj[j].handle = wrk->steps[dep_idx].obj[0].handle;
-			j++;
-			igt_assert(j < nr_obj);
+			dep_handle = wrk->steps[dep_idx].obj[0].handle;
+		} else {
+			struct working_set *set;
+
+			igt_assert(entry->working_set <=
+				   wrk->max_working_set_id);
+
+			set = wrk->working_sets[entry->working_set];
+
+			igt_assert(set->nr);
+			igt_assert(entry->target < set->nr);
+			igt_assert(set->sizes[entry->target]);
+
+			dep_handle = set->handles[entry->target];
 		}
+
+		w->obj[j].flags = entry->write ? EXEC_OBJECT_WRITE : 0;
+		w->obj[j].handle = dep_handle;
+		j++;
+		igt_assert(j < nr_obj);
 	}
 
 	if (w->unbound_duration)
@@ -1391,10 +1695,22 @@ static size_t sizeof_engines_bond(int count)
 			engines[count]);
 }
 
+static void allocate_working_set(struct working_set *set)
+{
+	unsigned int i;
+
+	set->handles = calloc(set->nr, sizeof(*set->handles));
+	igt_assert(set->handles);
+
+	for (i = 0; i < set->nr; i++)
+		set->handles[i] = gem_create(fd, set->sizes[i]);
+}
+
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
 
 static int prepare_workload(unsigned int id, struct workload *wrk)
 {
+	struct working_set **sets;
 	uint32_t share_vm = 0;
 	int max_ctx = -1;
 	struct w_step *w;
@@ -1629,6 +1945,51 @@ static int prepare_workload(unsigned int id, struct workload *wrk)
 		}
 	}
 
+	/*
+	 * Allocate working sets.
+	 */
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type == WORKINGSET && !w->working_set.shared)
+			allocate_working_set(&w->working_set);
+	}
+
+	/*
+	 * Map of working set ids.
+	 */
+	wrk->max_working_set_id = -1;
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		if (w->type == WORKINGSET &&
+		    w->working_set.id > wrk->max_working_set_id)
+			wrk->max_working_set_id = w->working_set.id;
+	}
+
+	sets = wrk->working_sets;
+	wrk->working_sets = calloc(wrk->max_working_set_id + 1,
+				   sizeof(*wrk->working_sets));
+	igt_assert(wrk->working_sets);
+
+	for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
+		struct working_set *set;
+
+		if (w->type != WORKINGSET)
+			continue;
+
+		if (!w->working_set.shared) {
+			set = &w->working_set;
+		} else {
+			igt_assert(sets);
+
+			set = sets[w->working_set.id];
+			igt_assert(set->shared);
+			igt_assert(set->sizes);
+		}
+
+		wrk->working_sets[w->working_set.id] = set;
+	}
+
+	if (sets)
+		free(sets);
+
 	/*
 	 * Allocate batch buffers.
 	 */
@@ -1698,7 +2059,7 @@ do_eb(struct workload *wrk, struct w_step *w, enum intel_engine_id engine)
 		      2 * sizeof(uint32_t));
 
 	for (i = 0; i < w->fence_deps.nr; i++) {
-		int tgt = w->idx + w->fence_deps.list[i];
+		int tgt = w->idx + w->fence_deps.list[i].target;
 
 		/* TODO: fence merging needed to support multiple inputs */
 		igt_assert(i == 0);
@@ -1729,14 +2090,18 @@ static void sync_deps(struct workload *wrk, struct w_step *w)
 	unsigned int i;
 
 	for (i = 0; i < w->data_deps.nr; i++) {
+		struct dep_entry *entry = &w->data_deps.list[i];
 		int dep_idx;
 
-		igt_assert(w->data_deps.list[i] <= 0);
+		if (entry->working_set == -1)
+			continue;
+
+		igt_assert(entry->target <= 0);
 
-		if (!w->data_deps.list[i])
+		if (!entry->target)
 			continue;
 
-		dep_idx = w->idx + w->data_deps.list[i];
+		dep_idx = w->idx + entry->target;
 
 		igt_assert(dep_idx >= 0 && dep_idx < w->idx);
 		igt_assert(wrk->steps[dep_idx].type == BATCH);
@@ -1836,11 +2201,6 @@ static void *run_workload(void *data)
 					MI_BATCH_BUFFER_END;
 				__sync_synchronize();
 				continue;
-			} else if (w->type == PREEMPTION ||
-				   w->type == ENGINE_MAP ||
-				   w->type == LOAD_BALANCE ||
-				   w->type == BOND) {
-				continue;
 			} else if (w->type == SSEU) {
 				if (w->sseu != wrk->ctx_list[w->context * 2].sseu) {
 					wrk->ctx_list[w->context * 2].sseu =
@@ -1848,6 +2208,13 @@ static void *run_workload(void *data)
 							     w->sseu);
 				}
 				continue;
+			} else if (w->type == PREEMPTION ||
+				   w->type == ENGINE_MAP ||
+				   w->type == LOAD_BALANCE ||
+				   w->type == BOND ||
+				   w->type == WORKINGSET) {
+				   /* No action for these at execution time. */
+				continue;
 			}
 
 			if (do_sleep || w->type == PERIOD) {
diff --git a/benchmarks/wsim/README b/benchmarks/wsim/README
index 9f770217f075..3d9143226740 100644
--- a/benchmarks/wsim/README
+++ b/benchmarks/wsim/README
@@ -8,6 +8,7 @@ M.<uint>.<str>[|<str>]...
 P|S|X.<uint>.<int>
 d|p|s|t|q|a|T.<int>,...
 b.<uint>.<str>[|<str>].<str>
+w|W.<uint>.<str>[/<str>]...
 f
 
 For duration a range can be given from which a random value will be picked
@@ -32,6 +33,8 @@ Additional workload steps are also supported:
  'P' - Context priority.
  'S' - Context SSEU configuration.
  'T' - Terminate an infinite batch.
+ 'w' - Working set. (See Working sets section.)
+ 'W' - Shared working set.
  'X' - Context preemption control.
 
 Engine ids: DEFAULT, RCS, BCS, VCS, VCS1, VCS2, VECS
@@ -275,3 +278,59 @@ for the render engine.
 Slice mask of -1 has a special meaning of "all slices". Otherwise any integer
 can be specifying as the slice mask, but beware any apart from 1 and -1 can make
 the workload not portable between different GPUs.
+
+Working sets
+------------
+
+When used plainly workload steps can create implicit data dependencies by
+relatively referencing another workload steps of a batch buffer type. Fourth
+field contains the relative data dependncy. For example:
+
+  1.RCS.1000.0.0
+  1.BCS.1000.-1.0
+
+This means the second batch buffer will be marked as having a read data
+dependency on the first one. (The shared buffer is always marked as written to
+by the dependency target buffer.) This will cause a serialization between the
+two batch buffers.
+
+Working sets are used where more complex data dependencies are required. Each
+working set has an id, a list of buffers, and can either be local to the
+workload or shared within the cloned workloads (-c command line option).
+
+Lower-case 'w' command defines a local working set while upper-case 'W' defines
+a shared version. Syntax is as follows:
+
+  w.<id>.<size>[/<size>]...
+
+For size a byte size can be given, or suffix 'k', 'm' or 'g' can be used (case
+insensitive). Prefix in the format of "<int>n<size>" can also be given to create
+multiple objects of the same size.
+
+Examples:
+
+  w.1.4k - Working set 1 with a single 4KiB object in it.
+  W.2.2M/32768 - Working set 2 with one 2MiB and one 32768 byte object.
+  w.3.10n4k/2n20000 - Working set 3 with ten 4KiB and two 20000 byte objects.
+
+Working set objects can be referenced as data dependency targets using the new
+'r'/'w' syntax. Simple example:
+
+  w.1.4k
+  W.2.1m
+  1.RCS.1000.r1-0/w2-0.0
+  1.BCS.1000.r2-0.0
+
+In this example the RCS batch is reading from working set 1 object 0 and writing
+to working set 2 object 0. BCS batch is reading from working set 2 object 0.
+
+Because working set 2 is of a shared type, should two instances of the same
+workload be executed (-c 2) then the 1MiB buffer would be shared and written
+and read by both clients creating a serialization point.
+
+Apart from single objects, ranges can also be given as depenencies:
+
+  w.1.10n4k
+  1.RCS.1000.r1-0-9.0
+
+Here the RCS batch has a read dependency on working set 1 objects 0 to 9.
diff --git a/benchmarks/wsim/cloud-gaming-60fps.wsim b/benchmarks/wsim/cloud-gaming-60fps.wsim
new file mode 100644
index 000000000000..9e48bbc2f617
--- /dev/null
+++ b/benchmarks/wsim/cloud-gaming-60fps.wsim
@@ -0,0 +1,11 @@
+w.1.10n8m
+w.2.3n16m
+1.RCS.500-1500.r1-0-4/w2-0.0
+1.RCS.500-1500.r1-5-9/w2-1.0
+1.RCS.500-1500.r2-0-1/w2-2.0
+M.2.VCS
+B.2
+3.RCS.500-1500.r2-2.0
+2.DEFAULT.2000-4000.-1.0
+4.VCS1.250-750.-1.1
+p.16667
diff --git a/benchmarks/wsim/composited-ui.wsim b/benchmarks/wsim/composited-ui.wsim
new file mode 100644
index 000000000000..4164f8bf7393
--- /dev/null
+++ b/benchmarks/wsim/composited-ui.wsim
@@ -0,0 +1,7 @@
+w.1.10n8m/3n16m
+W.2.16m
+1.RCS.200-600.r1-0-4/w1-10.0
+1.RCS.200-600.r1-5-9/w1-11.0
+1.RCS.400-800.r1-10-11/w1-12.0
+3.BCS.200-800.r1-12/w2-0.1
+p.16667
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
