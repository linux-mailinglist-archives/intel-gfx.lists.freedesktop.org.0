Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FDF624CD0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 22:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C2310E8C1;
	Thu, 10 Nov 2022 21:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6615610E8D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 21:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668115246; x=1699651246;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZP7Iw/OqZTwGfJ6Fpfdlq7jPFEC6/bhZZGkSt6Qw1Ck=;
 b=A9f/C5Vz7ISL8rLsTw8257doTuFtTCBWQov+uXTKVgI/JjP4beLrR3dj
 KWyTRybPFiFOkUo53FCh1EN6zcAyyizgW/sv0YGDyxO+Hp/1tAJKMLwMz
 C6HHpaCLQT6PovmTZ4wQSsDl2WgwHMf+0um0BxvudG6u4GHnnxl2QRDe3
 EcL17sNKDdBIQFYk0toHA1OfBQghRNEe8JGsWZAZ5haFEerBVleLVCbp4
 7ayIsNP8JGqhRoM9aNHFKESBBNgsTBCP1GW9ZUswvT5D61jACOlVvt9Al
 EQL93PTFJY/2rgF9JcIjhCxBAFJkbibNWX3i0B1G5PrV0NtFnpYn0mVsC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="310161803"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="310161803"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 13:20:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="588332709"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="588332709"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga003.jf.intel.com with SMTP; 10 Nov 2022 13:20:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 23:20:42 +0200
Date: Thu, 10 Nov 2022 23:20:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y21rKq0eGMidm7dB@intel.com>
References: <20221110053724.14701-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221110053724.14701-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for
 cdclk crawling
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

On Wed, Nov 09, 2022 at 09:37:24PM -0800, Anusha Srivatsa wrote:
> cdclk_sanitize() function was written assuming vco was a signed integer.
> vco gets assigned to -1 (essentially ~0) for the case where PLL
> might be enabled and vco is not a frequency that will ever
> get used. In such a scenario the right thing to do is disable the
> PLL and re-enable it again with a valid frequency.
> However the vco is declared as a unsigned variable.
> With the above assumption, driver takes crawl path when not needed.
> Add explicit check to not crawl in the case of an invalid PLL.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8a9031012d74..91112d266763 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1962,6 +1962,8 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  	if (!HAS_CDCLK_CRAWL(dev_priv))
>  		return false;
>  
> +	if (intel_pll_is_unknown(a->vco))
> +		return false;

I think this guy is only called from the atomic_check() path, so
this check shouldn't be needed here. Where we do need it is the
crawl check bxt_set_cdclk() since that is what gets called directly
from the sanitize() path with hw.vco=~0.

>  	/*
>  	 * The vco and cd2x divider will change independently
>  	 * from each, so we disallow cd2x change when crawling.
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index c674879a84a5..6eb83d806f11 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -80,6 +80,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>  	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
>  #define intel_atomic_get_new_cdclk_state(state) \
>  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
> +#define intel_pll_is_unknown(vco)	((vco) == ~0)
>  
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
