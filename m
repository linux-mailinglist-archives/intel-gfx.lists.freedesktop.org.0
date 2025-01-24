Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE167A1BDBF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 22:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C3A10E07D;
	Fri, 24 Jan 2025 21:10:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JhvtI4eu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59C610E04A;
 Fri, 24 Jan 2025 21:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737753008; x=1769289008;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+Wj40mqAMQdDiZQKLfRIdzorPgFdkl6Z8ifytN2VeWg=;
 b=JhvtI4euTpJYpMHUJZD2GZ8cHSYhbK9BPKX1hSXMM9TVVkriBH308JIA
 Y7amdzp0w4PWYC6oH2gX8D5WgZ26NoiIJK72+3S5mdxu/KTg35fbXn2Nv
 ILlK7IzAcfsh6LkzVUnaX7yoC4KJlY2qcVzfHxKgdInWZBNL+t1ESe3cC
 ncCFZJyK/fecjQSyhmvV7HZYWvYAx+pg3Gc2799TaYTR/pquMBUp5wpWF
 0ZyxJRYYXZJrxPlqrsJ4Y8+mBDpkVlal0C3eRzL85bMj8IbVzgEk9TWxw
 hJ4eL8V05jQSTOQqhJzsGQzbyVEj70ewvJWsLNbe3i3v72CLXfEcs2oS6 A==;
X-CSE-ConnectionGUID: UNd+7v3rQgW2Du48TmcfMQ==
X-CSE-MsgGUID: qrzW9VdsR4OYgPJzK1ZsxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37502426"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="37502426"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 13:10:02 -0800
X-CSE-ConnectionGUID: yO9Ng2GuSGCyZsz6RYBSCQ==
X-CSE-MsgGUID: wMAuzDW1SSiyIVLR7E77OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107991567"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 13:09:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 23:09:58 +0200
Date: Fri, 24 Jan 2025 23:09:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 11/35] drm/i915/vrr: Avoid prepare vrr timings for cmrr
Message-ID: <Z5QBpsqXDE2aluVw@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-12-ankit.k.nautiyal@intel.com>
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

On Fri, Jan 24, 2025 at 08:29:56PM +0530, Ankit Nautiyal wrote:
> CMRR has a separate logic for computing vrr timings and so it
> overwrites the timings prepared for vrr.
> 
> Avoid prepare vrr timings for cmrr. This will help to separate the
> helpers for timings for vrr, cmrr and the forthcoming
> fixed_rr.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7e69e30b2076..90fd6fe58fce 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -257,8 +257,9 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>  }
>  
>  static
> -void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
>  {
> +	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>  	crtc_state->vrr.enable = true;
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> @@ -328,12 +329,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (vmin >= vmax)
>  		return;
>  
> -	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
> -
>  	if (crtc_state->uapi.vrr_enabled)
> -		intel_vrr_compute_vrr_timings(crtc_state);
> +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> +	else
> +		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);

I don't understand why the caller is calculating the vrr vmin/vmax
and then passing them in to everyone. Looks to me like each of those
guys should just calculate the vmin/vmax on their own.

The
 crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 crtc_state->vrr.vmin -= intel_vrr_min_flipline_offset(display);
part could stay in the caller since it's always needed regardless
of what kind of timings we use.




>  
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
