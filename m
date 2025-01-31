Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB5AA23E93
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 14:44:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD71410EAB5;
	Fri, 31 Jan 2025 13:44:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4GOUdoL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B7C10EAB5;
 Fri, 31 Jan 2025 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738331074; x=1769867074;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=mYy+ow/5gT0bqxe/TBsAJp6YJPofK+w4PlaZTRMwrbU=;
 b=O4GOUdoL/dbVqu3G+glM79uxQ6K7niHCeliEk+T+iEObJy/jtw/z2arh
 6OQ8aHdXsh0fTPRVMnea815SWDZ79/oZESDA0z6KohtYMASe2TW+cdbEN
 Z8DX9Xj6r23kVnrQ+PdfkPKv8pEieXL3gposE2zKYEPtA1J7Zz0IE5u+3
 SihQYjtxZTbA+G08VB9i+v2zrLDDKzobSr9fSXL2+YRFK31O2Uhn1PqUo
 oX3PKCTymCirG907u7z+4KXp4DtrpsaNA0VCzu2KIK4QmNa+ex9p3nVP5
 02T420GcczWfCZqgzM1C3V7M9eBmZf2Y5A16Ou5QDomwN3LfdPYycgs0k Q==;
X-CSE-ConnectionGUID: IgyCqOhGR3S1hYfFmE+g1w==
X-CSE-MsgGUID: sBg8kXICTmWKLkIXLxsbYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="64261065"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="64261065"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:44:33 -0800
X-CSE-ConnectionGUID: VwDjQ/woQW6o9CoB54bQkA==
X-CSE-MsgGUID: U9N0maMfSYe3np3u+dYUwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132889148"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:44:32 -0800
Date: Fri, 31 Jan 2025 15:45:29 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/14] drm/i915/dp: Add intel_dp_dsc_bpp_step_x16()
 helper to get DSC BPP precision
Message-ID: <Z5zT-QAD_RRYbzCX@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2025 at 02:49:55PM +0200, Jani Nikula wrote:
> Add a platform independent helper for getting the supported DSC BPP step
> for the link.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ecf192262eb9..a7a5bb2075da 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2054,6 +2054,21 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
>  		return 27;
>  }
>  
> +/*
> + * Note: for pre-13 display you still need to check the validity of each step.
> + */
> +static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)

Nit: there was a guideline that these KMS objects should be passed around via
non-const pointers vs. state pointers which should be const if possible.

> +{
> +	struct intel_display *display = to_intel_display(connector);
> +	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
> +
> +	if (DISPLAY_VER(display) < 14 || !incr)
> +		return fxp_q4_from_int(1);
> +
> +	/* fxp q4 */
> +	return 16 / incr;

Nit: could've been fxp_q4_from_int(1) / incr;

Regardless of the nits, patch looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +}
> +
>  /*
>   * From a list of valid compressed bpps try different compressed bpp and find a
>   * suitable link configuration that can support it.
> @@ -2110,16 +2125,12 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			      int timeslots)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>  	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>  	u16 compressed_bppx16;
>  	u8 bppx16_step;
>  	int ret;
>  
> -	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
> -		bppx16_step = 16;
> -	else
> -		bppx16_step = 16 / bppx16_incr;
> +	bppx16_step = intel_dp_dsc_bpp_step_x16(connector);
>  
>  	/* Compressed BPP should be less than the Input DSC bpp */
>  	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bppx16_step);
> -- 
> 2.39.5
> 
