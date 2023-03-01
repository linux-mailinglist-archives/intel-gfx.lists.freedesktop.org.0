Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBA26A6AE2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 11:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5FC510E22E;
	Wed,  1 Mar 2023 10:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A464C10E22E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 10:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677667030; x=1709203030;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=POxGVNbsgtfz5KUMqkvW9yro18l1JygVWGX8b1YBo3g=;
 b=iPjuIJ//JgO0wXTD50IEI64/iCw3Ar1PK5m4s4QGJ9/5F94z54wSKpPH
 dHhl29noebE/uWEQ8FC4SD4zhiu6IeciJ0z2B1FZZhQlR0QfNP8ux2f8E
 rg6bJvr4TvB1ypWOOLnQ7ZZMr41t6Lc+qlFlwchkYIvT6Yg97IbydNQ0i
 hJUY9Rb2fxSDP4Gkrc2Y9b3YrwjRzObD5HhACGYIriJgd2rzKqvOmnhRn
 87J+n3E0GoZ34Ks3v1PCcvIce+FTRJgz/0z//TNEF9MB/FPdaYuC3jBFl
 gyorah1uVWQWhYCB3In6OTWRrz6pqxwFMbOvMxILSkBizp9XVXbIodJQf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="396941899"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="396941899"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 02:37:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="704792282"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="704792282"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 02:37:09 -0800
