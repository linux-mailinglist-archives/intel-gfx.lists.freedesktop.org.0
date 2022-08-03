Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AD65888CA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 10:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8465510EA52;
	Wed,  3 Aug 2022 08:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25DC10E02C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659516102; x=1691052102;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8XH54yJ+MpzKAARebARQZLc7r8Bk3tJ/BIUaViy83C4=;
 b=SqzkxUrY8RNMFeAXGxguy+gTEifGQI4HuZsgpQZKCfywVNT2Rzbr0X+n
 /L26nvnqwSBJwv91k1A06fc9eURvUVsVtdNY8/8h00dFOZFLo3Vsm3s/p
 r50DZiHKCFuKoPnF8bIhquoHOUxfbtlgsy8OuX6hToVq1+IfIJ2fuZCEB
 UAL++LzfWP1DR4/fFwa6fDp3l4ewAwj+66OR5w2wyy+ku7rbxfgI9UF8z
 BQQkIGI7SFHlDl50r1jbi2PSBBa4TFjpaq97+UWWxqY+JI6kyzCw8EDYc
 4SahBFsidxbG8LXlukSr9WYZWaGPg4vs2Du/RaIqUvqlv4VgNPxs7HeLH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="353623646"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="353623646"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:41:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="661990181"
Received: from gpanagop-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:41:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220803082010.2952698-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
Date: Wed, 03 Aug 2022 11:41:37 +0300
Message-ID: <87fsiden26.fsf@intel.com>
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

Err, with the "forgot to git add" comment I tried to say the fix isn't
part of the patch. The bd returned by backlight_device_get_by_name()
isn't stored anywhere, and there's no device put on it.

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
