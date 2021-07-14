Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BCC3C8498
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 14:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE2E6E249;
	Wed, 14 Jul 2021 12:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E41F6E249
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:41:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="271448705"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="271448705"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 05:41:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="412774842"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 05:41:29 -0700
Date: Wed, 14 Jul 2021 15:41:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <20210714123914.GB3545974@ideak-desk.fi.intel.com>
References: <20210713184421.9493-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713184421.9493-1-juhapekka.heikkila@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wm params for ccs
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

On Tue, Jul 13, 2021 at 09:44:21PM +0300, Juha-Pekka Heikkila wrote:
> skl_compute_plane_wm_params() didn't take into account ccs
> modifiers on graphics ver >= 12
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 0cbb79452fcf..540a7ecbf004 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5249,11 +5249,9 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  
>  	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
>  		      modifier == I915_FORMAT_MOD_Yf_TILED ||
> -		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> -		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> +		      is_ccs_modifier(modifier);
>  	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> -	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> -			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> +	wp->rc_surface = is_ccs_modifier(modifier);

This sets rc_surface for MC modifiers as well. Doesn't matter atm,
because it's only used for a GEN 9 workaround, but better to keep it
consistent.

>  	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
>  
>  	wp->width = width;
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
