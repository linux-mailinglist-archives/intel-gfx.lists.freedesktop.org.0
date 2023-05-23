Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06E970DCE3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 14:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F235010E427;
	Tue, 23 May 2023 12:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABD610E092;
 Tue, 23 May 2023 12:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684846072; x=1716382072;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9dH2P6nCFQ8/gZLy0O5O1z/vgV1AQZu9VM2dGjlE3FE=;
 b=hzaBA9Pm+54jdAvp2i/clxfjWUHIOWCEDMK3+o9ngfnC2bMU30ltePsQ
 xJuOdWwFhWLu3r37zpNS3+11Ahh0sLyY2LYijzjTW+NubBwimcPscgR6I
 6vW1up5sTJaw6FH4pwpMXHj3bcvpDR8auuGN815danzvBu+ci7QQyl2Rc
 rPu2RtIvC+9yB5f1/U5hCarbgP9w5OEC/+e7yKnu2sWcifVQHwBtulRbY
 SKG14mUtvpu9SthtwenuXMLW20yb8i81wpjHF5Xu8d6cSWevHGHZ1zRBP
 X415dvjy/XHSjVwdppW2w2bVCuJLhabZ58zSTyGmElSqraXggsLF5Ne/C A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="337810648"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="337810648"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:47:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="706991909"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="706991909"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:47:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230522202314.3939499-3-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-3-matthew.d.roper@intel.com>
Date: Tue, 23 May 2023 15:47:46 +0300
Message-ID: <87ilcjkydp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 2/6] drm/i915: Convert
 INTEL_INFO()->display to a pointer
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 May 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 4e23be2995bf..d0bf626d0360 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -138,7 +138,7 @@ void intel_device_info_print(const struct intel_device_info *info,
>  
>  	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
>  
> -#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
> +#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))
>  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
>  #undef PRINT_FLAG
>  
> @@ -388,6 +388,8 @@ mkwrite_device_info(struct drm_i915_private *i915)
>  	return (struct intel_device_info *)INTEL_INFO(i915);
>  }
>  
> +static const struct intel_display_device_info no_display = { 0 };

I think {} is preferred. Can be fixed afterwards if there's no other
reason to do a respin.

> +
>  /**
>   * intel_device_info_runtime_init - initialize runtime info
>   * @dev_priv: the i915 device
> @@ -538,7 +540,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv)) {
>  		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>  						   DRIVER_ATOMIC);
> -		memset(&info->display, 0, sizeof(info->display));
> +		info->display = &no_display;

Nice!

Acked-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel Open Source Graphics Center
