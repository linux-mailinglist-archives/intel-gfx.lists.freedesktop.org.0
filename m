Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9512D956C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 10:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A01976E147;
	Mon, 14 Dec 2020 09:44:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E437D6E131
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:44:19 +0000 (UTC)
IronPort-SDR: AMXs63wCpFtPWlKSigd091BcbBoELlWALCUr/c7PIsmtWo2QFsmNzpKguU22QlCUM/5DHItpuN
 NEflIFkRCd9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="171171414"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="171171414"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:19 -0800
IronPort-SDR: 4j7j1xgwVe2JYFfAB712nWW+am00EnvPlopA16ODNaHFj9Hcn/Ct+TOxrKnhNrOzDvnNzmPE1A
 hj5ji6oHn7Xg==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="411100429"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:18 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 09:43:49 +0000
Message-Id: <20201214094349.3563876-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
References: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/pmu: Remove !CONFIG_PM code
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

Chris spotted that since 16ffe73c186b ("drm/i915/pmu: Use GT parked for
estimating RC6 while asleep") we don't rely on runtime pm internals when
estimating RC6 while asleep. We can remove the ifdef code to simplify and
at the same time wake up the device less when querying RC6 if CONFIG_PM is
not compiled in.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: 16ffe73c186b ("drm/i915/pmu: Use GT parked for estimating RC6 while asleep")
Reported-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index ca11922e1102..37716a89c682 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -161,8 +161,6 @@ static u64 __get_rc6(struct intel_gt *gt)
 	return val;
 }
 
-#if IS_ENABLED(CONFIG_PM)
-
 static inline s64 ktime_since_raw(const ktime_t kt)
 {
 	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
@@ -229,18 +227,6 @@ static void park_rc6(struct drm_i915_private *i915)
 	pmu->sleep_last = ktime_get_raw();
 }
 
-#else
-
-static u64 get_rc6(struct intel_gt *gt)
-{
-	return __get_rc6(gt);
-}
-
-static void init_rc6(struct i915_pmu *pmu) { }
-static void park_rc6(struct drm_i915_private *i915) {}
-
-#endif
-
 static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
 {
 	if (!pmu->timer_enabled && pmu_needs_timer(pmu, true)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
