Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC46E119287
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 21:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AFF6E932;
	Tue, 10 Dec 2019 20:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFF06E928
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 20:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 12:48:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="238297824"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 12:47:59 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.150.154])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBAKltGm008265; Tue, 10 Dec 2019 20:47:58 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 20:47:44 +0000
Message-Id: <20191210204744.65276-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191210204744.65276-1-michal.wajdeczko@intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/4] drm/i915/uc: Add sanitize to to intel_uc_ops
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

uC sanitization is only meaningful if we are running with uC present
or enabled. Make this function part of the uc_ops.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 10 ++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h |  9 ++++++++-
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index c8b399d61166..634ef2fa34f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -349,14 +349,6 @@ static int __uc_sanitize(struct intel_uc *uc)
 	return __intel_uc_reset_hw(uc);
 }
 
-void intel_uc_sanitize(struct intel_uc *uc)
-{
-	if (!intel_uc_supports_guc(uc))
-		return;
-
-	__uc_sanitize(uc);
-}
-
 /* Initialize and verify the uC regs related to uC positioning in WOPCM */
 static int uc_init_wopcm(struct intel_uc *uc)
 {
@@ -652,10 +644,12 @@ const struct intel_uc_ops uc_ops_none = {
 };
 
 const struct intel_uc_ops uc_ops_off = {
+	.sanitize = __intel_uc_reset_hw,
 	.init_hw = __uc_check_hw,
 };
 
 const struct intel_uc_ops uc_ops_on = {
+	.sanitize = __uc_sanitize,
 	.init_fw = __uc_fetch_firmwares,
 	.fini_fw = __uc_cleanup_firmwares,
 	.init = __uc_init,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 2bd8326130f1..3410d35f8b0c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -19,6 +19,7 @@ struct intel_uc_ops {
 	void (*fini)(struct intel_uc *uc);
 	int (*init_hw)(struct intel_uc *uc);
 	void (*fini_hw)(struct intel_uc *uc);
+	int (*sanitize)(struct intel_uc *uc);
 };
 
 struct intel_uc {
@@ -33,7 +34,6 @@ struct intel_uc {
 void intel_uc_init_early(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
-void intel_uc_sanitize(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
 void intel_uc_runtime_suspend(struct intel_uc *uc);
@@ -107,4 +107,11 @@ static inline void intel_uc_fini_hw(struct intel_uc *uc)
 		uc->ops->fini_hw(uc);
 }
 
+static inline int intel_uc_sanitize(struct intel_uc *uc)
+{
+	if (uc->ops->sanitize)
+		return uc->ops->sanitize(uc);
+	return 0;
+}
+
 #endif
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
