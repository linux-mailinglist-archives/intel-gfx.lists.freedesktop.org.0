Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFA4A569ED
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 15:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FE910EBC2;
	Fri,  7 Mar 2025 14:06:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="brt5eXcA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21F310EBC0;
 Fri,  7 Mar 2025 14:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741356373; x=1772892373;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j4u5hyKIRYY19LCki6wSAipN3RnHcoZzIXRUmrf0hXc=;
 b=brt5eXcAFNIB7H8SHwkTaEHGHXMaVQEihMW3CoKtk5JKi1ZFGivBuLAR
 HJRURaO+LGRzuHRC6oWUpIP3pt8m3C2BuHCrHzoRk8q8Au4xUnartz7O/
 QG2GhGwwbk6gRMl/w/iRu8eoqNW1v/WCw1c0YIVTBpkSN6uB1mduua0Vd
 Bm602CvosNYWW/cYFOJvvQ1zI7VghSlcMXDzKSvR28LDE2RL+v8OKCkXz
 BivZ0jsPFi7J/c4gNSuPHoCs+SWbaBzl7V7hMCZ0qqZqFzalAd2Z5ROi0
 O+ejrOcbwAORSJtdL4vTka5/y+B8/C4R6LcCtIgNc4yCwxuMbD7FkQckZ g==;
X-CSE-ConnectionGUID: cLcxP7d/TKmSO561UwHsKg==
X-CSE-MsgGUID: TaRDkAQhQqOqqOstTjN/MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="59961704"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="59961704"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:06:12 -0800
X-CSE-ConnectionGUID: RQIKjWsyRie02uiu0OtWdA==
X-CSE-MsgGUID: cavJxLLqT+W6Jd3Bg4Hhiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124553348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 06:06:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 16:06:08 +0200
Date: Fri, 7 Mar 2025 16:06:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com
Subject: Re: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Message-ID: <Z8r9UHTIiz1sagXs@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-8-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225080927.157437-8-suraj.kandpal@intel.com>
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

On Tue, Feb 25, 2025 at 01:39:23PM +0530, Suraj Kandpal wrote:
> Change the arguments for enable hook in intel_global_dpll_funcs to only
> accept crtc_state. This is because we really don't need those extra
> arguments everything can be derived from crtc_state and we need
> intel_encoder for PLL enablement when DISPLAY_VER() >= 14.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 100 ++++++++++--------
>  1 file changed, 54 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index bd623fdddfdc..c39f7d73a89f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -66,9 +66,8 @@ struct intel_global_dpll_funcs {
>  	 * Hook for enabling the pll, called from intel_enable_global_dpll() if
>  	 * the pll is not already enabled.
>  	 */
> -	void (*enable)(struct intel_display *display,
> -		       struct intel_global_dpll *pll,
> -		       const struct intel_dpll_hw_state *dpll_hw_state);
> +	void (*enable)(const struct intel_crtc_state *state,

This feels like the wrong direction. We want the plls to be
independent of crtcs. The crtc_state should only be necessary
to compute a plls's state.

-- 
Ville Syrjälä
Intel
