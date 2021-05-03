Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FF6371F29
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 20:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C58A6E10A;
	Mon,  3 May 2021 18:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB4F6E10A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 18:07:20 +0000 (UTC)
IronPort-SDR: 7KJ5Jhf91wedWs+vo+n+5q2naaKJOKDsoZAP5VHVTLmIHdan8XDCEEQAHoiX+1CPDNya3NLe8L
 Cc89OpUoVlBg==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="259089915"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="259089915"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 11:07:18 -0700
IronPort-SDR: 3MQdXZZ05QobmI/ySBhUr1hBUzMZIncKFGCg+/MIR5/5DBe2MbwIYxufgoAsmOTwdQjYaX6eOI
 JF+r+P5voBPw==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="428478581"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 11:07:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210428211249.11037-3-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
 <20210428211249.11037-3-anusha.srivatsa@intel.com>
Date: Mon, 03 May 2021 21:07:13 +0300
Message-ID: <87k0ofzo6m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/csr: Add
 intel_csr_has_dmc_payload() helper
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 28 Apr 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> We check for dmc_payload being there at various points in the driver.
> Replace it with the helper.

Yes please!

>
> While at it moving bits related to CSR to intel_csr.h
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_csr.c      | 13 +++++++----
>  drivers/gpu/drm/i915/display/intel_csr.h      | 23 +++++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.c  |  4 ++--
>  .../drm/i915/display/intel_display_power.c    | 16 ++++++-------
>  drivers/gpu/drm/i915/i915_drv.h               | 18 +--------------
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
>  6 files changed, 44 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index bf60c3ffdf5d..66d369ec4f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -238,6 +238,11 @@ struct stepping_info {
>  	char substepping;
>  };
>  
> +bool intel_csr_has_dmc_payload(struct drm_i915_private *dev_priv)

s/dev_priv/i915/g

