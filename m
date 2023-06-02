Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE8C720C40
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 01:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E741810E64A;
	Fri,  2 Jun 2023 23:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1DC10E64A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 23:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685747881; x=1717283881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ffa2S6659WDxgbbm+fTmn/UjBRHGAyYkWiIc/KY2cLM=;
 b=V6SbAulxbk+UQj6kjGmxLqt4nqREgKpTwVKobXLX2vexnd2YkJlLqMOr
 aJLBVFAau5ULD373yGglJ1W/tfzA8bRV7XW8uJiUENMj3P2C80xJYef75
 7+v21rDLulHDdoWzLDJ2ARRv6mXbbgufvUDtnVqTkxeZGmqZW0tj2rQV2
 LC17Xppev5z/vmappNyUWXHZtVu2AEkQDkHQcONq5dI/cY3UeSzGZfj/A
 sB8t2xTjB5FAaQXRX/GHlrpz797LarHgjLqJkiKHbqsVcGPmjPXZml8zW
 Ne/vXLGi6wEa7SBSZzMlYUSyAEnr33VKmBrhzGOs5wwv4QbW3qW9iQuIy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="442370370"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="442370370"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882229056"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="882229056"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.252.142.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:18:00 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 16:17:54 -0700
Message-Id: <20230602231754.1596433-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: rename I915_PMU_MAX_GTS to
 I915_PMU_MAX_GT
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
Cc: ashutosh.dixit@linux.intel.com, matthew.d.roper@intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

_GTS as an abbreviation here leads to some confusion, match other
definitions and drop the s.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
Cc: Andi Shyti <andy.shyti@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 2 +-
 drivers/gpu/drm/i915/i915_pmu.h | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

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
index d20592e7db99..41af038c3738 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -38,7 +38,7 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
-#define I915_PMU_MAX_GTS 2
+#define I915_PMU_MAX_GT 2
 
 /*
  * How many different events we track in the global PMU mask.
@@ -47,7 +47,7 @@ enum {
  */
 #define I915_PMU_MASK_BITS \
 	(I915_ENGINE_SAMPLE_COUNT + \
-	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
+	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
 
 #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
 
@@ -127,11 +127,11 @@ struct i915_pmu {
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

