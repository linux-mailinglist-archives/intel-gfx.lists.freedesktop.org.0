Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C471B6CF851
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FDE10ECAD;
	Thu, 30 Mar 2023 00:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC2610EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136865; x=1711672865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CSfvlI0W8vv88LSEsjxCJpMW52kc8GUXo574i7RZjB8=;
 b=ksqQ6QWkWD5r1b7OFNzP7DlWTlUbwcYhZTwYxX6miT0sgUrJKifx37Te
 v1Q7qddKZFLffHzs81lfcgUmxF3RKNGbfrMGeDGKePzdkTeG9mfYjJcJC
 3mPDQZVWNdfTbcLVy5UjYlK6osJf3/Qp+MEamhCRKo3Ie+Sn9HlJW24gU
 dCY/ugJgwkaDXyRUp2YQC7KEC3fq/9AYWAlIFyVbnu8GlRIymmRUDwsnW
 LA13X8MExFKBjf1OpgCFaW2DR352l+MmL8eLcKCZQMSS3LkeNAR6HjYlL
 MfuTwCwe7ih+qD37fc9G50S5AfuGC8lcVxV94jXot/ZINibnIZaYCTz2z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310377"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310377"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668681"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668681"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:41:00 -0700
Message-Id: <20230330004103.1295413-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/pmu: Export counters from all tiles
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
---
 drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++-------
 1 file changed, 77 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5d1de98d86b4..2a5deabff088 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -548,8 +548,9 @@ config_status(struct drm_i915_private *i915, u64 config)
 	struct intel_gt *gt = to_gt(i915);
 
 	unsigned int gt_id = config_gt_id(config);
+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
 
-	if (gt_id)
+	if (gt_id > max_gt_id)
 		return -ENOENT;
 
 	switch (config_counter(config)) {
@@ -563,6 +564,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 			return -ENODEV;
 		break;
 	case I915_PMU_INTERRUPTS:
+		if (gt_id)
+			return -ENOENT;
 		break;
 	case I915_PMU_RC6_RESIDENCY:
 		if (!gt->rc6.supported)
@@ -932,9 +935,9 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
 	.attrs = i915_cpumask_attrs,
 };
 
-#define __event(__config, __name, __unit) \
+#define __event(__counter, __name, __unit) \
 { \
-	.config = (__config), \
+	.counter = (__counter), \
 	.name = (__name), \
 	.unit = (__unit), \
 }
@@ -975,15 +978,21 @@ create_event_attributes(struct i915_pmu *pmu)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
 	static const struct {
-		u64 config;
+		unsigned int counter;
 		const char *name;
 		const char *unit;
 	} events[] = {
-		__event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
-		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
-		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
-		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
-		__event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, "software-gt-awake-time", "ns"),
+		__event(0, "actual-frequency", "M"),
+		__event(1, "requested-frequency", "M"),
+		__event(3, "rc6-residency", "ns"),
+		__event(4, "software-gt-awake-time", "ns"),
+	};
+	static const struct {
+		unsigned int counter;
+		const char *name;
+		const char *unit;
+	} global_events[] = {
+		__event(2, "interrupts", NULL),
 	};
 	static const struct {
 		enum drm_i915_pmu_engine_sample sample;
@@ -998,14 +1007,29 @@ create_event_attributes(struct i915_pmu *pmu)
 	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
 	struct attribute **attr = NULL, **attr_iter;
 	struct intel_engine_cs *engine;
-	unsigned int i;
+	struct intel_gt *gt;
+	unsigned int i, j;
 
 	/* Count how many counters we will be exposing. */
-	for (i = 0; i < ARRAY_SIZE(events); i++) {
-		if (!config_status(i915, events[i].config))
+	/* per gt counters */
+	for_each_gt(gt, i915, j) {
+		for (i = 0; i < ARRAY_SIZE(events); i++) {
+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+
+			if (!config_status(i915, config))
+				count++;
+		}
+	}
+
+	/* global (per GPU) counters */
+	for (i = 0; i < ARRAY_SIZE(global_events); i++) {
+		u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
+
+		if (!config_status(i915, config))
 			count++;
 	}
 
+	/* per engine counters */
 	for_each_uabi_engine(engine, i915) {
 		for (i = 0; i < ARRAY_SIZE(engine_events); i++) {
 			if (!engine_event_status(engine,
@@ -1033,26 +1057,60 @@ create_event_attributes(struct i915_pmu *pmu)
 	attr_iter = attr;
 
 	/* Initialize supported non-engine counters. */
-	for (i = 0; i < ARRAY_SIZE(events); i++) {
+	/* per gt counters */
+	for_each_gt(gt, i915, j) {
+		for (i = 0; i < ARRAY_SIZE(events); i++) {
+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+			char *str;
+
+			if (config_status(i915, config))
+				continue;
+
+			str = kasprintf(GFP_KERNEL, "%s-gt%u",
+					events[i].name, j);
+			if (!str)
+				goto err;
+
+			*attr_iter++ = &i915_iter->attr.attr;
+			i915_iter = add_i915_attr(i915_iter, str, config);
+
+			if (events[i].unit) {
+				str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
+						events[i].name, j);
+				if (!str)
+					goto err;
+
+				*attr_iter++ = &pmu_iter->attr.attr;
+				pmu_iter = add_pmu_attr(pmu_iter, str,
+							events[i].unit);
+			}
+		}
+	}
+
+	/* global (per GPU) counters */
+	for (i = 0; i < ARRAY_SIZE(global_events); i++) {
+		u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
 		char *str;
 
-		if (config_status(i915, events[i].config))
+		if (config_status(i915, config))
 			continue;
 
-		str = kstrdup(events[i].name, GFP_KERNEL);
+		str = kstrdup(global_events[i].name, GFP_KERNEL);
 		if (!str)
 			goto err;
 
 		*attr_iter++ = &i915_iter->attr.attr;
-		i915_iter = add_i915_attr(i915_iter, str, events[i].config);
+		i915_iter = add_i915_attr(i915_iter, str, config);
 
-		if (events[i].unit) {
-			str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
+		if (global_events[i].unit) {
+			str = kasprintf(GFP_KERNEL, "%s.unit",
+					global_events[i].name);
 			if (!str)
 				goto err;
 
 			*attr_iter++ = &pmu_iter->attr.attr;
-			pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
+			pmu_iter = add_pmu_attr(pmu_iter, str,
+						global_events[i].unit);
 		}
 	}
 
-- 
2.36.1

