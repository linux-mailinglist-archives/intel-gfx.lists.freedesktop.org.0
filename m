Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CDC3886D8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 07:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0A06E201;
	Wed, 19 May 2021 05:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB466E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 05:42:12 +0000 (UTC)
IronPort-SDR: JhNxiOZAtTvjI8YqKiBbJlXvaVtk7SmOCb9cuuTBRFLmFHcHkp7B/L3fUvjmpLaIWj/6QQC7pO
 jx8cJIrGP4sA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200946079"
X-IronPort-AV: E=Sophos;i="5.82,311,1613462400"; d="scan'208";a="200946079"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:42:11 -0700
IronPort-SDR: wZ9Q8fbFnUgItbBzApvAJH5gMBNuoRxYTdHpEwxpeCZ3wJ/aq5PXOaBsQbD1Hu1XmUfdIIalaZ
 mYkLSKbjhXog==
X-IronPort-AV: E=Sophos;i="5.82,311,1613462400"; d="scan'208";a="466824980"
Received: from marora1-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.1.180])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:42:11 -0700
Date: Tue, 18 May 2021 22:42:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210519054202.r72oowbobewrzt5s@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
 <20210518213444.11420-3-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518213444.11420-3-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 2/5] drm/i915/dmc: s/HAS_CSR/HAS_DMC
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 02:34:41PM -0700, Anusha Srivatsa wrote:
>No functional change.
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_csr.c             | 12 ++++++------
> drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
> drivers/gpu/drm/i915/i915_drv.h                      |  2 +-
> drivers/gpu/drm/i915/i915_gpu_error.c                |  2 +-
> drivers/gpu/drm/i915/i915_pci.c                      |  4 ++--
> drivers/gpu/drm/i915/intel_device_info.c             |  2 +-
> drivers/gpu/drm/i915/intel_device_info.h             |  2 +-
> 7 files changed, 13 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
>index a22339ebdffd..5ed286dc6720 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
>@@ -315,9 +315,9 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
> 	u32 *payload = dev_priv->dmc.dmc_payload;
> 	u32 i, fw_size;
>
>-	if (!HAS_CSR(dev_priv)) {
>+	if (!HAS_DMC(dev_priv)) {
> 		drm_err(&dev_priv->drm,
>-			"No CSR support available for this platform\n");
>+			"No DMC support available for this platform\n");
> 		return;
> 	}
>
>@@ -686,7 +686,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>
> 	INIT_WORK(&dev_priv->dmc.work, csr_load_work_fn);
>
>-	if (!HAS_CSR(dev_priv))
>+	if (!HAS_DMC(dev_priv))
> 		return;
>
> 	/*
>@@ -776,7 +776,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>  */
> void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
> {
>-	if (!HAS_CSR(dev_priv))
>+	if (!HAS_DMC(dev_priv))
> 		return;
>
> 	flush_work(&dev_priv->dmc.work);
>@@ -795,7 +795,7 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
>  */
> void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
> {
>-	if (!HAS_CSR(dev_priv))
>+	if (!HAS_DMC(dev_priv))
> 		return;
>
> 	/*
>@@ -815,7 +815,7 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
>  */
> void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
> {
>-	if (!HAS_CSR(dev_priv))
>+	if (!HAS_DMC(dev_priv))
> 		return;
>
> 	intel_csr_ucode_suspend(dev_priv);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>index a875f3c9b358..6cd7f8c1724f 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>@@ -535,7 +535,7 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
> 	struct intel_dmc *dmc;
> 	i915_reg_t dc5_reg, dc6_reg = {};
>
>-	if (!HAS_CSR(dev_priv))
>+	if (!HAS_DMC(dev_priv))
> 		return -ENODEV;
>
> 	dmc = &dev_priv->dmc;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 3c9f6bbb5dd7..469783003309 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1662,7 +1662,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>
> #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
>
>-#define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
>+#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
>
> #define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
>
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index 03d1221de13b..06828ff90ccf 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -788,7 +788,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>
> 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>
>-	if (HAS_CSR(m->i915)) {
>+	if (HAS_DMC(m->i915)) {
> 		struct intel_dmc *dmc = &m->i915->dmc;
>
> 		err_printf(m, "DMC loaded: %s\n",
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index 574881c0e339..97c98f4fb265 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -643,7 +643,7 @@ static const struct intel_device_info chv_info = {
> 	GEN8_FEATURES, \
> 	GEN(9), \
> 	GEN9_DEFAULT_PAGE_SIZES, \
>-	.display.has_csr = 1, \
>+	.display.has_dmc = 1, \
> 	.has_gt_uc = 1, \
> 	.display.has_hdcp = 1, \
> 	.display.has_ipc = 1, \
>@@ -698,7 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
> 	.display.has_psr = 1, \
> 	.display.has_psr_hw_tracking = 1, \
> 	.has_runtime_pm = 1, \
>-	.display.has_csr = 1, \
>+	.display.has_dmc = 1, \
> 	.has_rc6 = 1, \
> 	.has_rps = true, \
> 	.display.has_dp_mst = 1, \
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 8cb58a238c68..e16599b67b83 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -353,7 +353,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> 			info->display.has_fbc = 0;
>
> 		if (INTEL_GEN(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
>-			info->display.has_csr = 0;
>+			info->display.has_dmc = 0;
>
> 		if (INTEL_GEN(dev_priv) >= 10 &&
> 		    (dfsm & CNL_DFSM_DISPLAY_DSC_DISABLE))
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index e98b36959736..1390fad5ec06 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -141,7 +141,7 @@ enum intel_ppgtt_type {
> #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
> 	/* Keep in alphabetical order */ \
> 	func(cursor_needs_physical); \
>-	func(has_csr); \
>+	func(has_dmc); \
> 	func(has_ddi); \
> 	func(has_dp_mst); \
> 	func(has_dsb); \
>-- 
>2.25.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
