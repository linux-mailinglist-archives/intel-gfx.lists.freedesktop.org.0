Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C98856378C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 18:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8454814B5B4;
	Fri,  1 Jul 2022 16:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A58214B5B7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656692153; x=1688228153;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F5Vtnenvy7lYjtWJh41tN/1mFIBoIQdmisfNfmXmpFo=;
 b=BNkyT9/CRzSOzhPd9mRNmSy98I+NH+woA+oRPUFGwElU+J3y8TvLGK57
 BAAygqTuUnT+NzxjyDUyz8MbUV4LUc1LOJc9RXHeW0PEldDZm+MZVbhwj
 4isciQk3NpGHscd1wycxlF0dcFY14b6ZHeNHP7+mG05+iYVxmH0KcwUWb
 6gDcJcPUKPdj3SuVjNas6Cb3NBIwwzvLkjPK4ZWF5SyT1zFmKkIWQMJPj
 cWZicVg1x9rnKgSqCQ4A3YHstnMwXJdyrhOOT8CfuJEkk9+gm0NrnYuwL
 6dB1lvHkXT/BV2jLVlZ6P2Mb79qY76v4MpHOdkkrxbL7ZGHtD0GJmCn5q g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="344370069"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="344370069"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 09:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="694561916"
Received: from dut098-kbly.fm.intel.com ([10.105.13.10])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jul 2022 09:15:52 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Fri,  1 Jul 2022 16:15:52 +0000
Message-Id: <1491b2707b092f324e05d694886d4aa82cec50c9.1656692065.git.stuart.summers@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver teardown
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the driver teardown, we are unregistering the gt prior
to unregistering the PMU. This means there is a small window
of time in which the application can request metrics from the
PMU, some of which are calling into the uapi engines list,
while the engines are not available. In this case we can
see null pointer dereferences.

Fix this ordering in both the driver load and unload sequences.

Additionally add a check for engine presence to prevent this
NPD in the event this ordering is accidentally reversed. Print
a debug message indicating when they aren't available.

v1: Actually address the driver load/unload ordering issue
v2: Use drm_WARN_ONCE instead of a debug print

Signed-off-by: Stuart Summers <stuart.summers@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 11 ++---
 drivers/gpu/drm/i915/i915_pmu.c    | 70 +++++++++++++++++-------------
 2 files changed, 46 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..ee4dcb85d206 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -717,7 +717,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 
 	i915_gem_driver_register(dev_priv);
-	i915_pmu_register(dev_priv);
 
 	intel_vgpu_register(dev_priv);
 
@@ -731,11 +730,12 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	i915_debugfs_register(dev_priv);
 	i915_setup_sysfs(dev_priv);
 
+	intel_gt_driver_register(to_gt(dev_priv));
+
 	/* Depends on sysfs having been initialized */
+	i915_pmu_register(dev_priv);
 	i915_perf_register(dev_priv);
 
-	intel_gt_driver_register(to_gt(dev_priv));
-
 	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
@@ -762,11 +762,12 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
-	intel_gt_driver_unregister(to_gt(dev_priv));
-
 	i915_perf_unregister(dev_priv);
+	/* GT should be available until PMU is gone */
 	i915_pmu_unregister(dev_priv);
 
+	intel_gt_driver_unregister(to_gt(dev_priv));
+
 	i915_teardown_sysfs(dev_priv);
 	drm_dev_unplug(&dev_priv->drm);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 958b37123bf1..adc81f5293d3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -670,21 +670,27 @@ static void i915_pmu_enable(struct perf_event *event)
 	if (is_engine_event(event)) {
 		u8 sample = engine_event_sample(event);
 		struct intel_engine_cs *engine;
-
-		engine = intel_engine_lookup_user(i915,
-						  engine_event_class(event),
-						  engine_event_instance(event));
-
-		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
-			     I915_ENGINE_SAMPLE_COUNT);
-		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
-			     I915_ENGINE_SAMPLE_COUNT);
-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
-		GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
-
-		engine->pmu.enable |= BIT(sample);
-		engine->pmu.enable_count[sample]++;
+		u8 class = engine_event_class(event);
+		u8 instance = engine_event_instance(event);
+
+		engine = intel_engine_lookup_user(i915, class, instance);
+		if (!drm_WARN_ONCE(&i915->drm,
+				   !engine,
+				   "Invalid engine event: { class:%d, inst:%d }\n",
+				   class, instance)) {
+			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
+				     I915_ENGINE_SAMPLE_COUNT);
+			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
+				     I915_ENGINE_SAMPLE_COUNT);
+			GEM_BUG_ON(sample >=
+				   ARRAY_SIZE(engine->pmu.enable_count));
+			GEM_BUG_ON(sample >=
+				   ARRAY_SIZE(engine->pmu.sample));
+			GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
+
+			engine->pmu.enable |= BIT(sample);
+			engine->pmu.enable_count[sample]++;
+		}
 	}
 
 	spin_unlock_irqrestore(&pmu->lock, flags);
@@ -714,21 +720,25 @@ static void i915_pmu_disable(struct perf_event *event)
 	if (is_engine_event(event)) {
 		u8 sample = engine_event_sample(event);
 		struct intel_engine_cs *engine;
-
-		engine = intel_engine_lookup_user(i915,
-						  engine_event_class(event),
-						  engine_event_instance(event));
-
-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
-		GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
-
-		/*
-		 * Decrement the reference count and clear the enabled
-		 * bitmask when the last listener on an event goes away.
-		 */
-		if (--engine->pmu.enable_count[sample] == 0)
-			engine->pmu.enable &= ~BIT(sample);
+		u8 class = engine_event_class(event);
+		u8 instance = engine_event_instance(event);
+
+		engine = intel_engine_lookup_user(i915, class, instance);
+		if (!drm_WARN_ONCE(&i915->drm,
+				   !engine,
+				   "Invalid engine event: { class:%d, inst:%d }\n",
+				   class, instance)) {
+			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
+			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
+			GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
+
+			/*
+			 * Decrement the reference count and clear the enabled
+			 * bitmask when the last listener on an event goes away.
+			 */
+			if (--engine->pmu.enable_count[sample] == 0)
+				engine->pmu.enable &= ~BIT(sample);
+		}
 	}
 
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
-- 
2.25.1

