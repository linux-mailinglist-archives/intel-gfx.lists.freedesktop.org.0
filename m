Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8E73450FE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 21:42:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D5E89EB4;
	Mon, 22 Mar 2021 20:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED3189EB4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 20:42:27 +0000 (UTC)
IronPort-SDR: 4AC1zo4BJdTuTZdFNXxr8xLVaIUBNLqZ0f4ufJOuug+gq/vJ6OvqCyxFyD8V0x6jixbQ5I4CdV
 n/qLtK5gxYsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254342958"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254342958"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:42:26 -0700
IronPort-SDR: SY6ARGY6aXFCXbMKosa2nJNuQ6tMsZCQpuFMxQquZDRc3yrHXf380w8bN64T9J7MHaz5AcEVU/
 6qvMAQq5B+NA==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407978392"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:42:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 22:42:23 +0200
Message-Id: <20210322204223.919936-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the GT fence revocation runtime
 PM logic
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To optimize some task deferring it until runtime resume unless someone
holds a runtime PM reference (because in this case the task can be done
w/o the overhead of runtime resume), we have to use the runtime PM
get-if-active logic: If the runtime PM usage count is 0 (and so
get-if-in-use would return false) the runtime suspend handler is not
necessarily called yet (it could be just pending), so the device is not
necessarily powered down, and so the runtime resume handler is not
guaranteed to be called.

The fence revocation depends on the above deferral, so add a
get-if-active helper and use it during fence revocation.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c      | 15 +++++++++++++--
 drivers/gpu/drm/i915/intel_runtime_pm.h      |  5 +++++
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index e891552611d5a..f81bc7df83a38 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -298,7 +298,7 @@ void i915_vma_revoke_fence(struct i915_vma *vma)
 	WRITE_ONCE(fence->vma, NULL);
 	vma->fence = NULL;
 
-	with_intel_runtime_pm_if_in_use(fence_to_uncore(fence)->rpm, wakeref)
+	with_intel_runtime_pm_if_active(fence_to_uncore(fence)->rpm, wakeref)
 		fence_write(fence);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 4970ef0843dcd..404e99078cc49 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -425,7 +425,8 @@ intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm)
  * Returns: the wakeref cookie to pass to intel_runtime_pm_put(), evaluates
  * as True if the wakeref was acquired, or False otherwise.
  */
-intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm)
+static intel_wakeref_t __intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm,
+							bool ignore_usecount)
 {
 	if (IS_ENABLED(CONFIG_PM)) {
 		/*
@@ -434,7 +435,7 @@ intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm)
 		 * function, since the power state is undefined. This applies
 		 * atm to the late/early system suspend/resume handlers.
 		 */
-		if (pm_runtime_get_if_in_use(rpm->kdev) <= 0)
+		if (pm_runtime_get_if_active(rpm->kdev, ignore_usecount) <= 0)
 			return 0;
 	}
 
@@ -443,6 +444,16 @@ intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm)
 	return track_intel_runtime_pm_wakeref(rpm);
 }
 
+intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm)
+{
+	return __intel_runtime_pm_get_if_active(rpm, false);
+}
+
+intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
+{
+	return __intel_runtime_pm_get_if_active(rpm, true);
+}
+
 /**
  * intel_runtime_pm_get_noresume - grab a runtime pm reference
  * @rpm: the intel_runtime_pm structure
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index ae64ff14c6425..1e4ddd11c12bb 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -177,6 +177,7 @@ void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
 
 intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
+intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_raw(struct intel_runtime_pm *rpm);
 
@@ -188,6 +189,10 @@ intel_wakeref_t intel_runtime_pm_get_raw(struct intel_runtime_pm *rpm);
 	for ((wf) = intel_runtime_pm_get_if_in_use(rpm); (wf); \
 	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
 
+#define with_intel_runtime_pm_if_active(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get_if_active(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+
 void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
