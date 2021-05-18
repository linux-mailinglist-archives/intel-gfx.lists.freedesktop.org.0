Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38CD3880CD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 21:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8B188F9F;
	Tue, 18 May 2021 19:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484FF6EC79
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 19:53:11 +0000 (UTC)
IronPort-SDR: kEAIFyf2TB609UgdaGG57+AckLwU49TEdirsTrOozDVpOrQuoD56kTgCVZr1pjPWKxxnD9EF3+
 mc7XLebMuiMw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="197715531"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="197715531"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 12:53:10 -0700
IronPort-SDR: 4bxBsdlmrd/FNOZQqWeTHzPKqqLG6ywnq+HpT1w8gkyQKqj+Cx06JlFbjjsaMeVr+1CX9sXkLH
 3j4X/e8unVWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="394989486"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga006.jf.intel.com with ESMTP; 18 May 2021 12:53:09 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 12:53:06 -0700
Message-Id: <20210518195309.4917-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210518195309.4917-1-anusha.srivatsa@intel.com>
References: <20210518195309.4917-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/5] drm/i915/dmc: s/HAS_CSR/HAS_DMC
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

No functional change.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c             | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                      |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c                |  2 +-
 drivers/gpu/drm/i915/i915_pci.c                      |  4 ++--
 drivers/gpu/drm/i915/intel_device_info.c             |  2 +-
 drivers/gpu/drm/i915/intel_device_info.h             |  2 +-
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index a22339ebdffd..5ed286dc6720 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -315,9 +315,9 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
 	u32 *payload = dev_priv->dmc.dmc_payload;
 	u32 i, fw_size;
 
-	if (!HAS_CSR(dev_priv)) {
+	if (!HAS_DMC(dev_priv)) {
 		drm_err(&dev_priv->drm,
-			"No CSR support available for this platform\n");
+			"No DMC support available for this platform\n");
 		return;
 	}
 
@@ -686,7 +686,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 
 	INIT_WORK(&dev_priv->dmc.work, csr_load_work_fn);
 
-	if (!HAS_CSR(dev_priv))
+	if (!HAS_DMC(dev_priv))
 		return;
 
 	/*
@@ -776,7 +776,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
  */
 void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_CSR(dev_priv))
+	if (!HAS_DMC(dev_priv))
 		return;
 
 	flush_work(&dev_priv->dmc.work);
@@ -795,7 +795,7 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
  */
 void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_CSR(dev_priv))
+	if (!HAS_DMC(dev_priv))
 		return;
 
 	/*
@@ -815,7 +815,7 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
  */
 void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_CSR(dev_priv))
+	if (!HAS_DMC(dev_priv))
 		return;
 
 	intel_csr_ucode_suspend(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a875f3c9b358..6cd7f8c1724f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -535,7 +535,7 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 	struct intel_dmc *dmc;
 	i915_reg_t dc5_reg, dc6_reg = {};
 
-	if (!HAS_CSR(dev_priv))
+	if (!HAS_DMC(dev_priv))
 		return -ENODEV;
 
 	dmc = &dev_priv->dmc;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3c9f6bbb5dd7..469783003309 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1662,7 +1662,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
 
-#define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
+#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
 
 #define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 03d1221de13b..06828ff90ccf 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -788,7 +788,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
 
-	if (HAS_CSR(m->i915)) {
+	if (HAS_DMC(m->i915)) {
 		struct intel_dmc *dmc = &m->i915->dmc;
 
 		err_printf(m, "DMC loaded: %s\n",
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 574881c0e339..97c98f4fb265 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -643,7 +643,7 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.display.has_csr = 1, \
+	.display.has_dmc = 1, \
 	.has_gt_uc = 1, \
 	.display.has_hdcp = 1, \
 	.display.has_ipc = 1, \
@@ -698,7 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
-	.display.has_csr = 1, \
+	.display.has_dmc = 1, \
 	.has_rc6 = 1, \
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 8cb58a238c68..e16599b67b83 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -353,7 +353,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_fbc = 0;
 
 		if (INTEL_GEN(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
-			info->display.has_csr = 0;
+			info->display.has_dmc = 0;
 
 		if (INTEL_GEN(dev_priv) >= 10 &&
 		    (dfsm & CNL_DFSM_DISPLAY_DSC_DISABLE))
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e98b36959736..1390fad5ec06 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -141,7 +141,7 @@ enum intel_ppgtt_type {
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
-	func(has_csr); \
+	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
