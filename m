Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30BC722275
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E5610E272;
	Mon,  5 Jun 2023 09:46:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6008510E272
 for <Intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685958365; x=1717494365;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vDLE4BP8NG38071oub8jBXpRkuf5hDwFu5wqVx5fvXU=;
 b=UKsgnz95DJQ7l/+WXFJ6LFEYHGT4WEgfQfTeAhC4OUbZ6giPwWYayxiI
 svgZmn/h7cyLNi6A3WlpjilnpkxpGbOhpXKIwvZAroZNOoe5OkZ+kY7Ws
 IClwH2nIrRq5fCtezEwK6mFpn8RKB9JlMFIHZtzn13ffM4B20cL/jKg3N
 LkCjq91uo0LCIK79/Dw43YXSoKkAy9uH90QrjVWp2imRlvKopePPE6p9g
 mzuuQRupAQsae3/nBuC4GVVLWc7Dd8h+z/sYIpLvzOqHDZB4+r9sU/eQo
 LH6XCGATkJxScS64ZD/Ll6OShG5fNt+i70ZrcIQsuxvgJAJgScw1jneCw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="336682992"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336682992"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741656529"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741656529"
Received: from mloughma-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.238.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 10:45:53 +0100
Message-Id: <20230605094556.207399-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915: Move setting of rps thresholds to
 init
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Since 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")
thresholds are invariant so lets move their setting to init time.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index e68a99205599..791097eb9bfd 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -671,7 +671,6 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
 	struct intel_uncore *uncore = gt->uncore;
-	u32 threshold_up = 0, threshold_down = 0; /* in % */
 	u32 ei_up = 0, ei_down = 0;
 
 	lockdep_assert_held(&rps->power.mutex);
@@ -679,9 +678,6 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 	if (new_power == rps->power.mode)
 		return;
 
-	threshold_up = 95;
-	threshold_down = 85;
-
 	/* Note the units here are not exactly 1us, but 1280ns. */
 	switch (new_power) {
 	case LOW_POWER:
@@ -708,17 +704,22 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 
 	GT_TRACE(gt,
 		 "changing power mode [%d], up %d%% @ %dus, down %d%% @ %dus\n",
-		 new_power, threshold_up, ei_up, threshold_down, ei_down);
+		 new_power,
+		 rps->power.up_threshold, ei_up,
+		 rps->power.down_threshold, ei_down);
 
 	set(uncore, GEN6_RP_UP_EI,
 	    intel_gt_ns_to_pm_interval(gt, ei_up * 1000));
 	set(uncore, GEN6_RP_UP_THRESHOLD,
-	    intel_gt_ns_to_pm_interval(gt, ei_up * threshold_up * 10));
+	    intel_gt_ns_to_pm_interval(gt,
+				       ei_up * rps->power.up_threshold * 10));
 
 	set(uncore, GEN6_RP_DOWN_EI,
 	    intel_gt_ns_to_pm_interval(gt, ei_down * 1000));
 	set(uncore, GEN6_RP_DOWN_THRESHOLD,
-	    intel_gt_ns_to_pm_interval(gt, ei_down * threshold_down * 10));
+	    intel_gt_ns_to_pm_interval(gt,
+				       ei_down *
+				       rps->power.down_threshold * 10));
 
 	set(uncore, GEN6_RP_CONTROL,
 	    (GRAPHICS_VER(gt->i915) > 9 ? 0 : GEN6_RP_MEDIA_TURBO) |
@@ -730,8 +731,6 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
 
 skip_hw_write:
 	rps->power.mode = new_power;
-	rps->power.up_threshold = threshold_up;
-	rps->power.down_threshold = threshold_down;
 }
 
 static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
@@ -1557,10 +1556,12 @@ void intel_rps_enable(struct intel_rps *rps)
 		return;
 
 	GT_TRACE(rps_to_gt(rps),
-		 "min:%x, max:%x, freq:[%d, %d]\n",
+		 "min:%x, max:%x, freq:[%d, %d], thresholds:[%u, %u]\n",
 		 rps->min_freq, rps->max_freq,
 		 intel_gpu_freq(rps, rps->min_freq),
-		 intel_gpu_freq(rps, rps->max_freq));
+		 intel_gpu_freq(rps, rps->max_freq),
+		 rps->power.up_threshold,
+		 rps->power.down_threshold);
 
 	GEM_BUG_ON(rps->max_freq < rps->min_freq);
 	GEM_BUG_ON(rps->idle_freq > rps->max_freq);
@@ -2013,6 +2014,10 @@ void intel_rps_init(struct intel_rps *rps)
 		}
 	}
 
+	/* Set default thresholds in % */
+	rps->power.up_threshold = 95;
+	rps->power.down_threshold = 85;
+
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
 	rps->idle_freq = rps->min_freq;
-- 
2.39.2

