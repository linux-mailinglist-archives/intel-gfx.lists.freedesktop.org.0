Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8298A46031
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42DC10E905;
	Wed, 26 Feb 2025 13:06:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDbO8RDK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3EB10E8F4;
 Wed, 26 Feb 2025 13:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575171; x=1772111171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=E5Y0A5bGC7G8EjmBBXOMNmbBH25uMnCFz1a6TKa2Rno=;
 b=mDbO8RDKozhdG/LM1KI3sem3CSpCWZzUV9B4HgD2hU/j1QzculNMemJx
 7T+jQiRQwMn46cJ3SR8U60s4AJqHLRrFE9o2DlWj7UOUZvJFom6nS1Iad
 6/8PSMwZMaJb9/8Dx7lH58e5Zr5fwsNCE3DoTmrOJHyWmG+iFwd2OwOqc
 x74z+jSJEu3Zqan37CpmXEsWsS9xTe+RQLTpC1VETYcXExQmFsDjWPHrE
 MpdBrimFcwqcVr9eHD8CsGuerV8wJWNnQZnztb8/1Z3dxkKYsQ05eBkDA
 H0O8HRgy8HMs8WvU+1iasC7dIIhTvhGG3WPpqcWuzITU+kCKRHsiLKgLb g==;
X-CSE-ConnectionGUID: gtCM5eSqR+2UrsddXrAKyw==
X-CSE-MsgGUID: ubWTgyFZTw+B6TMcKZsRdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52051398"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52051398"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:06:11 -0800
X-CSE-ConnectionGUID: vCchytUaQTGQVkMWGlfRnQ==
X-CSE-MsgGUID: I4mQm4gQQo6CTI2PU2OE6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121947317"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:06:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:06:07 +0200
Date: Wed, 26 Feb 2025 15:06:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 01/20] drm/i915/vrr: Remove unwanted comment
Message-ID: <Z78Rv5K7_Z_crZLz@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-2-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:46:58AM +0530, Ankit Nautiyal wrote:
> The comment about fixed average vtotal is incorrect.
> Remove it.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index cac49319026d..106bfaf6649b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -276,11 +276,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 */
>  	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>  
> -	/*
> -	 * When panel is VRR capable and userspace has
> -	 * not enabled adaptive sync mode then Fixed Average
> -	 * Vtotal mode should be enabled.
> -	 */
>  	if (crtc_state->uapi.vrr_enabled) {
>  		crtc_state->vrr.enable = true;
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
