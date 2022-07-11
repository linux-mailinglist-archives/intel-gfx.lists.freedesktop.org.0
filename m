Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBB57051B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 16:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB19D8E994;
	Mon, 11 Jul 2022 14:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A546C8E994
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657548600; x=1689084600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fEDIK/lWGnZwS+kXLgeo89AZJS1fZX1M7mZhVWg8Q/M=;
 b=me9sOgTLwQ1pLUls9CZ4WOTl0hARmvndoGNYAZKTUJZB1k26usdv0//l
 DOPG1jpOWW9b+K1Q1S5QLQbIM3AeuvabKNbU+hHxXbV/rXe/ys2n+U7+g
 oUCY9UJ9hW5vGotnEDgL9Y8GF6eFa9rSR1QNaikm5j3DDT/xKa1sjTptm
 Fx1dvyDjXB2uQBpjnWD/iIYshNXyJymU2Y6Tjzx5U9nwH7RrMsU2pxyjk
 t40MOuJjMtdMnl0MFSzMcoHBvVrbMwyOHIk71MTkK9/aJCEZLt0HQlWnj
 nxl1wMNCTyfDDKFu+y6/q4T6nOkpjPRy1TWMFP9JjYzHpXu+k7nsahUla w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="346355181"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="346355181"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 07:09:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="622088723"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 07:09:42 -0700
Date: Mon, 11 Jul 2022 17:10:06 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <YswvPiMSs6jWQdkD@intel.com>
References: <20220711111750.881552-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220711111750.881552-1-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
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

On Mon, Jul 11, 2022 at 02:17:50PM +0300, Jouni Högander wrote:
> Currently PSR is left enabled when all planes are disabled if there
> is no attached encoder in new state. This seems to be causing FIFO
> underruns.
> 
> Fix this by checking if encoder exists in new crtc state and disable
> PSR if it doesn't.
> 
> v2: Unify disable logic with existing

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 53 ++++++++++++++----------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e6a870641cd2..90599dd1cb1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1863,36 +1863,45 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	const struct intel_crtc_state *crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder;
> +	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
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
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		struct intel_encoder *encoder;
> +		u32 old_new_encoder_mask = old_crtc_state->uapi.encoder_mask |
> +			new_crtc_state->uapi.encoder_mask;
>  
> -		mutex_lock(&psr->lock);
> +		for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> +						     old_new_encoder_mask) {
> +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +			struct intel_psr *psr = &intel_dp->psr;
> +			bool needs_to_disable = false;
>  
> -		/*
> -		 * Reasons to disable:
> -		 * - PSR disabled in new state
> -		 * - All planes will go inactive
> -		 * - Changing between PSR versions
> -		 */
> -		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
> -		needs_to_disable |= !crtc_state->has_psr;
> -		needs_to_disable |= !crtc_state->active_planes;
> -		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
> +			mutex_lock(&psr->lock);
>  
> -		if (psr->enabled && needs_to_disable)
> -			intel_psr_disable_locked(intel_dp);
> +			/*
> +			 * Reasons to disable:
> +			 * - PSR disabled in new state
> +			 * - All planes will go inactive
> +			 * - Changing between PSR versions
> +			 * - Encoder isn't present in new mask
> +			 */
> +			needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
> +			needs_to_disable |= !new_crtc_state->has_psr;
> +			needs_to_disable |= !new_crtc_state->active_planes;
> +			needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
> +			needs_to_disable |= !(new_crtc_state->uapi.encoder_mask &
> +					      drm_encoder_mask(&(encoder)->base));
>  
> -		mutex_unlock(&psr->lock);
> +			if (psr->enabled && needs_to_disable)
> +				intel_psr_disable_locked(intel_dp);
> +
> +			mutex_unlock(&psr->lock);
> +		}
>  	}
>  }
>  
> -- 
> 2.25.1
> 
