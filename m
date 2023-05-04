Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 283EB6F6DD0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E7D10E163;
	Thu,  4 May 2023 14:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9239310E163
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683211095; x=1714747095;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1v5cLh48Cg6zaf7UUJVH1oR2mH7bDzVGaQyTXEJHWyA=;
 b=m2SIqU4TcZKb4UPQHurK5VkTchFwsXGcqPzobPxuqL6P2uL2XkoHpHDI
 ANbhvfBnKJ7M0Wa8QGVIh1vqO5wP82y4Udh+43liyJEVfvPNPtY1ujXAf
 IIk2xp903SUkfKmjbHcQFhexvhTSTuYh1LuQzBacU+uDgjBUsh8hMMKm+
 ziu+jwnxE0qwPQXatnHeXni4vR5BpgT8XHN4lTcY9+IgUm6ulS5W1qIg2
 T2IfvJXS9uSC2gH61VfJkJjyDYuwiJEylsA89FA6sHSnsFjxGf4OWRMLx
 VVV94vpLIhoNgaRkbhT1SLODFwVVfh+cbkoRoIR7NM8yqPQEvzSUuyAhv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="435256750"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="435256750"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841200396"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="841200396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 04 May 2023 07:38:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:38:12 +0300
Date: Thu, 4 May 2023 17:38:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPDVPG4LdZFGwLx@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 02/12] drm/i915: Make the CRTC state
 consistent during sanitize-disabling
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

On Thu, May 04, 2023 at 02:10:38AM +0300, Imre Deak wrote:
> Make sure that the CRTC state is reset correctly, as expected after
> disabling the CRTC.
> 
> In particular this change will:
> - Zero all the CSC blob pointers after intel_crtc_free_hw_state()
>   has freed them.
> - Zero the shared DPLL and port PLL pointers and clear the
>   corresponding active flags in the PLL state.
> - Reset all the transcoder and pipe fields.
> 
> v2:
> - Reset fully the CRTC state. (Ville)
> - Clear pipe active flags in the DPLL state.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index eefa4018dc0c2..2ca66e49d8863 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -88,13 +88,14 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  	crtc->active = false;
>  	crtc->base.enabled = false;
>  
> -	drm_WARN_ON(&i915->drm,
> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> -	crtc_state->uapi.active = false;
> -	crtc_state->uapi.connector_mask = 0;
> -	crtc_state->uapi.encoder_mask = 0;
> +	if (crtc_state->shared_dpll) {
> +		crtc_state->shared_dpll->state.pipe_mask &= ~BIT(pipe);

So that's basiclly unreference_shared_dpll(). I wonder if we can
refactor that a bit to by usable here?

> +		crtc_state->shared_dpll->active_mask &= ~BIT(pipe);
> +	}

Isn't this part of disable_shared_dpll()? Are we not calling that?

> +
> +	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
> -	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> +	intel_crtc_state_reset(crtc_state, crtc);
>  
>  	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
>  		encoder->base.crtc = NULL;
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
