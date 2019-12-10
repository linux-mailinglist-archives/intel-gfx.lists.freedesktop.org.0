Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA64D119288
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 21:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4512D6E933;
	Tue, 10 Dec 2019 20:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 20:55:06 UTC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF13A6E928
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 20:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 12:47:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="264649355"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Dec 2019 12:47:58 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.150.154])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBAKltGk008265; Tue, 10 Dec 2019 20:47:57 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 20:47:42 +0000
Message-Id: <20191210204744.65276-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191210204744.65276-1-michal.wajdeczko@intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/4] drm/i915/uc: Add init_fw/fini_fw to to
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
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 16 ++++++++++++++--
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index e3d1359f9719..6c4554e27d07 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -276,13 +276,12 @@ static void guc_disable_communication(struct intel_guc *guc)
 	DRM_INFO("GuC communication disabled\n");
 }
 
-void intel_uc_fetch_firmwares(struct intel_uc *uc)
+static void __uc_fetch_firmwares(struct intel_uc *uc)
 {
 	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 	int err;
 
-	if (!intel_uc_uses_guc(uc))
-		return;
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	err = intel_uc_fw_fetch(&uc->guc.fw, i915);
 	if (err)
@@ -292,10 +291,9 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc)
 		intel_uc_fw_fetch(&uc->huc.fw, i915);
 }
 
-void intel_uc_cleanup_firmwares(struct intel_uc *uc)
+static void __uc_cleanup_firmwares(struct intel_uc *uc)
 {
-	if (!intel_uc_uses_guc(uc))
-		return;
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	if (intel_uc_uses_huc(uc))
 		intel_uc_fw_cleanup_fetch(&uc->huc.fw);
@@ -660,6 +658,8 @@ const struct intel_uc_ops uc_ops_off = {
 };
 
 const struct intel_uc_ops uc_ops_on = {
+	.init_fw = __uc_fetch_firmwares,
+	.fini_fw = __uc_cleanup_firmwares,
 	.init_hw = __uc_init_hw,
 	.fini_hw = __uc_fini_hw,
 };
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 36643e17a09e..02068585f6ac 100644
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
@@ -70,6 +70,18 @@ static inline bool intel_uc_uses_huc(struct intel_uc *uc)
 	return intel_huc_is_enabled(&uc->huc);
 }
 
+static inline void intel_uc_fetch_firmwares(struct intel_uc *uc)
+{
+	if (uc->ops->init_fw)
+		uc->ops->init_fw(uc);
+}
+
+static inline void intel_uc_cleanup_firmwares(struct intel_uc *uc)
+{
+	if (uc->ops->fini_fw)
+		uc->ops->fini_fw(uc);
+}
+
 static inline int intel_uc_init_hw(struct intel_uc *uc)
 {
 	if (uc->ops->init_hw)
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
