Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E63352D956A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 10:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11996E123;
	Mon, 14 Dec 2020 09:44:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267706E123
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:44:19 +0000 (UTC)
IronPort-SDR: MKK4SPtSmqUnxEa4qvnUFvJsecpbg9ptWavai6PqMGC1ElvLMgNFm2jzbZv+CoCm8DxVS9UGO2
 XgknyDul37xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="171171406"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="171171406"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:18 -0800
IronPort-SDR: A3Y+EQ34rJPWcDaTxRHiCT4FVtmi6pAJdzr5r6vquFydBkMDaLqvQ7SzSxy7dMNGZFK0aWsWpq
 wDcloA7O4WGw==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="411100422"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:17 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 09:43:48 +0000
Message-Id: <20201214094349.3563876-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
References: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/pmu: Use raw clock for rc6 estimation
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

RC6 is a hardware counter and as such estimating it using the raw clock
during runtime suspend is more appropriate.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: 34f439278cef ("perf: Add per event clockid support")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 204253c2f2c0..ca11922e1102 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -163,9 +163,9 @@ static u64 __get_rc6(struct intel_gt *gt)
 
 #if IS_ENABLED(CONFIG_PM)
 
-static inline s64 ktime_since(const ktime_t kt)
+static inline s64 ktime_since_raw(const ktime_t kt)
 {
-	return ktime_to_ns(ktime_sub(ktime_get(), kt));
+	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
 }
 
 static u64 get_rc6(struct intel_gt *gt)
@@ -194,7 +194,7 @@ static u64 get_rc6(struct intel_gt *gt)
 		 * on top of the last known real value, as the approximated RC6
 		 * counter value.
 		 */
-		val = ktime_since(pmu->sleep_last);
+		val = ktime_since_raw(pmu->sleep_last);
 		val += pmu->sample[__I915_SAMPLE_RC6].cur;
 	}
 
@@ -217,7 +217,7 @@ static void init_rc6(struct i915_pmu *pmu)
 		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
 					pmu->sample[__I915_SAMPLE_RC6].cur;
-		pmu->sleep_last = ktime_get();
+		pmu->sleep_last = ktime_get_raw();
 	}
 }
 
@@ -226,7 +226,7 @@ static void park_rc6(struct drm_i915_private *i915)
 	struct i915_pmu *pmu = &i915->pmu;
 
 	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
-	pmu->sleep_last = ktime_get();
+	pmu->sleep_last = ktime_get_raw();
 }
 
 #else
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
