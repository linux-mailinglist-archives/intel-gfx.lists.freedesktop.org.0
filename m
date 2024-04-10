Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B3989F10D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 13:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5623210E20E;
	Wed, 10 Apr 2024 11:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fy3iPf0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DEA10E4C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 11:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749369; x=1744285369;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mdsadKPCXcYzJ2KKB5/r1gEYa7n8lOp/1y7dKeQ1/wI=;
 b=Fy3iPf0AzmgRA9QEnPYrtLFrVXL8JnSdFKTBQ+AK+KqaWFUUAwBXlDFy
 uCK4mJ/pmfbdVmXI5RJWwq4uhExyaDNnzocT/CRXVWev/ve/PczXJ7Hy4
 HoMyqxQvbb+WeAzQ9kAlnT5sw8eKlgiJKCdwkusnH3s6p9gLTIGO2hVn2
 SnMGJqZFVXLpoUnxUBsmoJaoVa9xBSW4/RPtgFMaPXsS6n0vFpCRfYH8A
 BnwKjo2Ip/anrz1C1erGDkJ1pVmCuNkaHk+s4uhiDX/z7QXbJu3SlmaKJ
 gK7kHV9tuCRY2yQLU1/dDhHntPFkl49NpF21q/KhheJ2KLLU2LtEbAh3I g==;
X-CSE-ConnectionGUID: gJjkb2ujSvGh2kEQ9zOE/A==
X-CSE-MsgGUID: TOKP0O6IRhKhqPtsAP4eBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18669759"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="18669759"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:42:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827793020"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="827793020"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 10 Apr 2024 04:42:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Apr 2024 14:42:46 +0300
Date: Wed, 10 Apr 2024 14:42:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Badal Nilawar <badal.nilawar@intel.com>
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
Message-ID: <ZhZ7NsyBtQjnE8HE@intel.com>
References: <20240410042855.130262-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240410042855.130262-1-ashutosh.dixit@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 09, 2024 at 09:28:55PM -0700, Ashutosh Dixit wrote:
> There are no hwmon selftests so there is no need to enable hwmon for
> selftests. So enable hwmon only for real driver load.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Why are we adding duct tape instead of fixing it properly?

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 9ee902d5b72c..6fa6d2c8109f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -94,6 +94,7 @@
>  #include "i915_memcpy.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> +#include "i915_selftest.h"
>  #include "i915_suspend.h"
>  #include "i915_switcheroo.h"
>  #include "i915_sysfs.h"
> @@ -589,6 +590,15 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>  		pci_disable_msi(pdev);
>  }
>  
> +static bool is_selftest(void)
> +{
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
> +#else
> +	return false;
> +#endif
> +}
> +
>  /**
>   * i915_driver_register - register the driver with the rest of the system
>   * @dev_priv: device private
> @@ -624,7 +634,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>  
>  	intel_pxp_debugfs_register(dev_priv->pxp);
>  
> -	i915_hwmon_register(dev_priv);
> +	if (!is_selftest())
> +		i915_hwmon_register(dev_priv);
>  
>  	intel_display_driver_register(dev_priv);
>  
> @@ -660,7 +671,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_driver_unregister(gt);
>  
> -	i915_hwmon_unregister(dev_priv);
> +	if (!is_selftest())
> +		i915_hwmon_unregister(dev_priv);
>  
>  	i915_perf_unregister(dev_priv);
>  	i915_pmu_unregister(dev_priv);
> -- 
> 2.41.0

-- 
Ville Syrjälä
Intel
