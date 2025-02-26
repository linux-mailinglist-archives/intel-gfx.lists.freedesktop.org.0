Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0CDA46133
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750D410E2D5;
	Wed, 26 Feb 2025 13:45:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHWOi4OG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26A610E2D4;
 Wed, 26 Feb 2025 13:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740577540; x=1772113540;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v/t2B29yvzBf+2OBtCwY2pGQPXhef08z514rDyrv9Vg=;
 b=dHWOi4OGW3nC0dS8b923FOByKYlXc7T5fHnosh/mHwDpmvp1yRMnyAUF
 Cita0WnzPI3TnRbXyMdcd7aQiPMAop2/2HZCdqArLL8qZSyzSREJljD/h
 fxZXwBrKYRe7nV0Z/5w+gIAjduTOhpfPvg9ZmbVhW+Ws72K0GfRvFe15W
 Zsc2ZdqTYAewJ8WJRx4xKd5l4l+rqybPE2CQpzK9KJMr7QsTpOYnLjvGB
 VvRWJ8HNYKqmAAEpjJAKuL1pi+upPgHERoHOLFay9YI+Vm0Ra0YAtCwiU
 BbzS3uvtzmw+q+P9gEd6wpuHxQITp3ernh3BcTBDfMBBsrzdLew57JrjS g==;
X-CSE-ConnectionGUID: ALhFGSNBQAqxMIRpBE/Kvg==
X-CSE-MsgGUID: IjumQ9ksT5ePGSt/SzZsCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52812221"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52812221"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:45:40 -0800
X-CSE-ConnectionGUID: XN1KzWCiQniTH3kBWWwuuw==
X-CSE-MsgGUID: XT+cbp6uRP6VpMkegJ7lPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121954692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:45:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:45:35 +0200
Date: Wed, 26 Feb 2025 15:45:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Jouni Hogander <jouni.hogander@intel.com>
Subject: Re: [PATCH 11/20] drm/i915/display: Disable PSR before disabling VRR
Message-ID: <Z78a_1M_aoOSrfLV@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-12-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:08AM +0530, Ankit Nautiyal wrote:
> As per bspec 49268: Disable PSR before disabling VRR.

We don't currently allow the VRR+PSR combo anyway, but if/when
we get to it I guess we'll want this order.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hmm, the intel_psr_post_plane_update() should probably also
be moved to the end of intel_post_plane_update((). Not becasue
of VRR (that was already enabled in the commit proper) but
because some of the other stuff in intel_post_plane_update()
may need to do vblank waits and whatnot, so enabling PSR
as early as we do now is simply counter productive.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 065fdf6dbb88..0db84af1063a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1202,6 +1202,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe = crtc->pipe;
>  
> +	intel_psr_pre_plane_update(state, crtc);
> +
>  	if (intel_crtc_vrr_disabling(state, crtc)) {
>  		intel_vrr_disable(old_crtc_state);
>  		intel_crtc_update_active_timings(old_crtc_state, false);
> @@ -1212,8 +1214,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  
>  	intel_drrs_deactivate(old_crtc_state);
>  
> -	intel_psr_pre_plane_update(state, crtc);
> -
>  	if (hsw_ips_pre_update(state, crtc))
>  		intel_crtc_wait_for_next_vblank(crtc);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
