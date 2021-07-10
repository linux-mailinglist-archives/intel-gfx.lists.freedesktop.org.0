Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCB33C2C76
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 03:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48A16EAC4;
	Sat, 10 Jul 2021 01:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34D66EAB5;
 Sat, 10 Jul 2021 01:23:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="207979478"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="207979478"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 18:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="411439949"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2021 18:23:50 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  9 Jul 2021 18:20:21 -0700
Message-Id: <20210710012026.19705-12-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/16] drm/i915/guc/slpc: Enable ARAT timer
 interrupt
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

This interrupt is enabled during RPS initialization, and
now needs to be done by slpc code. It allows ARAT timer
expiry interrupts to get forwarded to GuC.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c       |  8 ++++++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index d179ba14ece6..d32274cd1db7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -370,6 +370,20 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
 	return ret;
 }
 
+void intel_guc_pm_intrmsk_enable(struct intel_gt *gt)
+{
+	u32 pm_intrmsk_mbz = 0;
+
+	/* Allow GuC to receive ARAT timer expiry event.
+	 * This interrupt register is setup by RPS code
+	 * when host based Turbo is enabled.
+	 */
+	pm_intrmsk_mbz |= ARAT_EXPIRED_INTRMSK;
+
+	intel_uncore_rmw(gt->uncore,
+			   GEN6_PMINTRMSK, pm_intrmsk_mbz, 0);
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
@@ -417,6 +431,8 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 
 	DRM_INFO("SLPC state: %s\n", get_slpc_state(slpc));
 
+	intel_guc_pm_intrmsk_enable(&i915->gt);
+
 	if (slpc_read_task_state(slpc))
 		drm_err(&i915->drm, "Unable to read task state data");
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index cd12c5f19f4b..2af0c5eb8c9a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -10,6 +10,7 @@
 #include <linux/mutex.h>
 #include "intel_guc_slpc_fwif.h"
 
+struct intel_gt;
 struct drm_printer;
 
 struct intel_guc_slpc {
@@ -41,5 +42,6 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
+void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 7b6c767d3eb0..823f8d3d8df7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -655,6 +655,7 @@ void intel_uc_suspend(struct intel_uc *uc)
 static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 {
 	struct intel_guc *guc = &uc->guc;
+	struct intel_gt *gt = guc_to_gt(guc);
 	int err;
 
 	if (!intel_guc_is_fw_running(guc))
@@ -666,6 +667,13 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 	if (enable_communication)
 		guc_enable_communication(guc);
 
+	/* If we are only resuming GuC communication but not reloading
+	 * GuC, we need to ensure the ARAT timer interrupt is enabled
+	 * again. In case of GuC reload, it is enabled during slpc enable.
+	 */
+	if (enable_communication && intel_uc_uses_guc_slpc(uc))
+		intel_guc_pm_intrmsk_enable(gt);
+
 	err = intel_guc_resume(guc);
 	if (err) {
 		DRM_DEBUG_DRIVER("Failed to resume GuC, err=%d", err);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
