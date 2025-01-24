Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC80A1BD95
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 21:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248C310E139;
	Fri, 24 Jan 2025 20:41:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jdZCkO9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CEB10E04A;
 Fri, 24 Jan 2025 20:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737751295; x=1769287295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ov/Uj/TMe3R86udIhYJWgtNK/xQf3RA60epHKnEGDuo=;
 b=jdZCkO9qmPSEmkJJyo9GAUqAGP3CYTelWySn/zQwvNU9geEZ7LAkn93g
 4pDMOMKlvKzXcA1IZCuakRCVa/t7qIhlOO9A14ZA00OXwZu4ndb4HpMmn
 ZGddc3L8K04Fu/g+8tEHNcAwbCSynkBHuiBcFBhmR7C9Ua6ldsy8frGaw
 HMWEuMScuolJTk6msgdDe/m1YbKYvfJuZjYhQ0q9qoT22cwGitqREtcU0
 liz/JZApnTt0D88nMMjHTk4NVU2DHpuZtXwG8JK8aqZoUfh55KQM/nwTu
 myxXkBD7UDAy0KmW28Z5gPF6PjmtVWEC/NcJx70KxVRItYiLHH0/7aImZ Q==;
X-CSE-ConnectionGUID: UkgVseIRRgmTvApKQQV8ow==
X-CSE-MsgGUID: cQ3FsBS4TYSS/yDfzXKrOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37499288"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="37499288"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 12:41:34 -0800
X-CSE-ConnectionGUID: Tmr//w6aR+aJFzWmT67zVQ==
X-CSE-MsgGUID: EHj0XIv5QxqhN1lT1OsqYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107987727"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 12:41:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 22:41:31 +0200
Date: Fri, 24 Jan 2025 22:41:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 04/35] drm/i915/dp: Compute as_sdp.vtotal based on vrr
 timings
Message-ID: <Z5P6-9mb7R0VpWLT@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-5-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Jan 24, 2025 at 08:29:49PM +0530, Ankit Nautiyal wrote:
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> Compute as_sdp.vtotal based on minimum vtotal calculated
> during vrr computation.
> 
> --v2:
>  - make a separate patch and update to vmin only [Ankit].
> 
> --v3:
>  - Update vtotal to vmin for cmrr case as well [Ankit].
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 591e4fa20c16..ddfc79b1ee10 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2834,15 +2834,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>  	as_sdp->length = 0x9;
>  	as_sdp->duration_incr_ms = 0;
> +	as_sdp->vtotal = crtc_state->vrr.vmin;

Should probably be intel_vrr_vmin_vtotal().

>  
>  	if (crtc_state->cmrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
>  	} else {
>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
>  		as_sdp->target_rr = 0;
>  	}
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
