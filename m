Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C676A6C1CC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:44:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC5D10E1B5;
	Fri, 21 Mar 2025 17:44:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcUeMQBi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3DC10E030;
 Fri, 21 Mar 2025 17:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742579077; x=1774115077;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4aorD6U8ZLV2Nn4gmtMkXkJq2GXBnTv9zqyiaibJS+Q=;
 b=lcUeMQBi+gbwb/W2uznMvpjac4n18a1SO3qDxW6MneFv5WDP8QpeCX0a
 gP3nIsZG/x49IXu/EIIMe5ZFkyLIeDxNcnjRXX/CsoM3VzhKHV4tYXTH4
 ufNZ+fBiSlhNGmXkZZ2e1oNSj6S4nzGv6wIiARqCJ2tg0v2NAyqMX62/V
 UTL/2HNX67vMhppCnVh+ap8EHjpzYv1uAbOo/47O26ZKQLA9rJ9PxEfOk
 IVk1DFppqAGbj1p6b1pk8A3LTAjZWTkTWdYJpRC36KA6TtskZuah4dcOz
 6etU/m/aDCoYbyvwWt19cxj7NwTTLFzd3PkxdwPtginm8SF6GjQdWJl9U A==;
X-CSE-ConnectionGUID: 1q6pDZ11QQOdx/UAuMhSoQ==
X-CSE-MsgGUID: hrs7bYD8Qb21XCwqSGQPZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43972102"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43972102"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:44:37 -0700
X-CSE-ConnectionGUID: Aoh9/5I+T9WrZyNRvRLNkQ==
X-CSE-MsgGUID: y1BByzYfS/uiNwK9SJcdIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128683954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:44:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:44:33 +0200
Date: Fri, 21 Mar 2025 19:44:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 09/16] drm/i915/vrr: Set vrr.enable for VRR TG with
 fixed_rr
Message-ID: <Z92lgX7YaPSqZz3g@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-10-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 18, 2025 at 01:05:33PM +0530, Ankit Nautiyal wrote:
> For platforms that enable VRR TG only for variable timings, the
> VRR_CTL.VRR_ENABLE bit indicates VRR is active. For platforms that
> always have VRR TG enabled, the VRR_CTL.VRR_ENABLE bit indicates VRR
> is active only when not in fixed refresh rate mode.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3f610e382883..66afa66c66af 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -630,6 +630,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
> +	bool vrr_enable;
>  
>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
> @@ -673,7 +674,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		}
>  	}
>  
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_state->vrr.enable = vrr_enable && !intel_vrr_is_fixed_rr(crtc_state);
> +	else
> +		crtc_state->vrr.enable = vrr_enable;

Ah, this fixes the intel_vrr_always_use_vrr_tg() case.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	/*
>  	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
