Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E361FEFE0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29ADF6EB58;
	Thu, 18 Jun 2020 10:48:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB49890BD;
 Thu, 18 Jun 2020 10:47:59 +0000 (UTC)
IronPort-SDR: jGubOA761F0x3P9gLb9nf3kRIxH48AjnqNiDP6VdzD+Bz40uaE4BTV06oxzIITM9XTLmZzHX1Z
 nK83De5hbZvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269039"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269039"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:47:58 -0700
IronPort-SDR: z2n+0WdKtCn13vcsyJ0VZvpNo4c+OmmBi7+wf7qfNYOkzLrlP61KvUlRzhRv1xPnXGWChwGnIt
 Lc73RkINwAQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378582"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:47:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:42 +0100
Message-Id: <20200618104747.24005-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 06/11] gem_wsim: Support scaling workload
 batch durations
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

-f <float> on the command line can be used to scale batch buffer durations
in all parsed workloads.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index a387e180c242..2d6d0a6a7b4b 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -41,6 +41,7 @@
 #include <assert.h>
 #include <limits.h>
 #include <pthread.h>
+#include <math.h>
 
 #include "intel_chipset.h"
 #include "intel_reg.h"
@@ -875,6 +876,11 @@ static uint64_t engine_list_mask(const char *_str)
 
 static void allocate_working_set(struct workload *wrk, struct working_set *set);
 
+static long __duration(long dur, double scale)
+{
+	return round(scale * dur);
+}
+
 #define int_field(_STEP_, _FIELD_, _COND_, _ERR_) \
 	if ((field = strtok_r(fstart, ".", &fctx))) { \
 		tmp = atoi(field); \
@@ -885,7 +891,8 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set);
 	} \
 
 static struct workload *
-parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
+parse_workload(struct w_arg *arg, unsigned int flags, double scale_dur,
+	       double scale_time, struct workload *app_w)
 {
 	struct workload *wrk;
 	unsigned int nr_steps = 0;
@@ -1151,7 +1158,7 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 					  tmpl == LONG_MAX,
 					  "Invalid duration at step %u!\n",
 					  nr_steps);
-				step.duration.min = tmpl;
+				step.duration.min = __duration(tmpl, scale_dur);
 
 				if (sep && *sep == '-') {
 					tmpl = strtol(sep + 1, NULL, 10);
@@ -1161,7 +1168,8 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 						tmpl == LONG_MAX,
 						"Invalid duration range at step %u!\n",
 						nr_steps);
-					step.duration.max = tmpl;
+					step.duration.max = __duration(tmpl,
+								       scale_dur);
 				} else {
 					step.duration.max = step.duration.min;
 				}
@@ -1197,6 +1205,9 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 		step.type = BATCH;
 
 add_step:
+		if (step.type == DELAY)
+			step.delay = __duration(step.delay, scale_time);
+
 		step.idx = nr_steps++;
 		step.request = -1;
 		steps = realloc(steps, sizeof(step) * nr_steps);
@@ -2508,7 +2519,9 @@ static void print_help(void)
 "                    command line. Subsequent -s switches it off.\n"
 "  -S                Synchronize the sequence of random batch durations between\n"
 "                    clients.\n"
-"  -d                Sync between data dependencies in userspace."
+"  -d                Sync between data dependencies in userspace.\n"
+"  -f <scale>        Scale factor for batch durations.\n"
+"  -F <scale>        Scale factor for delays."
 	);
 }
 
@@ -2570,6 +2583,8 @@ int main(int argc, char **argv)
 	struct w_arg *w_args = NULL;
 	unsigned int tolerance_pct = 1;
 	int exitcode = EXIT_FAILURE;
+	double scale_time = 1.0f;
+	double scale_dur = 1.0f;
 	int prio = 0;
 	double t;
 	int i, c;
@@ -2590,7 +2605,7 @@ int main(int argc, char **argv)
 	master_prng = time(NULL);
 
 	while ((c = getopt(argc, argv,
-			   "ThqvsSdc:n:r:w:W:a:t:p:I:")) != -1) {
+			   "ThqvsSdc:n:r:w:W:a:t:p:I:f:F:")) != -1) {
 		switch (c) {
 		case 'W':
 			if (master_workload >= 0) {
@@ -2701,6 +2716,12 @@ int main(int argc, char **argv)
 		case 'I':
 			master_prng = strtol(optarg, NULL, 0);
 			break;
+		case 'f':
+			scale_dur = atof(optarg);
+			break;
+		case 'F':
+			scale_time = atof(optarg);
+			break;
 		case 'h':
 			print_help();
 			goto out;
@@ -2758,7 +2779,8 @@ int main(int argc, char **argv)
 
 	if (append_workload_arg) {
 		struct w_arg arg = { NULL, append_workload_arg, 0 };
-		app_w = parse_workload(&arg, flags, NULL);
+		app_w = parse_workload(&arg, flags, scale_dur, scale_time,
+				       NULL);
 		if (!app_w) {
 			wsim_err("Failed to parse append workload!\n");
 			goto err;
@@ -2776,7 +2798,8 @@ int main(int argc, char **argv)
 			goto err;
 		}
 
-		wrk[i] = parse_workload(&w_args[i], flags, app_w);
+		wrk[i] = parse_workload(&w_args[i], flags, scale_dur,
+					scale_time, app_w);
 		if (!wrk[i]) {
 			wsim_err("Failed to parse workload %u!\n", i);
 			goto err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
