Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CF699AEEF
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F2910EB31;
	Fri, 11 Oct 2024 22:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NktBmcbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F8710E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687314; x=1760223314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mutcSKtA888TEHP2IQEy7CNsZbPqnLXOfTeQqEdl6w4=;
 b=NktBmcbvrSSiT86MP5nusVmlRgnrdU0Rkfbij4ZZfYpznY+GLL4FW1CG
 M0qxTkOQJVrDI4PP5ZTUwt/LNsbEwshp+3G3lve9Cfj+V/Bs4JxJ0462c
 67NT0UlzYutbprZDsWQ2wTFpQ4eC7ANS2dDV4dc640ijhjFMSJFnDQulS
 R/Y8CcWCqSv3zAscZ36o73Jn/qzPGQsTYfDOMH3SfbUnUQX1jKMV2xj4J
 FU4t2zBp06WPDKUsanNv1v0OwOu4kCeNlyjaaMw33TkguMipNVwA9sBBt
 cIlc7qxBX1f2LSn+HG6IYekXjdBXVLsU852yTe4NR64+JJQ2HlfuwQ+O4 w==;
X-CSE-ConnectionGUID: Ac8M9+aUSia/ANk2sycnWA==
X-CSE-MsgGUID: TDyKBbnVRBeFNcTZE2GNnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519760"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519760"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: Bak/NmrVR8awEN1n2G2Ftw==
X-CSE-MsgGUID: s9R9AxFaQBW9Y71OB7ihxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040428"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 8/8] drm/i915/pmu: Release open events when unregistering
Date: Fri, 11 Oct 2024 15:54:30 -0700
Message-ID: <20241011225430.1219345-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When unregistering the PMU, disable the active events. This
allows userspace to see the change and possibly react on it, like
reopening the fd.

With perf-stat, "<not counted>" starts to be printed:

	2.007597571        500,909,500 ns   i915_0000_03_00.0/rc6-residency/
	2.508569383                  0 ns   i915_0000_03_00.0/rc6-residency/
	3.009405012      <not counted> ns   i915_0000_03_00.0/rc6-residency/

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 35 ++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_pmu.h |  6 ++++++
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2f8004ade6d36..1466464c119df 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -515,6 +515,18 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	return HRTIMER_RESTART;
 }
 
+static void i915_pmu_event_destroy(struct perf_event *event)
+{
+	struct i915_pmu *pmu = event_to_pmu(event);
+	unsigned long idx;
+	struct perf_event *e;
+
+	xa_for_each(&pmu->active_events, idx, e)
+		if (e == event) {
+			xa_erase(&pmu->active_events, idx);
+			break;
+		}
+}
 
 static int
 engine_event_status(struct intel_engine_cs *engine,
@@ -539,7 +551,6 @@ static int
 config_status(struct drm_i915_private *i915, u64 config)
 {
 	struct intel_gt *gt = to_gt(i915);
-
 	unsigned int gt_id = config_gt_id(config);
 	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
 
@@ -591,6 +602,7 @@ static int i915_pmu_event_init(struct perf_event *event)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+	u32 event_id;
 	int ret;
 
 	if (!pmu->registered)
@@ -620,6 +632,13 @@ static int i915_pmu_event_init(struct perf_event *event)
 	if (ret)
 		return ret;
 
+	ret = xa_alloc(&pmu->active_events, &event_id, event,
+		       xa_limit_32b, GFP_KERNEL);
+	if (ret)
+		return ret;
+
+	event->destroy = i915_pmu_event_destroy;
+
 	return 0;
 }
 
@@ -1263,6 +1282,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	xa_init_flags(&pmu->active_events, XA_FLAGS_ALLOC);
 	pmu->timer.function = i915_sample;
 	pmu->cpuhp.cpu = -1;
 	init_rc6(pmu);
@@ -1331,6 +1351,17 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	drm_notice(&i915->drm, "Failed to register PMU!\n");
 }
 
+static void release_active_events(struct i915_pmu *pmu)
+{
+	struct perf_event *event;
+	unsigned long idx;
+
+	xa_for_each(&pmu->active_events, idx, event) {
+		xa_erase(&pmu->active_events, idx);
+		perf_event_disable(event);
+	}
+}
+
 void i915_pmu_unregister(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
@@ -1341,6 +1372,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	/* Disconnect the PMU callbacks */
 	pmu->registered = false;
 
+	release_active_events(pmu);
+
 	hrtimer_cancel(&pmu->timer);
 
 	i915_pmu_unregister_cpuhp_state(pmu);
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 3c1cf594954d9..dd4cac95d032b 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -10,6 +10,7 @@
 #include <linux/hrtimer.h>
 #include <linux/perf_event.h>
 #include <linux/spinlock_types.h>
+#include <linux/xarray.h>
 #include <uapi/drm/i915_drm.h>
 
 struct drm_i915_private;
@@ -152,6 +153,11 @@ struct i915_pmu {
 	 * @pmu_attr: Memory block holding device attributes.
 	 */
 	void *pmu_attr;
+
+	/**
+	 * @active_events: Events currently open by perf.
+	 */
+	struct xarray active_events;
 };
 
 #ifdef CONFIG_PERF_EVENTS
-- 
2.47.0

