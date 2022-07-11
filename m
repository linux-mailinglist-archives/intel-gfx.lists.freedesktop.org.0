Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE1756F9D9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 11:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C728D179;
	Mon, 11 Jul 2022 09:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BB48D179
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 09:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657530595; x=1689066595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=b5LhUVloQzpqmi8hHHNn2H6XTOvhyj/CkBM1XE3i4ao=;
 b=khFCEScYyuu2vFAm7oAEZYFzfE4HcCr5CN+mzBhW6gKQiAN4LI9NDkbe
 yaZas9YLREGsZUqh/TSYlGpG3fHdvwPj+TiPVZ9+bzfO0AMal+zi5IDlW
 pSr057szVpDzOjHKcuddWuvx3oYypahvj+X+GZ9S+2643r1PA5aXEvg3b
 sWt2eYJKAIId47AWvYxpwJ2qKkFUMAaLgzZPoRaN+FX1PKk5nPj41/3rK
 HZS8tnwAEdrnbGHq90eJqo4tfhDv3FRKvCbFEwb2A6UPS73beMA0JfJhJ
 dUgysNOPY/BsLV6KHvK3Pja0RDqBwTMkEyIbNPER0hkfxrYG3GSnVgORE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285743027"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="285743027"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 02:09:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="544937785"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 02:09:54 -0700
Date: Mon, 11 Jul 2022 12:09:49 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Ysvo3QCqJc+v782v@intel.com>
References: <20220711061601.654694-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220711061601.654694-1-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Ensure PSR gets disabled
 if no encoders in new state
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

On Mon, Jul 11, 2022 at 09:16:01AM +0300, Jouni Högander wrote:
> Currently PSR is left enabled when all planes are disabled if there
> is no attached encoder in new state. This seems to be causing FIFO
> underruns.
> 
> Fix this by checking if old and new crtc encoder masks are differing.
> PSR is disabled for encoders not in new crtc state encoder mask.
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 72 +++++++++++++++++-------
>  1 file changed, 51 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e6a870641cd2..710cc31ace22 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1863,36 +1863,66 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	const struct intel_crtc_state *crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	struct intel_psr *psr;
> +	int i;
>  
>  	if (!HAS_PSR(i915))
>  		return;
>  
> -	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> -					     crtc_state->uapi.encoder_mask) {
> -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -		struct intel_psr *psr = &intel_dp->psr;
> -		bool needs_to_disable = false;
> -
> -		mutex_lock(&psr->lock);
> -
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
>  		/*
> -		 * Reasons to disable:
> -		 * - PSR disabled in new state
> -		 * - All planes will go inactive
> -		 * - Changing between PSR versions
> +		 * Check if encoder exists in new state and disable
> +		 * psr if it doesn't. Otherwise we will end update
> +		 * having all planes disabled and psr enabled which
> +		 * seems to be causing problems.
>  		 */
> -		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
> -		needs_to_disable |= !crtc_state->has_psr;
> -		needs_to_disable |= !crtc_state->active_planes;
> -		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
> +		if (old_crtc_state->uapi.encoder_mask != new_crtc_state->uapi.encoder_mask) {
> +			for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> +							     old_crtc_state->uapi.encoder_mask) {
> +				intel_dp = enc_to_intel_dp(encoder);
> +				psr = &intel_dp->psr;
>  
> -		if (psr->enabled && needs_to_disable)
> -			intel_psr_disable_locked(intel_dp);
> +				if (new_crtc_state->uapi.encoder_mask &
> +				    drm_encoder_mask(&(encoder)->base))
> +					continue;
>  
> -		mutex_unlock(&psr->lock);
> +				mutex_lock(&psr->lock);
> +
> +				if (psr->enabled)
> +					intel_psr_disable_locked(intel_dp);
> +
> +				mutex_unlock(&psr->lock);
> +			}
> +		}
> +		for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> +						     new_crtc_state->uapi.encoder_mask) {
> +			bool needs_to_disable = false;
> +
> +			intel_dp = enc_to_intel_dp(encoder);
> +			psr = &intel_dp->psr;
> +
> +			mutex_lock(&psr->lock);
> +
> +			/*
> +			 * Reasons to disable:
> +			 * - PSR disabled in new state
> +			 * - All planes will go inactive
> +			 * - Changing between PSR versions
> +			 */
> +			needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
> +			needs_to_disable |= !new_crtc_state->has_psr;
> +			needs_to_disable |= !new_crtc_state->active_planes;
> +			needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
> +
> +			if (psr->enabled && needs_to_disable)
> +				intel_psr_disable_locked(intel_dp);
> +
> +			mutex_unlock(&psr->lock);
> +		}
>  	}
>  }

Looks correct to me, the only thing that we could probable unite both for_each_intel_encoder_mask_with_psr
cycles and also then get rid of if (old_crtc_state->uapi.encoder_mask != new_crtc_state->uapi.encoder_mask) check by
doing something like:

old_new_encoder_mask = old_crtc_state->uapi.encoder_mask |  new_crtc_state->uapi.encoder_mask;

for_each_intel_encoder_mask_with_psr(state->base.dev, encoder, old_new_encoder_mask) {
	bool needs_to_disable = false;

	intel_dp = enc_to_intel_dp(encoder);

	psr = &intel_dp->psr;

	mutex_lock(&psr->lock);

        needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);        
        needs_to_disable |= !new_crtc_state->has_psr;
        needs_to_disable |= !new_crtc_state->active_planes;
        needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;

	/* Check if this encoder isn't present in new mask */
        needs_to_disable |= !(new_crtc_state->uapi.encoder_mask & drm_encoder_mask(&(encoder)->base));

	if (psr->enabled && needs_to_disable)
		 intel_psr_disable_locked(intel_dp);

	mutex_unlock(&psr_lock);
}

So basically we make non-presence of the encoder in new mask to be just one more check
for needs_to_disable and have a single place where we turn it off..

Stan

>  
> -- 
> 2.25.1
> 
