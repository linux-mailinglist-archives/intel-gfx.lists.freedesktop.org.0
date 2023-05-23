Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A670770DBAC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 13:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D911010E076;
	Tue, 23 May 2023 11:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C9210E076
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684842277; x=1716378277;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=f+YhtYystJvCSfVRPSjvTUANAvslNMu3DkJKgD7PtAU=;
 b=A3S9dFWTujIbIkxqQoycfNUkHYFq75pcmGJ2RuOOh8VTR60RN6r25U9x
 O1+edCPEAT0qzL+zjKKH64BWKNFbGi3dNRPh8Fk+Ihimo+Fl61RLAkYj1
 z2qzHu6XLCkno+zeT8U3zTcOkMNcUPKB2ofmTGjWfieeNL25kxsLLzrkr
 wihAKOp4JRU/t5IaqX4B2F9/DlPGahQHf2bGRwOayx/BkEZe8FTcOh4x/
 sV42YR4rmc8fDNIIXJZ5McnkypwiDh+Y2iamtHFUyUGXMgKcZuwtYtGuQ
 +ArzQJv1VDpckP69UwDI/YNR75TF7QQV/3Bd45tFxRBw8hF63o20b5ebQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="356442948"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="356442948"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 04:44:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="681362920"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="681362920"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 04:44:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230523101651.1282681-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230523101651.1282681-1-suraj.kandpal@intel.com>
 <20230523101651.1282681-2-suraj.kandpal@intel.com>
Date: Tue, 23 May 2023 14:44:33 +0300
Message-ID: <87sfbnl1b2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Move rc param calculation
 for native_420
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Move rc_param calculation for native_420 into calculate_rc_parameter.

Why?

Please always answer the question "why" in the commit message, even if
briefly.

>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 28 +++++++++++++----------
>  1 file changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..c64a38363e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -78,6 +78,22 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  	else
>  		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
>  
> +	/* According to DSC 1.2 specs in Section 4.1 if native_420 is set:
> +	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> +	 * height < 8.
> +	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> +	 * preservation in second line.
> +	 */
> +	if (vdsc_cfg->native_420) {
> +		if (vdsc_cfg->slice_height >= 8)
> +			vdsc_cfg->second_line_bpg_offset = 12;
> +		else
> +			vdsc_cfg->second_line_bpg_offset =
> +				2 * (vdsc_cfg->slice_height - 1);
> +
> +		vdsc_cfg->second_line_offset_adj = 512;
> +	}
> +
>  	/* Our hw supports only 444 modes as of today */
>  	if (bpp >= 12)
>  		vdsc_cfg->initial_offset = 2048;
> @@ -192,24 +208,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	/*
>  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set:
>  	 * -We need to double the current bpp.
> -	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> -	 * height < 8.
> -	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> -	 * preservation in second line.
>  	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
>  	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
>  	 * fractional bits.
>  	 */
>  	if (vdsc_cfg->native_420) {
>  		vdsc_cfg->bits_per_pixel <<= 1;
> -
> -		if (vdsc_cfg->slice_height >= 8)
> -			vdsc_cfg->second_line_bpg_offset = 12;
> -		else
> -			vdsc_cfg->second_line_bpg_offset =
> -				2 * (vdsc_cfg->slice_height - 1);
> -
> -		vdsc_cfg->second_line_offset_adj = 512;
>  		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
>  							vdsc_cfg->slice_height - 1);
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
