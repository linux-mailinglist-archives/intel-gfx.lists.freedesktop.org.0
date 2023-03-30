Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A07B6CF853
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67D10ECC2;
	Thu, 30 Mar 2023 00:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF1410ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ouSJCwNN6PUG1ASC3l4ex50/aQQ8eT0M44+7ZeRF7CA=;
 b=OqC+UKlo5+3ny6AxrrP8Qs9Ocaio1MHQWcsCY17sGmlP4rsFZvouhzYG
 F/5qY13Fp4XQ8rOJXtrwuCmXP2+mUvbuqS/XptBxwcb/FYwlSh3F4cXRI
 djVGTP9YNk7kHXFx6Sfz+A1ktqrfZ+FkDkH65YsBtdVSxbzLP0Pv6E8h2
 6K44ebpIB14V06GCMfSRZLsJbj4c94Jj0wA8rrsC0lr6t/CiEOH0hNAdu
 pIX7avxRYDdUqbWRcuAQc5ke5heH4hit6pbbAaQTAgYU24Rom/kt5CWQz
 2wDK8K0dLodExKNRjk7JvHx3H7HncfnuGkKUSUsaoTTncgOcwtqZzwU7O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310373"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310373"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668675"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668675"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:40:58 -0700
Message-Id: <20230330004103.1295413-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/pmu: Add reference counting to the
 sampling timer
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

We do not want to have timers per tile and waste CPU cycles and energy via
multiple wake-up sources, for a relatively un-important task of PMU
sampling, so keeping a single timer works well. But we also do not want
the first GT which goes idle to turn off the timer.

Add some reference counting, via a mask of unparked GTs, to solve this.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 6f7f9b40860d..c00b94c7f509 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	 * Signal sampling timer to stop if only engine events are enabled and
 	 * GPU went idle.
 	 */
-	pmu->timer_enabled = pmu_needs_timer(pmu, false);
+	pmu->unparked &= ~BIT(gt->info.id);
+	if (pmu->unparked == 0)
+		pmu->timer_enabled = pmu_needs_timer(pmu, false);
 
 	spin_unlock_irq(&pmu->lock);
 }
@@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 	/*
 	 * Re-enable sampling timer when GPU goes active.
 	 */
-	__i915_pmu_maybe_start_timer(pmu);
+	if (pmu->unparked == 0)
+		__i915_pmu_maybe_start_timer(pmu);
+
+	pmu->unparked |= BIT(gt->info.id);
 
 	spin_unlock_irq(&pmu->lock);
 }
@@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	 */
 
 	for_each_gt(gt, i915, i) {
+		if (!(pmu->unparked & BIT(i)))
+			continue;
+
 		engines_sample(gt, period_ns);
 
 		/* Sample only gt0 until gt support is added for frequency */
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index d98fbc7a2f45..1b04c79907e8 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -76,6 +76,10 @@ struct i915_pmu {
 	 * @lock: Lock protecting enable mask and ref count handling.
 	 */
 	spinlock_t lock;
+	/**
+	 * @unparked: GT unparked mask.
+	 */
+	unsigned int unparked;
 	/**
 	 * @timer: Timer for internal i915 PMU sampling.
 	 */
-- 
2.36.1

