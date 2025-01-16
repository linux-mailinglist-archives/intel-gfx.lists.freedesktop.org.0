Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEB1A14106
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:42:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B667310E207;
	Thu, 16 Jan 2025 17:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kBBzJWip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601C510E207;
 Thu, 16 Jan 2025 17:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049335; x=1768585335;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+P7dCIzlAeRex7xbmcutQPV6kIDEHJYttS2QNZFHmqw=;
 b=kBBzJWipxvEFvVyNup9b0JgRVbl5GaWRrSxxuWTaCaEasTf0+VYD38qU
 hGM4+13hz4qJDKfGXXujxAVQrPEs7SyHNRdpXveKz8F7NWuwjEEmt+hX+
 C0sNtQa6diSduOr9EEtG9ZfZCH9CN4GmGFr8bHV1kiI+qszThrgjEXvNE
 HsUy02qKoyW95wBs3v/gM3oU9tQ7VwCI2bfog7v5y4vVSC+1kyzbadizg
 5jBoBNkBtAJ6QU4j5iswuk0xuAD1pXbQprKLNveEn5ppX0wvB1F2GumOb
 phglfUxQth8RXxr6a6igfZoEBVTuCEIZkLxKNpFmP6DllRcHLVfyKrjIW A==;
X-CSE-ConnectionGUID: T4qTHsT6TS+jfSbQbJP7GQ==
X-CSE-MsgGUID: Zn2jUdPAQaSMHbC3DaarFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="36733851"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="36733851"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:42:15 -0800
X-CSE-ConnectionGUID: kT4UME57TEmCgt3Mtt/4pg==
X-CSE-MsgGUID: 5cTIw0BhSCWKyGCggK8XzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109619375"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:42:14 -0800
Date: Thu, 16 Jan 2025 19:43:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
Message-ID: <Z4lFKYIWMF49peim@ideak-desk.fi.intel.com>
References: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
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

On Thu, Jan 16, 2025 at 03:24:16PM +0530, Ankit Nautiyal wrote:
> While setting the bounds for compressed bpp we ensure that the
> compressed bpp is less than the pipe bpp.
> 
> This gives an issue with 420 output format where effective link bpp is
> half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
> set the bounds for the compressed bpp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1ad25c37f3c2..47fcfbcb893b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    int timeslots)
>  {
>  	int i, ret;
> +	int link_bpp;
> +
> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);

Here and in the xelpd version, using output_bpp instead of link_bpp or
just inlining intel_dp_output_bpp() at the single place it's used would
be better, but in any case the patch looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
> +	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
>  
>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
>  		if (valid_dsc_bpp[i] < dsc_min_bpp)
> @@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>  	u16 compressed_bppx16;
>  	u8 bppx16_step;
> +	int link_bpp;
>  	int ret;
>  
>  	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
> @@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	else
>  		bppx16_step = 16 / bppx16_incr;
>  
> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> +
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
> +	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
>  	dsc_min_bpp = dsc_min_bpp << 4;
>  
>  	for (compressed_bppx16 = dsc_max_bpp;
> -- 
> 2.45.2
> 
