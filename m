Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7817192376
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D3189A61;
	Wed, 25 Mar 2020 08:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5EA899E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:57:00 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id 31so1859146wrs.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W337wpFPFjxL3EXQ0bC8nySDXXlAjizP8gYYaH2s1u0=;
 b=I/k2pEZ4wsmTYBPmBQ1BuNTLb9LWLWqP49Nf2opzj6RMxXinrgPofdtwcpG0aMdZq9
 OQPJAzZ4wIVtbpNH+ZeM9SARAw9PF8TEsgidFheB0SKcAu2BZm/37XfefxXd/TWU0Tlc
 orgnQFHlfoajpSZvoft2XNPb9d62UCevohFdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W337wpFPFjxL3EXQ0bC8nySDXXlAjizP8gYYaH2s1u0=;
 b=ldZgTiLbvBe1VtRHCG/Ku/x+pkzEF1NfFMHyokUL1NVgId9k4HYpXtxOL00++LB97z
 WKfO8hK5A+Y2YAfoI5WtoRUfi8SOoBNZaKAaxSnoTUKhqKJDpcpLX6UFRk74IAyWR/9i
 471jfVW6IeE9nq2vjh3UEqN0rL2ZbkZtr5j3wqEPqNDHjBPxfaRJvb9n7xxY+rrhM4Ai
 8L8OX7Py7qqDixKwsBLJ061izaqYH6YaKr73IX4XTtO668T5UMpIboUAlBTONi7X50rt
 X7k7s4TXF2w0ojAAxqdW2JEld7Ei1U87k4hBCmS7W1nBf9e8UnV72dcRZD2eKbLYzh/Y
 CTNg==
X-Gm-Message-State: ANhLgQ3MUTwkzOjevNUyFJCqZXC1tq0DdTzOfQg1lHxqGF/1mMFabVeU
 pPXK5INhgpW8Vgref6E/I8r2LvI5RXiGT+hn
X-Google-Smtp-Source: ADFU+vvH4YNqsuKL6DXYpDueCkYqQGZWL1xypXsH7E1AhVeIbs7W2wCuV7j76g+b+ot/w7PjnIetUA==
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr2190633wro.32.1585126619368;
 Wed, 25 Mar 2020 01:56:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y189sm8133004wmb.26.2020.03.25.01.56.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:56:58 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:56:56 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325085656.GV2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <307c9f87cb2fbd5d2d67ec6adcde7ab669c2b93f.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <307c9f87cb2fbd5d2d67ec6adcde7ab669c2b93f.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/display: clean up
 intel_PLL_is_valid()
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

On Fri, Mar 20, 2020 at 04:36:35PM +0200, Jani Nikula wrote:
> Drop useless macro hiding the return. Fix superfluous whitespace. Rename
> function to all lowercase.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

We do lose the debug output, but then I don't think we'll do much bug
hunting in here anytime soon, it's all fairly old gmch-style display
stuff. Also just realized I'm still pining for an intel_gmch_pll.c ...

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++----------
>  1 file changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 37bd7ce88ecd..6af8d43ceb0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -620,45 +620,43 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
>  	return clock->dot / 5;
>  }
>  
> -#define INTELPllInvalid(s)   do { /* DRM_DEBUG(s); */ return false; } while (0)
> -
>  /*
>   * Returns whether the given set of divisors are valid for a given refclk with
>   * the given connectors.
>   */
> -static bool intel_PLL_is_valid(struct drm_i915_private *dev_priv,
> +static bool intel_pll_is_valid(struct drm_i915_private *dev_priv,
>  			       const struct intel_limit *limit,
>  			       const struct dpll *clock)
>  {
> -	if (clock->n   < limit->n.min   || limit->n.max   < clock->n)
> -		INTELPllInvalid("n out of range\n");
> -	if (clock->p1  < limit->p1.min  || limit->p1.max  < clock->p1)
> -		INTELPllInvalid("p1 out of range\n");
> -	if (clock->m2  < limit->m2.min  || limit->m2.max  < clock->m2)
> -		INTELPllInvalid("m2 out of range\n");
> -	if (clock->m1  < limit->m1.min  || limit->m1.max  < clock->m1)
> -		INTELPllInvalid("m1 out of range\n");
> +	if (clock->n < limit->n.min || limit->n.max < clock->n)
> +		return false;
> +	if (clock->p1 < limit->p1.min || limit->p1.max < clock->p1)
> +		return false;
> +	if (clock->m2 < limit->m2.min || limit->m2.max < clock->m2)
> +		return false;
> +	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
> +		return false;
>  
>  	if (!IS_PINEVIEW(dev_priv) && !IS_VALLEYVIEW(dev_priv) &&
>  	    !IS_CHERRYVIEW(dev_priv) && !IS_GEN9_LP(dev_priv))
>  		if (clock->m1 <= clock->m2)
> -			INTELPllInvalid("m1 <= m2\n");
> +			return false;
>  
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
>  	    !IS_GEN9_LP(dev_priv)) {
>  		if (clock->p < limit->p.min || limit->p.max < clock->p)
> -			INTELPllInvalid("p out of range\n");
> +			return false;
>  		if (clock->m < limit->m.min || limit->m.max < clock->m)
> -			INTELPllInvalid("m out of range\n");
> +			return false;
>  	}
>  
>  	if (clock->vco < limit->vco.min || limit->vco.max < clock->vco)
> -		INTELPllInvalid("vco out of range\n");
> +		return false;
>  	/* XXX: We may need to be checking "Dot clock" depending on the multiplier,
>  	 * connector, etc., rather than just a single range.
>  	 */
>  	if (clock->dot < limit->dot.min || limit->dot.max < clock->dot)
> -		INTELPllInvalid("dot out of range\n");
> +		return false;
>  
>  	return true;
>  }
> @@ -725,7 +723,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
>  					int this_err;
>  
>  					i9xx_calc_dpll_params(refclk, &clock);
> -					if (!intel_PLL_is_valid(to_i915(dev),
> +					if (!intel_pll_is_valid(to_i915(dev),
>  								limit,
>  								&clock))
>  						continue;
> @@ -781,7 +779,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
>  					int this_err;
>  
>  					pnv_calc_dpll_params(refclk, &clock);
> -					if (!intel_PLL_is_valid(to_i915(dev),
> +					if (!intel_pll_is_valid(to_i915(dev),
>  								limit,
>  								&clock))
>  						continue;
> @@ -842,7 +840,7 @@ g4x_find_best_dpll(const struct intel_limit *limit,
>  					int this_err;
>  
>  					i9xx_calc_dpll_params(refclk, &clock);
> -					if (!intel_PLL_is_valid(to_i915(dev),
> +					if (!intel_pll_is_valid(to_i915(dev),
>  								limit,
>  								&clock))
>  						continue;
> @@ -939,7 +937,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
>  
>  					vlv_calc_dpll_params(refclk, &clock);
>  
> -					if (!intel_PLL_is_valid(to_i915(dev),
> +					if (!intel_pll_is_valid(to_i915(dev),
>  								limit,
>  								&clock))
>  						continue;
> @@ -1008,7 +1006,7 @@ chv_find_best_dpll(const struct intel_limit *limit,
>  
>  			chv_calc_dpll_params(refclk, &clock);
>  
> -			if (!intel_PLL_is_valid(to_i915(dev), limit, &clock))
> +			if (!intel_pll_is_valid(to_i915(dev), limit, &clock))
>  				continue;
>  
>  			if (!vlv_PLL_is_optimal(dev, target, &clock, best_clock,
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
