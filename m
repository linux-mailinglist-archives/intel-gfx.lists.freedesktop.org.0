Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0E81FEFDC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE696E43B;
	Thu, 18 Jun 2020 10:47:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57DF56EB3D;
 Thu, 18 Jun 2020 10:47:55 +0000 (UTC)
IronPort-SDR: Jr2eobgHYTTzTve2WwbWfv4rIpgmXlFzIy2u0WGj2yENkio5YwJ/uPdAdjwaB+uhwrUgm3WhIJ
 ysZ+o3yvAG2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269026"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269026"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:47:55 -0700
IronPort-SDR: 83/ySMzc0KxGIyXYi+pcer/GdzKiKPTxg0eO3EvWNLxk1XeBFCBo87/c9t6e4IHOuJiHLwPMUg
 HKPI3B1/PMdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378557"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:47:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:39 +0100
Message-Id: <20200618104747.24005-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 03/11] gem_wsim: Show workload timing stats
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

Show average/min/max workload iteration and dropped period stats when 'p'
command is used.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index dc47470c621d..dd0b2e260a5a 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -2117,7 +2117,8 @@ static void *run_workload(void *data)
 	struct w_step *w;
 	int throttle = -1;
 	int qd_throttle = -1;
-	int count;
+	int count, missed = 0;
+	unsigned long time_tot = 0, time_min = ULONG_MAX, time_max = 0;
 	int i;
 
 	clock_gettime(CLOCK_MONOTONIC, &t_start);
@@ -2137,12 +2138,19 @@ static void *run_workload(void *data)
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
@@ -2296,6 +2304,9 @@ static void *run_workload(void *data)
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
