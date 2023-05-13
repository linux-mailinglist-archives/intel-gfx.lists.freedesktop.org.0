Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A18F7013CD
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A9110E053;
	Sat, 13 May 2023 01:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2F710E707
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 01:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683942949; x=1715478949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=unMvCkOTOOW83X8twgaU3mrHt7rAYMhRCygjH1rMllA=;
 b=jgfJsj7HAXuMQDmx1IDqkC5/3y7wBtLCdIDE3xYVFzzOcZ5HDn/leO97
 YbyjtCVHLJrCzT7SG8plCQ7KD2haZ9Ihi5Xwn8xI9wOfyXNlwYvhg5zYt
 Y6+Sqt6GWG61b77WLUxAYWPVjnganhqzOaAEhz8oH+0L+Cky8Qv1zKaGB
 iqTQqr94ThkAMBGYGKlxF1lGjawt76BflSxxgtC+liW+j0JVstIMCh/NY
 dzphHWxXlkGJ8ONlzP1pjdoXPFRflifHUjHhJRrtctcf3psK5RuMK4uAA
 eHgOksIafjfZFKpq1MRx9uQ/H2GQFrg8Ad/HaaJWWE2En2jrxVDneEgrD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354054423"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="354054423"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="731017019"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="731017019"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 12 May 2023 18:55:43 -0700
Message-Id: <20230513015545.2807282-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
References: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
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

v2: Drop the check for unparked in i915_sample (Ashutosh)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_pmu.h | 4 ++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2b63ee31e1b3..725b01b00775 100644
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

