Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6FD1681AE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86C26F483;
	Fri, 21 Feb 2020 15:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356386F485
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:32:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 07:32:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; 
 d="scan'208,223";a="383485447"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 21 Feb 2020 07:32:44 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.29])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 01LFWhk6031599; Fri, 21 Feb 2020 15:32:43 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 15:32:09 +0000
Message-Id: <20200221153209.268712-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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

From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
to indicate lack of HuC hardware and we started to use this error
also for all other cases when HuC was not in use or supported.

Fix that by relying again on HAS_GT_UC macro, since currently
used function intel_huc_is_supported() is based on HuC firmware
support which could be unsupported also due to force disabled
GuC firmware.

v2: use 0 only for disabled, add more error codes for other failures

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Cc: Robert M. Fosha <robert.m.fosha@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 29 +++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index a74b65694512..301bb5d5e59a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -200,9 +200,13 @@ int intel_huc_auth(struct intel_huc *huc)
  * This function reads status register to verify if HuC
  * firmware was successfully loaded.
  *
- * Returns: 1 if HuC firmware is loaded and verified,
- * 0 if HuC firmware is not loaded and -ENODEV if HuC
- * is not present on this platform.
+ * Returns:
+ *  * 1 if HuC firmware is loaded and verified,
+ *  * 0 if HuC firmware was disabled,
+ *  * -ENODEV if HuC is not present on this platform,
+ *  * -ENOPKG if HuC firmware was not installed,
+ *  * -ENOEXEC if HuC firmware is invalid,
+ *  * -EACCES if HuC firmware was not authenticated.
  */
 int intel_huc_check_status(struct intel_huc *huc)
 {
@@ -210,11 +214,26 @@ int intel_huc_check_status(struct intel_huc *huc)
 	intel_wakeref_t wakeref;
 	u32 status = 0;
 
-	if (!intel_huc_is_supported(huc))
+	if (!HAS_GT_UC(gt->i915))
 		return -ENODEV;
 
+	switch (__intel_uc_fw_status(&huc->fw)) {
+	case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
+	case INTEL_UC_FIRMWARE_DISABLED:
+		return 0;
+	case INTEL_UC_FIRMWARE_MISSING:
+		return -ENOPKG;
+	case INTEL_UC_FIRMWARE_ERROR:
+		return -ENOEXEC;
+	default:
+		break;
+	}
+
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 		status = intel_uncore_read(gt->uncore, huc->status.reg);
 
-	return (status & huc->status.mask) == huc->status.value;
+	if ((status & huc->status.mask) != huc->status.value)
+		return -EACCES;
+
+	return 1;
 }
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
