Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC154CBCEC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 12:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BAED10E273;
	Thu,  3 Mar 2022 11:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4251410E273
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 11:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646307658; x=1677843658;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WjoKDcjbd+RCPD7FXh3XfN3wuoY+ZOfNTeMGodF2+PI=;
 b=n42G3H/24M74nQPpRd9XDEJGxaFHJcHlaG0prmbXR+5ATfdkFKnOHb+h
 b9BBqEArdlFjibFD6+C9s1skp/C4povbWoFcPjq6TVBFp4uaZ/gYkssKN
 RUt1Vhja8WeMg+2YoYmOnBNeYd3Z/dTXdhMC5QHdlKrau5AZvjF2AqHHv
 1oXVWY/crPp4BZenfWCwWlttQIRtD076IBZ4LskcUUOaeNpWon2Zsnee6
 83zAZ+XtLHbPOG5CndV171a9AKE2vUgZgocmrf3eR6Va4QWI6vNfLIrwb
 mlDJo9N38qejzrS7eHhKwGoebXwclf0wkA2to8yG+RilUq2YZBv0hip/5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="251225773"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="251225773"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 03:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="686475601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 03 Mar 2022 03:40:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 13:40:55 +0200
Date: Thu, 3 Mar 2022 13:40:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <YiCpR1P8t0dENNU5@intel.com>
References: <20220302231119.16876-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220302231119.16876-1-swathi.dhanavanthri@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/adlp: Remove code related
 to underrun recovery
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

On Wed, Mar 02, 2022 at 03:11:19PM -0800, Swathi Dhanavanthri wrote:
> This is not supported for ADLP and is not needed.
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

Thanks. Pushed to drm-intel-next.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 --------------------
>  1 file changed, 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6cae58f921a5..541797a2ff9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3595,12 +3595,8 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct intel_crtc_scaler_state *scaler_state =
> -		&crtc_state->scaler_state;
> -
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	u32 val = 0;
> -	int i;
>  
>  	switch (crtc_state->pipe_bpp) {
>  	case 18:
> @@ -3639,23 +3635,6 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		val |= PIPEMISC_PIXEL_ROUNDING_TRUNC;
>  
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> -		bool scaler_in_use = false;
> -
> -		for (i = 0; i < crtc->num_scalers; i++) {
> -			if (!scaler_state->scalers[i].in_use)
> -				continue;
> -
> -			scaler_in_use = true;
> -			break;
> -		}
> -
> -		intel_de_rmw(dev_priv, PIPE_MISC2(crtc->pipe),
> -			     PIPE_MISC2_BUBBLE_COUNTER_MASK,
> -			     scaler_in_use ? PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN :
> -			     PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS);
> -	}
> -
>  	intel_de_write(dev_priv, PIPEMISC(crtc->pipe), val);
>  }
>  
> -- 
> 2.20.1

-- 
Ville Syrjälä
Intel
