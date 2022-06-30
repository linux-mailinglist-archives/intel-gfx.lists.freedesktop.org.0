Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B9562635
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 00:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2484410E08B;
	Thu, 30 Jun 2022 22:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276C410E08B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 22:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656629121; x=1688165121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F5Vtnenvy7lYjtWJh41tN/1mFIBoIQdmisfNfmXmpFo=;
 b=fA91IpweTtVUi1YRvSESJKq/f2iVtzBZLg2RR0bUavVZf7KMJqilrQ1m
 4Y/UwJt5odXgIEiO5a5HII4dt0ku19vgYIOm49ZNwH2P9Hedru2Y34Mph
 ESyDBVnxVbFrZ4bxeqT7yqoYGjDFlmBScZpkKOJgjA/WboooC4xCWQh1m
 FoERmgflWZ3vF8lHGq/zr68QTDHmelkwDYyJgR8Z2wqZ/AyFswQBbgzwz
 l2jpcJp7Fq+wxMXm7JlsJTCv9xcaD5pCPvresKNKPSMzBhbbSsLrlH5nJ
 4lMrky75Xg0AavKL9VOLeKxdSub+iMzfo9iDvXDaPDZZs5FSM0Euk1oh7 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="265520602"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="265520602"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 15:45:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="837793682"
Received: from dut098-kbly.fm.intel.com ([10.105.13.10])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2022 15:45:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Thu, 30 Jun 2022 22:45:20 +0000
Message-Id: <9f6763d90a17f881e667848ecc81df93738b95b3.1656629005.git.stuart.summers@intel.com>
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

