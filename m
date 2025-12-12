Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F323CB9459
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 17:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7302B10E355;
	Fri, 12 Dec 2025 16:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJKfLb6R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A74210E0F1;
 Fri, 12 Dec 2025 16:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765557304; x=1797093304;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NLBNBvErIkHNDnYIu3L7nEdibSrReAzreZapo0Y/pWQ=;
 b=NJKfLb6REsQzekUphjE59qM0eJm4CEW6rmli+z6ORJTyzb2L34Ua/cGp
 9wP4GkK2n4Z8cmWqFYvKoInDgBQ/CT9lbKqYT2Db8Ko7u3yTD+WwGbacH
 gW58fRFB5Rmh0HZnBmfa9kk0yGxGbqpWztat3fsd9kkGrIPgjDO2u8/Bq
 BHPxzBWvE9PhtvnjXbUIhvJjv32SvSBzDvlRztpCfL1a+wsvOXuLhS4GF
 FV4HZH7tvtHtotopQFMp5dHOB2+fCJZm+eIk3YQE+khuHxM10PoqiJwKG
 RP7X0ql/pJniASQK4RP9oLb8wz8nAcFNcpd9BS9Eg8LeUxqX0qb9IV7Se w==;
X-CSE-ConnectionGUID: PoF7cXnHQZmcZx+WQVMYvg==
X-CSE-MsgGUID: nxf9+wppQrqsqcSj5anPBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71189273"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71189273"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:35:03 -0800
X-CSE-ConnectionGUID: tkKdnQSwRES/xGHkrfoFWw==
X-CSE-MsgGUID: jv1OiSqDQwm10MLFX9xxAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197028603"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:35:01 -0800
Date: Fri, 12 Dec 2025 18:34:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Message-ID: <aTxEMraPc0HmKBff@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
 <20251209062527.620382-4-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251209062527.620382-4-nemesa.garg@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Dec 09, 2025 at 11:55:25AM +0530, Nemesa Garg wrote:
> Incase of non-modeset enable the casf, update the
> strength or disable the casf through dsb.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 256103d55409..7edfc8c2ae21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7300,6 +7300,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	unsigned int size = new_crtc_state->plane_color_changed ? 8192 : 1024;
>  
>  	if (!new_crtc_state->use_flipq &&
> @@ -7332,6 +7334,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		if (intel_crtc_needs_color_update(new_crtc_state))
>  			intel_color_commit_noarm(new_crtc_state->dsb_commit,
>  						 new_crtc_state);
> +		if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> +			intel_casf_enable(new_crtc_state->dsb_commit,
> +					  new_crtc_state);
> +		else if (new_crtc_state->hw.casf_params.strength !=
> +				old_crtc_state->hw.casf_params.strength)
> +			intel_casf_update_strength(new_crtc_state->dsb_commit,
> +						   new_crtc_state);
> +		if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> +			intel_casf_disable(new_crtc_state->dsb_commit,
> +					   new_crtc_state);

I don't want to see this casf stuff becoming even more special. It
needs to be made less special. So I think it should get completely
buried inside the existing pipe scaler/pfit codepaths.

>  		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
>  					       state, crtc);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
