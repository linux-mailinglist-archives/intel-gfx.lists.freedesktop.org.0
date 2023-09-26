Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C21CC7AE830
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D8C10E37B;
	Tue, 26 Sep 2023 08:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3AB10E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717475; x=1727253475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jjSVfIKOQAzkB3aQRUqRC5luhVvGxDgaafxWg+3E7p8=;
 b=ayYtkSYjXv7rVGIoRrW2zTbLIFyYBMQLaDJlY52hl++23HTK/oxkbqHH
 ieRNnYL/fC1sVBW9E4JbScZbDxE0O6j+/9g4TFn3bDJkALVu6XAbwTCQl
 2+RcayFwmRGOcc9OHROsQWG2S9kmazIsVhxjY1xWP/K4xfoo+iiVaij1s
 oQzvmaRJElgD9AS2X1FAIQZy4SkO5uYR6FrdxZAbRMMxdJkvFinhKMoSd
 79l/eZq+1ESWE/qh6jjogwbn14KNQoGYcIaBPoldBqg4//CxyPXt5lrs+
 X4JynjDGXgGHaR9zgeI+dfILDZLt0R0/zZGQMs9ooLaNXy2KIwFS7YlAK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419209"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419209"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623494"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623494"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:52 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:36 +0200
Message-ID: <20230926083742.14740-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: Lift runtime-pm acquire
 callbacks out of intel_wakeref.mutex
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
registered callbacks for the device. These callbacks
may pull in their own forest of locks, which we do not want to
conflate with the intel_wakeref.mutex. A second minor benefit to
reducing the coverage of the mutex, is that it will reduce
contention for frequent sleeps and wakes (such as when being used
for soft-rc6).

v2: remove usage of fetch_and_zero() and other improvements(Jani)

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.c | 52 +++++++++++++++-------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 718f2f1b6174..623a69089386 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -10,21 +10,12 @@
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
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
 	/*
 	 * Treat get/put as different subclasses, as we may need to run
 	 * the put callback from under the shrinker and do not want to
@@ -32,41 +23,52 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
 	 * upon acquiring the wakeref.
 	 */
 	mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
-	if (!atomic_read(&wf->count)) {
-		int err;
-
-		rpm_get(wf);
 
-		err = wf->ops->get(wf);
-		if (unlikely(err)) {
-			rpm_put(wf);
-			mutex_unlock(&wf->mutex);
-			return err;
+	if (!atomic_read(&wf->count)) {
+		INTEL_WAKEREF_BUG_ON(wf->wakeref);
+		wf->wakeref = wakeref;
+		wakeref = 0;
+
+		ret = wf->ops->get(wf);
+		if (ret) {
+			wakeref = xchg(&wf->wakeref, 0);
+			wake_up_var(&wf->wakeref);
+			goto unlock;
 		}
 
 		smp_mb__before_atomic(); /* release wf->count */
 	}
+
 	atomic_inc(&wf->count);
+	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
+
+unlock:
 	mutex_unlock(&wf->mutex);
+	if (unlikely(wakeref))
+		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
 
-	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
-	return 0;
+	return ret;
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

