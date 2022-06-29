Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D47C560999
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 20:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C126E10EA7F;
	Wed, 29 Jun 2022 18:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BAF10EA89
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 18:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656528410; x=1688064410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O+XZaogOtCmpKFmqmSWrsSy+kRtPsSzVELnh7ZEP8OY=;
 b=klMpVaqPg9crjKWE7dKnIOApTgXrcxqOVwwZZWjGi7tpuElbiVIwMkoN
 ypq/P7L9HkOF+sB2zLoIwMDbOAGc+hiCqzn1vifLsOUUnXBeEtvenuxYV
 7HQve6DqJHE1vgc2QBJHpDMhMx/Q1fuiX9LZ+77Tdg4S7SUSK5kEpgVsK
 4T5qGa4EmMxTBdXxOA+Amkbx9JxtHG5BqvCJ9CNIsWo964MqRduW/uhNq
 D60+wnOhH3PZLSyO/rzIIDToH6omz1URG1dBJxOnWvC+wpxKPgqO4mVaE
 Hgb6UDpu0GUflTpKhKR7ItEPZZC7l7CrjJ5jLIphEkchrkqTpSdyRuAYJ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368432228"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368432228"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 11:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="767698223"
Received: from dut098-kbly.fm.intel.com ([10.105.13.10])
 by orsmga005.jf.intel.com with ESMTP; 29 Jun 2022 11:46:37 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Wed, 29 Jun 2022 18:46:37 +0000
Message-Id: <d88ae0c8d7dda0d17ad52e48c4c2352df71fe85d.1656528043.git.stuart.summers@intel.com>
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

Prevent this by simply checking if the engines are present
when those PMU events come through. Print a debug message
indicating when they aren't available.

Signed-off-by: Stuart Summers <stuart.summers@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 72 +++++++++++++++++++--------------
 1 file changed, 42 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 958b37123bf1..796a1d8e36f2 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -670,21 +670,28 @@ static void i915_pmu_enable(struct perf_event *event)
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
+		if (engine) {
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
+		} else {
+			drm_dbg(&i915->drm,
+				"Invalid engine event: { class:%d, inst:%d }\n",
+				class, instance);
+		}
 	}
 
 	spin_unlock_irqrestore(&pmu->lock, flags);
@@ -714,21 +721,26 @@ static void i915_pmu_disable(struct perf_event *event)
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
+		if (engine) {
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
+		} else {
+			drm_dbg(&i915->drm,
+				"Invalid engine event: { class:%d, inst:%d }\n",
+				class, instance);
+		}
 	}
 
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
-- 
2.25.1

