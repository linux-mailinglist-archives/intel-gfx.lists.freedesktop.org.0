Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2521545F8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 15:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6081E6FA69;
	Thu,  6 Feb 2020 14:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 481 seconds by postgrey-1.36 at gabe;
 Thu, 06 Feb 2020 14:22:12 UTC
Received: from 10.mo69.mail-out.ovh.net (10.mo69.mail-out.ovh.net
 [46.105.73.241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CC16FA6B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 14:22:12 +0000 (UTC)
Received: from player718.ha.ovh.net (unknown [10.108.35.74])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 49C5382ED9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:04:33 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id 9DAAFEFC8B10;
 Thu,  6 Feb 2020 14:04:27 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  6 Feb 2020 16:04:02 +0200
Message-Id: <20200206140402.11790-4-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206140402.11790-1-andi@etezian.org>
References: <20200206140402.11790-1-andi@etezian.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2085448102970704477
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheefgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedukedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915/selftests: add basic on/off
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

live_rc6_basic simply checks if rc6 works when it's enabled
or stops when it's disabled.

The test is added as subtest of the bigger live_late_gt_pm
selftest.

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |  1 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 37 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |  1 +
 3 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index d39a21a047de..2bbdc9235b45 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -51,6 +51,7 @@ static int live_gt_resume(void *arg)
 int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_rc6_basic),
 		SUBTEST(live_rc6_busy),
 		SUBTEST(live_rc6_manual),
 		SUBTEST(live_rc6_threshold),
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 7b5d476a8ad1..9e84b860b70a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -250,6 +250,43 @@ static bool is_rc6_active(struct intel_rc6 *rc6)
 	return !!measure_rc6(uncore, 2 * interval);
 }
 
+int live_rc6_basic(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_rc6 *rc6 = &gt->rc6;
+	intel_wakeref_t wakeref;
+	int i, err = 0;
+
+	if (!rc6->supported)
+		return 0;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	/*
+	 * the two loops test rc6 both in case it's enabled
+	 * and in the case it's disabled. It restores the prvious
+	 * status
+	 */
+	for (i = 0; i < 2; i++) {
+		if (rc6->enabled ^ is_rc6_active(rc6)) {
+			err = -EINVAL;
+
+			/* restore before leaving */
+			if (!i)
+				goto exit;
+		}
+
+		if (rc6->enabled)
+			intel_rc6_disable(&gt->rc6);
+		else
+			intel_rc6_enable(&gt->rc6);
+	}
+
+exit:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+	return err;
+}
+
 int live_rc6_threshold(void *arg)
 {
 	struct intel_gt *gt = arg;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.h b/drivers/gpu/drm/i915/gt/selftest_rc6.h
index 312894423dc2..38183f3558f3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.h
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.h
@@ -7,6 +7,7 @@
 #ifndef SELFTEST_RC6_H
 #define SELFTEST_RC6_H
 
+int live_rc6_basic(void *arg);
 int live_rc6_busy(void *arg);
 int live_rc6_ctx_wa(void *arg);
 int live_rc6_manual(void *arg);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
