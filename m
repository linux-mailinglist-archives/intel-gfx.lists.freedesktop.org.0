Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050EC5DC51
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44BB910EAA8;
	Fri, 14 Nov 2025 15:10:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kww1veRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E3E10EAA8;
 Fri, 14 Nov 2025 15:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763133028; x=1794669028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=76giAO2jqqMEc5DFIEWLTJYwFoVoclcIsuCqZcZk2EM=;
 b=Kww1veRTx1TaHvxAKZoQ4fRh6UxWF4Eo0lN9uQLximVocAwrLn8kp52W
 2zG3GjdOSo6Tgc2iXMvCxnPvN2tnKNzcmmo2JAopKArqYir//UVAcfSPw
 QjdfeEVACOMdzKCiLjn9wfbrhAdu22p3hN8yKk37WAP5s77TFa7LFCjNo
 uvsw4Q118coys/Qrkm9V9Z1A46ncixJrbjD2JB0ejTONkFxc02ExhlX0S
 ZHc7cGvmrxXqxhn4C2dSlnkqcXrBYF+m2DcmReYGVoZIvxwPZOLIG5k7G
 nThyNuxVVz1BdtnIpnFyaS568TXVBduXC0UvcH/6K1QEURdfb/yCcFhOh A==;
X-CSE-ConnectionGUID: frOC+o83Q26b+Qs7yALM8w==
X-CSE-MsgGUID: 5gcoI+S8RN6S4V1JNuZAgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="52794995"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="52794995"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:10:27 -0800
X-CSE-ConnectionGUID: yu9yrUMVRfO7FaG8+DYF9Q==
X-CSE-MsgGUID: O5G3p163Qj+Z+4pGB6S9OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189805316"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:10:23 -0800
Date: Fri, 14 Nov 2025 17:10:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 3/5] drm/i915/alpm: Allow LOBF only for platform that
 have Always on VRR TG
Message-ID: <aRdGW0RQ0ECX2A9_@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
 <20251114052746.158751-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251114052746.158751-4-ankit.k.nautiyal@intel.com>
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

On Fri, Nov 14, 2025 at 10:57:44AM +0530, Ankit Nautiyal wrote:
> As per bspec the LOBF is allowed when running in fixed refresh rate mode
> i.e. when flipline = vmin = vmax. Apparently this means we can allow
> LOBF only when VRR timing generator is running in fixed refresh rate
> mode.

The VRR TG requirement rather comes from the fact that we need
a non-zero window1, and that is only possible when using the
VRR TG.

> 
> Use the check intel_vrr_always_use_vrr_tg() to avoid LOBF with legacy
> timing generator. Also use intel_vrr_is_fixed_rr() to check for fixed
> refresh rate mode.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 686e4d13f864..5cfb9345776a 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -344,8 +344,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	if (crtc_state->has_psr)
>  		return;
>  
> -	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
> -	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
> +	if (!intel_vrr_always_use_vrr_tg(display) ||
> +	    !intel_vrr_is_fixed_rr(crtc_state))
>  		return;
>  
>  	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
