Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084261FD178
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 477AB6E127;
	Wed, 17 Jun 2020 16:01:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CBE6E127
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:33 +0000 (UTC)
IronPort-SDR: M1q7UIA9a47gqHQS+dNCQxe5e2uwdXJGJmK/LP5hBx09nNXSoP/1zVs70mcJraR6NqYhWTPUa2
 Rpwljox5YKfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:32 -0700
IronPort-SDR: 8TPtQbPM4Y65Q5X9yYi15TcJpJdt5QAvKOU+AGBkyz59zvXCrAlzBCxovI0H4NYDjeT957i85j
 sygpQJys3mGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186107"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:13 +0100
Message-Id: <20200617160120.16555-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 03/10] gem_wsim: Show workload timing stats
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

Show average/min/max workload iteration and dropped period stats when 'p'
command is used.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 9e5bfe6a36d4..60982cb73ba7 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -2101,7 +2101,8 @@ static void *run_workload(void *data)
 	struct w_step *w;
 	int throttle = -1;
 	int qd_throttle = -1;
-	int count;
+	int count, missed = 0;
+	unsigned long time_tot = 0, time_min = ULONG_MAX, time_max = 0;
 	int i;
 
 	clock_gettime(CLOCK_MONOTONIC, &t_start);
@@ -2121,12 +2122,19 @@ static void *run_workload(void *data)
 				do_sleep = w->delay;
 			} else if (w->type == PERIOD) {
 				struct timespec now;
+				int elapsed;
 
 				clock_gettime(CLOCK_MONOTONIC, &now);
-				do_sleep = w->period -
-					   elapsed_us(&wrk->repeat_start, &now);
+				elapsed = elapsed_us(&wrk->repeat_start, &now);
+				do_sleep = w->period - elapsed;
+				time_tot += elapsed;
+				if (elapsed < time_min)
+					time_min = elapsed;
+				if (elapsed > time_max)
+					time_max = elapsed;
 				if (do_sleep < 0) {
-					if (verbose > 1)
+					missed++;
+					if (verbose > 2)
 						printf("%u: Dropped period @ %u/%u (%dus late)!\n",
 						       wrk->id, count, i, do_sleep);
 					continue;
@@ -2280,6 +2288,9 @@ static void *run_workload(void *data)
 		printf("%c%u: %.3fs elapsed (%d cycles, %.3f workloads/s).",
 		       wrk->background ? ' ' : '*', wrk->id,
 		       t, count, count / t);
+		if (time_tot)
+			printf(" Time avg/min/max=%lu/%lu/%luus; %u missed.",
+			       time_tot / count, time_min, time_max, missed);
 		putchar('\n');
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
