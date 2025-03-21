Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2033BA6C1A0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C85C10E7F8;
	Fri, 21 Mar 2025 17:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImpC6irG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4686710E7F1;
 Fri, 21 Mar 2025 17:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742578470; x=1774114470;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=71i8aqhopFiwY4QqRaxuBd4lH5BdGbNpgl/8cfPtUYI=;
 b=ImpC6irG2CM5+T3M4R6d0srkD0qlmuSpNxkrPGYdwvy1j8Cf4xxM37XZ
 tFzsL2l8D7sHTmM5XMMaAfVQczxK6aFuN6NTZuuK6TUR8Z5bktQ6lVZG+
 CvMX0obgWCy9dedugJa9zaXAoPXV0EmB8yrnz5QMo4cOvRYK0w73XBq/T
 RwNFMln8vpIeVhvMd6+6qm4lsihZb4AnbBg6t7Ar+IwqsYZLPx8fkN9J0
 6Vu9GIaBGPJkY7N2mBxUZ0JsEGK/2aOLsO7+HysIAMcf52k0Ga8LVFHDc
 opb0LL6Gd71gmCgZsl4f3Zd1I3vgz2nKQGVNGPm/hd4EPrWzfaLhs9aKS g==;
X-CSE-ConnectionGUID: S7SURRg0QLCpofRGWUG/ig==
X-CSE-MsgGUID: Q5oPChjfQLuf0jk+4O75Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43971365"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43971365"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:34:30 -0700
X-CSE-ConnectionGUID: 97spJ9llRe+P9Q1Lep65Aw==
X-CSE-MsgGUID: j9BnlViKRwe00IKeutygDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128680977"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:34:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:34:26 +0200
Date: Fri, 21 Mar 2025 19:34:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 02/16] drm/i915/vrr: Avoid reading vrr.enable based on
 fixed_rr check
Message-ID: <Z92jIvuSzV257-VZ@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-3-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 18, 2025 at 01:05:26PM +0530, Ankit Nautiyal wrote:
> Currently, vrr.enable is intended only for variable refresh rate timings.
> At this point, we do not set fixed refresh rate timings, but the GOP can,
> which creates a problem during the readback of vrr.enable.
> 
> The GOP enables the VRR timing generator with fixed timings, while the
> driver only recognizes the VRR timing generator as enabled with
> variable timings. This discrepancy causes an issue due to the
> fixed refresh rate check during readback. Since the VRR timing generator
> is enabled and we do not support fixed timings, the readback should set
> vrr.enable so that the driver can disable the VRR timing generator.
> However, the current check does not allow this.
> 
> Therefore, remove the fixed refresh rate check during readback.
> 
> Fixes: 27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index aa65a6933ddb..6bdcdfed4b9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -657,8 +657,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		}
>  	}
>  
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> -				 !intel_vrr_is_fixed_rr(crtc_state);
> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;

Doesn't this break the state checker when we use the VRR timing
generator for fixed refresh modes?

>  
>  	/*
>  	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
