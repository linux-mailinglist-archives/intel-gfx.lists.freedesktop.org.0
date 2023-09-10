Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C59799C7C
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 05:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EE110E0A0;
	Sun, 10 Sep 2023 03:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0CF10E075;
 Sun, 10 Sep 2023 03:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694318329; x=1725854329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AefDBmB4tsmMpjWp05okuoGD+ZVs6gw0OKfYwGkno+k=;
 b=eSjF+TbxF2aozP9G5QFVpteTWaOR8Zla0thBWDd/v+SwymSOM5zCE/Bw
 rxDPK//I7TnBaEyx8TRFNzAXiPv55nymX30L2aVmqRZN4fNPBS9CaHbYh
 y9EQPCaaLP+eN40c4kS3g+75AdqiEXZ6aADbdgSK5M0HWKjDKP0sbmuMR
 eyW6LQU5bcRDBKxGr/njzXUrKkFtMxgfzTeHmNCU5ZNnOXzD2cLMuN0kT
 Edn019V9h58O8IJDGkeACCDMuk3rZOyJzBy3aiGR6oCRJvxA+kwGGIU5x
 cjJvHz/9tadvh9kZbf64ndRnS1QiBz9ZbyOQtAzwtyQIL5OG/fq70+bp7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="381684306"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="381684306"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 20:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="736377118"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="736377118"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2023 20:58:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Sep 2023 20:58:46 -0700
Message-Id: <20230910035846.493766-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/gt: Timeout when waiting for
 idle in suspending
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
Cc: , Alan Previn <alan.previn.teres.alexis@intel.com>,
	dri-devel@lists.freedesktop.org,
	Rodrigo Vivi <rodrigo.vivi@intel.com>, intel.com@freedesktop.org,
	Mousumi Jana <mousumi.jana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When suspending, add a timeout when calling
intel_gt_pm_wait_for_idle else if we have a lost
G2H event that holds a wakeref (which would be
indicative of a bug elsewhere in the driver),
driver will at least complete the suspend-resume
cycle, (albeit not hitting all the targets for
low power hw counters), instead of hanging in the kernel.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Tested-by: Mousumi Jana <mousumi.jana@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  7 ++++++-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  7 ++++++-
 drivers/gpu/drm/i915/intel_wakeref.c      | 14 ++++++++++----
 drivers/gpu/drm/i915/intel_wakeref.h      |  6 ++++--
 5 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dfb69fc977a0..4811f3be0332 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -688,7 +688,7 @@ void intel_engines_release(struct intel_gt *gt)
 		if (!engine->release)
 			continue;
 
-		intel_wakeref_wait_for_idle(&engine->wakeref);
+		intel_wakeref_wait_for_idle(&engine->wakeref, 0);
 		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
 
 		engine->release(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 5a942af0a14e..ca46aee72573 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -289,6 +289,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 static void wait_for_suspend(struct intel_gt *gt)
 {
+	int timeout_ms = CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT ? : 10000;
+
 	if (!intel_gt_pm_is_awake(gt))
 		return;
 
@@ -301,7 +303,10 @@ static void wait_for_suspend(struct intel_gt *gt)
 		intel_gt_retire_requests(gt);
 	}
 
-	intel_gt_pm_wait_for_idle(gt);
+	/* we are suspending, so we shouldn't be waiting forever */
+	if (intel_gt_pm_wait_timeout_for_idle(gt, timeout_ms) == -ETIMEDOUT)
+		gt_warn(gt, "bailing from %s after %d milisec timeout\n",
+			__func__, timeout_ms);
 }
 
 void intel_gt_suspend_prepare(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 6c9a46452364..5358acc2b5b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -68,7 +68,12 @@ static inline void intel_gt_pm_might_put(struct intel_gt *gt)
 
 static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
 {
-	return intel_wakeref_wait_for_idle(&gt->wakeref);
+	return intel_wakeref_wait_for_idle(&gt->wakeref, 0);
+}
+
+static inline int intel_gt_pm_wait_timeout_for_idle(struct intel_gt *gt, int timeout_ms)
+{
+	return intel_wakeref_wait_for_idle(&gt->wakeref, timeout_ms);
 }
 
 void intel_gt_pm_init_early(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 718f2f1b6174..383a37521415 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -111,14 +111,20 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 			 "wakeref.work", &key->work, 0);
 }
 
-int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
+int intel_wakeref_wait_for_idle(struct intel_wakeref *wf, int timeout_ms)
 {
-	int err;
+	int err = 0;
 
 	might_sleep();
 
-	err = wait_var_event_killable(&wf->wakeref,
-				      !intel_wakeref_is_active(wf));
+	if (!timeout_ms)
+		err = wait_var_event_killable(&wf->wakeref,
+					      !intel_wakeref_is_active(wf));
+	else if (wait_var_event_timeout(&wf->wakeref,
+					!intel_wakeref_is_active(wf),
+					msecs_to_jiffies(timeout_ms)) < 1)
+		err = -ETIMEDOUT;
+
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index ec881b097368..302694a780d2 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -251,15 +251,17 @@ __intel_wakeref_defer_park(struct intel_wakeref *wf)
 /**
  * intel_wakeref_wait_for_idle: Wait until the wakeref is idle
  * @wf: the wakeref
+ * @timeout_ms: Timeout in ms, 0 means never timeout.
  *
  * Wait for the earlier asynchronous release of the wakeref. Note
  * this will wait for any third party as well, so make sure you only wait
  * when you have control over the wakeref and trust no one else is acquiring
  * it.
  *
- * Return: 0 on success, error code if killed.
+ * Returns 0 on success, -ETIMEDOUT upon a timeout, or the unlikely
+ * error propagation from wait_var_event_killable if timeout_ms is 0.
  */
-int intel_wakeref_wait_for_idle(struct intel_wakeref *wf);
+int intel_wakeref_wait_for_idle(struct intel_wakeref *wf, int timeout_ms);
 
 struct intel_wakeref_auto {
 	struct drm_i915_private *i915;
-- 
2.39.0

