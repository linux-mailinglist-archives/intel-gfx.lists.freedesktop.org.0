Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB789463ED3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 20:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883626E197;
	Tue, 30 Nov 2021 19:49:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646476E043;
 Tue, 30 Nov 2021 19:49:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="216322186"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="216322186"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 11:49:00 -0800
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="595571391"
Received: from astamour-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.16.69])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 11:48:59 -0800
Date: Tue, 30 Nov 2021 11:48:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211130194859.fh3lwyo5sasudmye@ldmartin-desk2>
References: <20211126141424.493753-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211126141424.493753-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Use per device iommu check
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
Cc: Intel-gfx@lists.freedesktop.org, Robin Murphy <robin.murphy@arm.com>,
 dri-devel@lists.freedesktop.org, Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 26, 2021 at 02:14:24PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>With both integrated and discrete Intel GPUs in a system, the current
>global check of intel_iommu_gfx_mapped, as done from intel_vtd_active()
>may not be completely accurate.
>
>In this patch we add i915 parameter to intel_vtd_active() in order to
>prepare it for multiple GPUs and we also change the check away from Intel
>specific intel_iommu_gfx_mapped (global exported by the Intel IOMMU
>driver) to probing the presence of IOMMU on a specific device using
>device_iommu_mapped().
>
>This will return true both for IOMMU pass-through and address translation
>modes which matches the current behaviour. If in the future we wanted to
>distinguish between these two modes we could either use
>iommu_get_domain_for_dev() and check for __IOMMU_DOMAIN_PAGING bit
>indicating address translation, or ask for a new API to be exported from
>the IOMMU core code.
>
>v2:
>  * Check for dmar translation specifically, not just iommu domain. (Baolu)
>
>v3:
> * Go back to plain "any domain" check for now, rewrite commit message.
>
>v4:
> * Use device_iommu_mapped. (Robin, Baolu)
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Cc: Lu Baolu <baolu.lu@linux.intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Robin Murphy <robin.murphy@arm.com>
>Acked-by: Robin Murphy <robin.murphy@arm.com>
>Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

this last version looks pretty clean.

Also, for patches touching gem / gt we should Cc dri-devel. I'm leaving
the patch below for reference and Cc'ing it. Small nit below,
but can be ignored.

