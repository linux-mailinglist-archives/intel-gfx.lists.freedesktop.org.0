Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384342B9B89
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 20:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA676E7DD;
	Thu, 19 Nov 2020 19:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF4C6E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 19:37:13 +0000 (UTC)
IronPort-SDR: tKQqldtUvlAIyptbBS3EzoRxSbsrbdAwACkQr6UdlXKa5ifOcbJCDiiDELe9nvAf4BiFaHlkC7
 Zkxkq9Rjk25g==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150620275"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="150620275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 11:37:13 -0800
IronPort-SDR: +bW4I3zW7jqUPQrJqVG5CpODA03j3nQjglwDIgZUH2R9AhyVCZZfj4n6XRVAxwh+XG7bIGzG4b
 KCmmRFEHzBfg==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368887578"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 11:37:13 -0800
Date: Thu, 19 Nov 2020 11:39:47 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201119193947.GA12212@labuser-Z97X-UD5H>
References: <20201119090717.30687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119090717.30687-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Whitespace cleanups
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

Pushed to dinq

Manasi

On Thu, Nov 19, 2020 at 09:07:17AM +0000, Chris Wilson wrote:
> drivers/gpu/drm/i915/display/intel_display.c:3634 intel_find_initial_plane_obj() warn: inconsistent indenting
> drivers/gpu/drm/i915/display/intel_display.c:15367 kill_bigjoiner_slave() warn: inconsistent indenting
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++----------
>  1 file changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5c07c74d4397..1a0f00f37ca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3631,8 +3631,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>  	struct intel_plane *intel_plane = to_intel_plane(primary);
>  	struct intel_plane_state *intel_state =
>  		to_intel_plane_state(plane_state);
> -	 struct intel_crtc_state *crtc_state =
> -		 to_intel_crtc_state(intel_crtc->base.state);
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(intel_crtc->base.state);
>  	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  
> @@ -15361,17 +15361,17 @@ static int kill_bigjoiner_slave(struct intel_atomic_state *state,
>  				struct intel_crtc_state *master_crtc_state)
>  {
>  	struct intel_crtc_state *slave_crtc_state =
> -			intel_atomic_get_crtc_state(&state->base,
> -						    master_crtc_state->bigjoiner_linked_crtc);
> +		intel_atomic_get_crtc_state(&state->base,
> +					    master_crtc_state->bigjoiner_linked_crtc);
>  
> -		if (IS_ERR(slave_crtc_state))
> -			return PTR_ERR(slave_crtc_state);
> +	if (IS_ERR(slave_crtc_state))
> +		return PTR_ERR(slave_crtc_state);
>  
> -		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
> -		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
> -		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
> -		intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
> -		return 0;
> +	slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
> +	slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
> +	slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
> +	intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
> +	return 0;
>  }
>  
>  /**
> @@ -15949,7 +15949,6 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
>  }
>  
> -
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  					  struct intel_crtc_state *old_crtc_state,
>  					  struct intel_crtc_state *new_crtc_state,
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
