Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D2F197ABE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 13:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2CB6E245;
	Mon, 30 Mar 2020 11:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A85E6E245
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 11:33:24 +0000 (UTC)
IronPort-SDR: XEEFb+wPbYigMNvTiQuwLUAtaTcXOKUfObEhv4D0cCueu8UQbmgND/Yz76fxLGoPZqXbm+9yem
 qWw+8xcfZS6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 04:33:23 -0700
IronPort-SDR: 9NzO6SogvbzpbDebLjdvKe0S+bjKeha1AmAgDIcNkKIbQrmxRCB0zDuZfKXrwlnJKhHxRoOkWJ
 BV4u/eCvf2bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="294559558"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Mar 2020 04:33:21 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-mobl.ger.corp.intel.com [10.249.134.165])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 02UBXK6a022741; Mon, 30 Mar 2020 12:33:20 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 13:33:02 +0200
Message-Id: <20200330113302.1670-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/huc: Add more errors for
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There might be many reasons why we failed to successfully
load and authenticate HuC firmware, but today we only use
single error in case of no HuC hardware. Add some more
error codes for most common cases (disabled, not installed,
corrupted or mismatched firmware).

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Cc: Robert M. Fosha <robert.m.fosha@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index d6097b46600c..1e8073ec343f 100644
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
+ *  * -ENODEV if HuC is not present on this platform,
+ *  * -EOPNOTSUPP if HuC firmware is disabled,
+ *  * -ENOPKG if HuC firmware was not installed,
+ *  * -ENOEXEC if HuC firmware is invalid or mismatched,
+ *  * 0 if HuC firmware is not running,
+ *  * 1 if HuC firmware is authenticated and running.
  */
 int intel_huc_check_status(struct intel_huc *huc)
 {
@@ -210,8 +214,18 @@ int intel_huc_check_status(struct intel_huc *huc)
 	intel_wakeref_t wakeref;
 	u32 status = 0;
 
-	if (!intel_huc_is_supported(huc))
+	switch (__intel_uc_fw_status(&huc->fw)) {
+	case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
 		return -ENODEV;
+	case INTEL_UC_FIRMWARE_DISABLED:
+		return -EOPNOTSUPP;
+	case INTEL_UC_FIRMWARE_MISSING:
+		return -ENOPKG;
+	case INTEL_UC_FIRMWARE_ERROR:
+		return -ENOEXEC;
+	default:
+		break;
+	}
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 		status = intel_uncore_read(gt->uncore, huc->status.reg);
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
