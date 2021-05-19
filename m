Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 267C43886F1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 07:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EB66E217;
	Wed, 19 May 2021 05:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1AE6E217
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 05:46:50 +0000 (UTC)
IronPort-SDR: xi/4Iq8oqHz2hUk4Hq5dp0zCAVrKNjfZTmMkFih5y3WmpP8GwVJ6w85kk9piLUq56FFYy9BH+x
 04UkyF/Yd0xg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="198944907"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="198944907"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:46:48 -0700
IronPort-SDR: IUaDjCAwiFtuydYSLbzdZiMzLXSX3bZlUPNMkKjwImlguj7aTjGdA7q8k5n8mJkwluFq23Urg/
 65nwRIStH7aw==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="411578056"
Received: from marora1-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.1.180])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:46:48 -0700
Date: Tue, 18 May 2021 22:46:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210519054625.ig7fegvh6xicttdy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
 <20210518213444.11420-5-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518213444.11420-5-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 4/5] drm/i915/dmc: Rename functions names
 having "csr"
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

On Tue, May 18, 2021 at 02:34:43PM -0700, Anusha Srivatsa wrote:
>No functional change.
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_csr.c      | 64 +++++++++----------
> drivers/gpu/drm/i915/display/intel_csr.h      | 10 +--
> drivers/gpu/drm/i915/display/intel_display.c  | 14 ++--
> .../drm/i915/display/intel_display_power.c    | 14 ++--
> drivers/gpu/drm/i915/i915_drv.c               |  6 +-
> 5 files changed, 54 insertions(+), 54 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
>index f2124796ce77..ae1dfafaff9a 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
>@@ -302,14 +302,14 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
> }
>
> /**
>- * intel_csr_load_program() - write the firmware from memory to register.
>+ * intel_dmc_load_program() - write the firmware from memory to register.
>  * @dev_priv: i915 drm device.
>  *
>- * CSR firmware is read from a .bin file and kept in internal memory one time.
>+ * DMC firmware is read from a .bin file and kept in internal memory one time.
>  * Everytime display comes back from low power state this function is called to
>  * copy the firmware from internal memory to registers.
>  */
>-void intel_csr_load_program(struct drm_i915_private *dev_priv)
>+void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> {
> 	u32 *payload = dev_priv->dmc.dmc_payload;
> 	u32 i, fw_size;
>@@ -391,9 +391,9 @@ static u32 find_dmc_fw_offset(const struct intel_fw_info *fw_info,
> 	return dmc_offset;
> }
>
>-static u32 parse_csr_fw_dmc(struct intel_dmc *dmc,
>-			    const struct intel_dmc_header_base *dmc_header,
>-			    size_t rem_size)
>+static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>+			       const struct intel_dmc_header_base *dmc_header,
>+			       size_t rem_size)
> {
> 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
> 	const u32 *mmioaddr, *mmiodata;
>@@ -498,7 +498,7 @@ static u32 parse_csr_fw_dmc(struct intel_dmc *dmc,
> }
>
> static u32
>-parse_csr_fw_package(struct intel_dmc *dmc,
>+parse_dmc_fw_package(struct intel_dmc *dmc,
> 		     const struct intel_package_header *package_header,
> 		     const struct stepping_info *si,
> 		     size_t rem_size)
>@@ -557,7 +557,7 @@ parse_csr_fw_package(struct intel_dmc *dmc,
> }
>
> /* Return number of bytes parsed or 0 on error */
>-static u32 parse_csr_fw_css(struct intel_dmc *dmc,
>+static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> 			    struct intel_css_header *css_header,
> 			    size_t rem_size)
> {
>@@ -590,7 +590,7 @@ static u32 parse_csr_fw_css(struct intel_dmc *dmc,
> 	return sizeof(struct intel_css_header);
> }
>
>-static void parse_csr_fw(struct drm_i915_private *dev_priv,
>+static void parse_dmc_fw(struct drm_i915_private *dev_priv,
> 			 const struct firmware *fw)
> {
> 	struct intel_css_header *css_header;
>@@ -606,7 +606,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract CSS Header information */
> 	css_header = (struct intel_css_header *)fw->data;
>-	r = parse_csr_fw_css(dmc, css_header, fw->size);
>+	r = parse_dmc_fw_css(dmc, css_header, fw->size);
> 	if (!r)
> 		return;
>
>@@ -614,7 +614,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract Package Header information */
> 	package_header = (struct intel_package_header *)&fw->data[readcount];
>-	r = parse_csr_fw_package(dmc, package_header, si, fw->size - readcount);
>+	r = parse_dmc_fw_package(dmc, package_header, si, fw->size - readcount);
> 	if (!r)
> 		return;
>
>@@ -622,17 +622,17 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract dmc_header information */
> 	dmc_header = (struct intel_dmc_header_base *)&fw->data[readcount];
>-	parse_csr_fw_dmc(dmc, dmc_header, fw->size - readcount);
>+	parse_dmc_fw_header(dmc, dmc_header, fw->size - readcount);
> }
>
>-static void intel_csr_runtime_pm_get(struct drm_i915_private *dev_priv)
>+static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
> {
> 	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
> 	dev_priv->dmc.wakeref =
> 		intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> }
>
>-static void intel_csr_runtime_pm_put(struct drm_i915_private *dev_priv)
>+static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> {
> 	intel_wakeref_t wakeref __maybe_unused =
> 		fetch_and_zero(&dev_priv->dmc.wakeref);
>@@ -640,7 +640,7 @@ static void intel_csr_runtime_pm_put(struct drm_i915_private *dev_priv)
> 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> }
>
>-static void csr_load_work_fn(struct work_struct *work)
>+static void dmc_load_work_fn(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv;
> 	struct intel_dmc *dmc;
>@@ -650,11 +650,11 @@ static void csr_load_work_fn(struct work_struct *work)
> 	dmc = &dev_priv->dmc;
>
> 	request_firmware(&fw, dev_priv->dmc.fw_path, dev_priv->drm.dev);
>-	parse_csr_fw(dev_priv, fw);
>+	parse_dmc_fw(dev_priv, fw);
>
> 	if (dev_priv->dmc.dmc_payload) {
>-		intel_csr_load_program(dev_priv);
>-		intel_csr_runtime_pm_put(dev_priv);
>+		intel_dmc_load_program(dev_priv);
>+		intel_dmc_runtime_pm_put(dev_priv);
>
> 		drm_info(&dev_priv->drm,
> 			 "Finished loading DMC firmware %s (v%u.%u)\n",
>@@ -673,17 +673,17 @@ static void csr_load_work_fn(struct work_struct *work)
> }
>
> /**
>- * intel_csr_ucode_init() - initialize the firmware loading.
>+ * intel_dmc_ucode_init() - initialize the firmware loading.
>  * @dev_priv: i915 drm device.
>  *
>  * This function is called at the time of loading the display driver to read
>  * firmware from a .bin file and copied into a internal memory.
>  */
>-void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>+void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> {
> 	struct intel_dmc *dmc = &dev_priv->dmc;
>
>-	INIT_WORK(&dev_priv->dmc.work, csr_load_work_fn);
>+	INIT_WORK(&dev_priv->dmc.work, dmc_load_work_fn);
>
> 	if (!HAS_DMC(dev_priv))
> 		return;
>@@ -696,7 +696,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
> 	 * suspend as runtime suspend *requires* a working DMC for whatever
> 	 * reason.
> 	 */
>-	intel_csr_runtime_pm_get(dev_priv);
>+	intel_dmc_runtime_pm_get(dev_priv);
>
> 	if (IS_ALDERLAKE_S(dev_priv)) {
> 		dmc->fw_path = ADLS_DMC_PATH;
>@@ -766,14 +766,14 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
> }
>
> /**
>- * intel_csr_ucode_suspend() - prepare CSR firmware before system suspend
>+ * intel_dmc_ucode_suspend() - prepare DMC firmware before system suspend
>  * @dev_priv: i915 drm device
>  *
>  * Prepare the DMC firmware before entering system suspend. This includes
>  * flushing pending work items and releasing any resources acquired during
>  * init.
>  */
>-void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
>+void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
> {
> 	if (!HAS_DMC(dev_priv))
> 		return;
>@@ -782,17 +782,17 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
>
> 	/* Drop the reference held in case DMC isn't loaded. */
> 	if (!dev_priv->dmc.dmc_payload)
>-		intel_csr_runtime_pm_put(dev_priv);
>+		intel_dmc_runtime_pm_put(dev_priv);
> }
>
> /**
>- * intel_csr_ucode_resume() - init CSR firmware during system resume
>+ * intel_dmc_ucode_resume() - init DMC firmware during system resume
>  * @dev_priv: i915 drm device
>  *
>  * Reinitialize the DMC firmware during system resume, reacquiring any
>- * resources released in intel_csr_ucode_suspend().
>+ * resources released in intel_dmc_ucode_suspend().
>  */
>-void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
>+void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
> {
> 	if (!HAS_DMC(dev_priv))
> 		return;
>@@ -802,22 +802,22 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
> 	 * loaded.
> 	 */
> 	if (!dev_priv->dmc.dmc_payload)
>-		intel_csr_runtime_pm_get(dev_priv);
>+		intel_dmc_runtime_pm_get(dev_priv);
> }
>
> /**
>- * intel_csr_ucode_fini() - unload the CSR firmware.
>+ * intel_dmc_ucode_fini() - unload the DMC firmware.
>  * @dev_priv: i915 drm device.
>  *
>  * Firmmware unloading includes freeing the internal memory and reset the
>  * firmware loading status.
>  */
>-void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
>+void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
> {
> 	if (!HAS_DMC(dev_priv))
> 		return;
>
>-	intel_csr_ucode_suspend(dev_priv);
>+	intel_dmc_ucode_suspend(dev_priv);
> 	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
>
> 	kfree(dev_priv->dmc.dmc_payload);
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
>index 984e9fb250f8..fc4960b91686 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.h
>+++ b/drivers/gpu/drm/i915/display/intel_csr.h
>@@ -12,10 +12,10 @@ struct drm_i915_private;
> #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>
>-void intel_csr_ucode_init(struct drm_i915_private *i915);
>-void intel_csr_load_program(struct drm_i915_private *i915);
>-void intel_csr_ucode_fini(struct drm_i915_private *i915);
>-void intel_csr_ucode_suspend(struct drm_i915_private *i915);
>-void intel_csr_ucode_resume(struct drm_i915_private *i915);
>+void intel_dmc_ucode_init(struct drm_i915_private *i915);
>+void intel_dmc_load_program(struct drm_i915_private *i915);
>+void intel_dmc_ucode_fini(struct drm_i915_private *i915);
>+void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>+void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>
> #endif /* __INTEL_CSR_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 422b59ebf6dc..39c9c49b378b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -12192,7 +12192,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
> 	if (!HAS_DISPLAY(i915))
> 		return 0;
>
>-	intel_csr_ucode_init(i915);
>+	intel_dmc_ucode_init(i915);
>
> 	i915->modeset_wq = alloc_ordered_workqueue("i915_modeset", 0);
> 	i915->flip_wq = alloc_workqueue("i915_flip", WQ_HIGHPRI |
>@@ -12204,15 +12204,15 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>
> 	ret = intel_cdclk_init(i915);
> 	if (ret)
>-		goto cleanup_vga_client_pw_domain_csr;
>+		goto cleanup_vga_client_pw_domain_dmc;
>
> 	ret = intel_dbuf_init(i915);
> 	if (ret)
>-		goto cleanup_vga_client_pw_domain_csr;
>+		goto cleanup_vga_client_pw_domain_dmc;
>
> 	ret = intel_bw_init(i915);
> 	if (ret)
>-		goto cleanup_vga_client_pw_domain_csr;
>+		goto cleanup_vga_client_pw_domain_dmc;
>
> 	init_llist_head(&i915->atomic_helper.free_list);
> 	INIT_WORK(&i915->atomic_helper.free_work,
>@@ -12224,8 +12224,8 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>
> 	return 0;
>
>-cleanup_vga_client_pw_domain_csr:
>-	intel_csr_ucode_fini(i915);
>+cleanup_vga_client_pw_domain_dmc:
>+	intel_dmc_ucode_fini(i915);
> 	intel_power_domains_driver_remove(i915);
> 	intel_vga_unregister(i915);
> cleanup_bios:
>@@ -13304,7 +13304,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> /* part #3: call after gem init */
> void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> {
>-	intel_csr_ucode_fini(i915);
>+	intel_dmc_ucode_fini(i915);
>
> 	intel_power_domains_driver_remove(i915);
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index de58abdd838b..cbba41d3e6cf 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -958,7 +958,7 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
> 	intel_pps_unlock_regs_wa(dev_priv);
> }
>
>-static void assert_csr_loaded(struct drm_i915_private *dev_priv)
>+static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
> {
> 	drm_WARN_ONCE(&dev_priv->drm,
> 		      !intel_de_read(dev_priv, DMC_PROGRAM(0)),
>@@ -1057,7 +1057,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
> 		      "DC5 already programmed to be enabled.\n");
> 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>
>-	assert_csr_loaded(dev_priv);
>+	assert_dmc_loaded(dev_priv);
> }
>
> static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>@@ -1084,7 +1084,7 @@ static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
> 		       DC_STATE_EN_UPTO_DC6),
> 		      "DC6 already programmed to be enabled.\n");
>
>-	assert_csr_loaded(dev_priv);
>+	assert_dmc_loaded(dev_priv);
> }
>
> static void skl_enable_dc6(struct drm_i915_private *dev_priv)
>@@ -5574,7 +5574,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
> 	gen9_dbuf_enable(dev_priv);
>
> 	if (resume && dev_priv->dmc.dmc_payload)
>-		intel_csr_load_program(dev_priv);
>+		intel_dmc_load_program(dev_priv);
> }
>
> static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
>@@ -5641,7 +5641,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
> 	gen9_dbuf_enable(dev_priv);
>
> 	if (resume && dev_priv->dmc.dmc_payload)
>-		intel_csr_load_program(dev_priv);
>+		intel_dmc_load_program(dev_priv);
> }
>
> static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
>@@ -5707,7 +5707,7 @@ static void cnl_display_core_init(struct drm_i915_private *dev_priv, bool resume
> 	gen9_dbuf_enable(dev_priv);
>
> 	if (resume && dev_priv->dmc.dmc_payload)
>-		intel_csr_load_program(dev_priv);
>+		intel_dmc_load_program(dev_priv);
> }
>
> static void cnl_display_core_uninit(struct drm_i915_private *dev_priv)
>@@ -5864,7 +5864,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
> 		tgl_bw_buddy_init(dev_priv);
>
> 	if (resume && dev_priv->dmc.dmc_payload)
>-		intel_csr_load_program(dev_priv);
>+		intel_dmc_load_program(dev_priv);
>
> 	/* Wa_14011508470 */
> 	if (DISPLAY_VER(dev_priv) == 12) {
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>index 5118dc8386b2..f2a9583dfecc 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -1043,7 +1043,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> 	intel_suspend_encoders(i915);
> 	intel_shutdown_encoders(i915);
>
>-	intel_csr_ucode_suspend(i915);
>+	intel_dmc_ucode_suspend(i915);
>
> 	/*
> 	 * The only requirement is to reboot with display DC states disabled,
>@@ -1124,7 +1124,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>
> 	dev_priv->suspend_count++;
>
>-	intel_csr_ucode_suspend(dev_priv);
>+	intel_dmc_ucode_suspend(dev_priv);
>
> 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>
>@@ -1226,7 +1226,7 @@ static int i915_drm_resume(struct drm_device *dev)
>
> 	i915_ggtt_resume(&dev_priv->ggtt);
>
>-	intel_csr_ucode_resume(dev_priv);
>+	intel_dmc_ucode_resume(dev_priv);
>
> 	i915_restore_display(dev_priv);
> 	intel_pps_unlock_regs_wa(dev_priv);
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
