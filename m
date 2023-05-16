Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E85705B64
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 01:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB8F210E38B;
	Tue, 16 May 2023 23:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4BF310E389
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280139; x=1715816139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UDTrhxmLm+uDPh/JrBBZa0c1nccQpedV2+fOviZy398=;
 b=YbEbuPIcL+1niFPTalH9Hlm8hJoTP10KcsCsA24tGvfkLNHMhYjtLHad
 e3FJJPgitt1QIM0RUmZ4hMdBBuItqzEZPb7wIf4/OA9lS0sWM5Qx5RUWs
 l1ieyuFk14LbJLEDFx2kGKnELvm5wCjng4p99oD46iMMjWivjsVwHbg4O
 RjJUdIHtC2QPs5rfmBVMJANT9CAzqf1afL5FX7OX5+9zUY/77BIRVd4kc
 wozyrlSUCrNWk3TpOMgFXISFG3UeBsD0RkpJ/KztCTrqZuJMqN7HyR0ny
 2KOMyGcN1+Ay7iBnfzvG2rWOIqXPdsY0PC6h/58pxF4WdesSXu++dqfTm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340996423"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="340996423"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732160695"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="732160695"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 16:35:34 -0700
Message-Id: <20230516233534.3610598-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 7/7] drm/i915/pmu: Export counters from all
 tiles
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

Start exporting frequency and RC6 counters from all tiles.

Existing counters keep their names and config values and new one use the
namespace added in the previous patch, with the "-gtN" added to their
names.

Interrupts counter is an odd one off. Because it is the global device
counters (not only GT) we choose not to add per tile versions for now.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 82 ++++++++++++++++++++++-----------
 1 file changed, 55 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index dc1ca3a15ff6..dbb24c0c6093 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -940,11 +940,20 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
 	.attrs = i915_cpumask_attrs,
 };
 
-#define __event(__config, __name, __unit) \
+#define __event(__counter, __name, __unit) \
 { \
-	.config = (__config), \
+	.counter = (__counter), \
 	.name = (__name), \
 	.unit = (__unit), \
+	.global = false, \
+}
+
+#define __global_event(__counter, __name, __unit) \
+{ \
+	.counter = (__counter), \
+	.name = (__name), \
+	.unit = (__unit), \
+	.global = true, \
 }
 
 #define __engine_event(__sample, __name) \
@@ -983,15 +992,16 @@ create_event_attributes(struct i915_pmu *pmu)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
 	static const struct {
-		u64 config;
+		unsigned int counter;
 		const char *name;
 		const char *unit;
+		bool global;
 	} events[] = {
-		__event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
-		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
-		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
-		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
-		__event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, "software-gt-awake-time", "ns"),
+		__event(0, "actual-frequency", "M"),
+		__event(1, "requested-frequency", "M"),
+		__global_event(2, "interrupts", NULL),
+		__event(3, "rc6-residency", "ns"),
+		__event(4, "software-gt-awake-time", "ns"),
 	};
 	static const struct {
 		enum drm_i915_pmu_engine_sample sample;
@@ -1006,12 +1016,17 @@ create_event_attributes(struct i915_pmu *pmu)
 	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
 	struct attribute **attr = NULL, **attr_iter;
 	struct intel_engine_cs *engine;
-	unsigned int i;
+	struct intel_gt *gt;
+	unsigned int i, j;
 
 	/* Count how many counters we will be exposing. */
-	for (i = 0; i < ARRAY_SIZE(events); i++) {
-		if (!config_status(i915, events[i].config))
-			count++;
+	for_each_gt(gt, i915, j) {
+		for (i = 0; i < ARRAY_SIZE(events); i++) {
+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+
+			if (!config_status(i915, config))
+				count++;
+		}
 	}
 
 	for_each_uabi_engine(engine, i915) {
@@ -1041,26 +1056,39 @@ create_event_attributes(struct i915_pmu *pmu)
 	attr_iter = attr;
 
 	/* Initialize supported non-engine counters. */
-	for (i = 0; i < ARRAY_SIZE(events); i++) {
-		char *str;
-
-		if (config_status(i915, events[i].config))
-			continue;
-
-		str = kstrdup(events[i].name, GFP_KERNEL);
-		if (!str)
-			goto err;
+	for_each_gt(gt, i915, j) {
+		for (i = 0; i < ARRAY_SIZE(events); i++) {
+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+			char *str;
 
-		*attr_iter++ = &i915_iter->attr.attr;
-		i915_iter = add_i915_attr(i915_iter, str, events[i].config);
+			if (config_status(i915, config))
+				continue;
 
-		if (events[i].unit) {
-			str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
+			if (events[i].global || !HAS_EXTRA_GT_LIST(i915))
+				str = kstrdup(events[i].name, GFP_KERNEL);
+			else
+				str = kasprintf(GFP_KERNEL, "%s-gt%u",
+						events[i].name, j);
 			if (!str)
 				goto err;
 
-			*attr_iter++ = &pmu_iter->attr.attr;
-			pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
+			*attr_iter++ = &i915_iter->attr.attr;
+			i915_iter = add_i915_attr(i915_iter, str, config);
+
+			if (events[i].unit) {
+				if (events[i].global || !HAS_EXTRA_GT_LIST(i915))
+					str = kasprintf(GFP_KERNEL, "%s.unit",
+							events[i].name);
+				else
+					str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
+							events[i].name, j);
+				if (!str)
+					goto err;
+
+				*attr_iter++ = &pmu_iter->attr.attr;
+				pmu_iter = add_pmu_attr(pmu_iter, str,
+							events[i].unit);
+			}
 		}
 	}
 
-- 
2.36.1

