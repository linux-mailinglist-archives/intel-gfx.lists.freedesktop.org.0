Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AEA715CCB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 13:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C48610E144;
	Tue, 30 May 2023 11:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4730D10E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 11:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685445356; x=1716981356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gkOiY57pZWeVVO9KYAb2HVuN27k23YRuY/1xFR3KmrU=;
 b=Uh8olICYO3s8IlC9Elv7h8qhgNvfxR4clkwlltbp2W4puy+u2i7TnaIg
 1dy7fCbYeOC+3Dk8c6KSbGg2DoMd1cMx5sdo3f2F1+aPla82T86eLRsoS
 NGNfGROsMzo6N+rRPmN9NcuCo9AfcvFJl7KnNJDnwnt+HkHA5Gl4obou/
 eSWBpqYaJEYajYl4x7Otvc2itnqYr6foyKrC27U4K4J3CNb/qd8Sy0ZGD
 lnsvVV9MZ4fU52uMVyb/AwgnWks1rlUObZfWIhF3AwmvqQFGSgcsK4Ujn
 a3ZKuSak1ZKEjRyRypggTZbuKuKPSdKpBLczYwPSsjaB4j07Jv1SxFpue w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="383140414"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="383140414"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 04:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="700583126"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="700583126"
Received: from ashyti-mobl2.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.52.205])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 04:15:54 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 14:15:32 +0300
Message-Id: <20230530111534.871403-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111534.871403-1-luciano.coelho@intel.com>
References: <20230530111534.871403-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915: use pointer to i915 instead of
 rpm in wakeref
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently a pointer to an intel_runtime_pm structure is stored in the
wake reference structures so the runtime data can be accessed.  We can
save the entire device information (drm_i915_private) instead, since
we'll need to reference the new workqueue we'll add in subsequent
patches.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c |  4 +---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c   |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.c      | 20 +++++++++++---------
 drivers/gpu/drm/i915/intel_wakeref.h      | 12 ++++++------
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index ee531a5c142c..21af0ec52223 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -296,9 +296,7 @@ static const struct intel_wakeref_ops wf_ops = {
 
 void intel_engine_init__pm(struct intel_engine_cs *engine)
 {
-	struct intel_runtime_pm *rpm = engine->uncore->rpm;
-
-	intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
+	intel_wakeref_init(&engine->wakeref, engine->i915, &wf_ops);
 	intel_engine_init_heartbeat(engine);
 
 	intel_gsc_idle_msg_enable(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c2e69bafd02b..5a942af0a14e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -137,7 +137,7 @@ void intel_gt_pm_init_early(struct intel_gt *gt)
 	 * runtime_pm is per-device rather than per-tile, so this is still the
 	 * correct structure.
 	 */
-	intel_wakeref_init(&gt->wakeref, &gt->i915->runtime_pm, &wf_ops);
+	intel_wakeref_init(&gt->wakeref, gt->i915, &wf_ops);
 	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index cf5122299b6b..6d8e5e5c0cba 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -658,5 +658,5 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 	init_intel_runtime_pm_wakeref(rpm);
 	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
 	spin_lock_init(&rpm->lmem_userfault_lock);
-	intel_wakeref_auto_init(&rpm->userfault_wakeref, rpm);
+	intel_wakeref_auto_init(&rpm->userfault_wakeref, i915);
 }
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dfd87d082218..40aafe676017 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -8,17 +8,18 @@
 
 #include "intel_runtime_pm.h"
 #include "intel_wakeref.h"
+#include "i915_drv.h"
 
 static void rpm_get(struct intel_wakeref *wf)
 {
-	wf->wakeref = intel_runtime_pm_get(wf->rpm);
+	wf->wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
 }
 
 static void rpm_put(struct intel_wakeref *wf)
 {
 	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
 
-	intel_runtime_pm_put(wf->rpm, wakeref);
+	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
 	INTEL_WAKEREF_BUG_ON(!wakeref);
 }
 
@@ -94,11 +95,11 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
 }
 
 void __intel_wakeref_init(struct intel_wakeref *wf,
-			  struct intel_runtime_pm *rpm,
+			  struct drm_i915_private *i915,
 			  const struct intel_wakeref_ops *ops,
 			  struct intel_wakeref_lockclass *key)
 {
-	wf->rpm = rpm;
+	wf->i915 = i915;
 	wf->ops = ops;
 
 	__mutex_init(&wf->mutex, "wakeref.mutex", &key->mutex);
@@ -137,17 +138,17 @@ static void wakeref_auto_timeout(struct timer_list *t)
 	wakeref = fetch_and_zero(&wf->wakeref);
 	spin_unlock_irqrestore(&wf->lock, flags);
 
-	intel_runtime_pm_put(wf->rpm, wakeref);
+	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
 }
 
 void intel_wakeref_auto_init(struct intel_wakeref_auto *wf,
-			     struct intel_runtime_pm *rpm)
+			     struct drm_i915_private *i915)
 {
 	spin_lock_init(&wf->lock);
 	timer_setup(&wf->timer, wakeref_auto_timeout, 0);
 	refcount_set(&wf->count, 0);
 	wf->wakeref = 0;
-	wf->rpm = rpm;
+	wf->i915 = i915;
 }
 
 void intel_wakeref_auto(struct intel_wakeref_auto *wf, unsigned long timeout)
