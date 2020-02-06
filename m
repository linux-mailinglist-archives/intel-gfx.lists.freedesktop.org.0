Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32251545C1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 15:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781A86EA85;
	Thu,  6 Feb 2020 14:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 326 seconds by postgrey-1.36 at gabe;
 Thu, 06 Feb 2020 14:09:55 UTC
Received: from 10.mo68.mail-out.ovh.net (10.mo68.mail-out.ovh.net
 [46.105.79.203])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C48D6E4D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 14:09:55 +0000 (UTC)
Received: from player779.ha.ovh.net (unknown [10.108.54.133])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 1EFFD159C52
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:04:26 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player779.ha.ovh.net (Postfix) with ESMTPSA id 3B4EDF0C65A5;
 Thu,  6 Feb 2020 14:04:23 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  6 Feb 2020 16:04:01 +0200
Message-Id: <20200206140402.11790-3-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206140402.11790-1-andi@etezian.org>
References: <20200206140402.11790-1-andi@etezian.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2083477778985960029
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheefgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915/selftests: add threshold
 selftests for rc6
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

From: Andi Shyti <andi.shyti@intel.com>

rc6 should not work when the evaluation interval is less than the
threshold and should work otherwise.

live_rc6_threshold tests such behavior

The test is added as subtest of the bigger live_late_gt_pm
selftest.

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |  1 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 67 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |  1 +
 3 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 40562f5208ea..d39a21a047de 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -53,6 +53,7 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_rc6_busy),
 		SUBTEST(live_rc6_manual),
+		SUBTEST(live_rc6_threshold),
 		SUBTEST(live_gt_resume),
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 270e8d24036d..7b5d476a8ad1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -250,6 +250,73 @@ static bool is_rc6_active(struct intel_rc6 *rc6)
 	return !!measure_rc6(uncore, 2 * interval);
 }
 
+int live_rc6_threshold(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_uncore *uncore = gt->uncore;
+	struct intel_rc6 *rc6 = &gt->rc6;
+	intel_wakeref_t wakeref;
+	u32 threshold, interval;
+	u32 t_orig, i_orig;
+	int err = 0;
+
+	if (!rc6->manual) /* No interfering PCU! */
+		return 0;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	__intel_rc6_disable(rc6); /* stop before adjusting thresholds */
+
+	t_orig = intel_uncore_read(uncore, GEN6_RC6_THRESHOLD);
+	i_orig = intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL);
+
+	/*
+	 * set the threshold to 50ms
+	 *
+	 * 50ms * 1000 = 50000us
+	 * 50000 / (1.28 * 100) / 100 (we don't have floating point)
+	 */
+	threshold = 50 * 1000 / 128 * 100;
+	intel_uncore_write(uncore, GEN6_RC6_THRESHOLD, threshold);
+
+	/* set interval indicatively to half the threshold */
+	interval = threshold / 2;
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, interval);
+
+	intel_rc6_unpark(rc6);
+
+	/* interval < threshold */
+	if (is_rc6_active(rc6)) {
+		pr_err("i915 mismatch: rc6 with interval < threshold\n");
+		err = -EINVAL;
+	}
+
+	__intel_rc6_disable(rc6);
+
+	/* set interval indicatively to twice the threshold */
+	interval = threshold * 2;
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, interval);
+
+	intel_rc6_unpark(rc6);
+
+	/* interval > threshold */
+	if (!is_rc6_active(rc6)) {
+		pr_err("i915 mismatch: not in rc6 with interval > threshold\n");
+		err = -EINVAL;
+	}
+
+	__intel_rc6_disable(rc6);
+
+	intel_uncore_write(uncore, GEN6_RC6_THRESHOLD, t_orig);
+	intel_uncore_write(uncore, GEN6_RC_EVALUATION_INTERVAL, i_orig);
+
+	intel_rc6_park(rc6);
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return err;
+}
+
 int live_rc6_busy(void *arg)
 {
 	struct intel_gt *gt = arg;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.h b/drivers/gpu/drm/i915/gt/selftest_rc6.h
index 75e05a8a1fda..312894423dc2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.h
@@ -10,5 +10,6 @@
 int live_rc6_busy(void *arg);
 int live_rc6_ctx_wa(void *arg);
 int live_rc6_manual(void *arg);
+int live_rc6_threshold(void *arg);
 
 #endif /* SELFTEST_RC6_H */
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
