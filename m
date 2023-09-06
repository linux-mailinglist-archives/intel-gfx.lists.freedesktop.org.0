Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B02F5793B4B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 13:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D6310E3B0;
	Wed,  6 Sep 2023 11:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FDE10E3B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 11:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693999893; x=1725535893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=URQ6i64gaip9RfBXvFLnzGv10KPD9vc7uGfauWeiMks=;
 b=auioT62Xt86Z5Zaw/lewDhXZsoeVyuRAleD5bCx6fG2vgqQZ46Yd7DAo
 lwYFT9Mc9zpX7asr8Rm3wdghOuxTyuQ0TQRXevIxIv5czq6QIcux68TPo
 54YDw7HkHgLGY+t8bgO8HD+34J9YcgSKjYl6tVkxaVWKZ0dSoab0yV2nb
 eT+/CnMlTtOimuKSyC1XFp9inUwOIyAiYBUBduiCYViPDd1zWWZrHfcH4
 0KGcVvbFh0sx/qeqP/2DAuINzcpgeqsGmKZg6hjX3iy1ur1ucVjc/VB+e
 MgCt5wl7im8TNQnLCN4+8aMZwbnwFa4dsSbjQnifY0NN+cZNdagmH7qE4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357353587"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="357353587"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="865109429"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="865109429"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:30 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 13:31:17 +0200
Message-ID: <20230906113121.30472-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Lift runtime-pm acquire callbacks
 out of intel_wakeref.mutex
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, matthew.d.roper@intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

When runtime pm is first woken, it will synchronously call the
registered callbacks for the device and bug. These callback
may pull in their own forest of locks, which we do not want to
conflate with the intel_wakeref.mutex. A second minor beneft to
reducing the coverage of the mutex, is that it will reduce
contention for frequent sleeps and wakes (such as when being used
for soft-rc6).

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.c | 43 ++++++++++++++--------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 718f2f1b6174..af7b4cb5b4d7 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -10,21 +10,11 @@
 #include "intel_wakeref.h"
 #include "i915_drv.h"
 
-static void rpm_get(struct intel_wakeref *wf)
-{
-	wf->wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
-}
-
-static void rpm_put(struct intel_wakeref *wf)
-{
-	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
-
-	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
-	INTEL_WAKEREF_BUG_ON(!wakeref);
-}
-
 int __intel_wakeref_get_first(struct intel_wakeref *wf)
 {
+	intel_wakeref_t wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
+	int err = 0;
+
 	/*
 	 * Treat get/put as different subclasses, as we may need to run
 	 * the put callback from under the shrinker and do not want to
@@ -32,41 +22,50 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
 	 * upon acquiring the wakeref.
 	 */
 	mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
-	if (!atomic_read(&wf->count)) {
-		int err;
 
-		rpm_get(wf);
+	if (likely(!atomic_read(&wf->count))) {
+		INTEL_WAKEREF_BUG_ON(wf->wakeref);
+		wf->wakeref = fetch_and_zero(&wakeref);
 
 		err = wf->ops->get(wf);
 		if (unlikely(err)) {
-			rpm_put(wf);
-			mutex_unlock(&wf->mutex);
-			return err;
+			wakeref = xchg(&wf->wakeref, 0);
+			wake_up_var(&wf->wakeref);
+			goto unlock;
 		}
 
 		smp_mb__before_atomic(); /* release wf->count */
 	}
 	atomic_inc(&wf->count);
+	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
+
+unlock:
 	mutex_unlock(&wf->mutex);
+	if (unlikely(wakeref))
+		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
 
-	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
-	return 0;
+	return err;
 }
 
 static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
 {
+	intel_wakeref_t wakeref = 0;
+
 	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
 	if (unlikely(!atomic_dec_and_test(&wf->count)))
 		goto unlock;
 
 	/* ops->put() must reschedule its own release on error/deferral */
 	if (likely(!wf->ops->put(wf))) {
-		rpm_put(wf);
+		INTEL_WAKEREF_BUG_ON(!wf->wakeref);
+		wakeref = xchg(&wf->wakeref, 0);
 		wake_up_var(&wf->wakeref);
 	}
 
 unlock:
 	mutex_unlock(&wf->mutex);
+	if (wakeref)
+		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
 }
 
 void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
-- 
2.41.0

