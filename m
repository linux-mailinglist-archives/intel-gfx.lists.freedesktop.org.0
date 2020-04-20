Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 110771B12F5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD046E831;
	Mon, 20 Apr 2020 17:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E1D6E82C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 17:27:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20963022-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 18:27:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 18:27:38 +0100
Message-Id: <20200420172739.11620-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420172739.11620-1-chris@chris-wilson.co.uk>
References: <20200420172739.11620-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915/selftests: Show the pcode frequency
 table on error
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

If we encounter an error while scaling, read back the frequency tables
from the pcu.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 5ee1af1cd427..9ecf694ed08b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -294,6 +294,43 @@ int live_rps_control(void *arg)
 	return err;
 }
 
+static void show_pcu_config(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	unsigned int max_gpu_freq, min_gpu_freq;
+	intel_wakeref_t wakeref;
+	int gpu_freq;
+
+	if (!HAS_LLC(i915))
+		return;
+
+	min_gpu_freq = rps->min_freq;
+	max_gpu_freq = rps->max_freq;
+	if (INTEL_GEN(i915) >= 9) {
+		/* Convert GT frequency to 50 HZ units */
+		min_gpu_freq /= GEN9_FREQ_SCALER;
+		max_gpu_freq /= GEN9_FREQ_SCALER;
+	}
+
+	wakeref = intel_runtime_pm_get(rps_to_uncore(rps)->rpm);
+
+	pr_info("%5s  %5s  %5s\n", "GPU", "eCPU", "eRing");
+	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
+		int ia_freq = gpu_freq;
+
+		sandybridge_pcode_read(i915,
+				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				       &ia_freq, NULL);
+
+		pr_info("%5d  %5d  %5d\n",
+			gpu_freq * 50,
+			((ia_freq >> 0) & 0xff) * 100,
+			((ia_freq >> 8) & 0xff) * 100);
+	}
+
+	intel_runtime_pm_put(rps_to_uncore(rps)->rpm, wakeref);
+}
+
 static u64 __measure_frequency(u32 *cntr, int duration_ms)
 {
 	u64 dc, dt;
@@ -446,6 +483,7 @@ int live_rps_frequency_cs(void *arg)
 			       engine->name,
 			       max.freq * min.count,
 			       min.freq * max.count);
+			show_pcu_config(rps);
 			err = -EINVAL;
 		}
 
@@ -554,6 +592,7 @@ int live_rps_frequency_srm(void *arg)
 			       engine->name,
 			       max.freq * min.count,
 			       min.freq * max.count);
+			show_pcu_config(rps);
 			err = -EINVAL;
 		}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
