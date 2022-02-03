Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4394A9097
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 23:21:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 300C510ED4B;
	Thu,  3 Feb 2022 22:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015D510ED4B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 22:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643926859; x=1675462859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JuuW+/IfeOyoo7PEdfGAk5aSdLQXk+m3vFNU7f9A2xE=;
 b=g9Ku+LyoPqiq/l9bplrtdcpq/R4QsKZwa5jEtj0B8O10TB7Djn0Ym4rc
 XFzxQrxpzpQQ9wEhWzx8H+7rvgzyda+3FGe2B4uJTjE+HzgNBsEsYfYAZ
 uM4kFIEAk5JRvzxfbnv3hWR3thLkbb8b+ic6bF0n9JmuBQcBwW7pTRKwV
 oV3WwSMbW/igdLnc/nrauoezqQxzTIYxdutOMQNFNqCBSMvI19GdNT/+n
 kZcH1Ey/zwbENcFlDnNVooTn1wWbaNb1x4sCZ2V0vNc4WPbIil0AZIkZh
 X8FkJgoWIlNTsDb91ntEQwLLVvQX5PVG0C0axm3OlP0rjtcEkk1oVTIyi Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248216009"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248216009"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 14:20:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="480645725"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 14:20:58 -0800
Date: Thu, 3 Feb 2022 14:20:52 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220203222052.GA18831@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Remove weird code from
 intel_atomic_check_bigjoiner()
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

On Thu, Feb 03, 2022 at 08:38:16PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There's some weird junk in intel_atomic_check_bigjoiner()
> that's trying to look at the old crtc state's bigjoiner
> usage for some reason. That code is totally unnecessary,
> and maybe even actively harmful. Not entirely sure which
> since it's such a mess that I can't actually wrap my brain
> around what it ends up doing.
> 
> Either way, thanks to intel_bigjoiner_add_affected_crtcs()
> all of the old bigjoiner crtcs are guaranteed to be in the
> state already if any one of them is in the state. Also if
> any one of those crtcs got flagged for a modeset, then all
> of them will have been flagged, and the bigjoiner links
> will have been detached via kill_bigjoiner_slave().
> 
> So there is no need to look examing any old bigjoiner
> usage in intel_atomic_check_bigjoiner(). All we have to care
> about is whether bigjoiner is needed for the new state,
> and whether we can get the slave crtc we need.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Completely agree with this cleanup, makes it so much easier to add new future code

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++-------------
>  1 file changed, 11 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2006eec6e166..b5701ca57889 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7584,38 +7584,28 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
>  }
>  
>  static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> -					struct intel_crtc *crtc,
> -					struct intel_crtc_state *old_crtc_state,
> -					struct intel_crtc_state *new_crtc_state)
> +					struct intel_crtc *master_crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> -	struct intel_crtc *slave_crtc, *master_crtc;
> +	struct intel_crtc_state *master_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, master_crtc);
> +	struct intel_crtc_state *slave_crtc_state;
> +	struct intel_crtc *slave_crtc;
>  
> -	/* slave being enabled, is master is still claiming this crtc? */
> -	if (old_crtc_state->bigjoiner_slave) {
> -		slave_crtc = crtc;
> -		master_crtc = old_crtc_state->bigjoiner_linked_crtc;
> -		master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
> -		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
> -			goto claimed;
> -	}
> -
> -	if (!new_crtc_state->bigjoiner)
> +	if (!master_crtc_state->bigjoiner)
>  		return 0;
>  
> -	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
> +	slave_crtc = intel_dsc_get_bigjoiner_secondary(master_crtc);
>  	if (!slave_crtc) {
>  		drm_dbg_kms(&i915->drm,
>  			    "[CRTC:%d:%s] Big joiner configuration requires "
>  			    "CRTC + 1 to be used, doesn't exist\n",
> -			    crtc->base.base.id, crtc->base.name);
> +			    master_crtc->base.base.id, master_crtc->base.name);
>  		return -EINVAL;
>  	}
>  
> -	new_crtc_state->bigjoiner_linked_crtc = slave_crtc;
> +	master_crtc_state->bigjoiner_linked_crtc = slave_crtc;
>  	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
> -	master_crtc = crtc;
>  	if (IS_ERR(slave_crtc_state))
>  		return PTR_ERR(slave_crtc_state);
>  
> @@ -7627,7 +7617,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>  		    "[CRTC:%d:%s] Used as slave for big joiner\n",
>  		    slave_crtc->base.base.id, slave_crtc->base.name);
>  
> -	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
> +	return copy_bigjoiner_crtc_state(slave_crtc_state, master_crtc_state);
>  
>  claimed:
>  	drm_dbg_kms(&i915->drm,
> @@ -7899,8 +7889,7 @@ static int intel_atomic_check(struct drm_device *dev,
>  		if (ret)
>  			goto fail;
>  
> -		ret = intel_atomic_check_bigjoiner(state, crtc, old_crtc_state,
> -						   new_crtc_state);
> +		ret = intel_atomic_check_bigjoiner(state, crtc);
>  		if (ret)
>  			goto fail;
>  	}
> -- 
> 2.34.1
> 
