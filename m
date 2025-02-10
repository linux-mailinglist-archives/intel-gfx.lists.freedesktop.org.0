Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEC5A2F3B2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E4810E5BC;
	Mon, 10 Feb 2025 16:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/XfRzWR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939B910E5B8;
 Mon, 10 Feb 2025 16:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739205300; x=1770741300;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DBOAi1N5CQmawt/zkhHP72wPwRCsioiQKaucoEbErCU=;
 b=g/XfRzWR85Wsk7XRLAluUa2mzHjqZM1+vYHsS05ZSdw2E+QmCo+j0pyM
 IRvRBsSK0xJ0Wz6BJ2pokyMYl2aZFe/jaDO0YD1ZZZcIY2VMRuCN8WMSA
 gGmsYvKAI+bmzeiNR9MxImt+D1H5Iey0/fv4HI7tYZmcvjMFmhyb8OhJn
 2Q15X7YA0i63dKez9EihiXJ/NcEOQH04RlqNxNinxbLJ2Q7fx7hDYBNZX
 XoaXezWVNmpmh/erKBCq35MUhKBnshErEDdsxgppL3GWnursXiGCkaB3x
 A3ojKpOYxh8qOunccTxld40R/te3Sa8WMtrgwht84pnLBjJDHlniEav1t w==;
X-CSE-ConnectionGUID: he3dMoPyRL+6YM4rK91Jeg==
X-CSE-MsgGUID: lwgLw0+DQZKVWKxqMcnVpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50430988"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50430988"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:34:59 -0800
X-CSE-ConnectionGUID: PfzpVnCAQki8QeVplZPY3w==
X-CSE-MsgGUID: bXR01mWiQJyxyPNpOuk+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112458121"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:34:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:34:55 +0200
Date: Mon, 10 Feb 2025 18:34:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v6 11/12] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Message-ID: <Z6oqrxiu_7Ye1wef@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-12-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127102846.1237560-12-jouni.hogander@intel.com>
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

On Mon, Jan 27, 2025 at 12:28:45PM +0200, Jouni Högander wrote:
> We may have commit which doesn't have any non-arming plane register
> writes. In that case there aren't "Frame Change" event before DSB vblank
> evasion which hangs as PIPEDSL register is reading as 0 when PSR state is
> SRDENT(PSR1) or DEEP_SLEEP(PSR2). Handle this by ensuring "Frame Change"
> event at the begin of DSB commit if using PSR/PR.
> 
> v2: use intel_psr_trigger_frame_change_event
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5db2af86d0c8a..67041d76763fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7725,6 +7725,14 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
>  					       state, crtc);
>  
> +		/*
> +		 * Ensure we have "Frame Change" event when PSR state is
> +		 * SRDENT(PSR1) or DEEP_SLEEP(PSR2). Otherwise DSB vblank
> +		 * evasion hangs as PIPEDSL is reading as 0.
> +		 */
> +		intel_psr_trigger_frame_change_event(state, new_crtc_state->dsb_commit,
> +						     crtc);
> +
>  		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
>  
>  		if (intel_crtc_needs_color_update(new_crtc_state))
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
