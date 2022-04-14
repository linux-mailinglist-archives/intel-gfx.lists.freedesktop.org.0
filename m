Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 128725012B4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD5310FD75;
	Thu, 14 Apr 2022 15:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58CD410FD75
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 15:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649949013; x=1681485013;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fsl2h5K3snX5ve6WteNFrI7hVMRx1JAWLM4Uy2NqzIM=;
 b=IEKHi3XBzfWs6iGGTVqwx46DMO3+ZYH8JzRJEefRh6nyI0pqyrCnUibi
 BrrRGf5/R4dFEIWKlHDgqxz6p9gQnTMkANM2N4dxhDwPhDGcPeNvPLzZx
 mTih9bu/R01FDm429UqbaSg30fP/reOZDkMZcSQH+ckFGhXFefxdI4qdu
 v4A3p4NUh0Emp0ysqttvgIF6Bpc6lLPsqep+BHsnCd5r3KK3Y3ypjHFVV
 et/YeH0SRaIffixmaXsNPa16MMNM+B5RAoHRn5+ivnmvEDFUI8Kkp2e5r
 +36f29cZ8onovYtZuJDBMelDF8aBchM/dx3t5VYTE327NOmAsC+WPzXkO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="250247689"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="250247689"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:10:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="725394907"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:10:12 -0700
Date: Thu, 14 Apr 2022 08:10:18 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220414151018.GA204099@mdnavare-mobl1.jf.intel.com>
References: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
 <20220413152852.7336-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220413152852.7336-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/fbc: s/false/0/
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

On Wed, Apr 13, 2022 at 06:28:52PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_fbc_check_plane() is supposed to an int, not a boolean.
> So replace the bogus 'return false's with the correct 'return 0's.
> These were accidental copy-paste mistakes when the code got moved
> into intel_fbc_check_plane() from somewhere else tht did return
> a boolean.
> 
> No functional issue here since false==0.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Good catch

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index ff303c7d3a57..966970d1cf0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1086,7 +1086,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 */
>  	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
>  		plane_state->no_fbc_reason = "PSR2 enabled";
> -		return false;
> +		return 0;
>  	}
>  
>  	if (!pixel_format_is_valid(plane_state)) {
> @@ -1112,7 +1112,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>  	    fb->format->has_alpha) {
>  		plane_state->no_fbc_reason = "per-pixel alpha not supported";
> -		return false;
> +		return 0;
>  	}
>  
>  	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
> @@ -1128,7 +1128,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(i915) >= 9 &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason = "plane start Y offset misaligned";
> -		return false;
> +		return 0;
>  	}
>  
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> @@ -1136,7 +1136,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason = "plane end Y offset misaligned";
> -		return false;
> +		return 0;
>  	}
>  
>  	/* WaFbcExceedCdClockThreshold:hsw,bdw */
> -- 
> 2.35.1
> 
