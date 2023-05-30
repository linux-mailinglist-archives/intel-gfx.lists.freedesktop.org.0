Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ED3716712
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 17:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA3C10E3AD;
	Tue, 30 May 2023 15:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43D210E3AA;
 Tue, 30 May 2023 15:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685460609; x=1716996609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Setc07dpGjN2u7JRHx6nN+aLXkiSEaSPbIyq3X41En8=;
 b=WiLqjgedJjF82GRWgvtcX+cClcpTPNTCX43GxNap00oDlWhkavcJoCZs
 6j/fwEPK3hoyjnDMaDgMXaln5jXhPO/sCqEIQtVOIl66ZuAARWI+v3tZX
 pa5pwRUv+tYSIEwRnTZoquNZfcZj1rYpwN5YqvXh/NgMB+i6qG87sr+ya
 MYSg0I7EFYtlnuqcch+NiPM1CG3ZeKEhW3TDNy1F6xlEKwZ25JD/ywiAJ
 9XEZty5/ZWXAK14I8z6mATLi27zgfs2/4K9nY8R3CacOvNBABRA2N9pus
 /BkNxB0EgO+D01+aDGuB8SSo25BYCHyOnEgduUjLs1azA5HGoZGVDfMDN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="354962297"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="354962297"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:30:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="739556327"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="739556327"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:30:07 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 08:29:58 -0700
Message-Id: <20230530152958.1384061-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230527005242.1346093-5-daniele.ceraolospurio@intel.com>
References: <20230527005242.1346093-5-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/huc: differentiate the 2 steps of
 the MTL HuC auth flow
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before we add the second step of the MTL HuC auth (via GSC), we need to
have the ability to differentiate between them. To do so, the huc
authentication check is duplicated for GuC and GSC auth, with meu
binaries being considered fully authenticated only after the GSC auth
step.

To report the difference between the 2 auth steps, a new case is added
to the HuC getparam. This way, the clear media driver can start
submitting before full auth, as partial auth is enough for those
workloads.

v2: fix authentication status check for DG2

v3: add a better comment at the top of the HuC file to explain the
    different approaches to load and auth (John)

v4: update call to intel_huc_is_authenticated in the pxp code to check
for GSC authentication

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com> #v2
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c     | 111 ++++++++++++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_huc.h     |  16 ++-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c  |   4 +-
 drivers/gpu/drm/i915/i915_reg.h            |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c |   2 +-
 include/uapi/drm/i915_drm.h                |   3 +-
 6 files changed, 104 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 37c6a8ca5c71..ab5246ae3979 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -10,6 +10,7 @@
 #include "intel_huc.h"
 #include "intel_huc_print.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 
 #include <linux/device/bus.h>
 #include <linux/mei_aux.h>
@@ -22,15 +23,23 @@
  * capabilities by adding HuC specific commands to batch buffers.
  *
  * The kernel driver is only responsible for loading the HuC firmware and
- * triggering its security authentication, which is performed by the GuC on
- * older platforms and by the GSC on newer ones. For the GuC to correctly
- * perform the authentication, the HuC binary must be loaded before the GuC one.
+ * triggering its security authentication. This is done differently depending
+ * on the platform:
+ * - older platforms (from Gen9 to most Gen12s): the load is performed via DMA
+ *   and the authentication via GuC
+ * - DG2: load and authentication are both performed via GSC.
+ * - MTL and newer platforms: the load is performed via DMA (same as with
+ *   not-DG2 older platforms), while the authentication is done in 2-steps,
+ *   a first auth for clear-media workloads via GuC and a second one for all
+ *   workloads via GSC.
+ * On platforms where the GuC does the authentication, to correctly do so the
+ * HuC binary must be loaded before the GuC one.
  * Loading the HuC is optional; however, not using the HuC might negatively
  * impact power usage and/or performance of media workloads, depending on the
  * use-cases.
  * HuC must be reloaded on events that cause the WOPCM to lose its contents
- * (S3/S4, FLR); GuC-authenticated HuC must also be reloaded on GuC/GT reset,
- * while GSC-managed HuC will survive that.
+ * (S3/S4, FLR); on older platforms the HuC must also be reloaded on GuC/GT
+ * reset, while on newer ones it will survive that.
  *
  * See https://github.com/intel/media-driver for the latest details on HuC
  * functionality.
