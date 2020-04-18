Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 273C61AF198
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 17:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5736ECA5;
	Sat, 18 Apr 2020 15:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8EE6ECAE
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Apr 2020 15:27:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20944725-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Apr 2020 16:27:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Apr 2020 16:27:32 +0100
Message-Id: <20200418152733.1770-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418152733.1770-1-chris@chris-wilson.co.uk>
References: <20200418152733.1770-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/selftests: Skip energy consumption
 tests if not controlling freq
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

If we can not manipulate the frequency with RPS, then comparing min/max
power consumption is pointless / misleading. We will leave the warning
about not being able to control the frequency selection via RPS to other
tests so as not to confuse this more specialised check.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 37 ++++++++++++++++----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 380a65ca1cae..67c287282d38 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -479,26 +479,21 @@ static u64 __measure_power(int duration_ms)
 	return div64_u64(1000 * 1000 * dE, dt);
 }
 
-static u64 measure_power_at(struct intel_rps *rps, int freq)
+static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	u64 x[5];
 	int i;
 
 	mutex_lock(&rps->lock);
 	GEM_BUG_ON(!rps->active);
-	intel_rps_set(rps, freq);
+	intel_rps_set(rps, *freq);
 	mutex_unlock(&rps->lock);
 
 	msleep(20); /* more than enough time to stabilise! */
 
-	i = read_cagf(rps);
-	if (i != freq)
-		pr_notice("Running at %x [%uMHz], not target %x [%uMHz]\n",
-			  i, intel_gpu_freq(rps, i),
-			  freq, intel_gpu_freq(rps, freq));
-
 	for (i = 0; i < 5; i++)
 		x[i] = __measure_power(5);
+	*freq = read_cagf(rps);
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
@@ -536,7 +531,10 @@ int live_rps_power(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq;
-		u64 min, max;
+		struct {
+			u64 power;
+			int freq;
+		} min, max;
 
 		if (!intel_engine_can_store_dword(engine))
 			continue;
@@ -559,16 +557,27 @@ int live_rps_power(void *arg)
 			break;
 		}
 
-		max = measure_power_at(rps, rps->max_freq);
-		min = measure_power_at(rps, rps->min_freq);
+		max.freq = rps->max_freq;
+		max.power = measure_power_at(rps, &max.freq);
+
+		min.freq = rps->min_freq;
+		min.power = measure_power_at(rps, &min.freq);
 
 		igt_spinner_end(&spin);
 
 		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
 			engine->name,
-			min, intel_gpu_freq(rps, rps->min_freq),
-			max, intel_gpu_freq(rps, rps->max_freq));
-		if (11 * min > 10 * max) {
+			min.power, intel_gpu_freq(rps, min.freq),
+			max.power, intel_gpu_freq(rps, max.freq));
+
+		if (10 * min.freq >= 9 * max.freq) {
+			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
+				  min.freq, intel_gpu_freq(rps, min.freq),
+				  max.freq, intel_gpu_freq(rps, max.freq));
+			continue;
+		}
+
+		if (11 * min.power > 10 * max.power) {
 			pr_err("%s: did not conserve power when setting lower frequency!\n",
 			       engine->name);
 			err = -EINVAL;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
