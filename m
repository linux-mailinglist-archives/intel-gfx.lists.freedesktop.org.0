Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A673DBFA8
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70D16F496;
	Fri, 30 Jul 2021 20:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABFD6F493;
 Fri, 30 Jul 2021 20:22:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="276939755"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="276939755"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 13:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="499741666"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2021 13:22:04 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Fri, 30 Jul 2021 13:21:15 -0700
Message-Id: <20210730202119.23810-11-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915/guc/slpc: Enable ARAT timer
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This interrupt is enabled during RPS initialization, and
now needs to be done by SLPC code. It allows ARAT timer
expiry interrupts to get forwarded to GuC.

v2: Fix comment (Matthew Brost)
v3: checkpatch()

Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c       |  8 ++++++++
 3 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 4bf7c150330a..ebabc84d4e39 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -396,6 +396,21 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
 	return ret;
 }
 
+void intel_guc_pm_intrmsk_enable(struct intel_gt *gt)
+{
+	u32 pm_intrmsk_mbz = 0;
+
+	/*
+	 * Allow GuC to receive ARAT timer expiry event.
+	 * This interrupt register is setup by RPS code
+	 * when host based Turbo is enabled.
+	 */
+	pm_intrmsk_mbz |= ARAT_EXPIRED_INTRMSK;
+
+	intel_uncore_rmw(gt->uncore,
+			 GEN6_PMINTRMSK, pm_intrmsk_mbz, 0);
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
@@ -429,6 +444,8 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	if (unlikely(ret < 0))
 		return ret;
 
+	intel_guc_pm_intrmsk_enable(&i915->gt);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 3ffd4f2e3151..e45054d5b9b4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -9,6 +9,7 @@
 #include "intel_guc_submission.h"
 #include "intel_guc_slpc_types.h"
 
+struct intel_gt;
 struct drm_printer;
 
 static inline bool intel_guc_slpc_is_supported(struct intel_guc *guc)
@@ -36,5 +37,6 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
+void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 3e0cd1f05e3b..b104fb7607eb 100644
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
+	 * again. In case of GuC reload, it is enabled during SLPC enable.
+	 */
+	if (enable_communication && intel_uc_uses_guc_slpc(uc))
+		intel_guc_pm_intrmsk_enable(gt);
+
 	err = intel_guc_resume(guc);
 	if (err) {
 		DRM_DEBUG_DRIVER("Failed to resume GuC, err=%d", err);
-- 
2.25.0