@@ -106,7 +115,7 @@ static enum hrtimer_restart huc_delayed_load_timer_callback(struct hrtimer *hrti
 {
 	struct intel_huc *huc = container_of(hrtimer, struct intel_huc, delayed_load.timer);
 
-	if (!intel_huc_is_authenticated(huc)) {
+	if (!intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC)) {
 		if (huc->delayed_load.status == INTEL_HUC_WAITING_ON_GSC)
 			huc_notice(huc, "timed out waiting for MEI GSC\n");
 		else if (huc->delayed_load.status == INTEL_HUC_WAITING_ON_PXP)
@@ -124,7 +133,7 @@ static void huc_delayed_load_start(struct intel_huc *huc)
 {
 	ktime_t delay;
 
-	GEM_BUG_ON(intel_huc_is_authenticated(huc));
+	GEM_BUG_ON(intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC));
 
 	/*
 	 * On resume we don't have to wait for MEI-GSC to be re-probed, but we
@@ -284,13 +293,23 @@ void intel_huc_init_early(struct intel_huc *huc)
 	}
 
 	if (GRAPHICS_VER(i915) >= 11) {
-		huc->status.reg = GEN11_HUC_KERNEL_LOAD_INFO;
-		huc->status.mask = HUC_LOAD_SUCCESSFUL;
-		huc->status.value = HUC_LOAD_SUCCESSFUL;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].reg = GEN11_HUC_KERNEL_LOAD_INFO;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].mask = HUC_LOAD_SUCCESSFUL;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].value = HUC_LOAD_SUCCESSFUL;
 	} else {
-		huc->status.reg = HUC_STATUS2;
-		huc->status.mask = HUC_FW_VERIFIED;
-		huc->status.value = HUC_FW_VERIFIED;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].reg = HUC_STATUS2;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].mask = HUC_FW_VERIFIED;
+		huc->status[INTEL_HUC_AUTH_BY_GUC].value = HUC_FW_VERIFIED;
+	}
+
+	if (IS_DG2(i915)) {
+		huc->status[INTEL_HUC_AUTH_BY_GSC].reg = GEN11_HUC_KERNEL_LOAD_INFO;
+		huc->status[INTEL_HUC_AUTH_BY_GSC].mask = HUC_LOAD_SUCCESSFUL;
+		huc->status[INTEL_HUC_AUTH_BY_GSC].value = HUC_LOAD_SUCCESSFUL;
+	} else {
+		huc->status[INTEL_HUC_AUTH_BY_GSC].reg = HECI_FWSTS5(MTL_GSC_HECI1_BASE);
+		huc->status[INTEL_HUC_AUTH_BY_GSC].mask = HECI_FWSTS5_HUC_AUTH_DONE;
+		huc->status[INTEL_HUC_AUTH_BY_GSC].value = HECI_FWSTS5_HUC_AUTH_DONE;
 	}
 }
 
@@ -381,28 +400,38 @@ void intel_huc_suspend(struct intel_huc *huc)
 	delayed_huc_load_complete(huc);
 }
 
-int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
+static const char *auth_mode_string(struct intel_huc *huc,
+				    enum intel_huc_authentication_type type)
+{
+	bool partial = huc->fw.has_gsc_headers && type == INTEL_HUC_AUTH_BY_GUC;
+
+	return partial ? "clear media" : "all workloads";
+}
+
+int intel_huc_wait_for_auth_complete(struct intel_huc *huc,
+				     enum intel_huc_authentication_type type)
 {
 	struct intel_gt *gt = huc_to_gt(huc);
 	int ret;
 
 	ret = __intel_wait_for_register(gt->uncore,
-					huc->status.reg,
-					huc->status.mask,
-					huc->status.value,
+					huc->status[type].reg,
+					huc->status[type].mask,
+					huc->status[type].value,
 					2, 50, NULL);
 
 	/* mark the load process as complete even if the wait failed */
 	delayed_huc_load_complete(huc);
 
 	if (ret) {
-		huc_err(huc, "firmware not verified %pe\n", ERR_PTR(ret));
+		huc_err(huc, "firmware not verified for %s: %pe\n",
+			auth_mode_string(huc, type), ERR_PTR(ret));
 		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
 		return ret;
 	}
 
 	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
-	huc_info(huc, "authenticated!\n");
+	huc_info(huc, "authenticated for %s!\n", auth_mode_string(huc, type));
 	return 0;
 }
 
@@ -442,7 +471,7 @@ int intel_huc_auth(struct intel_huc *huc)
 	}
 
 	/* Check authentication status, it should be done by now */
-	ret = intel_huc_wait_for_auth_complete(huc);
+	ret = intel_huc_wait_for_auth_complete(huc, INTEL_HUC_AUTH_BY_GUC);
 	if (ret)
 		goto fail;
 
@@ -453,16 +482,29 @@ int intel_huc_auth(struct intel_huc *huc)
 	return ret;
 }
 
