Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9424C294E30
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 16:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083416EDA4;
	Wed, 21 Oct 2020 14:03:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44BD6EDA4
 for <Intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 14:03:27 +0000 (UTC)
IronPort-SDR: SRGp4RmNa2di5a/Ka7pdWI0q+4WoIxorxpO8+LyfOq2hihFH5Tk6MkYTvYnrgLRLkieVNTMAru
 txjScLtZvsaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="163879055"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="163879055"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:03:27 -0700
IronPort-SDR: 8GqtQ7k8pDAW5XhehuNrhcvRDMHcADs4XJw3yjDiVpzEMyYUzAgJU9WrrG2M6WobPnE+5xAe6a
 yA7esQIJftog==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="533539143"
Received: from pvagawan-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.56.28])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:03:26 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 15:03:19 +0100
Message-Id: <20201021140320.1159015-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/pmu: Handle PCI unbind
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Mark the device as closed and keep references to driver data alive to
allow for safe driver unbind with active PMU clients. Perf core does not
otherwise handle this case so we have to do it manually like this.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 39 +++++++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 69c0fa20eba1..51ed7d0efcdc 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -445,6 +445,8 @@ static void i915_pmu_event_destroy(struct perf_event *event)
 		container_of(event->pmu, typeof(*i915), pmu.base);
 
 	drm_WARN_ON(&i915->drm, event->parent);
+
+	drm_dev_put(&i915->drm);
 }
 
 static int
@@ -510,8 +512,12 @@ static int i915_pmu_event_init(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = &i915->pmu;
 	int ret;
 
+	if (pmu->closed)
+		return -ENODEV;
+
 	if (event->attr.type != event->pmu->type)
 		return -ENOENT;
 
@@ -536,8 +542,10 @@ static int i915_pmu_event_init(struct perf_event *event)
 	if (ret)
 		return ret;
 
-	if (!event->parent)
+	if (!event->parent) {
+		drm_dev_get(&i915->drm);
 		event->destroy = i915_pmu_event_destroy;
+	}
 
 	return 0;
 }
@@ -594,9 +602,16 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_event_read(struct perf_event *event)
 {
+	struct drm_i915_private *i915 =
+		container_of(event->pmu, typeof(*i915), pmu.base);
 	struct hw_perf_event *hwc = &event->hw;
+	struct i915_pmu *pmu = &i915->pmu;
 	u64 prev, new;
 
+	if (pmu->closed) {
+		event->hw.state = PERF_HES_STOPPED;
+		return;
+	}
 again:
 	prev = local64_read(&hwc->prev_count);
 	new = __i915_pmu_event_read(event);
@@ -724,6 +739,13 @@ static void i915_pmu_disable(struct perf_event *event)
 
 static void i915_pmu_event_start(struct perf_event *event, int flags)
 {
+	struct drm_i915_private *i915 =
+		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = &i915->pmu;
+
+	if (pmu->closed)
+		return;
+
 	i915_pmu_enable(event);
 	event->hw.state = 0;
 }
@@ -738,6 +760,13 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
 
 static int i915_pmu_event_add(struct perf_event *event, int flags)
 {
+	struct drm_i915_private *i915 =
+		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = &i915->pmu;
+
+	if (pmu->closed)
+		return -ENODEV;
+
 	if (flags & PERF_EF_START)
 		i915_pmu_event_start(event, flags);
 
@@ -1167,7 +1196,13 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	if (!pmu->base.event_init)
 		return;
 
-	drm_WARN_ON(&i915->drm, pmu->enable);
+	/*
+	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
+	 * ensures all currently executing ones will have exited before we
+	 * proceed with unregistration.
+	 */
+	pmu->closed = true;
+	synchronize_rcu();
 
 	hrtimer_cancel(&pmu->timer);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 941f0c14037c..59a0d19afb67 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -49,6 +49,10 @@ struct i915_pmu {
 	 * @base: PMU base.
 	 */
 	struct pmu base;
+	/**
+	 * @closed: i915 is unregistering.
+	 */
+	bool closed;
 	/**
 	 * @name: Name as registered with perf core.
 	 */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
