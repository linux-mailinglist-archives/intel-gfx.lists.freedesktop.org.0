Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B95B8F77
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 22:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E8410E02F;
	Wed, 14 Sep 2022 20:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2406810E02F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 20:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663185804; x=1694721804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6ixa4V/VcadWOjL79Zir3pKCxynEkmdnJ7n1Yz6QS/w=;
 b=CJXB+nTNN5OUt23SCDYZew0fs7jAsuetMrYc35wfm0IGiKnujtrR7mT2
 tAP9Y9sPa6iwerya3g/IV1guDG55rwo/6/jp5tUyhytpA5sCNxUFrWAUT
 7q28h9dibcCYMPhsE0g6mk2pN5E8r1mkVLHJSIse52/Dw3Idt9p4U8XpF
 2WZQe8nOnInqI8t3QBANBEAPEBtm/IsHu4Md3LN4IG7JVNZq/DCVrL3SB
 TztV/Qz+p8HNpf6TAKwG19ZycMIF6a4V1KcVDDA6sgDkiF88KxMo+MrdQ
 1BHZd+xcc46NGge8pM4Iq947Zg3fm32oPiUNLIVvUKQipcNkG6zyIOVBV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278258733"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="278258733"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:03:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="685437307"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:03:09 -0700
Date: Wed, 14 Sep 2022 13:03:22 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220914200322.GB844866@mdnavare-mobl1.jf.intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-3-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820005822.102716-3-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/squash:
 s/intel_cdclk_can_squash/intel_cdclk_squash
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

On Fri, Aug 19, 2022 at 05:58:20PM -0700, Anusha Srivatsa wrote:
> Apart from checking if squashing can be performed,
> accommodate accessing in-flight cdclk state for any changes
> that are needed during commit phase.
> 
> v2: Move squashing bits to switch case.(Anusha)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 62 ++++++++++++++--------
>  1 file changed, 40 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 86a22c3766e5..f98fd48fe905 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1693,12 +1693,18 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
>  {
> +	struct intel_cdclk_state *cdclk_state = to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> +	struct intel_atomic_state *state = cdclk_state->base.state;
> +	struct intel_cdclk_state *new_cdclk_state = intel_atomic_get_new_cdclk_state(state);

This will not work, make cdclk steps as part of cdlck_config struct and
access that through the passed cdclk_config

This already gets passed from the calling function intel_set_cdclk()
which is getting called from intel_set_cdclk_post_plane_update() from
commit_tail()
This is the correct way of programming req HW registers from cdclk state



Manasi

> +	struct cdclk_step *cdclk_steps = new_cdclk_state->steps;
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
> +	u32 squash_ctl = 0;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
>  	int ret;
> +	int i;
>  
>  	/* Inform power controller of upcoming frequency change. */
>  	if (DISPLAY_VER(dev_priv) >= 11)
> @@ -1742,21 +1748,27 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -	if (waveform)
> +	if (waveform && has_cdclk_squasher(dev_priv)) {
>  		clock = vco / 2;
> -	else
> +		for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
> +			switch (cdclk_steps[i].action) {
> +			case INTEL_CDCLK_SQUASH:
> +				waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
> +				squash_ctl = CDCLK_SQUASH_ENABLE |
> +					     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> +				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> +				break;
> +			case INTEL_CDCLK_NOOP:
> +			case INTEL_CDCLK_CRAWL:
> +			case INTEL_CDCLK_MODESET:
> +				break;
> +			default:
> +				break;
> +			}
> +		}
> +	} else
>  		clock = cdclk;
>  
> -	if (has_cdclk_squasher(dev_priv)) {
> -		u32 squash_ctl = 0;
> -
> -		if (waveform)
> -			squash_ctl = CDCLK_SQUASH_ENABLE |
> -				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> -
> -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> -	}
> -
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
>  		skl_cdclk_decimal(cdclk);
> @@ -1966,10 +1978,11 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  		a->ref == b->ref;
>  }
>  
> -static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> -				   const struct intel_cdclk_config *a,
> -				   const struct intel_cdclk_config *b)
> +static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
> +			       const struct intel_cdclk_state *a,
> +			       struct intel_cdclk_state *b)
>  {
> +	struct cdclk_step *cdclk_transition = b->steps;
>  	/*
>  	 * FIXME should store a bit more state in intel_cdclk_config
>  	 * to differentiate squasher vs. cd2x divider properly. For
> @@ -1978,11 +1991,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	 */
>  	if (!has_cdclk_squasher(dev_priv))
>  		return false;
> +	
> +	cdclk_transition[0].action = INTEL_CDCLK_SQUASH;
> +	cdclk_transition[0].cdclk = b->actual.cdclk;
> +	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
> +	cdclk_transition[1].cdclk = b->actual.cdclk;
>  
> -	return a->cdclk != b->cdclk &&
> -		a->vco != 0 &&
> -		a->vco == b->vco &&
> -		a->ref == b->ref;
> +	return a->actual.cdclk != b->actual.cdclk &&
> +		a->actual.vco != 0 &&
> +		a->actual.vco == b->actual.vco &&
> +		a->actual.ref == b->actual.ref;
>  }
>  
>  /**
> @@ -2758,9 +2776,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_squash(dev_priv,
> +			       old_cdclk_state,
> +			       new_cdclk_state)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squasher\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 
