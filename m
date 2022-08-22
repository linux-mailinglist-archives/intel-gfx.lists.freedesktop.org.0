Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED05459BCC4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 11:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4F910E6DE;
	Mon, 22 Aug 2022 09:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137F510E4FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 09:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661160243; x=1692696243;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Nz+a+A42jAT7mXtjLqmrcZdUhY6SqQkJ+lbaif/5EHk=;
 b=gi10j5ijo3tPbzwQvRATwkNzmRMCzZ+2xchyUmiaHi8ggH4FQPDz8v8M
 1qfzWDR2NSZ9wqA8rpfBC44hceL0VFiVLCyNvPSA8j+M11BeMW/L8JmVT
 9L18T7dHcdibPhZLzDlWyiD7oXtsaThn4Le4lIsv4zXJJsee1H97ZCrfc
 A8WjiGkuWbYxBD9E2GhdSHtov0sjnbJBYSlVEib7SBZfTL0Q0T3ImDfch
 hlQjexkn6MJc6t0EGNx7C8uZA9CI8urVRDG4FYFgNn4Q+TLNZlWGr6O9z
 uUQzXshclfV2hGpYohthpwZyaWs7KX5Ju1Jt2M2NZkcEGmRBYsQuzCXxh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="273122415"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="273122415"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 02:23:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="638117678"
Received: from trangnek-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.50.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 02:23:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220808035750.3111046-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
 <20220808035750.3111046-1-arun.r.murthy@intel.com>
Date: Mon, 22 Aug 2022 12:23:50 +0300
Message-ID: <87zgfwmy1l.fsf@intel.com>
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

On Mon, 08 Aug 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> backlight device names") already adds support for dual panel backlight
> but with error prints. Since the patch tried to create the backlight
> device with the same name and upon failure will try with a different
> name it leads to failure logs in dmesg inturn getting caught by CI.
>
> This patch alternately will check if the backlight class of same name
> exists, will use a different name.

Thanks for the patch, pushed to drm-intel-next.

I took the liberty of rewriting the commit message a bit while pushing.

BR,
Jani.


>
> v2: reworked on top of the patch commit 20f85ef89d94
> ("drm/i915/backlight: use unique backlight device names")
> v3: fixed the ref count leak(Jani N)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 26 +++++++++----------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 110fc98ec280..931446413372 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -971,26 +971,24 @@ int intel_backlight_device_register(struct intel_connector *connector)
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
> +	bd = backlight_device_get_by_name(name);
> +	if (bd) {
> +		put_device(&bd->dev);
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
