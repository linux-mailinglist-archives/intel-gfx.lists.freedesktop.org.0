Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F2859A8E6
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 00:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC51810ED9D;
	Fri, 19 Aug 2022 22:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D776810E54E;
 Fri, 19 Aug 2022 22:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660949641; x=1692485641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A9Rsw/SEhAuivAKqfstS7B++qXDy/GhbWd7wrK9Or28=;
 b=YRQqCRbvKUxnxFV7g5k7UNjtjsw/DtLJJeP7DLej/8ab6M8j/OyAXGn+
 zV/g9q23oO9CuD4vVp6OcCnPRHmI+mfFHG92Bpdd+gxcmF87AAAKmnIXo
 p0r1vgk3eKWIPFLLLFPrgbPiB+/lgeEhP02QN95iDuhYl+9WgmBsUVI7C
 4fhktNq6iJ+x7WSEc2TKhoO2AdsJPtDrcGPlTMEzVaOIRWoYUMZvK44P/
 G8XNDEiQEIweyCadDocb7QqtrRWqiJ6qcJ3Mnkz/gP6YcWpEZy/DsBtKu
 kydhpvtoNwCUO/n0CEBBGvgsnsqG/YogUOBBY9aUl3F9YKwR97MEoDr7N A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="273513243"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="273513243"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 15:54:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="936378507"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 15:54:01 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:53:30 -0700
Message-Id: <20220819225335.3947346-11-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
References: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/15] drm/i915/dg2: setup HuC loading via GSC
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GSC will perform both the load and teh authentication, so we just
need to check the auth bit after the GSC has replied.
Since we require the PXP module to load the HuC, the earliest we can
trigger the load is during the pxp_bind operation.

Note that GSC-loaded HuC survives GT reset, so we need to just mark it
as ready when we re-init the GT HW.

v2: move setting of HuC fw error state to the failure path of the HuC
auth function, so it covers both the legacy and new auth flows

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    | 41 +++++++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_huc.h    |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c  | 14 +++++++-
 5 files changed, 77 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 3bb8838e325a..40217fb69824 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -125,6 +125,28 @@ void intel_huc_fini(struct intel_huc *huc)
 	intel_uc_fw_fini(&huc->fw);
 }
 
+int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
+{
+	struct intel_gt *gt = huc_to_gt(huc);
+	int ret;
+
+	ret = __intel_wait_for_register(gt->uncore,
+					huc->status.reg,
+					huc->status.mask,
+					huc->status.value,
+					2, 50, NULL);
+
+	if (ret) {
+		drm_err(&gt->i915->drm,"HuC: Firmware not verified %d\n", ret);
+		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
+		return ret;
+	}
+
+	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
+	drm_info(&gt->i915->drm, "HuC authenticated\n");
+	return 0;
+}
+
 /**
  * intel_huc_auth() - Authenticate HuC uCode
  * @huc: intel_huc structure
@@ -161,27 +183,18 @@ int intel_huc_auth(struct intel_huc *huc)
 	}
 
 	/* Check authentication status, it should be done by now */
-	ret = __intel_wait_for_register(gt->uncore,
-					huc->status.reg,
-					huc->status.mask,
-					huc->status.value,
-					2, 50, NULL);
-	if (ret) {
-		DRM_ERROR("HuC: Firmware not verified %d\n", ret);
+	ret = intel_huc_wait_for_auth_complete(huc);
+	if (ret)
 		goto fail;
-	}
 
-	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
-	drm_info(&gt->i915->drm, "HuC authenticated\n");
 	return 0;
 
 fail:
 	i915_probe_error(gt->i915, "HuC: Authentication failed %d\n", ret);
-	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
 	return ret;
 }
 
-static bool huc_is_authenticated(struct intel_huc *huc)
+bool intel_huc_is_authenticated(struct intel_huc *huc)
 {
 	struct intel_gt *gt = huc_to_gt(huc);
 	intel_wakeref_t wakeref;
@@ -223,7 +236,7 @@ int intel_huc_check_status(struct intel_huc *huc)
 		break;
 	}
 
