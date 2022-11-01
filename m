Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953A2614B7A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 14:16:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B745B10E3B7;
	Tue,  1 Nov 2022 13:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11B910E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667308579; x=1698844579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yvf+KRVfyDXVRMHJJqmEmdbtW9WyskJyfDtX9jD2xJI=;
 b=XL6huImiXJCVY+UMHXreBDx1XFj/QucZIahVeE3xnX//pzMlw+RRbeo5
 1axPca5o4GZCzdn76MMsger9S5FHeCvioogi7sce7ip40ufdL/vy+r/CQ
 6yyWtT3tQlxl95EIMMUWKiN95/cbnysScwnI3WQ4ByIHl9l8iUHG9Ki9D
 s9Ml6rDrH1kWQjhB1sofEpIzk+kefaTnnRPUwmXyPmz/LrU+NRYMzutEM
 msYpYG4bgHzKDWUcPnpQyS2n/JVpkls8tbEZrLuOJ5vWsoxGPfxlai/bl
 I1bm4G0xhZZA8mfoP/hA1OsAku2vF56fUang6Y23jGhUEuF6ZCG+TnyqI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="310226857"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="310226857"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 06:16:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="697394294"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="697394294"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 06:16:17 -0700
Date: Tue, 1 Nov 2022 15:16:08 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <Y2EcGNxIWfXL+6oV@intel.com>
References: <20221011093048.447177-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221011093048.447177-1-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: update DSC feature flag handling
 during device init
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com,
 intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 11, 2022 at 12:30:48PM +0300, Vinod Govindapillai wrote:
> DSC feature information is no longer part of the DFSM register in
> some display generations.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Bspec:50075
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 908ec241fe71..17d2e3293892 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -480,7 +480,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
>  			runtime->has_dmc = 0;
>  
> -		if (DISPLAY_VER(dev_priv) >= 10 &&
> +		if (IS_DISPLAY_VER(dev_priv, 10, 12) &&
>  		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
>  			runtime->has_dsc = 0;
>  	}
> -- 
> 2.34.1
> 
