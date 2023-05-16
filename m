Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D1E705B61
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 01:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B24210E386;
	Tue, 16 May 2023 23:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF9210E386
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280139; x=1715816139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Lm5a9ai8VpxA7SeSt1ReDzNZYx/hZu0rSAM3W0qXeM=;
 b=SOT/BFmaZxU6zxvl1cOPjxgLg7sltl8fjKmEJMZyEgBY95a7Oqz/dtz4
 LY2hkkdKM3Bxw5Fgnae3pn2zH1FVZ4tlK5hYp8T5+GZK8HV8Qc+3t/Lo6
 HYZiRtaJHJDaQzliDLhZ+tuvmBfDKDaTYCxzSdq+KP4DJpfahCNwZzGpR
 x53dKWe6mOhZgUttEl6SfDgBSRqQLZlbyxA8wP8SBWiEE4wFZrb03LXqa
 z7qyConPi18AOhavs0p/A9FYaNVlvQV8fr2patBetu7OZ7xfAGD1080R/
 4H70uqwJTCi8bizrfF4GES1aGOlNMDYAF1hJIvIhTdlLu+wSTBBBXFByg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340996417"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="340996417"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732160677"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="732160677"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 16:35:28 -0700
Message-Id: <20230516233534.3610598-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/7] drm/i915/pmu: Change bitmask of enabled
 events to u32
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

Having it as u64 was a confusing (but harmless) mistake.

Also add some asserts to make sure the internal field does not overflow
in the future.

v2: Fix WARN_ON firing for INTERRUPT event (Umesh)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 7ece883a7d95..96543dce2db1 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -50,7 +50,7 @@ static u8 engine_event_instance(struct perf_event *event)
 	return (event->attr.config >> I915_PMU_SAMPLE_BITS) & 0xff;
 }
 
-static bool is_engine_config(u64 config)
+static bool is_engine_config(const u64 config)
 {
 	return config < __I915_PMU_OTHER(0);
 }
@@ -88,9 +88,20 @@ static unsigned int config_bit(const u64 config)
 		return other_bit(config);
 }
 
-static u64 config_mask(u64 config)
+static u32 config_mask(const u64 config)
 {
-	return BIT_ULL(config_bit(config));
+	unsigned int bit = config_bit(config);
+
+	if (__builtin_constant_p(config))
+		BUILD_BUG_ON(bit >
+			     BITS_PER_TYPE(typeof_member(struct i915_pmu,
+							 enable)) - 1);
+	else
+		WARN_ON_ONCE(bit >
+			     BITS_PER_TYPE(typeof_member(struct i915_pmu,
+							 enable)) - 1);
+
+	return BIT(config_bit(config));
 }
 
 static bool is_engine_event(struct perf_event *event)
@@ -633,11 +644,10 @@ static void i915_pmu_enable(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
+	const unsigned int bit = event_bit(event);
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
-	unsigned int bit;
 
-	bit = event_bit(event);
 	if (bit == -1)
 		goto update;
 
@@ -651,7 +661,7 @@ static void i915_pmu_enable(struct perf_event *event)
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
 
-	pmu->enable |= BIT_ULL(bit);
+	pmu->enable |= BIT(bit);
 	pmu->enable_count[bit]++;
 
 	/*
@@ -698,7 +708,7 @@ static void i915_pmu_disable(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
-	unsigned int bit = event_bit(event);
+	const unsigned int bit = event_bit(event);
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 
@@ -734,7 +744,7 @@ static void i915_pmu_disable(struct perf_event *event)
 	 * bitmask when the last listener on an event goes away.
 	 */
 	if (--pmu->enable_count[bit] == 0) {
-		pmu->enable &= ~BIT_ULL(bit);
+		pmu->enable &= ~BIT(bit);
 		pmu->timer_enabled &= pmu_needs_timer(pmu, true);
 	}
 
-- 
2.36.1

