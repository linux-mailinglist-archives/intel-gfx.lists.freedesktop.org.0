Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2749F1C23FF
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 10:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDB76E0B6;
	Sat,  2 May 2020 08:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622AA6E0B6
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 08:27:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21090634-1500050 
 for multiple; Sat, 02 May 2020 09:26:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  2 May 2020 09:26:54 +0100
Message-Id: <20200502082654.6847-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Repeat the rps clock
 frequency measurement
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

Repeat the measurement of the clock frequency a few times and use the
median to try and reduce the systematic measurement error.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 53 +++++++++++++++++++-------
 1 file changed, 39 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index b89a7d7611f6..e27632172dbe 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -56,6 +56,18 @@ static int cmp_u64(const void *A, const void *B)
 		return 0;
 }
 
+static int cmp_u32(const void *A, const void *B)
+{
+	const u32 *a = A, *b = B;
+
+	if (a < b)
+		return -1;
+	else if (a > b)
+		return 1;
+	else
+		return 0;
+}
+
 static struct i915_vma *
 create_spin_counter(struct intel_engine_cs *engine,
 		    struct i915_address_space *vm,
@@ -236,8 +248,8 @@ int live_rps_clock_interval(void *arg)
 	for_each_engine(engine, gt, id) {
 		unsigned long saved_heartbeat;
 		struct i915_request *rq;
-		ktime_t dt;
 		u32 cycles;
+		u64 dt;
 
 		if (!intel_engine_can_store_dword(engine))
 			continue;
@@ -286,15 +298,28 @@ int live_rps_clock_interval(void *arg)
 				  engine->name);
 			err = -ENODEV;
 		} else {
-			preempt_disable();
-			dt = ktime_get();
-			cycles = -intel_uncore_read_fw(gt->uncore,
-						       GEN6_RP_CUR_UP_EI);
-			udelay(1000);
-			dt = ktime_sub(ktime_get(), dt);
-			cycles += intel_uncore_read_fw(gt->uncore,
-						       GEN6_RP_CUR_UP_EI);
-			preempt_enable();
+			ktime_t dt_[5];
+			u32 cycles_[5];
+			int i;
+
+			for (i = 0; i < 5; i++) {
+				preempt_disable();
+
+				dt_[i] = ktime_get();
+				cycles_[i] = -intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
+				udelay(1000);
+
+				dt_[i] = ktime_sub(ktime_get(), dt_[i]);
+				cycles_[i] += intel_uncore_read_fw(gt->uncore, GEN6_RP_CUR_UP_EI);
+
+				preempt_enable();
+			}
+
+			/* Use the median of both cycle/dt; close enough */
+			sort(cycles_, 5, sizeof(*cycles_), cmp_u32, NULL);
+			cycles = (cycles_[1] + 2 * cycles_[2] + cycles_[3]) / 4;
+			sort(dt_, 5, sizeof(*dt_), cmp_u64, NULL);
+			dt = div_u64(dt_[1] + 2 * dt_[2] + dt_[3], 4);
 		}
 
 		intel_uncore_write_fw(gt->uncore, GEN6_RP_CONTROL, 0);
@@ -306,14 +331,14 @@ int live_rps_clock_interval(void *arg)
 		if (err == 0) {
 			u64 time = intel_gt_pm_interval_to_ns(gt, cycles);
 			u32 expected =
-				intel_gt_ns_to_pm_interval(gt, ktime_to_ns(dt));
+				intel_gt_ns_to_pm_interval(gt, dt);
 
 			pr_info("%s: rps counted %d C0 cycles [%lldns] in %lldns [%d cycles], using GT clock frequency of %uKHz\n",
-				engine->name, cycles, time, ktime_to_ns(dt), expected,
+				engine->name, cycles, time, dt, expected,
 				gt->clock_frequency / 1000);
 
-			if (10 * time < 8 * ktime_to_ns(dt) ||
-			    8 * time > 10 * ktime_to_ns(dt)) {
+			if (10 * time < 8 * dt ||
+			    8 * time > 10 * dt) {
 				pr_err("%s: rps clock time does not match walltime!\n",
 				       engine->name);
 				err = -EINVAL;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