-bool intel_huc_is_authenticated(struct intel_huc *huc)
+bool intel_huc_is_authenticated(struct intel_huc *huc,
+				enum intel_huc_authentication_type type)
 {
 	struct intel_gt *gt = huc_to_gt(huc);
 	intel_wakeref_t wakeref;
 	u32 status = 0;
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		status = intel_uncore_read(gt->uncore, huc->status.reg);
+		status = intel_uncore_read(gt->uncore, huc->status[type].reg);
 
-	return (status & huc->status.mask) == huc->status.value;
+	return (status & huc->status[type].mask) == huc->status[type].value;
+}
+
+static bool huc_is_fully_authenticated(struct intel_huc *huc)
+{
+	struct intel_uc_fw *huc_fw = &huc->fw;
+
+	if (!huc_fw->has_gsc_headers)
+		return intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GUC);
+	else if (intel_huc_is_loaded_by_gsc(huc) || HAS_ENGINE(huc_to_gt(huc), GSC0))
+		return intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC);
+	else
+		return false;
 }
 
 /**
@@ -477,7 +519,9 @@ bool intel_huc_is_authenticated(struct intel_huc *huc)
  */
 int intel_huc_check_status(struct intel_huc *huc)
 {
-	switch (__intel_uc_fw_status(&huc->fw)) {
+	struct intel_uc_fw *huc_fw = &huc->fw;
+
+	switch (__intel_uc_fw_status(huc_fw)) {
 	case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
 		return -ENODEV;
 	case INTEL_UC_FIRMWARE_DISABLED:
@@ -494,7 +538,17 @@ int intel_huc_check_status(struct intel_huc *huc)
 		break;
 	}
 
-	return intel_huc_is_authenticated(huc);
+	/*
+	 * meu binaries loaded by GuC are first partially authenticated by GuC
+	 * and then fully authenticated by GSC
+	 */
+	if (huc_is_fully_authenticated(huc))
+		return 1; /* full auth */
+	else if (huc_fw->has_gsc_headers && !intel_huc_is_loaded_by_gsc(huc) &&
+		 intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GUC))
+		return 2; /* clear media only */
+	else
+		return 0;
 }
 
 static bool huc_has_delayed_load(struct intel_huc *huc)
@@ -508,7 +562,10 @@ void intel_huc_update_auth_status(struct intel_huc *huc)
 	if (!intel_uc_fw_is_loadable(&huc->fw))
 		return;
 
-	if (intel_huc_is_authenticated(huc))
+	if (!huc->fw.has_gsc_headers)
+		return;
+
+	if (huc_is_fully_authenticated(huc))
 		intel_uc_fw_change_status(&huc->fw,
 					  INTEL_UC_FIRMWARE_RUNNING);
 	else if (huc_has_delayed_load(huc))
@@ -541,5 +598,5 @@ void intel_huc_load_status(struct intel_huc *huc, struct drm_printer *p)
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 		drm_printf(p, "HuC status: 0x%08x\n",
-			   intel_uncore_read(gt->uncore, huc->status.reg));
+			   intel_uncore_read(gt->uncore, huc->status[INTEL_HUC_AUTH_BY_GUC].reg));
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index 112f0dce4702..3f6aa7c37abc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -22,6 +22,12 @@ enum intel_huc_delayed_load_status {
 	INTEL_HUC_DELAYED_LOAD_ERROR,
 };
 