>---
> drivers/gpu/drm/i915/display/intel_bw.c      |  2 +-
> drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> drivers/gpu/drm/i915/display/intel_fbc.c     |  2 +-
> drivers/gpu/drm/i915/gem/i915_gem_stolen.c   |  2 +-
> drivers/gpu/drm/i915/gem/i915_gemfs.c        |  2 +-
> drivers/gpu/drm/i915/gt/intel_ggtt.c         |  4 ++--
> drivers/gpu/drm/i915/i915_debugfs.c          |  1 +
> drivers/gpu/drm/i915/i915_driver.c           |  7 +++++++
> drivers/gpu/drm/i915/i915_drv.h              | 13 +++++++------
> drivers/gpu/drm/i915/i915_gpu_error.c        |  5 +----
> drivers/gpu/drm/i915/intel_device_info.c     | 14 +-------------
> drivers/gpu/drm/i915/intel_pm.c              |  2 +-
> 12 files changed, 25 insertions(+), 31 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>index abec394f6869..2da4aacc956b 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -634,7 +634,7 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> 	for_each_pipe(dev_priv, pipe)
> 		data_rate += bw_state->data_rate[pipe];
>
>-	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active())
>+	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active(dev_priv))
> 		data_rate = data_rate * 105 / 100;
>
> 	return data_rate;
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index b2d51cd79d6c..1ef77ba7f645 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1293,7 +1293,7 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>
>-	return crtc_state->uapi.async_flip && intel_vtd_active() &&
>+	return crtc_state->uapi.async_flip && intel_vtd_active(i915) &&
> 		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
> }
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>index d0c34bc3af6c..614e8697c068 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -1677,7 +1677,7 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
> static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
> {
> 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>-	if (intel_vtd_active() &&
>+	if (intel_vtd_active(i915) &&
> 	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> 		drm_info(&i915->drm,
> 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>index 80680395bb3b..bce03d74a0b4 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>@@ -399,7 +399,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
> 		return 0;
> 	}
>
>-	if (intel_vtd_active() && GRAPHICS_VER(i915) < 8) {
>+	if (intel_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
> 		drm_notice(&i915->drm,
> 			   "%s, disabling use of stolen memory\n",
> 			   "DMAR active");
>diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
>index dbdbdc344d87..11cd66d183e6 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
>@@ -31,7 +31,7 @@ int i915_gemfs_init(struct drm_i915_private *i915)
> 	 */
>
> 	opts = NULL;
>-	if (intel_vtd_active()) {
>+	if (intel_vtd_active(i915)) {
> 		if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
> 			static char huge_opt[] = "huge=within_size"; /* r/w */
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>index 555111c3bee5..110d3944f9a2 100644
>--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>@@ -106,7 +106,7 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
> 	 * Query intel_iommu to see if we need the workaround. Presumably that
> 	 * was loaded first.
> 	 */
>-	if (!intel_vtd_active())
>+	if (!intel_vtd_active(i915))
> 		return false;
>
> 	if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
>@@ -1233,7 +1233,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
> 	if (ret)
> 		return ret;
>
>-	if (intel_vtd_active())
>+	if (intel_vtd_active(i915))
> 		drm_info(&i915->drm, "VT-d active for gfx access\n");
>
> 	return 0;
>diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>index fe638b5da7c0..390d541f64ea 100644
>--- a/drivers/gpu/drm/i915/i915_debugfs.c
>+++ b/drivers/gpu/drm/i915/i915_debugfs.c
>@@ -65,6 +65,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
>
> 	intel_device_info_print_static(INTEL_INFO(i915), &p);
> 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
>+	i915_print_iommu_status(i915, &p);

following the surrounding code, maybe this should be
intel_driver_print_iommu_status()?


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


thanks
Lucas De Marchi


> 	intel_gt_info_print(&i915->gt.info, &p);
> 	intel_driver_caps_print(&i915->caps, &p);
>
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>index a13666627dad..bbc99fc5888f 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -741,6 +741,12 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
> 	i915_gem_driver_unregister(dev_priv);
> }
>
>+void
>+i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
>+{
>+	drm_printf(p, "iommu: %s\n", enableddisabled(intel_vtd_active(i915)));
>+}
>+
> static void i915_welcome_messages(struct drm_i915_private *dev_priv)
> {
> 	if (drm_debug_enabled(DRM_UT_DRIVER)) {
>@@ -756,6 +762,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>
> 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
> 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
>+		i915_print_iommu_status(dev_priv, &p);
> 		intel_gt_info_print(&dev_priv->gt.info, &p);
> 	}
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 1bfadd9127fc..d99e020773ac 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1760,26 +1760,27 @@ static inline bool run_as_guest(void)
> #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
> 					      IS_ALDERLAKE_S(dev_priv))
>
>-static inline bool intel_vtd_active(void)
>+static inline bool intel_vtd_active(struct drm_i915_private *i915)
> {
>-#ifdef CONFIG_INTEL_IOMMU
>-	if (intel_iommu_gfx_mapped)
>+	if (device_iommu_mapped(i915->drm.dev))
> 		return true;
>-#endif
>
> 	/* Running as a guest, we assume the host is enforcing VT'd */
> 	return run_as_guest();
> }
>
>+void
>+i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
>+
> static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
> {
>-	return GRAPHICS_VER(dev_priv) >= 6 && intel_vtd_active();
>+	return GRAPHICS_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
> }
>
> static inline bool
> intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
> {
>-	return IS_BROXTON(i915) && intel_vtd_active();
>+	return IS_BROXTON(i915) && intel_vtd_active(i915);
> }
>
> static inline bool
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index b1e4ce0f798f..a485aa4ca669 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -1754,10 +1754,7 @@ static void capture_gen(struct i915_gpu_coredump *error)
> 	error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
> 	error->suspended = i915->runtime_pm.suspended;
>
>-	error->iommu = -1;
>-#ifdef CONFIG_INTEL_IOMMU
>-	error->iommu = intel_iommu_gfx_mapped;
>-#endif
>+	error->iommu = intel_vtd_active(i915);
> 	error->reset_count = i915_reset_count(&i915->gpu_error);
> 	error->suspend_count = i915->suspend_count;
>
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 6e6b317bc33c..e6605b5181a5 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -83,17 +83,6 @@ const char *intel_platform_name(enum intel_platform platform)
> 	return platform_names[platform];
> }
>
>-static const char *iommu_name(void)
>-{
>-	const char *msg = "n/a";
>-
>-#ifdef CONFIG_INTEL_IOMMU
>-	msg = enableddisabled(intel_iommu_gfx_mapped);
>-#endif
>-
>-	return msg;
>-}
>-
> void intel_device_info_print_static(const struct intel_device_info *info,
> 				    struct drm_printer *p)
> {
>@@ -114,7 +103,6 @@ void intel_device_info_print_static(const struct intel_device_info *info,
> 		drm_printf(p, "display version: %u\n", info->display.ver);
>
> 	drm_printf(p, "gt: %d\n", info->gt);
>-	drm_printf(p, "iommu: %s\n", iommu_name());
> 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
> 	drm_printf(p, "page-sizes: %x\n", info->page_sizes);
> 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
>@@ -374,7 +362,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> 			info->display.has_dsc = 0;
> 	}
>
>-	if (GRAPHICS_VER(dev_priv) == 6 && intel_vtd_active()) {
>+	if (GRAPHICS_VER(dev_priv) == 6 && intel_vtd_active(dev_priv)) {
> 		drm_info(&dev_priv->drm,
> 			 "Disabling ppGTT for VT-d support\n");
> 		info->ppgtt_type = INTEL_PPGTT_NONE;
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>index 01fa3fac1b57..cff0f32bedc9 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -98,7 +98,7 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
> 		 * "Plane N strech max must be programmed to 11b (x1)
> 		 *  when Async flips are enabled on that plane."
> 		 */
>-		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active())
>+		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active(dev_priv))
> 			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> 					 SKL_PLANE1_STRETCH_MAX_MASK, SKL_PLANE1_STRETCH_MAX_X1);
> 	}
>-- 
>2.32.0
>
