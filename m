Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386F38CA1F4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31DDC10E3E0;
	Mon, 20 May 2024 18:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Op8cqPHS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9151A10E3C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716229489; x=1747765489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=p3KQaKkuQ0ctuGDhUiWAh0CsLHk5d58+g8M14lL5lzI=;
 b=Op8cqPHS6UyBxbWAgBDlhLm7J78UiKyNW0pXua1MC7z9eXtxZux59Vye
 IdhT67WXZSzXDCv4vYvC0XxrFHhNR65guhKKLUGfH0rT2xQzMIxQpEVsO
 LnF6+RGrUJ/d2+yiAdz+wTiCupfKmLMy9P5gDktRSX6MV/2tTl2aeC6Uc
 Iy8w64zpNyrBxRBYfVellgg+Js0RjCIwfKZMGTYjHAwJao78R/YUBvddt
 CRtnXZn4u4TGNXd0Qmwz2TBWNsYi2GgKKNhBVUT+bEKGc9cTzM362G/d5
 czFOl/E+P/C6dFBE7WdDNTE1ExDQeDUqizeaVz3UFYHlrqGYOfOHFsTcf w==;
X-CSE-ConnectionGUID: QYm3DA4GQiWLb3SRafJ9iA==
X-CSE-MsgGUID: xWy8vkHDSceE/XChpPO1zA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12554788"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12554788"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:24:48 -0700
X-CSE-ConnectionGUID: yfkzq+OUQeuK0U8kUrJedA==
X-CSE-MsgGUID: LKoP6ig7R/mJdVA+4gDH9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32613968"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 11:24:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 21:24:45 +0300
Date: Mon, 20 May 2024 21:24:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/5] drm/i915: Implement basic functions for ultrajoiner
 support
Message-ID: <ZkuVbZ8w6K5xoOnf@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
 <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
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

On Mon, May 20, 2024 at 10:38:36AM +0300, Stanislav Lisovskiy wrote:
> Lets implement or change basic functions required for ultrajoiner
> support from atomic commit/modesetting point of view.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 66 +++++++++++++++++---
>  1 file changed, 56 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c74721188e59..c390b79a43d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -242,33 +242,65 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
>  		is_trans_port_sync_slave(crtc_state);
>  }
>  
> -static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
> +static u8 joiner_master_pipes(const struct intel_crtc_state *crtc_state)
>  {
> -	return ffs(crtc_state->joiner_pipes) - 1;
> +	return BIT(PIPE_A) | BIT(PIPE_C);

Not a fan of the hardcoded pipes.

We could just do something like 
joiner_pipes & ((BIT(2) | BIT(0)) << joiner_master_pipe())
or some variant of that.

> +}
> +
> +static u8 joiner_primary_master_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	return BIT(PIPE_A);

This is just the joiner_master_pipe() we already have.

>  }
>  
>  u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
>  {
> -	if (crtc_state->joiner_pipes)
> -		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
> +	if (intel_is_ultrajoiner(crtc_state))
> +		return crtc_state->joiner_pipes & ~joiner_primary_master_pipes(crtc_state);
> +	else if (intel_is_bigjoiner(crtc_state))
> +		return crtc_state->joiner_pipes & ~joiner_master_pipes(crtc_state);
>  	else
>  		return 0;

I don't see why this should make any distinction between bigjoiner
and ultrajoiner.

Either it returns everything that isn't the overall master, or it
returns just all the bigjoiner slave pipes. Which one we want
depends on the use case I guess. So we might need both variants.

>  }
>  
> -bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
> +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  
>  	return crtc_state->joiner_pipes &&
> -		crtc->pipe != joiner_master_pipe(crtc_state);
> +		!(BIT(crtc->pipe) & joiner_master_pipes(crtc_state));

I'd probably add a joiner_slave_pipes() so that the logic is less
convoluted.

But I think first we need a solid agreement on the terminology,
and stick to it consistently.

Perhaps we need names for?
- the single master within the overall set of joined pipes
  (be it ultrajoiner master or the bigjoiner/uncompressed
   joiner master when ultrajoiner isn't used).
  Just call this joiner_master perhaps? Or perhaps just call it
  ultrajoiner_master but document that it is valid to use it
  also for the non-ultrajoiner cases.
- every other pipe in the set, ie. the inverse of above
  Should be just {ultra,}joiner_slaves to match the
  above I guess? Do we actually even need this? Not sure.

And the for the modeset sequencing we would perhaps need:
- all bigjoiner masters within the entire set of joined pipes
- all bigjoiner slaves within the entire set of joined pipes
  (inverse of the above)

The one slight snag here is that the "bigjoiner" name is
a bit incorrect for uncompressed joiner, but unless we want to
come up with some other name for these then I guess we'll just
have to live with it.

The other option is we try to come up with some generic names
for the two levels of pipe roles.

-- 
Ville Syrjälä
Intel
