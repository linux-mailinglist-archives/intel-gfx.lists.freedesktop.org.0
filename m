Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F86954FD86
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 21:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D1710E67D;
	Fri, 17 Jun 2022 19:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4848610E5A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 19:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655494135; x=1687030135;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J6gNqyPSvGoa7LmqN6Ad0fFd4qO5IwdfbiFRkg+Z7Os=;
 b=eJ4CTvh9OR929UKkVwl0bTjAYpPvAKhS8imFyF6l3nKIZzoJo/az8fp0
 QBkG0kdIB8PWeLkzSEHzK7hmBSqVDCLcH4eDeAkSIhtTQNwa0zfmEzqbX
 +2k7O36vyblm5qZ3KYIuWic6wTLf8PlKs5WlkQhhslWw1AGHWIobgfssT
 Q/3X5tSa8Z3OwzMV/+Pw6R5+R9Is8Z7/PYeyHy3bYCWNGzwJfUOUYijsl
 GhrkbE2954tOduW2muTa/VfTQmbvYn9BHC/4uN8/RddtMqUpNmKro/e1T
 DSPf4M5WxKRdmeXv2rTzrZbT1UcqR0rZDC0coZ2Xv/6ID7DAWFnoVsMkU A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280305389"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280305389"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 12:28:53 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653742047"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 12:28:53 -0700
Date: Fri, 17 Jun 2022 12:28:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
References: <20220617190629.355356-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220617190629.355356-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only
 after display is turned off
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 17, 2022 at 12:06:29PM -0700, José Roberto de Souza wrote:
> Gem buffers could still be in use by display after i915_gem_suspend()
> is executed so there is chances that i915_gem_flush_free_objects()
> will be being executed at the same time that
> intel_runtime_pm_driver_release() is executed printing warnings about
> wakerefs will being held.

By the same logic do we need to adjust i915_driver_remove() too?


Matt

> 
> So here only calling i915_gem_suspend() and by consequence
> i915_gem_drain_freed_objects() only after display is down making
> sure all buffers are freed.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d26dcca7e654a..4227675dd1cfe 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1067,8 +1067,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	intel_runtime_pm_disable(&i915->runtime_pm);
>  	intel_power_domains_disable(i915);
>  
> -	i915_gem_suspend(i915);
> -
>  	if (HAS_DISPLAY(i915)) {
>  		drm_kms_helper_poll_disable(&i915->drm);
>  
> @@ -1085,6 +1083,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  
>  	intel_dmc_ucode_suspend(i915);
>  
> +	i915_gem_suspend(i915);
> +
>  	/*
>  	 * The only requirement is to reboot with display DC states disabled,
>  	 * for now leaving all display power wells in the INIT power domain
> -- 
> 2.36.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