-	return huc_is_authenticated(huc);
+	return intel_huc_is_authenticated(huc);
 }
 
 void intel_huc_update_auth_status(struct intel_huc *huc)
@@ -231,7 +244,7 @@ void intel_huc_update_auth_status(struct intel_huc *huc)
 	if (!intel_uc_fw_is_loadable(&huc->fw))
 		return;
 
-	if (huc_is_authenticated(huc))
+	if (intel_huc_is_authenticated(huc))
 		intel_uc_fw_change_status(&huc->fw,
 					  INTEL_UC_FIRMWARE_RUNNING);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index d7e25b6e879e..51f9d96a3ca3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -26,8 +26,10 @@ void intel_huc_init_early(struct intel_huc *huc);
 int intel_huc_init(struct intel_huc *huc);
 void intel_huc_fini(struct intel_huc *huc);
 int intel_huc_auth(struct intel_huc *huc);
+int intel_huc_wait_for_auth_complete(struct intel_huc *huc);
 int intel_huc_check_status(struct intel_huc *huc);
 void intel_huc_update_auth_status(struct intel_huc *huc);
+bool intel_huc_is_authenticated(struct intel_huc *huc);
 
 static inline int intel_huc_sanitize(struct intel_huc *huc)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index 9d6ab1e01639..4f246416db17 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -3,9 +3,43 @@
  * Copyright © 2014-2019 Intel Corporation
  */
 
+#include "gt/intel_gsc.h"
 #include "gt/intel_gt.h"
+#include "intel_huc.h"
 #include "intel_huc_fw.h"
 #include "i915_drv.h"
+#include "pxp/intel_pxp_huc.h"
+
+int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
+{
+	int ret;
+
+	if (!intel_huc_is_loaded_by_gsc(huc))
+		return -ENODEV;
+
+	if (!intel_uc_fw_is_loadable(&huc->fw))
+		return -ENOEXEC;
+
+	/*
+	 * If we abort a suspend, HuC might still be loaded when the mei
+	 * component gets re-bound and this function called again. If so, just
+	 * mark the HuC as loaded.
+	 */
+	if (intel_huc_is_authenticated(huc)) {
+		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
+		return 0;
+	}
+
+	GEM_WARN_ON(intel_uc_fw_is_loaded(&huc->fw));
+
+	ret = intel_pxp_huc_load_and_auth(&huc_to_gt(huc)->pxp);
+	if (ret)
+		return ret;
+
+	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_TRANSFERRED);
+
+	return intel_huc_wait_for_auth_complete(huc);
+}
 
 /**
  * intel_huc_fw_upload() - load HuC uCode to device via DMA transfer
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
index 12f264ee3e0b..db42e238b45f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
@@ -8,6 +8,7 @@
 
 struct intel_huc;
 
+int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc);
 int intel_huc_fw_upload(struct intel_huc *huc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index e0d09455a92e..00433f59e2c8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -14,6 +14,7 @@
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_tee_interface.h"
+#include "intel_pxp_huc.h"
 
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
@@ -126,13 +127,24 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
 	intel_wakeref_t wakeref;
+	int ret = 0;
 
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 	mutex_unlock(&pxp->tee_mutex);
 
+	if (intel_uc_uses_huc(uc) && intel_huc_is_loaded_by_gsc(&uc->huc)) {
+		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+			/* load huc via pxp */
+			ret = intel_huc_fw_load_and_auth_via_gsc(&uc->huc);
+			if (ret < 0)
+				drm_err(&i915->drm, "failed to load huc via gsc %d\n", ret);
+		}
+	}
+
 	/* if we are suspended, the HW will be re-initialized on resume */
 	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
 	if (!wakeref)
@@ -144,7 +156,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
-	return 0;
+	return ret;
 }
 
 static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
-- 
2.37.2