Date: Wed, 1 Mar 2023 12:37:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y/8q05ywydKM/7uE@ideak-desk.fi.intel.com>
References: <20230227172521.851935-1-jani.nikula@intel.com>
 <20230227172521.851935-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230227172521.851935-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/dmc: allocate dmc structure
 dynamically
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 27, 2023 at 07:25:21PM +0200, Jani Nikula wrote:
> sizeof(struct intel_dmc) > 1024 bytes, allocated on all platforms as
> part of struct drm_i915_private, whether they have DMC or not.
> 
> Allocate struct intel_dmc dynamically, and hide all the dmc details
> behind an opaque pointer in intel_dmc.c.
> 
> Care must be taken to take into account all cases: DMC not supported on
> the platform, DMC supported but not initialized, and DMC initialized but
> not loaded. For the second case, we need to move the wakeref out of
> struct intel_dmc.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  8 ++-
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 50 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dmc.h      | 34 +------------
>  .../drm/i915/display/intel_modeset_setup.c    |  1 +
>  4 files changed, 53 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 631a7b17899e..fdab7bb93a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -19,7 +19,6 @@
>  #include "intel_cdclk.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> -#include "intel_dmc.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_fbc.h"
>  #include "intel_global_state.h"
> @@ -40,6 +39,7 @@ struct intel_cdclk_vals;
>  struct intel_color_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_dmc;
>  struct intel_dpll_funcs;
>  struct intel_dpll_mgr;
>  struct intel_fbdev;
> @@ -340,6 +340,11 @@ struct intel_display {
>  		spinlock_t phy_lock;
>  	} dkl;
>  
> +	struct {
> +		struct intel_dmc *dmc;
> +		intel_wakeref_t wakeref;
> +	} dmc;
> +
>  	struct {
>  		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
>  		u32 mmio_base;
> @@ -467,7 +472,6 @@ struct intel_display {
>  
>  	/* Grouping using named structs. Keep sorted. */
>  	struct intel_audio audio;
> -	struct intel_dmc dmc;
>  	struct intel_dpll dpll;
>  	struct intel_fbc *fbc[I915_MAX_FBCS];
>  	struct intel_frontbuffer_tracking fb_tracking;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 0b54b9b96249..8deebd4b62fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -38,9 +38,37 @@
>   * low-power state and comes back to normal.
>   */
>  
> +enum intel_dmc_id {
> +	DMC_FW_MAIN = 0,
> +	DMC_FW_PIPEA,
> +	DMC_FW_PIPEB,
> +	DMC_FW_PIPEC,
> +	DMC_FW_PIPED,
> +	DMC_FW_MAX
> +};
> +
> +struct intel_dmc {
> +	struct drm_i915_private *i915;
> +	struct work_struct work;
> +	const char *fw_path;
> +	u32 max_fw_size; /* bytes */
> +	u32 version;
> +	struct dmc_fw_info {
> +		u32 mmio_count;
> +		i915_reg_t mmioaddr[20];
> +		u32 mmiodata[20];
> +		u32 dmc_offset;
> +		u32 start_mmioaddr;
> +		u32 dmc_fw_size; /*dwords */
> +		u32 *payload;
> +		bool present;
> +	} dmc_info[DMC_FW_MAX];
> +};
> +
> +/* Note: This may be NULL. */
>  static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>  {
> -	return &i915->display.dmc;
> +	return i915->display.dmc.dmc;
>  }
>  
>  #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
> @@ -937,7 +965,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>  	if (!HAS_DMC(dev_priv))
>  		return;
>  
> -	dmc = i915_to_dmc(dev_priv);
> +	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
> +	if (!dmc)
> +		return;

I missed this in my review: the above implies the same thing as the
firmware not being loaded for other reasons, so it would still require
calling intel_dmc_runtime_pm_get() as it's done in those cases.

> +
>  	dmc->i915 = dev_priv;
>  
>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
> @@ -991,10 +1022,9 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>  
>  	if (dev_priv->params.dmc_firmware_path) {
>  		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
> -			dmc->fw_path = NULL;
>  			drm_info(&dev_priv->drm,
>  				 "Disabling DMC firmware and runtime PM\n");
> -			return;
> +			goto out;
>  		}
>  
>  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> @@ -1003,11 +1033,18 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>  	if (!dmc->fw_path) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "No known DMC firmware for platform, disabling runtime PM\n");
> -		return;
> +		goto out;
>  	}
>  
> +	dev_priv->display.dmc.dmc = dmc;
> +
>  	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
>  	schedule_work(&dmc->work);
> +
> +	return;
> +
> +out:
> +	kfree(dmc);
>  }
>  
>  /**
> @@ -1074,6 +1111,9 @@ void intel_dmc_fini(struct drm_i915_private *dev_priv)
>  	if (dmc) {
>  		for_each_dmc_id(dmc_id)
>  			kfree(dmc->dmc_info[dmc_id].payload);
> +
> +		kfree(dmc);
> +		dev_priv->display.dmc.dmc = NULL;
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index b74635497aa7..fd607afff2ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -6,44 +6,12 @@
>  #ifndef __INTEL_DMC_H__
>  #define __INTEL_DMC_H__
>  
> -#include "i915_reg_defs.h"
> -#include "intel_wakeref.h"
> -#include <linux/workqueue.h>
> +#include <linux/types.h>
>  
>  struct drm_i915_error_state_buf;
>  struct drm_i915_private;
> -
>  enum pipe;
>  
> -enum intel_dmc_id {
> -	DMC_FW_MAIN = 0,
> -	DMC_FW_PIPEA,
> -	DMC_FW_PIPEB,
> -	DMC_FW_PIPEC,
> -	DMC_FW_PIPED,
> -	DMC_FW_MAX
> -};
> -
> -struct intel_dmc {
> -	struct drm_i915_private *i915;
> -	struct work_struct work;
> -	const char *fw_path;
> -	u32 max_fw_size; /* bytes */
> -	u32 version;
> -	struct dmc_fw_info {
> -		u32 mmio_count;
> -		i915_reg_t mmioaddr[20];
> -		u32 mmiodata[20];
> -		u32 dmc_offset;
> -		u32 start_mmioaddr;
> -		u32 dmc_fw_size; /*dwords */
> -		u32 *payload;
> -		bool present;
> -	} dmc_info[DMC_FW_MAX];
> -
> -	intel_wakeref_t wakeref;
> -};
> -
>  void intel_dmc_init(struct drm_i915_private *i915);
>  void intel_dmc_load_program(struct drm_i915_private *i915);
>  void intel_dmc_disable_program(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 60f71e6f0491..0f7b414eb472 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -22,6 +22,7 @@
>  #include "intel_display.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_dmc.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
> -- 
> 2.39.1
> 
