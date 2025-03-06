Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F4CA55171
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:40:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D46A10EA11;
	Thu,  6 Mar 2025 16:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7gmzU09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7775910EA10;
 Thu,  6 Mar 2025 16:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741279222; x=1772815222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yjhDKLbt+qN4mtNocQDVFGbK1tOMTR9wtLZANXf4UDk=;
 b=h7gmzU09QYOOiCaVxJeDmesn4+l7fs/25XqAM58v0zEF4e5FnhKXErbd
 XAKVZD4v6EJnADwfyT8T/lnE0Xn5MoGUMT8xMUr6Cng/oppP1/GGtR4KS
 XFvAkfgmvWwwr70f0AAgXk6/v1fTxRIEJif8JyChnxQvuMqQnB3sX8dXk
 Nl+uDiuT2LoIwpzB+02T/LU/ASnUdM6v0WJayxlbFuZz6p23g+41vBSc7
 cVgYyatsktG4V0ZwZwZLsg+MReZBCQLMbTtMl9hFehGfWA+4zgZVXGGwA
 xg4zhqknkYhNGryxsjScUQEhE/DVdw7lpX6NCxQtx+aEDHrmordgr0jt0 g==;
X-CSE-ConnectionGUID: ilqu4OSzRQm3Q4k3nA/IAw==
X-CSE-MsgGUID: wJmsrRxKQ+SSJImHiC/Qfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53705019"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53705019"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:40:22 -0800
X-CSE-ConnectionGUID: ACfpdAFBQ5KCLDWENd0aMA==
X-CSE-MsgGUID: ujcCqBkMTemo6pBVaMMD1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124291573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:40:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:40:16 +0200
Date: Thu, 6 Mar 2025 18:40:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 13/21] drm/i915/vrr: Refactor condition for computing
 vmax and LRR
Message-ID: <Z8nP8AdDchf1hlty@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250306131100.3989503-14-ankit.k.nautiyal@intel.com>
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

On Thu, Mar 06, 2025 at 06:40:52PM +0530, Ankit Nautiyal wrote:
> LRR and Vmax can be computed only if VRR is supported and vrr.in_range
> is set. Currently we proceed with vrr timings only for VRR supporting
> panels and return otherwise. For using VRR TG with fix timings, need to
> continue even for panels that do not support VRR.
> 
> To achieve this, refactor the condition for computing vmax and
> update_lrr so that we can continue for fixed timings for panels that do
> not support VRR.
> 
> v2: Set vmax = vmin for non VRR panels. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 622a70e21737..310add32781f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -363,14 +363,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  
>  	crtc_state->vrr.in_range =
>  		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
> -	if (!crtc_state->vrr.in_range)
> -		return;
> -
> -	if (HAS_LRR(display))
> -		crtc_state->update_lrr = true;
>  
>  	vmin = intel_vrr_compute_vmin(crtc_state);
> -	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
> +
> +	if (crtc_state->vrr.in_range) {
> +		if (HAS_LRR(display))
> +			crtc_state->update_lrr = true;
> +		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
> +	} else {
> +		vmax = vmin;
> +	}
>  
>  	if (vmin >= vmax)
>  		return;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
