Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 491D6808B0C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 15:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E1610E8A6;
	Thu,  7 Dec 2023 14:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9242B10E8A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 14:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701960688; x=1733496688;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HlB6i9bO0ExvUphbpZow4mwXfEe49VWsZHgnlb7E8IM=;
 b=ZtBEUo/p5Qxu7kV1qBoWrMuLagprPHU8gmW5ev4FPudOUe094d/6DeH7
 Zjkns5LwZ4z40aIET3pyuw5xFk4EmBchylBnWTtv+Gjn+kzUwU3BYpBG3
 p9KY82LSyebAeau0mFjPENTJvcwsHqk7hlqGUZYFtHknB5PSJSpMm4OTO
 uoj04TCdeJNuF8JkP4+MrpjliS/U8jQwuThDpU6NpTdo+FoOH+oZS9JKL
 Op/CZGcmMAdOGpvtcO5pFnot1fkSSmcTmWY2DQMCXMhe/oKwrAgEwyo/w
 4nUxOd56n5bZygxux3v8ZxNMFnu9H9t1aN9T/vmMXlHn2R++yf3EZieib g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1120555"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1120555"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:51:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="837743762"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="837743762"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:51:26 -0800
Date: Thu, 7 Dec 2023 16:51:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Fix remapped stride with CCS on ADL+
Message-ID: <ZXHb8tTcavLV3J0a@ideak-desk.fi.intel.com>
References: <20231205180308.7505-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231205180308.7505-1-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 05, 2023 at 08:03:08PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On ADL+ the hardware automagically calculates the CCS AUX surface
> stride from the main surface stride, so when remapping we can't
> really play a lot of tricks with the main surface stride, or else
> the AUX surface stride would get miscalculated and no longer
> match the actual data layout in memory.
> 
> Supposedly we could remap in 256 main surface tile units
> (AUX page(4096)/cachline(64)*4(4x1 main surface tiles per
> AUX cacheline)=256 main surface tiles), but the extra complexity
> is probably not worth the hassle.
> 
> So let's just make sure our mapping stride is calculated from
> the full framebuffer stride (instead of the framebuffer width).
> This way the stride we program into PLANE_STRIDE will be the
> original framebuffer stride, and thus there will be no change
> to the AUX stride/layout.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index ab634a4c86d1..9f35bdce3eb8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1509,8 +1509,20 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
>  
>  			size += remap_info->size;
>  		} else {
> -			unsigned int dst_stride = plane_view_dst_stride_tiles(fb, color_plane,
> -									      remap_info->width);
> +			unsigned int dst_stride;
> +
> +			/*
> +			 * The hardware automagically calculates the CCS AUX surface
> +			 * stride from the main surface stride so can't really remap a
> +			 * smaller subset (unless we'd remap in whole AUX page units).
> +			 */
> +			if (intel_fb_needs_pot_stride_remap(fb) &&

This fix also applies at least to all !FLAT_CSS platforms. Since
the stride remapping is disabled anyway on all platforms for CCS
modifiers, the same should be done here as well?

> +			    intel_fb_is_ccs_modifier(fb->base.modifier))
> +				dst_stride = remap_info->src_stride;
> +			else
> +				dst_stride = remap_info->width;
> +
> +			dst_stride = plane_view_dst_stride_tiles(fb, color_plane, dst_stride);
>  
>  			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
>  			color_plane_info->mapping_stride = dst_stride *
> -- 
> 2.41.0
> 
