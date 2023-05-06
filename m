Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B486F8D4F
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 02:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F7610E15B;
	Sat,  6 May 2023 00:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCD310E0EB
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 May 2023 00:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683334697; x=1714870697;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4+vr8zbMzYqL5heY0bkNdlkDubypy+O6D4wD0+5OJhI=;
 b=LnwUDtv8KIMuB5CysWHt4fB/lYHnuGEE3tod/v1X4YsGELNR+ZE9Eb9/
 w560y1WT2gb/tUJCjrpAdHtOK994ppM825y8ir+K3QhT2aWk9QDUAInjW
 6NdjtHsPawWMebynscNAJWsdJ+sOZaaDVYuN1v5NjZhUO2WxGp/CTgr0r
 QVfYDsQKLA4UfRfYLQCvp+i7WtrRpSyfNUxgRGjRTbfIExwVh9irZ6tOi
 6cSdwQegBXkWTzGOGqh2RKd5P/YU3xN64OznDLpWMLZbXbEQnq6Lx27u2
 /0DyZVthuBSDvFsWc1GoVusJeQKxD+4SExiW4z0QfAR0QY/6nBu5+MP50 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="377408317"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="377408317"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="767326042"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="767326042"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri,  5 May 2023 17:58:16 -0700
Message-Id: <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all tiles
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
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 87 ++++++++++++++++++++++-----------
 1 file changed, 59 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 12b2f3169abf..284e5c5b97bb 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
 	struct intel_gt *gt = to_gt(i915);
 
 	unsigned int gt_id = config_gt_id(config);
+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
 
-	if (gt_id)
+	if (gt_id > max_gt_id)
 		return -ENOENT;
 
 	switch (config_counter(config)) {
@@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 			return -ENODEV;
 		break;
 	case I915_PMU_INTERRUPTS:
+		if (gt_id)
+			return -ENOENT;
 		break;
 	case I915_PMU_RC6_RESIDENCY:
 		if (!gt->rc6.supported)
@@ -930,11 +933,20 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
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
@@ -973,15 +985,16 @@ create_event_attributes(struct i915_pmu *pmu)
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
@@ -996,12 +1009,17 @@ create_event_attributes(struct i915_pmu *pmu)
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
@@ -1031,26 +1049,39 @@ create_event_attributes(struct i915_pmu *pmu)
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

