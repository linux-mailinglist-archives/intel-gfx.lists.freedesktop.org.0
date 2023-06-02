Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A553720B1A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 23:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264C710E0F0;
	Fri,  2 Jun 2023 21:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D498C10E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 21:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685742028; x=1717278028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MMa6123dfZTZcpNvxtDmYMf/FNFkj88UF1KOwqKPAfw=;
 b=gs9ItHkJDfoIQ2bMRADpJit4Xe8d+jhFHFRJ3oMKQHT0DEZh4DOGGJB6
 7iNG6uidKLB52er8wB8Y1/7pvc8+M4XwRJJGgv6b6u6Vk4w+VOR0gnLPi
 csqCDpUZG4N0sNZ37xJqiURk9Ux3AQxsAAb09WQl5jov87fzIsbsTl+FD
 9ADjbiKD5EVBDQSbydozg9hgFnRvYQrofc2MmfI7AFsysL1S61BzX3bS8
 tyzJWsfEUrvJTsVZSsEgOVM0aPis6mpBBXgNRnzV2RYQ1aPAuFTamYa8b
 aVe3hdZpmUlDK7KoOxojIcPpI4tWvCgB9eq8Nuswaiwq1IOj/fL28WGeG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="419513686"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="419513686"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 14:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="702088014"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="702088014"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.252.142.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 14:40:27 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 14:40:22 -0700
Message-Id: <20230602214022.1583682-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to I915_MAX_GT
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

Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
values to be different.

v2: Change name of I915_PMU_MAX_GTS to I915_PMU_MAX_GT (Andi), Change
I915_MAX_GT from 4 to 2 (Ashutosh), Explicitly set I915_PMU_MAX_GT to
I915_MAX_GT (Andi)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  2 +-
 drivers/gpu/drm/i915/i915_pmu.c |  2 +-
 drivers/gpu/drm/i915/i915_pmu.h | 12 ++++++++----
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f1205ed3ba71..c3923f52ca56 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -314,7 +314,7 @@ struct drm_i915_private {
 	/*
 	 * i915->gt[0] == &i915->gt0
 	 */
-#define I915_MAX_GT 4
+#define I915_MAX_GT 2
 	struct intel_gt *gt[I915_MAX_GT];
 
 	struct kobject *sysfs_gt;
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index f96fe92dca4e..d35973b41186 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -132,7 +132,7 @@ static u32 frequency_enabled_mask(void)
 	unsigned int i;
 	u32 mask = 0;
 
-	for (i = 0; i < I915_PMU_MAX_GTS; i++)
+	for (i = 0; i < I915_PMU_MAX_GT; i++)
 		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
 			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index d20592e7db99..260a39aaa06b 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -38,7 +38,11 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
-#define I915_PMU_MAX_GTS 2
+#ifndef I915_MAX_GT
+#define I915_MAX_GT 2
+#endif
+
+#define I915_PMU_MAX_GT I915_MAX_GT
 
 /*
  * How many different events we track in the global PMU mask.
@@ -47,7 +51,7 @@ enum {
  */
 #define I915_PMU_MASK_BITS \
 	(I915_ENGINE_SAMPLE_COUNT + \
-	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
+	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
 
 #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
 
@@ -127,11 +131,11 @@ struct i915_pmu {
 	 * Only global counters are held here, while the per-engine ones are in
 	 * struct intel_engine_cs.
 	 */
-	struct i915_pmu_sample sample[I915_PMU_MAX_GTS][__I915_NUM_PMU_SAMPLERS];
+	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
 	/**
 	 * @sleep_last: Last time GT parked for RC6 estimation.
 	 */
-	ktime_t sleep_last[I915_PMU_MAX_GTS];
+	ktime_t sleep_last[I915_PMU_MAX_GT];
 	/**
 	 * @irq_count: Number of interrupts
 	 *
-- 
2.40.0

