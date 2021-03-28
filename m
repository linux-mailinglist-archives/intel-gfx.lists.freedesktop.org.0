Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDF434BFA5
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 00:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FD76E118;
	Sun, 28 Mar 2021 22:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895F689FCE
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Mar 2021 22:57:49 +0000 (UTC)
IronPort-SDR: /uZGnnJ3eewNBef2djQEsYvlRLJdVcWAZz6ri7HCd+FO+KbewN0Eyik1HOM6PtJS3ik07vweJH
 NPRtZ+adD3Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="255443997"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="255443997"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:49 -0700
IronPort-SDR: IUCNeTe6kUzCwX+iUNDbDr5yfMXxw1+mQwr+NwpK80+SVqdY6HwzDpd9XhNirgegRwIa6Jql/R
 khPkNZ0CyLOw==
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="376213769"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:49 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Mar 2021 15:56:58 -0700
Message-Id: <20210328225709.18541-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/16] drm/i915/pxp: set KCR reg init
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

The setting is required by hardware to allow us doing further protection
operation such as sending commands to GPU or TEE. The register needs to
be re-programmed on resume, so for simplicitly we bundle the programming
with the component binding, which is automatically called on resume.

Further HW set-up operations will be added in the same location in
follow-up patches, so get ready for them by using a couple of
init/fini_hw wrappers instead of calling the KCR funcs directly.

v3: move programming to component binding function, rework commit msg

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 27 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |  3 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c |  5 +++++
 3 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index a0fc43f72cad..c1ad0cf2c664 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -7,6 +7,24 @@
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
 	static struct lock_class_key pxp_lock;
@@ -71,5 +89,14 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 	intel_pxp_tee_component_fini(pxp);
 
 	destroy_vcs_context(pxp);
+}
+
+void intel_pxp_init_hw(struct intel_pxp *pxp)
+{
+	kcr_pxp_enable(pxp_to_gt(pxp));
+}
 
+void intel_pxp_fini_hw(struct intel_pxp *pxp)
+{
+	kcr_pxp_disable(pxp_to_gt(pxp));
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index e87550fb9821..5427c3b28aa9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -22,6 +22,9 @@ static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
+
+void intel_pxp_init_hw(struct intel_pxp *pxp);
+void intel_pxp_fini_hw(struct intel_pxp *pxp);
 #else
 static inline void intel_pxp_init(struct intel_pxp *pxp)
 {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 21916ec0f6ff..33130fb7113b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -33,6 +33,9 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 
+	/* the component is required to fully start the PXP HW */
+	intel_pxp_init_hw(pxp);
+
 	return 0;
 }
 
@@ -41,6 +44,8 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 {
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
 
+	intel_pxp_fini_hw(pxp);
+
 	pxp->pxp_component = NULL;
 }
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
