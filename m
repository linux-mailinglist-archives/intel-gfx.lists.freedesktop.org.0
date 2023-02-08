Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF4E68F032
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 14:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46ED10E789;
	Wed,  8 Feb 2023 13:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F5910E789
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 13:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675864510; x=1707400510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gFQ3EyFPWgubICMs4Qzmx7LqFZxnC1sP8Rv6VV2D6z8=;
 b=V+0PI1BJIeXlM6KyQPmz2V3+kXOWncngfDdsy0kiOVNJ9kI8Bvc9b9Yl
 wJqDZlIIyhq9jfwkCQxjwYCa121yu1Z975zblJlCiFY/hSFStfnTsbB97
 3SPwpg+a4PlCNTS/kq+ZztLLhmev7vxdIdBnhDkxfLqlclPycvGLcgREK
 T4F4IhMrSVot+au03tAh/gDLA8idrVe/1R26eyYa/SjBnv9TN1IVcmRfC
 0/Mpj+RpCk9zxXu7blFRYlLp6lVgaAwEEsGdh7l8ZEZXFYJRqZdhnnr87
 JR72P3Ef4o6cUwoUXhFimJK/SrXACeqE87fxcZZ3YDJBDIE19UEOXhJMD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="327498011"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="327498011"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 05:55:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="996141859"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="996141859"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga005.fm.intel.com with SMTP; 08 Feb 2023 05:55:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 15:55:06 +0200
Date: Wed, 8 Feb 2023 15:55:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+OpuuSPvayRLcKa@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
 <2f6fa8f3215b7a9f71a2b21d4eccd0bca526dbce.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2f6fa8f3215b7a9f71a2b21d4eccd0bca526dbce.1675849634.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/wm: move remaining watermark
 code out of intel_pm.c
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

On Wed, Feb 08, 2023 at 11:48:40AM +0200, Jani Nikula wrote:
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ee8f8d2d2a66..649c4d222f79 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> -
> +static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
> +{
> +	if (HAS_LLC(dev_priv)) {
>  		/*
> -		 * Always set WM_LP_SPRITE_EN when spr_val != 0, even if the
> -		 * level is disabled. Doing otherwise could cause underruns.
> +		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> +		 * Display WA #0390: skl,kbl
> +		 *
> +		 * Must match Sampler, Pixel Back End, and Media. See
> +		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
>  		 */
> -		if (DISPLAY_VER(dev_priv) <= 6 && r->spr_val) {
> -			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
> -			results->wm_lp_spr[wm_lp - 1] |= WM_LP_SPRITE_ENABLE;
> -		}
>

git diff screwed up was some of the untouched stuff
got reordered? Maybe --patience helps?

-- 
Ville Syrjälä
Intel
