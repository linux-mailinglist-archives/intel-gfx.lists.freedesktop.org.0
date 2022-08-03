Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8225888A2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 10:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3412610E0D4;
	Wed,  3 Aug 2022 08:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AC710E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659514765; x=1691050765;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MyqgThgZctCm+0baDOspdlGPlZDX2JN/2xi+6HZMBVw=;
 b=DdRKYQsgvpxIOEPm7+bQeHd7sZ8DiyyKnK8ozKOoA27h7PKaRoQMqCys
 7uRYFRI9fnpTWDy4Uu7vsHHMzwGdp1P9h9J+9cLeMPYuvvVzLuEuBi1i2
 c8dnj8Km2FWGjBFxn5Egw8WSs3H2OctvybMqCjKdTQstNsm4obW2bVr9S
 LqopuqdWQAl4V9Jwxu13zCxURXdefnhvdLsy+CfcPiCipLFOOK0jEBwnU
 40oStHtnvtP2DFjRHoVyTwhnsAdHgE1MtIqAUVpXRoAjfcYdxWBDMsp+o
 TqST9HZjfYVvb9uGMx99PW5NN0vATw3AVyWHFp2c9t3fwJtOqa6KpcGXt g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290389722"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="290389722"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:19:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="631054270"
Received: from gpanagop-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.119])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:19:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220803080823.2952635-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220713081747.1729689-1-arun.r.murthy@intel.com>
 <20220803080823.2952635-1-arun.r.murthy@intel.com>
Date: Wed, 03 Aug 2022 11:19:20 +0300
Message-ID: <87iln9eo3b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display: add support for dual
 panel backlight
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

On Wed, 03 Aug 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> backlight device names") already adds support for dual panel backlight
> but with error prints. Since the patch tried to create the backlight
> device with the same name and upon failure will try with a different
> name it leads to failure logs in dmesg inturn getting caught by CI.
>
> This patch alternately will check if the backlight class of same name
> exists, will use a different name.
>
> v2: reworked on top of the patch 20f85ef89d94 ("drm/i915/backlight: use
> unique backlight device names")
> v3: fixed the ref count leak(Jani N)

Forgot to git add the change? ;)

Please also send as a new patch, not in-reply-to, I think CI gets
confused when it's supposed to be a standalone patch but sent in the
middle of a big thread.

BR,
Jani.

>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 24 ++++++++-----------
>  1 file changed, 10 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 110fc98ec280..1e550d048e86 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -971,26 +971,22 @@ int intel_backlight_device_register(struct intel_connector *connector)
>  	if (!name)
>  		return -ENOMEM;
>  
> -	bd = backlight_device_register(name, connector->base.kdev, connector,
> -				       &intel_backlight_device_ops, &props);
> -
> -	/*
> -	 * Using the same name independent of the drm device or connector
> -	 * prevents registration of multiple backlight devices in the
> -	 * driver. However, we need to use the default name for backward
> -	 * compatibility. Use unique names for subsequent backlight devices as a
> -	 * fallback when the default name already exists.
> -	 */
> -	if (IS_ERR(bd) && PTR_ERR(bd) == -EEXIST) {
> +	if (backlight_device_get_by_name(name)) {
> +		/*
> +		 * Using the same name independent of the drm device or connector
> +		 * prevents registration of multiple backlight devices in the
> +		 * driver. However, we need to use the default name for backward
> +		 * compatibility. Use unique names for subsequent backlight devices as a
> +		 * fallback when the default name already exists.
> +		 */
>  		kfree(name);
>  		name = kasprintf(GFP_KERNEL, "card%d-%s-backlight",
>  				 i915->drm.primary->index, connector->base.name);
>  		if (!name)
>  			return -ENOMEM;
> -
> -		bd = backlight_device_register(name, connector->base.kdev, connector,
> -					       &intel_backlight_device_ops, &props);
>  	}
> +	bd = backlight_device_register(name, connector->base.kdev, connector,
> +				       &intel_backlight_device_ops, &props);
>  
>  	if (IS_ERR(bd)) {
>  		drm_err(&i915->drm,

-- 
Jani Nikula, Intel Open Source Graphics Center
