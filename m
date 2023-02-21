Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B34D69E29A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 15:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0ACF10E300;
	Tue, 21 Feb 2023 14:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E22C10E300
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 14:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676990843; x=1708526843;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=XTGo48T6ZE0A7w5zXfExiQZ3/GU9rd1utMaBWmpTObE=;
 b=LL4xDdsULIW4z/9GyP/q9Io9Z4pLn/+FIb2JzJOSt0nUO4Nk7FkhOdBL
 8ohXjcexHAfxF48CVVLtcfB2F1f4AR4kPlG99fVDq0WwyAuoq5iZKcFor
 D/ZDCwOxTGPOL2t8gY+dMpKDyN1Q5dIEDTbr2QyKBkO+/Fqk2KE8TzT1+
 hnCmGn+xYcBxvYThvKoB2S7wOMnBw4qfO73r/m55tWT8WSwLIsVJZZscN
 FrMSkgFbgb1V2p3CcSJjOYOIy6myf8A3SUI58RUui7SoJhvqPkrMM70bc
 ujnCJl+R7Oth4m1S60MDZpvzfPjfNGjy5xAj+oLeSwpkm5Pa5ucWUWFgN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="320780182"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="320780182"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 06:47:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="649202434"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="649202434"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 21 Feb 2023 06:47:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 16:47:20 +0200
Date: Tue, 21 Feb 2023 16:47:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y/TZeHrjdT/4bRkN@intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
 <20230220234046.29716-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230220234046.29716-8-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 07/18] drm/i915: Sanitize child devices
 later
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

On Tue, Feb 21, 2023 at 01:40:35AM +0200, Ville Syrjala wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index f35ef3675d39..19be8862261b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2221,33 +2221,33 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  		    vbt_pin);
>  	return 0;
>  }
>  
> -static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
> +static struct intel_encoder *
> +get_encoder_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
>  {
> -	enum port port;
> +	struct intel_encoder *encoder;
>  
>  	if (!ddc_pin)
> -		return PORT_NONE;
> +		return NULL;
>  
> -	for_each_port(port) {
> -		const struct intel_bios_encoder_data *devdata =
> -			i915->display.vbt.ports[port];
> +	for_each_intel_encoder(&i915->drm, encoder) {
> +		const struct intel_bios_encoder_data *devdata = encoder->devdata;
>  
>  		if (devdata && ddc_pin == devdata->child.ddc_pin)
> -			return port;
> +			return encoder;

This still screws up bat-jsl-3 where DDI A and DDI C both claim to use
the same ddc_pin. But DDI A is declared as eDP, so won't even use DDC.
Se we should just ignore it here. 

I suppose to correct fix would to look at the actually selected
ddc_pin/aux_ch here, rather than what the VBT declared.

>  	}
>  
> -	return PORT_NONE;
> +	return NULL;
>  }
>  

-- 
Ville Syrjälä
Intel
