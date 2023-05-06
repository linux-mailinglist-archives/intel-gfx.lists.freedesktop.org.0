Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C326F8D4B
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 02:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0544710E146;
	Sat,  6 May 2023 00:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12FB10E0EB
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 May 2023 00:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683334697; x=1714870697;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UMYUXeet1RNO/soUM/cchOMI3c8v/8IDcQKRS5utlkE=;
 b=Db87WKyvfNKDnu1URwLXtfey3nVGG1WMrzHeIq2hGm7B/EqWZ1iJd1g0
 +iTDy4peMvxl3ZqwcqVlICy9C9weejtHBxbEXb9xmmX0DtGIOhGA/qIFu
 QM4LUdKuyZh0G78NFjwqhtqEi2BEia6FZhU1oCuFRpR1zto80VbBFeg5l
 7D4y83ey7xxnNmcljps5v5Tj7gvUtfN0qZkiGB3TRKBldtSDEg/mUnUvd
 OzMH+JnxiV+vTLY3CyiFr9bsGpI7hRaUvOcAKb9AtbZwHGA+BndVGZqwY
 ZbQOJw4KlIH/cnPYw1VMcUFeOiXxeg5dTfHtxC1QTOUSqukIH0GPaK63+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="377408315"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="377408315"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="767326036"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="767326036"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri,  5 May 2023 17:58:14 -0700
Message-Id: <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to the
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
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2b63ee31e1b3..669a42e44082 100644
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
 
 		if (i == 0) /* FIXME */
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index a686fd7ccedf..3a811266ac6a 100644
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

