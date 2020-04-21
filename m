Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF6A1B26A1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 14:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7046E077;
	Tue, 21 Apr 2020 12:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BFB36E077
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 12:46:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20971133-1500050 
 for multiple; Tue, 21 Apr 2020 13:46:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 13:46:36 +0100
Message-Id: <20200421124636.22554-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421123733.12786-1-chris@chris-wilson.co.uk>
References: <20200421123733.12786-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Show the full scaling curve
 on failure
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we detect that the RPS end points do not scale perfectly, take the
time to measure all the in between values as well. We are aborting the
test, so we might as well spend the available time gathering critical
debug information instead.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 40 ++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index e0a791eac752..395265121e43 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -484,11 +484,31 @@ int live_rps_frequency_cs(void *arg)
 		if (!scaled_within(max.freq * min.count,
 				   min.freq * max.count,
 				   2, 3)) {
+			int f;
+
 			pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
 			       engine->name,
 			       max.freq * min.count,
 			       min.freq * max.count);
 			show_pcu_config(rps);
+
+			for (f = min.freq + 1; f <= rps->max_freq; f++) {
+				int act = f;
+				u64 count;
+
+				count = measure_cs_frequency_at(rps, engine, &act);
+				if (act < f)
+					break;
+
+				pr_info("%s: %x:%uMHz: %lluKHz [%d%%]\n",
+					engine->name,
+					act, intel_gpu_freq(rps, act), count,
+					(int)DIV64_U64_ROUND_CLOSEST(100 * min.freq * count,
+								     act * min.count));
+
+				f = act; /* may skip ahead [pcu granularity] */
+			}
+
 			err = -EINVAL;
 		}
 
@@ -593,11 +613,31 @@ int live_rps_frequency_srm(void *arg)
 		if (!scaled_within(max.freq * min.count,
 				   min.freq * max.count,
 				   1, 2)) {
+			int f;
+
 			pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
 			       engine->name,
 			       max.freq * min.count,
 			       min.freq * max.count);
 			show_pcu_config(rps);
+
+			for (f = min.freq + 1; f <= rps->max_freq; f++) {
+				int act = f;
+				u64 count;
+
+				count = measure_frequency_at(rps, cntr, &act);
+				if (act < f)
+					break;
+
+				pr_info("%s: %x:%uMHz: %lluKHz [%d%%]\n",
+					engine->name,
+					act, intel_gpu_freq(rps, act), count,
+					(int)DIV64_U64_ROUND_CLOSEST(100 * min.freq * count,
+								     act * min.count));
+
+				f = act; /* may skip ahead [pcu granularity] */
+			}
+
 			err = -EINVAL;
 		}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
