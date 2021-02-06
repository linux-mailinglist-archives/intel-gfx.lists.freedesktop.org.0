Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4507311829
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D1D6F542;
	Sat,  6 Feb 2021 02:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7389D6E3D3
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:10:38 +0000 (UTC)
IronPort-SDR: SnGjr+VJzcAOO3KgeckKrpyK+CYOsbvfA06IpS42jVEFPr7lZN3UTQpLrMeRxryUmR/G8ea3JV
 BI9bd3J9YbsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181577457"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181577457"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:38 -0800
IronPort-SDR: YXY0BiZr2M3o2wL2QqSyM2gn4+uZUJFuJfcgoR7lDYmszjhDutFVWhhZE72cbt8zdwkXKw6lJs
 M4q0UEC7fe0g==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394141332"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:37 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 18:09:16 -0800
Message-Id: <20210206020925.36729-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 05/14] drm/i915/pxp: set KCR reg init during the
 boot time
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
Cc: Sean Z <sean.z.huang@intel.com>, Huang@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the KCR init during the boot time, which is required by hardware,
to allow us doing further protection operation such as sending commands
to GPU or TEE.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 29 +++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 4ddc8a71a3e7..950daee5b907 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,24 @@
 #include "gt/intel_context.h"
 #include "i915_drv.h"
 
+/* KCR register definitions */
+#define KCR_INIT _MMIO(0x320f0)
+
+/* Setting KCR Init bit is required after system boot */
+#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES REG_BIT(14)
+
+static void kcr_pxp_enable(struct intel_gt *gt)
+{
+	intel_uncore_write(gt->uncore, KCR_INIT,
+			   _MASKED_BIT_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES));
+}
+
+static void kcr_pxp_disable(struct intel_gt *gt)
+{
+	intel_uncore_write(gt->uncore, KCR_INIT,
+			   _MASKED_BIT_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES));
+}
+
 static int create_vcs_context(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
@@ -43,19 +61,28 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (!HAS_PXP(gt->i915))
 		return;
 
+	kcr_pxp_enable(gt);
+
 	ret = create_vcs_context(pxp);
 	if (ret)
-		return;
+		goto out_kcr;
 
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 
 	return;
+
+out_kcr:
+	kcr_pxp_disable(gt);
 }
 
 void intel_pxp_fini(struct intel_pxp *pxp)
 {
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
 	destroy_vcs_context(pxp);
+
+	kcr_pxp_disable(gt);
 }
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
