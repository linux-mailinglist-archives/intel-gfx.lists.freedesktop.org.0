Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ADF13799E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 23:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5536E0E8;
	Fri, 10 Jan 2020 22:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14366E0E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 22:27:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 14:27:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="212399568"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2020 14:27:30 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.151.239])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00AMRSEW001371; Fri, 10 Jan 2020 22:27:29 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 22:27:21 +0000
Message-Id: <20200110222723.14724-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200110222723.14724-1-michal.wajdeczko@intel.com>
References: <20200110222723.14724-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 2/4] drm/i915/uc: Add init_fw/fini_fw to to
 intel_uc_ops
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

Firmware fetching and cleanup steps are only meaningful if we are
running with uC enabled. Make these functions part of the uc_ops.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 10 ++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc.h |  6 ++++--
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 9bcec6e0d370..cd0742f9ba4d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -253,12 +253,11 @@ static void guc_disable_communication(struct intel_guc *guc)
 	DRM_INFO("GuC communication disabled\n");
 }
 
-void intel_uc_fetch_firmwares(struct intel_uc *uc)
+static void __uc_fetch_firmwares(struct intel_uc *uc)
 {
 	int err;
 
-	if (!intel_uc_uses_guc(uc))
-		return;
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	err = intel_uc_fw_fetch(&uc->guc.fw);
 	if (err)
@@ -268,7 +267,7 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc)
 		intel_uc_fw_fetch(&uc->huc.fw);
 }
 
-void intel_uc_cleanup_firmwares(struct intel_uc *uc)
+static void __uc_cleanup_firmwares(struct intel_uc *uc)
 {
 	intel_uc_fw_cleanup_fetch(&uc->huc.fw);
 	intel_uc_fw_cleanup_fetch(&uc->guc.fw);
@@ -617,6 +616,9 @@ static const struct intel_uc_ops uc_ops_off = {
 };
 
 static const struct intel_uc_ops uc_ops_on = {
+	.init_fw = __uc_fetch_firmwares,
+	.fini_fw = __uc_cleanup_firmwares,
+
 	.init_hw = __uc_init_hw,
 	.fini_hw = __uc_fini_hw,
 };
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index d5c2d4cf1d38..47c7c8add451 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -13,6 +13,8 @@
 struct intel_uc;
 
 struct intel_uc_ops {
+	void (*init_fw)(struct intel_uc *uc);
+	void (*fini_fw)(struct intel_uc *uc);
 	int (*init_hw)(struct intel_uc *uc);
 	void (*fini_hw)(struct intel_uc *uc);
 };
@@ -29,8 +31,6 @@ struct intel_uc {
 void intel_uc_init_early(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
-void intel_uc_fetch_firmwares(struct intel_uc *uc);
-void intel_uc_cleanup_firmwares(struct intel_uc *uc);
 void intel_uc_sanitize(struct intel_uc *uc);
 void intel_uc_init(struct intel_uc *uc);
 void intel_uc_fini(struct intel_uc *uc);
@@ -77,6 +77,8 @@ static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 		return uc->ops->_OPS(uc); \
 	return _RET; \
 }
+intel_uc_ops_function(fetch_firmwares, init_fw, void, );
+intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );
 intel_uc_ops_function(init_hw, init_hw, int, 0);
 intel_uc_ops_function(fini_hw, fini_hw, void, );
 #undef intel_uc_ops_function
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
