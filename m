Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4021373A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 17:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BB26EA58;
	Fri, 10 Jan 2020 16:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632BC6EA5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 16:29:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 08:29:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="218704693"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2020 08:29:49 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00AGThAd014277; Fri, 10 Jan 2020 16:29:48 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 16:29:30 +0000
Message-Id: <20200110162930.88968-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200110162930.88968-1-michal.wajdeczko@intel.com>
References: <20200110162930.88968-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/uc: Add sanitize to to
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

uC sanitization is only meaningful if we are running with uC present
or enabled. Make this function part of the uc_ops.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 10 ++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h |  3 ++-
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 1b07135a8515..c1d5af775713 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -12,6 +12,7 @@
 
 #include "i915_drv.h"
 
+static int __uc_sanitize(struct intel_uc *uc);
 static void __uc_fetch_firmwares(struct intel_uc *uc);
 static void __uc_cleanup_firmwares(struct intel_uc *uc);
 static void __uc_init(struct intel_uc *uc);
@@ -25,6 +26,7 @@ static const struct intel_uc_ops uc_ops_off = {
 };
 
 static const struct intel_uc_ops uc_ops_on = {
+	.sanitize = __uc_sanitize,
 	.init_fw = __uc_fetch_firmwares,
 	.fini_fw = __uc_cleanup_firmwares,
 	.init = __uc_init,
@@ -333,14 +335,6 @@ static int __uc_sanitize(struct intel_uc *uc)
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 8c0ce0d9f190..49c913524686 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -13,6 +13,7 @@
 struct intel_uc;
 
 struct intel_uc_ops {
+	int (*sanitize)(struct intel_uc *uc);
 	void (*init_fw)(struct intel_uc *uc);
 	void (*fini_fw)(struct intel_uc *uc);
 	void (*init)(struct intel_uc *uc);
@@ -33,7 +34,6 @@ struct intel_uc {
 void intel_uc_init_early(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
-void intel_uc_sanitize(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
 void intel_uc_runtime_suspend(struct intel_uc *uc);
@@ -77,6 +77,7 @@ static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 		return uc->ops->_OPS(uc); \
 	return _RET; \
 }
+intel_uc_ops_function(sanitize, sanitize, int, 0);
 intel_uc_ops_function(fetch_firmwares, init_fw, void, );
 intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );
 intel_uc_ops_function(init, init, void, );
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
