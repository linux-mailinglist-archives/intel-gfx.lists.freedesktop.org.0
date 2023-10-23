Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD1B7D3A3E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 17:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5292E10E212;
	Mon, 23 Oct 2023 15:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F7F10E20F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 15:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698073399; x=1729609399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7uiF4Aj1qdOPSpgWARux/wTwSNKoxTHFtAw9tQ37agI=;
 b=aLCqVcr0iwJIXdSJhqGH3Uaj9vIFMi9UnudgXFq0yEJ+PqXacMdT3Zry
 39XlwWaCrY/a433K7Q1+cdnBI/id0ct3kKQZ0kPwA5mYWHYM0OALdlcz+
 13LSb+xDHxtVmZS82rG5CwwISHzyu+TDBf79IIYhFjBg8r/PdfC+AFf0F
 0Ln4OXXgPZPTVrSuXZ2EArjsQ9AQNXfy2LGKbvzzdEdaPa9I4tRE71JWQ
 aRe+G3uVgTw11myPck5k/Sn6XxOYKeGFC2/8QX1a0rpzmuu20ypBHuLOK
 ltJSq1xcw9SixbV5gNj8vvE6HdsRcj7frFjvF3BoHidTG5xtffJBMhB8d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="417990979"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="417990979"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="707979169"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="707979169"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 18:02:55 +0300
Message-Id: <20231023150256.438331-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023150256.438331-1-jani.nikula@intel.com>
References: <20231023150256.438331-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's tedious to duplicate the container_of() everywhere. Add a helper.

Also do the logical steps of first getting from struct perf_event to
struct i915_pmu, and then from struct i915_pmu to struct
drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
places even need the i915 pointer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index dcae2fcd8d36..d45b40ec6d47 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -31,6 +31,11 @@
 static cpumask_t i915_pmu_cpumask;
 static unsigned int i915_pmu_target_cpu = -1;
 
+static struct i915_pmu *event_to_pmu(struct perf_event *event)
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
+	struct i915_pmu *pmu = event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 
 	drm_WARN_ON(&i915->drm, event->parent);
 
@@ -577,8 +582,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 
 static int engine_event_init(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	struct intel_engine_cs *engine;
 
 	engine = intel_engine_lookup_user(i915, engine_event_class(event),
@@ -591,9 +596,8 @@ static int engine_event_init(struct perf_event *event)
 
 static int i915_pmu_event_init(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	int ret;
 
 	if (pmu->closed)
@@ -633,9 +637,8 @@ static int i915_pmu_event_init(struct perf_event *event)
 
 static u64 __i915_pmu_event_read(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = event_to_pmu(event);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	u64 val = 0;
 
 	if (is_engine_event(event)) {
@@ -691,10 +694,8 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_event_read(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = event_to_pmu(event);
 	struct hw_perf_event *hwc = &event->hw;
-	struct i915_pmu *pmu = &i915->pmu;
 	u64 prev, new;
 
 	if (pmu->closed) {
@@ -712,10 +713,9 @@ static void i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_enable(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = event_to_pmu(event);
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
+	struct i915_pmu *pmu = event_to_pmu(event);
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
+	struct i915_pmu *pmu = event_to_pmu(event);
 
 	if (pmu->closed)
 		return;
@@ -844,9 +841,7 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
 
 static int i915_pmu_event_add(struct perf_event *event, int flags)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = event_to_pmu(event);
 
 	if (pmu->closed)
 		return -ENODEV;
-- 
2.39.2

