Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B69246F28B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D97710E1D1;
	Thu,  9 Dec 2021 17:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E9C10E1D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:54:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="236904068"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="236904068"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:54:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="543683236"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 09 Dec 2021 09:54:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:54:49 +0200
Date: Thu, 9 Dec 2021 19:54:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbJC6UHlcyt9s7tt@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
 <66f687db7321846049a6aa524dfafd45cf0cb77f.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <66f687db7321846049a6aa524dfafd45cf0cb77f.1639068649.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/cdclk: un-inline
 intel_cdclk_state functions
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

On Thu, Dec 09, 2021 at 06:51:23PM +0200, Jani Nikula wrote:
> Hide the details better.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 ++++++++-----
>  2 files changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index a216a350006d..84674a4f7226 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2630,6 +2630,24 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
>  	return to_intel_cdclk_state(cdclk_state);
>  }
>  
> +struct intel_cdclk_state *
> +to_intel_cdclk_state(struct intel_global_state *cdclk_state)
> +{
> +	return container_of(cdclk_state, struct intel_cdclk_state, base);
> +}
> +
> +struct intel_cdclk_state *
> +intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state)
> +{
> +	return to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));
> +}
> +
> +struct intel_cdclk_state *
> +intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state)
> +{
> +	return to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));
> +}
> +

Not really sure about this one. We don't do this for any other similar
cases, and I think the macro versions are needed if we have any kind of
const vs. non-const funny business going on. I guess in this particular
case we don't, but pretty sure that was a real thing for some other
atomic states when I was pondering about using functions rather than
macros for those.

So I'm tempted to say we should stick to a common pattern across the
board if possible.

>  int intel_cdclk_atomic_check(struct intel_atomic_state *state,
>  			     bool *need_cdclk_calc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index bb3a778c506b..77e8c8e1708f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -76,11 +76,14 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
>  struct intel_cdclk_state *
>  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>  
> -#define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_state, base)
> -#define intel_atomic_get_old_cdclk_state(state) \
> -	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
> -#define intel_atomic_get_new_cdclk_state(state) \
> -	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
> +struct intel_cdclk_state *
> +to_intel_cdclk_state(struct intel_global_state *cdclk_state);
> +
> +struct intel_cdclk_state *
> +intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state);
> +
> +struct intel_cdclk_state *
> +intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state);
>  
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