@@ -161,13 +162,14 @@ void intel_wakeref_auto(struct intel_wakeref_auto *wf, unsigned long timeout)
 	}
 
 	/* Our mission is that we only extend an already active wakeref */
-	assert_rpm_wakelock_held(wf->rpm);
+	assert_rpm_wakelock_held(&wf->i915->runtime_pm);
 
 	if (!refcount_inc_not_zero(&wf->count)) {
 		spin_lock_irqsave(&wf->lock, flags);
 		if (!refcount_inc_not_zero(&wf->count)) {
 			INTEL_WAKEREF_BUG_ON(wf->wakeref);
-			wf->wakeref = intel_runtime_pm_get_if_in_use(wf->rpm);
+			wf->wakeref =
+				intel_runtime_pm_get_if_in_use(&wf->i915->runtime_pm);
 			refcount_set(&wf->count, 1);
 		}
 		spin_unlock_irqrestore(&wf->lock, flags);
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 0b6b4852ab23..ec881b097368 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -39,7 +39,7 @@ struct intel_wakeref {
 
 	intel_wakeref_t wakeref;
 
-	struct intel_runtime_pm *rpm;
+	struct drm_i915_private *i915;
 	const struct intel_wakeref_ops *ops;
 
 	struct delayed_work work;
@@ -51,13 +51,13 @@ struct intel_wakeref_lockclass {
 };
 
 void __intel_wakeref_init(struct intel_wakeref *wf,
-			  struct intel_runtime_pm *rpm,
+			  struct drm_i915_private *i915,
 			  const struct intel_wakeref_ops *ops,
 			  struct intel_wakeref_lockclass *key);
-#define intel_wakeref_init(wf, rpm, ops) do {				\
+#define intel_wakeref_init(wf, i915, ops) do {				\
 	static struct intel_wakeref_lockclass __key;			\
 									\
-	__intel_wakeref_init((wf), (rpm), (ops), &__key);		\
+	__intel_wakeref_init((wf), (i915), (ops), &__key);		\
 } while (0)
 
 int __intel_wakeref_get_first(struct intel_wakeref *wf);
@@ -262,7 +262,7 @@ __intel_wakeref_defer_park(struct intel_wakeref *wf)
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf);
 
 struct intel_wakeref_auto {
-	struct intel_runtime_pm *rpm;
+	struct drm_i915_private *i915;
 	struct timer_list timer;
 	intel_wakeref_t wakeref;
 	spinlock_t lock;
@@ -287,7 +287,7 @@ struct intel_wakeref_auto {
 void intel_wakeref_auto(struct intel_wakeref_auto *wf, unsigned long timeout);
 
 void intel_wakeref_auto_init(struct intel_wakeref_auto *wf,
-			     struct intel_runtime_pm *rpm);
+			     struct drm_i915_private *i915);
 void intel_wakeref_auto_fini(struct intel_wakeref_auto *wf);
 
 #endif /* INTEL_WAKEREF_H */
-- 
2.39.2

