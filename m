Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E134D44D159
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 06:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765426E90C;
	Thu, 11 Nov 2021 05:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6EF6E90C;
 Thu, 11 Nov 2021 05:12:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="293677348"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="293677348"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 21:12:57 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="602485156"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 21:12:57 -0800
Date: Wed, 10 Nov 2021 21:12:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211111051256.GW137318@mdroper-desk1.amr.corp.intel.com>
References: <20211029032817.3747750-1-matthew.d.roper@intel.com>
 <20211029032817.3747750-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211029032817.3747750-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 02/10] drm/i915: split general MMIO setup
 from per-GT uncore init
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, andi.shyti@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 28, 2021 at 08:28:09PM -0700, Matt Roper wrote:
> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> In coming patches we'll be doing the actual tile initialization between
> these two uncore init phases.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Since the first two patches of this series are fully reviewed and have a
clean CI pass of their own
(https://lists.freedesktop.org/archives/intel-gfx-trybot/2021-November/126547.html),
I've applied them to drm-intel-gt-next while we continue refactoring the
rest of the series.

Thanks for the reviews.


Matt

> ---
>  drivers/gpu/drm/i915/i915_drv.c     |  9 ++++++++-
>  drivers/gpu/drm/i915/intel_uncore.c | 17 +++--------------
>  drivers/gpu/drm/i915/intel_uncore.h |  2 ++
>  3 files changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 1e5b75ae9932..b9fed62806f8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -416,10 +416,14 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = intel_uncore_init_mmio(&dev_priv->uncore);
> +	ret = intel_uncore_setup_mmio(&dev_priv->uncore);
>  	if (ret < 0)
>  		goto err_bridge;
>  
> +	ret = intel_uncore_init_mmio(&dev_priv->uncore);
> +	if (ret)
> +		goto err_mmio;
> +
>  	/* Try to make sure MCHBAR is enabled before poking at it */
>  	intel_setup_mchbar(dev_priv);
>  	intel_device_info_runtime_init(dev_priv);
> @@ -436,6 +440,8 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>  err_uncore:
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> +err_mmio:
> +	intel_uncore_cleanup_mmio(&dev_priv->uncore);
>  err_bridge:
>  	pci_dev_put(dev_priv->bridge_dev);
>  
> @@ -450,6 +456,7 @@ static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
>  {
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> +	intel_uncore_cleanup_mmio(&dev_priv->uncore);
>  	pci_dev_put(dev_priv->bridge_dev);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 722910d02b5f..abdac78d3976 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2020,7 +2020,7 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
>  	return NOTIFY_OK;
>  }
>  
> -static int uncore_mmio_setup(struct intel_uncore *uncore)
> +int intel_uncore_setup_mmio(struct intel_uncore *uncore)
>  {
>  	struct drm_i915_private *i915 = uncore->i915;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> @@ -2053,7 +2053,7 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
>  	return 0;
>  }
>  
> -static void uncore_mmio_cleanup(struct intel_uncore *uncore)
> +void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
>  {
>  	struct pci_dev *pdev = to_pci_dev(uncore->i915->drm.dev);
>  
> @@ -2146,10 +2146,6 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
>  	struct drm_i915_private *i915 = uncore->i915;
>  	int ret;
>  
> -	ret = uncore_mmio_setup(uncore);
> -	if (ret)
> -		return ret;
> -
>  	/*
>  	 * The boot firmware initializes local memory and assesses its health.
>  	 * If memory training fails, the punit will have been instructed to
> @@ -2170,7 +2166,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
>  	} else {
>  		ret = uncore_forcewake_init(uncore);
>  		if (ret)
> -			goto out_mmio_cleanup;
> +			return ret;
>  	}
>  
>  	/* make sure fw funcs are set if and only if we have fw*/
> @@ -2192,11 +2188,6 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
>  		drm_dbg(&i915->drm, "unclaimed mmio detected on uncore init, clearing\n");
>  
>  	return 0;
> -
> -out_mmio_cleanup:
> -	uncore_mmio_cleanup(uncore);
> -
> -	return ret;
>  }
>  
>  /*
> @@ -2261,8 +2252,6 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
>  		intel_uncore_fw_domains_fini(uncore);
>  		iosf_mbi_punit_release();
>  	}
> -
> -	uncore_mmio_cleanup(uncore);
>  }
>  
>  static const struct reg_whitelist {
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 3248e4e2c540..d1d17b04e29f 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -218,11 +218,13 @@ void
>  intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
>  void intel_uncore_init_early(struct intel_uncore *uncore,
>  			     struct drm_i915_private *i915);
> +int intel_uncore_setup_mmio(struct intel_uncore *uncore);
>  int intel_uncore_init_mmio(struct intel_uncore *uncore);
>  void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
>  					  struct intel_gt *gt);
>  bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore);
>  bool intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore);
> +void intel_uncore_cleanup_mmio(struct intel_uncore *uncore);
>  void intel_uncore_fini_mmio(struct intel_uncore *uncore);
>  void intel_uncore_suspend(struct intel_uncore *uncore);
>  void intel_uncore_resume_early(struct intel_uncore *uncore);
> -- 
> 2.33.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
