Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C4796C301
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 17:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FD810E7F9;
	Wed,  4 Sep 2024 15:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpAByGnv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6222210E7F9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 15:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465200; x=1757001200;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zEIzDJF9fckssra2XwtdnkuLvH8H3iq24Di49Br0sLQ=;
 b=LpAByGnvH4mcJJy7HP6/fUrmQhQLuJZBveJczGhGvuY4VMC4IgNwOUrx
 XFoua7PyE9LdjH/EZq6FhWF7S019owytpAqdJAtjki30X/+aXG0HrWY9X
 w95Has+ki5uD6/YvJzJ0jEVznU3QBBxljXoL9XD12qP+CGkLMXQqw88CF
 CerEsdSCERSkFgvmLLBhh+MVeV1nZzk4CBILeWAZJchBUL3EVE4SBn+OW
 i1oTq09+xkus+kNIT8UtnLlpadNodSZAPz13qy9wEbKdXTpx/q7S2J/mB
 DsYYSoFRgbqGAROUhH3pDAFT9ZYJ0A1fBik3E812iviCYK4F6X75k5XjV w==;
X-CSE-ConnectionGUID: M2ND+EzMQ0iaqdLgzp+w3w==
X-CSE-MsgGUID: 9F9wHOeqQdqQVtsOTkxDcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737434"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737434"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:53:20 -0700
X-CSE-ConnectionGUID: Lnil5VHiT8C7Xk5bXl0b2w==
X-CSE-MsgGUID: hG9K6ZEKTtqOYRJv/GNhTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65365457"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Sep 2024 08:53:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2024 18:53:17 +0300
Date: Wed, 4 Sep 2024 18:53:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/pps: add intel_pps_dp_power_down()
Message-ID: <ZtiCbV1RN9o_uiIf@intel.com>
References: <cover.1725458428.git.jani.nikula@intel.com>
 <19beb306efff2e4380d7eed18f6262361ffb6ece.1725458428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <19beb306efff2e4380d7eed18f6262361ffb6ece.1725458428.git.jani.nikula@intel.com>
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

On Wed, Sep 04, 2024 at 05:02:33PM +0300, Jani Nikula wrote:
> Add intel_pps_dp_power_down() and move the VLV/CHV active pipe clear
> there from intel_dp_link_down(), hiding the PPS pipe details inside PPS
> code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c    |  9 +--------
>  drivers/gpu/drm/i915/display/intel_pps.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pps.h |  1 +
>  3 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 1f9812223263..98405fbd0e04 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -475,14 +475,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
>  	}
>  
> -	msleep(intel_dp->pps.panel_power_down_delay);
> -
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		intel_wakeref_t wakeref;
> -
> -		with_intel_pps_lock(intel_dp, wakeref)
> -			intel_dp->pps.active_pipe = INVALID_PIPE;
> -	}
> +	intel_pps_dp_power_down(intel_dp);
>  }
>  
>  static void g4x_dp_audio_enable(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 9e54acfea992..a7f7e5e1f3aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1599,6 +1599,22 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
>  }
>  
> +/* Call on all DP, not just eDP */
> +void intel_pps_dp_power_down(struct intel_dp *intel_dp)

The name seems to imply this powers down something, which it doesn't.

> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	msleep(intel_dp->pps.panel_power_down_delay);

I can't actually figure out why this msleep() even exists. We already
waited for the power down delay (by waiting for the pps state machine)
when we turned off the panel power, so this seems completely redundant.

The whole pre-ddi modeset sequence is a bit weird because the port
enable/disable essentially happens on the wrong side of panel power
enable/disable. But I guess that's just how the hw works and the PPS
somehow makes sure things happen in the right order. And I suppose
the magic PPS register write protect thing even prevents doing it
in the opposite order (although IIRC we always disable the write
protect mechanism).

> +
> +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		intel_wakeref_t wakeref;
> +
> +		with_intel_pps_lock(intel_dp, wakeref)
> +			intel_dp->pps.active_pipe = INVALID_PIPE;
> +	}

This part is basically the counterpart to vlv_pps_init(),
so the function naming should probably reflect that somehow.
vlv_pps_port_{enable,disable}() or something like that?

> +}
> +
>  /* Call on all DP, not just eDP */
>  void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 8dbea05f498d..42f0377a93a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -45,6 +45,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp);
>  
>  void intel_pps_dp_init(struct intel_dp *intel_dp);
>  void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp);
> +void intel_pps_dp_power_down(struct intel_dp *intel_dp);
>  void intel_pps_reset_all(struct intel_display *display);
>  
>  void vlv_pps_init(struct intel_encoder *encoder,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
