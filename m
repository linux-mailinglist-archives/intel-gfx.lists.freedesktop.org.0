Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B92E119284
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 21:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9376E92E;
	Tue, 10 Dec 2019 20:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8AD6E92E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 20:55:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 12:48:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="220289258"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2019 12:47:59 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.150.154])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBAKltGl008265; Tue, 10 Dec 2019 20:47:58 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 20:47:43 +0000
Message-Id: <20191210204744.65276-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191210204744.65276-1-michal.wajdeczko@intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/4] drm/i915/uc: Add init/fini to to intel_uc_ops
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

uC preparation and cleanup steps are only meaningful if we are
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
index 6c4554e27d07..c8b399d61166 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -301,14 +301,13 @@ static void __uc_cleanup_firmwares(struct intel_uc *uc)
 	intel_uc_fw_cleanup_fetch(&uc->guc.fw);
 }
 
-void intel_uc_init(struct intel_uc *uc)
+static void __uc_init(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 	struct intel_huc *huc = &uc->huc;
 	int ret;
 
-	if (!intel_uc_uses_guc(uc))
-		return;
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	/* XXX: GuC submission is unavailable for now */
 	GEM_BUG_ON(intel_uc_supports_guc_submission(uc));
@@ -323,12 +322,11 @@ void intel_uc_init(struct intel_uc *uc)
 		intel_huc_init(huc);
 }
 
-void intel_uc_fini(struct intel_uc *uc)
+static void __uc_fini(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
-	if (!intel_uc_uses_guc(uc))
-		return;
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	if (intel_uc_uses_huc(uc))
 		intel_huc_fini(&uc->huc);
@@ -660,6 +658,8 @@ const struct intel_uc_ops uc_ops_off = {
 const struct intel_uc_ops uc_ops_on = {
 	.init_fw = __uc_fetch_firmwares,
 	.fini_fw = __uc_cleanup_firmwares,
+	.init = __uc_init,
+	.fini = __uc_fini,
 	.init_hw = __uc_init_hw,
 	.fini_hw = __uc_fini_hw,
 };
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 02068585f6ac..2bd8326130f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -15,6 +15,8 @@ struct intel_uc;
 struct intel_uc_ops {
 	void (*init_fw)(struct intel_uc *uc);
 	void (*fini_fw)(struct intel_uc *uc);
+	void (*init)(struct intel_uc *uc);
+	void (*fini)(struct intel_uc *uc);
 	int (*init_hw)(struct intel_uc *uc);
 	void (*fini_hw)(struct intel_uc *uc);
 };
@@ -32,8 +34,6 @@ void intel_uc_init_early(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
 void intel_uc_sanitize(struct intel_uc *uc);
-void intel_uc_init(struct intel_uc *uc);
-void intel_uc_fini(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
 void intel_uc_runtime_suspend(struct intel_uc *uc);
@@ -82,6 +82,18 @@ static inline void intel_uc_cleanup_firmwares(struct intel_uc *uc)
 		uc->ops->fini_fw(uc);
 }
 
+static inline void intel_uc_init(struct intel_uc *uc)
+{
+	if (uc->ops->init)
+		uc->ops->init(uc);
+}
+
+static inline void intel_uc_fini(struct intel_uc *uc)
+{
+	if (uc->ops->fini)
+		uc->ops->fini(uc);
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
