Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5781A6DAA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 22:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334BA89C46;
	Mon, 13 Apr 2020 20:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C76F89C46
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 20:58:04 +0000 (UTC)
IronPort-SDR: iuqoERkWaYy85oKDqiS8xFbEGzthM//cFr7/TiK1bkWAEJXbBx/41f22bu9lWvYRKUoWmP4GLQ
 3LC88C/E+KGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 13:58:02 -0700
IronPort-SDR: 0xigPnkSlgj2im9y6IlooNZvh5WnhlFKyINEYLXbCBq8wVuRV3WjgcrsXWtX595em20EnwCblT
 9V2sgh0vPuWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="252993086"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with SMTP; 13 Apr 2020 13:58:02 -0700
Date: Mon, 13 Apr 2020 13:58:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200413205802.GE2630258@mdroper-desk1.amr.corp.intel.com>
References: <20200413175322.12162-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413175322.12162-1-matthew.s.atwood@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: extended Wa_2006604312 to ehl
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

On Mon, Apr 13, 2020 at 01:53:22PM -0400, Matt Atwood wrote:
> Reflect recent bspec changes.
> 
> Bspec: 33451
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Matches the updated spec.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 70ec301fe6e3..415d1fff0362 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -525,7 +525,7 @@ skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
>  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
>  }
>  
> -/* Wa_2006604312:icl */
> +/* Wa_2006604312:icl,ehl */
>  static void
>  icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		       bool enable)
> @@ -6438,8 +6438,8 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	/* Wa_2006604312:icl */
> -	if (crtc_state->scaler_state.scaler_users > 0 && IS_ICELAKE(dev_priv))
> +	/* Wa_2006604312:icl,ehl */
> +	if (crtc_state->scaler_state.scaler_users > 0 && IS_GEN(dev_priv, 11))
>  		return true;
>  
>  	return false;
> @@ -6509,7 +6509,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	    needs_nv12_wa(new_crtc_state))
>  		skl_wa_827(dev_priv, pipe, true);
>  
> -	/* Wa_2006604312:icl */
> +	/* Wa_2006604312:icl,ehl */
>  	if (!needs_scalerclk_wa(old_crtc_state) &&
>  	    needs_scalerclk_wa(new_crtc_state))
>  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> -- 
> 2.21.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
