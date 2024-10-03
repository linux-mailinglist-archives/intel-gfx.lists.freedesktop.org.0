Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BCB98F3EB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 18:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192B710E8AC;
	Thu,  3 Oct 2024 16:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COJysxQ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43AC10E17D;
 Thu,  3 Oct 2024 16:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727972083; x=1759508083;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=obvEWYz1wtOxrvDMbQqhp4Df/cZKNo3c4gnuVpDPiuQ=;
 b=COJysxQ4Q/LtRnV/rUSRpBlflp/jls1a4FzAbVw7UohOiXYADbi3jdNa
 Qe4RNYV1WYTi7x8AEr3ZLDKKL6/8U84LSnc6k89r0R75yMtK+CcaXPqGr
 7BnE4ZtpdsQzl3I1FJCB7r7TylUPAMRjETR+4wkl/9bGD6aEeV/JTE6Ta
 6eE2nwyiEg/22ofVwpP6NPQ1qdUDsGEeE42RO7zLXSLKnREQPQlXCt/iZ
 bumfLQprAj0WWqIvcNogRSfiv7zKZ5084HPH/eMidKtXnYxPzMfnP6KB6
 LXZbctz1XmOjYb92lI9BglATFvyWdQM7uesBrwvuTiKmaJAyQCMT94Hrh A==;
X-CSE-ConnectionGUID: ekKzPVTbTZmj+j+Em/dzXg==
X-CSE-MsgGUID: nr7a1JaXTgm2tQLAGgSvIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="26647546"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="26647546"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:14:43 -0700
X-CSE-ConnectionGUID: xeRSRItUShyMcUGy6AS0vQ==
X-CSE-MsgGUID: ihSVHHmFRkCRjQGquJmVCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74518544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Oct 2024 09:14:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2024 19:14:39 +0300
Date: Thu, 3 Oct 2024 19:14:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 03/12] drm/i915/display: Use async flip when available
 for initial plane config
Message-ID: <Zv7C7-H3sb053fje@intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
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

On Thu, Oct 03, 2024 at 05:44:12PM +0200, Maarten Lankhorst wrote:
> I'm planning to reorder readout in the Xe sequence in such a way that
> interrupts will not be available, so just use an async flip.
> 
> Since the new FB points to the same pages, it will not tear. It also
> has the benefit of perhaps being slightly faster.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index fdb141cfa4274..73a3624e34098 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2800,7 +2800,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>  		to_intel_plane_state(plane->base.state);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = crtc->pipe;
> -	u32 base;
> +	u32 base, plane_ctl;
>  
>  	if (!plane_state->uapi.visible)
>  		return false;
> @@ -2814,7 +2814,16 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>  	if (plane_config->base == base)
>  		return false;
>  
> +	/* Perform an async flip to the new surface. */
> +	plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
> +	plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> +

No async flips!

> +	intel_de_write(i915, PLANE_CTL(pipe, plane_id), plane_ctl);
>  	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
>  
> -	return true;
> +	if (intel_de_wait_custom(i915, PLANE_SURFLIVE(pipe, plane_id), ~0U, base, 0, 40, NULL) < 0)
> +		drm_warn(&i915->drm, "async flip timed out\n");
> +
> +	/* No need to vblank wait either */
> +	return false;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
