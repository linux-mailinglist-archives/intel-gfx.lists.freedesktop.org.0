Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A3E805017
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 11:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A10610E4E2;
	Tue,  5 Dec 2023 10:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E634110E4CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 10:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701771718; x=1733307718;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DcHozEsYehj8HA/Bfy2vaL7VVNOQCGgKtedRvF502fg=;
 b=U1uAeRPOPYevJH1MtUUEJf1eXSK9l2a0KaAQoMXC80rN13TF8Lv48wPO
 /o7LV/YEsAqxFZ11OKF5zB/a+uk2zyVrXmqnCuJ5WNX28slqNF/9vBTDS
 XmKNp8PmDdwCt0O3nEbuytcV3FW+BgpR1ClL2sAhVs/rEQoNzmogE8RhU
 1WAwSgECgN2UEuvTLdq+lYTs/zErp4wZrHZ/c1G5t29x0V1eTpIep+SHQ
 uIrSI+SEOqgp2QA8FySGT6Dn0rLcBxEtEsCjHtCvCviH48hIotgZGjNLb
 8Wpp6PHYbnSIrimRwIw3zOSI6hiQ+3SZUJYSFCGiL2OOCG2OMJI0Uj/2B g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="935740"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; 
   d="scan'208";a="935740"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 02:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="720647428"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="720647428"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 02:21:55 -0800
Date: Tue, 5 Dec 2023 12:21:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZW75x2ZXgIccA9us@ideak-desk.fi.intel.com>
References: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix ADL+ tiled plane stride when
 the POT stride is smaller than the original
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 04, 2023 at 10:24:43PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> plane_view_scanout_stride() currently assumes that we had to pad the
> mapping stride with dummy pages in order to align it. But that is not
> the case if the original fb stride exceeds the aligned stride used
> to populate the remapped view, which is calculated from the user
> specified framebuffer width rather than the user specified framebuffer
> stride.
> 
> Ignore the original fb stride in this case and just stick to the POT
> aligned stride. Getting this wrong will cause the plane to fetch the
> wrong data, and can lead to fault errors if the page tables at the
> bogus location aren't even populated.
> 
> TODO: figure out if this is OK for CCS, or if we should instead increase
> the width of the view to cover the entire user specified fb stride
> instead...

Yes, this is also needed since the CCS AUX surface can't be remapped in
general (unless its stride is page size aligned -> main surface stride
256 tiles aligned).

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks for the fix, with the above CCS case also fixed as a follow-up or
in this patch:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 33a693460420..ab634a4c86d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1381,7 +1381,8 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
>  	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>  	unsigned int stride_tiles;
>  
> -	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> +	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
> +	    src_stride_tiles < dst_stride_tiles)
>  		stride_tiles = src_stride_tiles;
>  	else
>  		stride_tiles = dst_stride_tiles;
> -- 
> 2.41.0
> 
