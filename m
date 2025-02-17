Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C372A38DCA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 22:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50EC810E291;
	Mon, 17 Feb 2025 21:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoTNU0ew";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E219610E291;
 Mon, 17 Feb 2025 21:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739826104; x=1771362104;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7DUX8/VD+FFYkQtjfIoLTdET/I4Cigmj/4KghSW+vQ8=;
 b=aoTNU0ewlLzPooA9+yu1+aieoh31yrpz7NtDaMPvIepesZPEzoj89tys
 EYVig6HTtKg1kRJWZyj5F3/R5XmmTPDMu9VOMTs33uGAifCY80wv2t3on
 NDUmDZW6FyrLbblJn/i07i3Os+o74JXlMfOzTUbeiXSTyuHbHRaBcqS6C
 F3JiAdo49ugOpXPJRYBh5zOncc0FjTrNLjy+42ETDkeZQoCuai9RNYraG
 DU5so/pFztQg/yS5Z10p8cv5zAsEqvh2T1Zy+6Evy4MIavSwcaVmunD2o
 MH080sKSUIMVRYRJmJKnbnJkn0fjLuu6cBc/aNz3UER5k8XYi+VAs/Wgl A==;
X-CSE-ConnectionGUID: yuVBuaTeScSi9/OvrUb+wA==
X-CSE-MsgGUID: oIqmb5ZaRc+gDn5RsUexig==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51133392"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="51133392"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 13:01:44 -0800
X-CSE-ConnectionGUID: zo7rdxtASDG2FJpn3Vhgxg==
X-CSE-MsgGUID: Ll9O7ZhRQmu3W7AIdgNYiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114405592"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 13:01:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 23:01:40 +0200
Date: Mon, 17 Feb 2025 23:01:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 1/3] drm/i915/display: Use explicit base values in
 POWER_DOMAIN_*() macros
Message-ID: <Z7OjtBq86ljDFDma@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
 <20250217203722.87152-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217203722.87152-2-gustavo.sousa@intel.com>
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

On Mon, Feb 17, 2025 at 05:34:26PM -0300, Gustavo Sousa wrote:
> Although we have comments in intel_display_limits.h saying that the
> code expects PIPE_A and TRANSCODER_A to be zero, it doesn't hurt to add
> them as explicit base values for calculating the power domain offset in
> POWER_DOMAIN_*() macros.
> 
> On the plus side, we have that this:
> 
>  * Fixes a warning reported by kernel test robot <lkp@intel.com>
>    about doing arithmetic with two different enum types.
>  * Makes the code arguably more robust (in the unlikely event of those
>    bases becoming non-zero).
> 
> v2:
>   - Prefer using explicit base values instead of simply casting the
>     macro argument to int. (Ville)
>   - Update commit message to match the new approach (for reference, the
>     old message subject was "drm/i915/display: Use explicit cast in
>     POWER_DOMAIN_*() macros").
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index a3a5c1be8bab..4ad35bd4b040 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
>  };
>  
> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
> +#define POWER_DOMAIN_PIPE(pipe) ((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A)
>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
> -		((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> +		((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>  #define POWER_DOMAIN_TRANSCODER(tran) \
>  	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \

Btw looks like we could drop this edp special case. The
enums do seem to match even for this, and we appear to
rely on that matching also for the DSI transcoders. So
special casing just EDP is a bit weird.

Either that or perhaps we need to special case DSI as
well.

If we do want to depend on the enums matching then one random
idea that came to mind is something like:
enum intel_display_power_domain {
	_POWER_DOMAIN_PIPES,
	POWER_DOMAIN_PIPE_A = _POWER_DOMAIN_PIPES + PIPE_A,
	POWER_DOMAIN_PIPE_B = _POWER_DOMAIN_PIPES + PIPE_B,
	...
	_POWER_DOMAIN_TRANSCODERS,
	POWER_DOMAIN_TRANSCODER_A = _POWER_DOMAIN_TRANSCODERS + TRANSCODER_A,
	POWER_DOMAIN_TRANSCODER_B = _POWER_DOMAIN_TRANSCODERS + TRANSCODER_B,
	...

which should semi-guarantee that things keep working even if we
accidentally introduces holes into enum pipe/transcoder/etc.
Though this would still be slightly vulnerable against ordering
differences since the _POWER_DOMAIN_* value would be
based on the previous value. But maybe this is just pointless
paranoia since we've not screwed up the enums so far...


> -	 (tran) + POWER_DOMAIN_TRANSCODER_A)
> +	 (tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A)
>  
>  struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
