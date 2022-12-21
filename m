Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56A653280
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 15:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D7D10E119;
	Wed, 21 Dec 2022 14:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A3E10E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 14:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671633175; x=1703169175;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=leq7gOlxYIC0qPTSud2i/E58JEo5AXoE2Jotyi1DjBQ=;
 b=a308k0ybMcJNHBkv6JNsoCnJRd6ywJYs/iHjST3VsjXdskw4+uUxWot7
 21R3us3TYMLDNQ65lwNY16xBFM9revv8PMkhd4mv/vq2UqOIeGVpgOW/a
 QaDdtAc5E/y61OczxMJdss7R3R4XonYBZTKedsOLTPsFqk7IW5LaVmLb4
 L9T2V9Qacs0kLZCxOApuTAFPzSTKv0enPx2+rodvNTIpy3PTal5iwz7Au
 ItUNzeeixkGV2+bMAO7NHxqtnyGJj50YnnG+GytETEoclU3sj0dzKxKyw
 Ugv1tn5E+05ZFk+EDi74eStJXUB8LbTjcorrWfhjNJ3y0J0A2HkUTWCTl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="300222328"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="300222328"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 06:32:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="719967352"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="719967352"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 06:32:53 -0800
Date: Wed, 21 Dec 2022 16:32:45 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y6MZDaivCqNyNfvh@intel.com>
References: <20221129075100.56655-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221129075100.56655-1-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add continuous full frame bit
 together with single
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 29, 2022 at 09:51:00AM +0200, Jouni Högander wrote:
> Currently we are observing occasionally display flickering or complete
> freeze. This is narrowed down to be caused by single full frame update
> (SFF).
> 
> SFF bit after it's written gets cleared by HW in subsequent vblank
> i.e. when the update is sent to the panel. SFF bit is required to be
> written together with partial frame update (PFU) bit. After the SFF
> bit gets cleared by the HW psr2 man trk ctl register still contains
> PFU bit. If there is subsequent update for any reason we will end up
> having selective update/fetch configuration where start line is 0 and
> end line is 0. Also selective fetch configuration for the planes is
> not properly performed. This seems to be causing problems with some
> panels.
> 
> Using CFF without SFF doesn't work either because it may happen that
> psr2 man track ctl register is overwritten by next update before
> vblank triggers sending the update. This is causing problems to
> psr_invalidate/flush. Using CFF and SFF together solves the problems
> as SFF is cleared only by HW in subsequent vblank.
> 
> Fix the flickering/freeze issue by adding continuous full frame with
> single full frame update and switch to partial frame update only when
> selective update area is properly calculated and configured.
> 
> This is also workaround for HSD 14014971508
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> 
> Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Looks ok to me. Wonder still if that is the way PSR2 was supposed to work
or are we simply trying to fix/tackle some hw issues?

Anyways, if it helps and doesn't break anything else,

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5b678916e6db..88388201684e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1510,7 +1510,8 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
>  			       man_trk_ctl_enable_bit_get(dev_priv) |
>  			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
> -			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
> +			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
> +			       man_trk_ctl_continuos_full_frame(dev_priv));
>  
>  	/*
>  	 * Display WA #0884: skl+
> @@ -1624,11 +1625,8 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>  	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
>  
>  	if (full_update) {
> -		/*
> -		 * Not applying Wa_14014971508:adlp as we do not support the
> -		 * feature that requires this workaround.
> -		 */
>  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> +		val |= man_trk_ctl_continuos_full_frame(dev_priv);
>  		goto exit;
>  	}
>  
> @@ -2307,12 +2305,15 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
>  			/* can we turn CFF off? */
>  			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
>  				u32 val = man_trk_ctl_enable_bit_get(dev_priv) |
> -					  man_trk_ctl_partial_frame_bit_get(dev_priv) |
> -					  man_trk_ctl_single_full_frame_bit_get(dev_priv);
> +					man_trk_ctl_partial_frame_bit_get(dev_priv) |
> +					man_trk_ctl_single_full_frame_bit_get(dev_priv) |
> +					man_trk_ctl_continuos_full_frame(dev_priv);
>  
>  				/*
> -				 * turn continuous full frame off and do a single
> -				 * full frame
> +				 * turn continuous full frame off and do a single full frame. Still
> +				 * keep cff bit enabled as we don't have proper SU configuration in
> +				 * case update is sent for any reason after sff bit gets cleared by
> +				 * the HW on next vblank.
>  				 */
>  				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
>  					       val);
> -- 
> 2.34.1
> 
