Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221639960C0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D8F10E65F;
	Wed,  9 Oct 2024 07:24:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eOMVchU7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F87010E65F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 07:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728458679; x=1759994679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tcOumkJYZJyEHNR7fPlJ7Y1xBvY+GBynSOGBImW4VjE=;
 b=eOMVchU7EctFWIURGdAS13yCd3P2iolcgkjM+W4uuD+vKVCrXTLHSVMA
 s4Q8REeO5naz7ygwF7JK04N1DYriK5tMfKMrolJblaqJr9CLKdPCRhnDC
 AhXfGoCEJbnFDGpsRhX0EOxD/76YO/aCYbw/zS7mXJKt4TzIFE1oPat1e
 5m+sysNi081BRRNgRNwnTH1+Srzb40sb/BhWJ/hdYWGlCBPqF/jRXBc76
 wdrmN5+nPdG43gjJtZb9ppEP2fdVDL6ahIlqomWx6tx+z9oTM6jPCGhWM
 g8VMRO6fZndrsOXiR3nE1CBN3bohTfEnhjDDHjBIHHIuylMgvoP19y9uM Q==;
X-CSE-ConnectionGUID: 0BbYS2PoSlCtoLTMAGfrDg==
X-CSE-MsgGUID: JtG4dlO5R/KqpgzNQi1UlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27874869"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27874869"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:24:39 -0700
X-CSE-ConnectionGUID: ACqjWxzMSHCpnkF2HzMnAg==
X-CSE-MsgGUID: 0E2Wt4GnRpq3zMkRWheflQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76268796"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 00:24:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 10:24:35 +0300
Date: Wed, 9 Oct 2024 10:24:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@intel.com, ankit.k.nautiyal@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Message-ID: <ZwYvs4QetgZ-aL3j@intel.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
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

On Tue, Oct 01, 2024 at 07:17:01PM +0530, Mitul Golani wrote:
> Add helper to check if vrr is possible based on flipline
> is computed.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9a51f5bac307..79db30e31324 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
>  		vrefresh <= info->monitor_range.max_vfreq;
>  }
>  
> +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
> +{
> +	return (crtc_state->vrr.flipline) ? true : false;

That can be just 'return crtc_state->vrr.flipline;',
of 'return crtc_state->vrr.flipline != 0;' if you prefer.

> +}
> +
>  void
>  intel_vrr_check_modeset(struct intel_atomic_state *state)
>  {
> @@ -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
> -	if (!crtc_state->vrr.flipline) {
> +	if (!intel_vrr_possible(crtc_state)) {

Hmm. Looks like we have a fairly big mess with the AS SDP 
and CMRR stuff when it comes to programming the hardware
vs. readout. But that's not the fault of this patch obviously.

>  		intel_de_write(display,
>  			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 89937858200d..af921dda4619 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -15,6 +15,7 @@ struct intel_crtc_state;
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector);
>  bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
> +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> -- 
> 2.46.0

-- 
Ville Syrjälä
Intel