+enum intel_huc_authentication_type {
+	INTEL_HUC_AUTH_BY_GUC = 0,
+	INTEL_HUC_AUTH_BY_GSC,
+	INTEL_HUC_AUTH_MAX_MODES
+};
+
 struct intel_huc {
 	/* Generic uC firmware management */
 	struct intel_uc_fw fw;
@@ -31,7 +37,7 @@ struct intel_huc {
 		i915_reg_t reg;
 		u32 mask;
 		u32 value;
-	} status;
+	} status[INTEL_HUC_AUTH_MAX_MODES];
 
 	struct {
 		struct i915_sw_fence fence;
@@ -49,10 +55,12 @@ int intel_huc_init(struct intel_huc *huc);
 void intel_huc_fini(struct intel_huc *huc);
 void intel_huc_suspend(struct intel_huc *huc);
 int intel_huc_auth(struct intel_huc *huc);
-int intel_huc_wait_for_auth_complete(struct intel_huc *huc);
+int intel_huc_wait_for_auth_complete(struct intel_huc *huc,
+				     enum intel_huc_authentication_type type);
+bool intel_huc_is_authenticated(struct intel_huc *huc,
+				enum intel_huc_authentication_type type);
 int intel_huc_check_status(struct intel_huc *huc);
 void intel_huc_update_auth_status(struct intel_huc *huc);
-bool intel_huc_is_authenticated(struct intel_huc *huc);
 
 void intel_huc_register_gsc_notifier(struct intel_huc *huc, const struct bus_type *bus);
 void intel_huc_unregister_gsc_notifier(struct intel_huc *huc, const struct bus_type *bus);
@@ -81,7 +89,7 @@ static inline bool intel_huc_is_loaded_by_gsc(const struct intel_huc *huc)
 static inline bool intel_huc_wait_required(struct intel_huc *huc)
 {
 	return intel_huc_is_used(huc) && intel_huc_is_loaded_by_gsc(huc) &&
-	       !intel_huc_is_authenticated(huc);
+	       !intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC);
 }
 
 void intel_huc_load_status(struct intel_huc *huc, struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index 3355dc1e2bc6..d2b4176c81d6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -160,7 +160,7 @@ int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
 	 * component gets re-bound and this function called again. If so, just
 	 * mark the HuC as loaded.
 	 */
-	if (intel_huc_is_authenticated(huc)) {
+	if (intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC)) {
 		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
 		return 0;
 	}
@@ -173,7 +173,7 @@ int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
 
 	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_TRANSFERRED);
 
-	return intel_huc_wait_for_auth_complete(huc);
+	return intel_huc_wait_for_auth_complete(huc, INTEL_HUC_AUTH_BY_GSC);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0523418129c5..c14433795c91 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -941,6 +941,9 @@
 #define HECI_H_GS1(base)	_MMIO((base) + 0xc4c)
 #define   HECI_H_GS1_ER_PREP	REG_BIT(0)
 
+#define HECI_FWSTS5(base)		_MMIO(base + 0xc68)
+#define   HECI_FWSTS5_HUC_AUTH_DONE	(1 << 19)
+
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
 #define   GTT_CACHE_EN_ALL	0xF0007FFF
 #define GEN7_WR_WATERMARK	_MMIO(0x4028)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 8dc41de3f6f7..016bd8fad89d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -196,7 +196,7 @@ bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp)
 	 * gsc-proxy init flow (the last set of dependencies that
 	 * are out of order) will suffice.
 	 */
-	if (intel_huc_is_authenticated(&pxp->ctrl_gt->uc.huc) &&
+	if (intel_huc_is_authenticated(&pxp->ctrl_gt->uc.huc, INTEL_HUC_AUTH_BY_GSC) &&
 	    intel_gsc_uc_fw_proxy_init_done(&pxp->ctrl_gt->uc.gsc))
 		return true;
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index f31dfacde601..a1848e806059 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -674,7 +674,8 @@ typedef struct drm_i915_irq_wait {
  * If the IOCTL is successful, the returned parameter will be set to one of the
  * following values:
  *  * 0 if HuC firmware load is not complete,
- *  * 1 if HuC firmware is authenticated and running.
+ *  * 1 if HuC firmware is loaded and fully authenticated,
+ *  * 2 if HuC firmware is loaded and authenticated for clear media only
  */
 #define I915_PARAM_HUC_STATUS		 42
 
-- 
2.40.0

