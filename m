Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AFB8C0E94
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 12:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA0310E06F;
	Thu,  9 May 2024 10:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWl+6zkX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E0510E06F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715252049; x=1746788049;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FXwmCn6M0xDgDXyU1KS9t2djHTPBbrNHBTTXSczsItI=;
 b=HWl+6zkXVjRIs42evwbIs+Y7aISbww8BVPyITKc0sKzD3pQlQ0BJlwg0
 Ygb+Q3Uf4OX2B4Np8rumpG+J+eituyZxsw21yWcJdxnVTOHOd6/jrvjdY
 yi0OrSeniC68HPN4Dqtri1fBIloHcWg3/Og5Dk7kD6rZPuLMtPPKlmL63
 zujKXNg3+N830UF201Muxw4RcdhHDKFxT70QX5YhbktXY1FaCBZ/C5L3X
 l5QndWW+xwMnzP+rmjuruiJa3P9JBQV5h272fkA+wWQ8Vtx58BOCCSFmz
 oUFZfoRfr9fd+XywxdTPQJiAXZlLkET10aKIKC/OpiKhaS8bJa/B+uHNB Q==;
X-CSE-ConnectionGUID: jOD4qmYbReKLYs68QwGnJw==
X-CSE-MsgGUID: da8LjBmdQYGn3VvseEbA3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="22567938"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="22567938"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 03:54:08 -0700
X-CSE-ConnectionGUID: KLVdJ+xrSiGL44xDblmyHw==
X-CSE-MsgGUID: k1yMHfLtRJeMtuNIBWvbaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29143467"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 May 2024 03:54:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2024 13:54:04 +0300
Date: Thu, 9 May 2024 13:54:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Message-ID: <ZjyrTLGidDq8lu6S@intel.com>
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
 <20240509032922.1145558-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240509032922.1145558-2-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
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

On Thu, May 09, 2024 at 08:59:23AM +0530, Suraj Kandpal wrote:
> Disable bit 29 of SCLKGATE_DIS register around pps sequence
> when we turn panel power on.
> 
> --v2
> -Squash two commit together [Jani]
> -Use IS_DISPLAY_VER [Jani]
> -Fix multiline comment [Jani]
> 
> --v3
> -Define register in a more appropriate place [Mitul]
> 
> Bspec: 49304
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 0ccbf9a85914..d774aeb1673e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>  
> +	/*
> +	 * WA: 16023567976
> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))

The issue has supposedly existed since at least BXT.
It was documented as w/a #1124 there:
https://patchwork.freedesktop.org/series/70655/

The original w/a called for keeping the clock gating
disabled between the PP_ON_DELAYS and PP_CONTROL
writes, which would have been annoying to implement
so I went with the extra delay instead. But if the new
approach of just toggle the clock gating around the
PP_CONTROL write works then that is definitely better.

Sadly I wasn't able to reproduce this issue locally. Gave it
a decent try on GLK, TGL, and ADL, but no joy. So can't be
sure this actually works.

I suppose technically it doesn't matter for us since we always use
the VDD override anyway, but no harm in having the w/a implemented
anyway in case we ever change that.

> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     0, DPLS_GATING_DISABLE);

IIRC on BXT/GLK we need to poke at some north clock gating register.

And on BXT/GLK, and ICP+ we can have two power sequencers so we
probably want to poke the bits for both of them.

The other issue is that we are poking at these register from multiple
places, so we probably need a lock to protect it. I'm think we could
have just a single chicken_lock or something for these kinds of use
cases.

> +
>  	pp |= PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |= PANEL_POWER_RESET;
> @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on = jiffies;
>  
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5670eee4a498..4cc82360298b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5151,6 +5151,10 @@ enum skl_power_gate {
>  
>  #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) * 4)
>  
> +/* SCLKGATE_DIS */
> +#define SCLKGATE_DIS			_MMIO(0xc2020)

We already have that register.

> +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> +
>  /* Plane CSC Registers */
>  #define _PLANE_CSC_RY_GY_1_A	0x70210
>  #define _PLANE_CSC_RY_GY_2_A	0x70310
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
