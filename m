Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B978C7D5020
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2363389D7F;
	Tue, 24 Oct 2023 12:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5D310E380
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151426; x=1729687426;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Wc3X9mYwAqLzpngJvGeGhL8Mcs5SpFddc0e4SZjMZK0=;
 b=CLyUTjVne+DdfDwfDY656JLa6dg85dGHp0iPJy3SGtBurmQKf6rAr9U5
 qZXLxtVSZktlI7aMG621glRkRLF8VTSx8r+QKHZ3rjAB/thGlDCyTR5z3
 EIt0DCXwTR0m11UL5hEYp8Gk1onHYEvy0wJt0Q5ktxHhShuolPcYI32Tw
 B7ZXq3YLWbcaQRAD97hdk4Kj3/GtLX9nKwl9cn3s5uJd2JhiHNgrFR1aa
 4+mErHLz8Ye3wpX+fJOelt0x+m9SUXEBi7UfNV8EM2ZrxC5dlExfuAufm
 98eIapnJCfQeJmh5ALEQPTe7y2d6w1CGdPNUkzeCRdARffEThGmlkZKlh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="366391208"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="366391208"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="932023345"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="932023345"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:43:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:43:40 +0300
Message-Id: <20231024124340.566626-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023150256.438331-2-jani.nikula@intel.com>
References: <20231023150256.438331-2-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/pmu: add perf_event_to_pmu() helper
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

It's tedious to duplicate the container_of() everywhere. Add a helper.

Also do the logical steps of first getting from struct perf_event to
struct i915_pmu, and then from struct i915_pmu to struct
drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
places even need the i915 pointer.

v2: s/event_to_pmu/perf_event_to_pmu/ (Andi)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index dcae2fcd8d36..6ffe7b606e7c 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -31,6 +31,11 @@
 static cpumask_t i915_pmu_cpumask;
 static unsigned int i915_pmu_target_cpu = -1;
 
+static struct i915_pmu *perf_event_to_pmu(struct perf_event *event)
+{
+	return container_of(event->pmu, struct i915_pmu, base);
+}
+
 static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
 {
 	return container_of(pmu, struct drm_i915_private, pmu);
@@ -510,8 +515,8 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 
 static void i915_pmu_event_destroy(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 
 	drm_WARN_ON(&i915->drm, event->parent);
 
@@ -577,8 +582,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 
 static int engine_event_init(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	struct intel_engine_cs *engine;
 
 	engine = intel_engine_lookup_user(i915, engine_event_class(event),
@@ -591,9 +596,8 @@ static int engine_event_init(struct perf_event *event)
 
 static int i915_pmu_event_init(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	int ret;
 
 	if (pmu->closed)
@@ -633,9 +637,8 @@ static int i915_pmu_event_init(struct perf_event *event)
 
 static u64 __i915_pmu_event_read(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	u64 val = 0;
 
 	if (is_engine_event(event)) {
@@ -691,10 +694,8 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_event_read(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
 	struct hw_perf_event *hwc = &event->hw;
-	struct i915_pmu *pmu = &i915->pmu;
 	u64 prev, new;
 
 	if (pmu->closed) {
@@ -712,10 +713,9 @@ static void i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_enable(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	const unsigned int bit = event_bit(event);
-	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 
 	if (bit == -1)
@@ -776,10 +776,9 @@ static void i915_pmu_enable(struct perf_event *event)
 
 static void i915_pmu_disable(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	const unsigned int bit = event_bit(event);
-	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 
 	if (bit == -1)
@@ -823,9 +822,7 @@ static void i915_pmu_disable(struct perf_event *event)
 
 static void i915_pmu_event_start(struct perf_event *event, int flags)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
 
 	if (pmu->closed)
 		return;
@@ -844,9 +841,7 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
 
 static int i915_pmu_event_add(struct perf_event *event, int flags)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = perf_event_to_pmu(event);
 
 	if (pmu->closed)
 		return -ENODEV;
-- 
2.39.2

