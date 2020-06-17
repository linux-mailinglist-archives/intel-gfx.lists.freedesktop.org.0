Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D32E11FD17B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE7F6E141;
	Wed, 17 Jun 2020 16:01:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E926E135
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:38 +0000 (UTC)
IronPort-SDR: uQL56B8pSYFZlp7bq6hqQ12UmBRX3mQA5FpkNlw027+romWrxZMNbk7y0tAgqimt1ZiuNXJ62X
 R90rNXmiY20w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:38 -0700
IronPort-SDR: B33VXq/X69Sz+fe9LvciYIsZp2COanHmQBGjrmPL7LQwlYVpdtPCnqrLwaq3nuSFMVx6+LcFOu
 2A91nKNBkN1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186165"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:16 +0100
Message-Id: <20200617160120.16555-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 06/10] gem_wsim: Support scaling workload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

-f <float> on the command line can be used to scale batch buffer durations
in all parsed workloads.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index c1405596c46a..025385a144b8 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -41,6 +41,7 @@
 #include <assert.h>
 #include <limits.h>
 #include <pthread.h>
+#include <math.h>
 
 #include "intel_chipset.h"
 #include "intel_reg.h"
@@ -853,6 +854,11 @@ static uint64_t engine_list_mask(const char *_str)
 
 static void allocate_working_set(struct workload *wrk, struct working_set *set);
 
+static long __duration(long dur, double scale)
+{
+	return round(scale * dur);
+}
+
 #define int_field(_STEP_, _FIELD_, _COND_, _ERR_) \
 	if ((field = strtok_r(fstart, ".", &fctx))) { \
 		tmp = atoi(field); \
@@ -863,7 +869,8 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set);
 	} \
 
 static struct workload *
-parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
+parse_workload(struct w_arg *arg, unsigned int flags, double scale_dur,
+	       struct workload *app_w)
 {
 	struct workload *wrk;
 	unsigned int nr_steps = 0;
@@ -1129,7 +1136,7 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 					  tmpl == LONG_MAX,
 					  "Invalid duration at step %u!\n",
 					  nr_steps);
-				step.duration.min = tmpl;
+				step.duration.min = __duration(tmpl, scale_dur);
 
 				if (sep && *sep == '-') {
 					tmpl = strtol(sep + 1, NULL, 10);
@@ -1139,7 +1146,8 @@ parse_workload(struct w_arg *arg, unsigned int flags, struct workload *app_w)
 						tmpl == LONG_MAX,
 						"Invalid duration range at step %u!\n",
 						nr_steps);
-					step.duration.max = tmpl;
+					step.duration.max = __duration(tmpl,
+								       scale_dur);
 				} else {
 					step.duration.max = step.duration.min;
 				}
@@ -2494,7 +2502,8 @@ static void print_help(void)
 "                    command line. Subsequent -s switches it off.\n"
 "  -S                Synchronize the sequence of random batch durations between\n"
 "                    clients.\n"
-"  -d                Sync between data dependencies in userspace."
+"  -d                Sync between data dependencies in userspace.\n"
+"  -f <scale>        Scale factor for batch durations."
 	);
 }
 
@@ -2556,6 +2565,7 @@ int main(int argc, char **argv)
 	struct w_arg *w_args = NULL;
 	unsigned int tolerance_pct = 1;
 	int exitcode = EXIT_FAILURE;
+	double scale_arg = 1.0f;
 	int prio = 0;
 	double t;
 	int i, c;
@@ -2576,7 +2586,7 @@ int main(int argc, char **argv)
 	master_prng = time(NULL);
 
 	while ((c = getopt(argc, argv,
-			   "ThqvsSdc:n:r:w:W:a:t:p:I:")) != -1) {
+			   "ThqvsSdc:n:r:w:W:a:t:p:I:f:")) != -1) {
 		switch (c) {
 		case 'W':
 			if (master_workload >= 0) {
@@ -2687,6 +2697,9 @@ int main(int argc, char **argv)
 		case 'I':
 			master_prng = strtol(optarg, NULL, 0);
 			break;
+		case 'f':
+			scale_arg = atof(optarg);
+			break;
 		case 'h':
 			print_help();
 			goto out;
@@ -2744,7 +2757,7 @@ int main(int argc, char **argv)
 
 	if (append_workload_arg) {
 		struct w_arg arg = { NULL, append_workload_arg, 0 };
-		app_w = parse_workload(&arg, flags, NULL);
+		app_w = parse_workload(&arg, flags, scale_arg, NULL);
 		if (!app_w) {
 			wsim_err("Failed to parse append workload!\n");
 			goto err;
@@ -2762,7 +2775,7 @@ int main(int argc, char **argv)
 			goto err;
 		}
 
-		wrk[i] = parse_workload(&w_args[i], flags, app_w);
+		wrk[i] = parse_workload(&w_args[i], flags, scale_arg, app_w);
 		if (!wrk[i]) {
 			wsim_err("Failed to parse workload %u!\n", i);
 			goto err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
