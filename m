Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2942B0EF2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAC36E425;
	Thu, 12 Nov 2020 20:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B696E425
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:19:16 +0000 (UTC)
IronPort-SDR: KYnUyxFnmR1YoDGC2ihJe+lhpcZrdH8ehh76/aU29bt+lAKi+cOk1lnE8jEUdgprq7skDg29ll
 osPv/DdQDtSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="231993676"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="231993676"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:19:15 -0800
IronPort-SDR: i9Le1pfssE675Q1CZKMpTj/vRbvFDnqD3rdNlmMuc97Hddf/LvDw+m3RGivArH1M6soJbyJCKl
 mcYZ2cqJ5yOw==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="532307073"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:19:15 -0800
Date: Thu, 12 Nov 2020 15:20:29 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201112202029.GD1198919@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <4b7bae47d444f1ef779a3ede481a5dfd4667513d.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b7bae47d444f1ef779a3ede481a5dfd4667513d.1605181350.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/cdclk: prefer intel_de_write()
 over I915_WRITE()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 12, 2020 at 01:44:36PM +0200, Jani Nikula wrote:
> Let's try to not add new ones while we're phasing out I915_READ() and
> I915_WRITE().
> 
> Fixes: 27a6bc802bd9 ("drm/i915/dg1: Initialize RAWCLK properly")
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c449d28d0560..088d5908176c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2710,8 +2710,8 @@ static int dg1_rawclk(struct drm_i915_private *dev_priv)
>  	 * DG1 always uses a 38.4 MHz rawclk.  The bspec tells us
>  	 * "Program Numerator=2, Denominator=4, Divider=37 decimal."
>  	 */
> -	I915_WRITE(PCH_RAWCLK_FREQ,
> -		   CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
> +	intel_de_write(dev_priv, PCH_RAWCLK_FREQ,
> +		       CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
>  
>  	return 38400;
>  }
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