> +{
> +	return dev_priv->csr.dmc_payload;
> +}
> +
>  static const struct stepping_info skl_stepping_info[] = {
>  	{'A', '0'}, {'B', '0'}, {'C', '0'},
>  	{'D', '0'}, {'E', '0'}, {'F', '0'},
> @@ -321,7 +326,7 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> -	if (!dev_priv->csr.dmc_payload) {
> +	if (!intel_csr_has_dmc_payload(dev_priv)) {
>  		drm_err(&dev_priv->drm,
>  			"Tried to program CSR with empty payload\n");
>  		return;
> @@ -655,7 +660,7 @@ static void csr_load_work_fn(struct work_struct *work)
>  	request_firmware(&fw, dev_priv->csr.fw_path, dev_priv->drm.dev);
>  	parse_csr_fw(dev_priv, fw);
>  
> -	if (dev_priv->csr.dmc_payload) {
> +	if (intel_csr_has_dmc_payload(dev_priv)) {
>  		intel_csr_load_program(dev_priv);
>  		intel_csr_runtime_pm_put(dev_priv);
>  
> @@ -784,7 +789,7 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
>  	flush_work(&dev_priv->csr.work);
>  
>  	/* Drop the reference held in case DMC isn't loaded. */
> -	if (!dev_priv->csr.dmc_payload)
> +	if (!intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_runtime_pm_put(dev_priv);
>  }
>  
> @@ -804,7 +809,7 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
>  	 * Reacquire the reference to keep RPM disabled in case DMC isn't
>  	 * loaded.
>  	 */
> -	if (!dev_priv->csr.dmc_payload)
> +	if (!intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_runtime_pm_get(dev_priv);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
> index 03c64f8af7ab..9cab82dfb1ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.h
> +++ b/drivers/gpu/drm/i915/display/intel_csr.h
> @@ -6,6 +6,10 @@
>  #ifndef __INTEL_CSR_H__
>  #define __INTEL_CSR_H__
>  
> +#include <drm/drm_util.h>

What for?

You'll need <linux/types.h>.

We may want to consider having split interface and types headers... but
maybe later.

> +#include "intel_wakeref.h"
> +#include "i915_reg.h"
> +
>  struct drm_i915_private;
>  
>  #define CSR_VERSION(major, minor)	((major) << 16 | (minor))
> @@ -18,4 +22,23 @@ void intel_csr_ucode_fini(struct drm_i915_private *i915);
>  void intel_csr_ucode_suspend(struct drm_i915_private *i915);
>  void intel_csr_ucode_resume(struct drm_i915_private *i915);
>  
> +struct intel_csr {
> +	struct work_struct work;
> +	const char *fw_path;
> +	u32 required_version;
> +	u32 max_fw_size; /* bytes */
> +	u32 *dmc_payload;
> +	u32 dmc_fw_size; /* dwords */
> +	u32 version;
> +	u32 mmio_count;
> +	i915_reg_t mmioaddr[20];
> +	u32 mmiodata[20];
> +	u32 dc_state;
> +	u32 target_dc_state;
> +	u32 allowed_dc_mask;
> +	intel_wakeref_t wakeref;
> +};
> +
> +bool intel_csr_has_dmc_payload(struct drm_i915_private *dev_priv);
> +
>  #endif /* __INTEL_CSR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 183c414d554a..a10c9d4c2536 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -541,10 +541,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  
>  	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>  
> -	seq_printf(m, "fw loaded: %s\n", yesno(csr->dmc_payload != NULL));
> +	seq_printf(m, "fw loaded: %s\n", yesno(intel_csr_has_dmc_payload(dev_priv)));
>  	seq_printf(m, "path: %s\n", csr->fw_path);
>  
> -	if (!csr->dmc_payload)
> +	if (!intel_csr_has_dmc_payload(dev_priv))
>  		goto out;
>  
>  	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(csr->version),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index d48dd15a4f6e..6a9d99b80755 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1219,7 +1219,7 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
>  static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well)
>  {
> -	if (!dev_priv->csr.dmc_payload)
> +	if (!intel_csr_has_dmc_payload(dev_priv))
>  		return;
>  
>  	switch (dev_priv->csr.target_dc_state) {
> @@ -5150,7 +5150,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
>  
>  	gen9_dbuf_enable(dev_priv);
>  
> -	if (resume && dev_priv->csr.dmc_payload)
> +	if (resume && intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_load_program(dev_priv);
>  }
>  
> @@ -5217,7 +5217,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
>  
>  	gen9_dbuf_enable(dev_priv);
>  
> -	if (resume && dev_priv->csr.dmc_payload)
> +	if (resume && intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_load_program(dev_priv);
>  }
>  
> @@ -5283,7 +5283,7 @@ static void cnl_display_core_init(struct drm_i915_private *dev_priv, bool resume
>  	/* 6. Enable DBUF */
>  	gen9_dbuf_enable(dev_priv);
>  
> -	if (resume && dev_priv->csr.dmc_payload)
> +	if (resume && intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_load_program(dev_priv);
>  }
>  
> @@ -5440,7 +5440,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		tgl_bw_buddy_init(dev_priv);
>  
> -	if (resume && dev_priv->csr.dmc_payload)
> +	if (resume && intel_csr_has_dmc_payload(dev_priv))
>  		intel_csr_load_program(dev_priv);
>  
>  	/* Wa_14011508470 */
> @@ -5797,7 +5797,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
>  	 */
>  	if (!(i915->csr.allowed_dc_mask & DC_STATE_EN_DC9) &&
>  	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
> -	    i915->csr.dmc_payload) {
> +	    intel_csr_has_dmc_payload(i915)) {
>  		intel_display_power_flush_work(i915);
>  		intel_power_domains_verify_state(i915);
>  		return;
> @@ -5987,7 +5987,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
>  	if (DISPLAY_VER(i915) >= 11) {
>  		bxt_disable_dc9(i915);
>  		icl_display_core_init(i915, true);
> -		if (i915->csr.dmc_payload) {
> +		if (intel_csr_has_dmc_payload(i915)) {
>  			if (i915->csr.allowed_dc_mask &
>  			    DC_STATE_EN_UPTO_DC6)
>  				skl_enable_dc6(i915);
> @@ -5998,7 +5998,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		bxt_disable_dc9(i915);
>  		bxt_display_core_init(i915, true);
> -		if (i915->csr.dmc_payload &&
> +		if (intel_csr_has_dmc_payload(i915) &&
>  		    (i915->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
>  			gen9_enable_dc5(i915);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 336b09f38aad..50f32d89e175 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -74,6 +74,7 @@
>  #include "display/intel_global_state.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_opregion.h"
> +#include "display/intel_csr.h"
>  
>  #include "gem/i915_gem_context_types.h"
>  #include "gem/i915_gem_shrinker.h"
> @@ -329,23 +330,6 @@ struct drm_i915_display_funcs {
>  	void (*read_luts)(struct intel_crtc_state *crtc_state);
>  };
>  
> -struct intel_csr {
> -	struct work_struct work;
> -	const char *fw_path;
> -	u32 required_version;
> -	u32 max_fw_size; /* bytes */
> -	u32 *dmc_payload;
> -	u32 dmc_fw_size; /* dwords */
> -	u32 version;
> -	u32 mmio_count;
> -	i915_reg_t mmioaddr[20];
> -	u32 mmiodata[20];
> -	u32 dc_state;
> -	u32 target_dc_state;
> -	u32 allowed_dc_mask;
> -	intel_wakeref_t wakeref;
> -};
> -
>  enum i915_cache_level {
>  	I915_CACHE_NONE = 0,
>  	I915_CACHE_LLC, /* also used for snoopable memory on non-LLC */
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index bb181fe5d47e..cbf485e8510a 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -793,7 +793,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  		struct intel_csr *csr = &m->i915->csr;
>  
>  		err_printf(m, "DMC loaded: %s\n",
> -			   yesno(csr->dmc_payload != NULL));
> +			   yesno(intel_csr_has_dmc_payload(m->i915) != 0));
>  		err_printf(m, "DMC fw version: %d.%d\n",
>  			   CSR_VERSION_MAJOR(csr->version),
>  			   CSR_VERSION_MINOR(csr->version));

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
