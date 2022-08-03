Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B0B588CFF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 15:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A257311BFA0;
	Wed,  3 Aug 2022 13:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080831126AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 13:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659533594; x=1691069594;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fPNtQevqKUIofDD4nlYXmBB1ZTP/4BEe5KsMA3iecXg=;
 b=cP5T6IYgPmvchlWD+pWwxptBBCVsfSZHY635tb2MKu2y3+Xw/BVmYBF0
 11guLFirt+P+tnEp0wUEXIIqgEuWbrn7lXaMgSF+usy9IymZh5jlFNo8K
 W/I7BIK9TLxdB2c6OBleOg5km0V1bsnsldBG/v6aQ4BDPNdfVTIOM8cUa
 bnnm+++Il2Gv4hmiZatu3/WA+TO49DkSvZI50QWsTnk5H2EUM3fV8mB55
 kydsBAS7eBt5epmbzFG6C+qCZGNHgIz3cZPpYGKadh+BCPwQy5xpgTG2S
 +XJKqrDC0hpMW37hja+zwxTDteMA0ffX7AzHwsbrRCvEJVEnUVcJhr+LC g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="375971210"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="375971210"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 06:33:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="662085051"
Received: from ns1-mobl.gar.corp.intel.com (HELO localhost) ([10.252.59.244])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2022 06:33:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220803100936.2955769-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
 <20220803100936.2955769-1-arun.r.murthy@intel.com>
Date: Wed, 03 Aug 2022 16:33:09 +0300
Message-ID: <878ro5qwoa.fsf@intel.com>
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
> v2: reworked on top of the patch commit 20f85ef89d94
> ("drm/i915/backlight: use unique backlight device names")
> v3: fixed the ref count leak(Jani N)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 27 +++++++++----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 110fc98ec280..0f93b2ba907b 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -971,26 +971,25 @@ int intel_backlight_device_register(struct intel_connector *connector)
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
> +		kfree(bd);

Okay, this is getting tedious.

Please think about why this kfree is wrong.

BR,
Jani.


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
