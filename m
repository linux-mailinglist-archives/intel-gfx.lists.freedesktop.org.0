Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A74BB97021
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B75C10E685;
	Tue, 23 Sep 2025 17:21:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RebPBYRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E2010E684;
 Tue, 23 Sep 2025 17:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648104; x=1790184104;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zNc0G4HOdyJVXTNgp+On78/RQO5oX5qQqS3fNZT++MU=;
 b=RebPBYROyr6c60I+xR5XM12g8CtEgg4n9Ioyx0wMwc23NN/cJJw5o6fu
 lvF98rzIqO8Z+vENmgvZ+7EmbTEyk8SkGqOY0sHgZwC7JvWKF0kcuepgb
 h4RZrS6bB28uaue8bfXXQV/9Os5LGrLNewoBvDaVgUWye4BaOJQUDIHuh
 kvWIacNG/8i45tHep9sk8dmnMtdWnaFqs6FHobP3QTTAPY8XG1WgEmnSD
 rQigxZRqmG7E2O94hHwlrm5KBAzFIm8Z758Frl6qBtNEPLgH9d8KzPnyA
 bmSP/uGHxLh+KNLopp5LBqF8DVlt6sF+TrGj8crZTSfTe791DG2ofudHa g==;
X-CSE-ConnectionGUID: AK2DPZ6uTe+hMH5WO4lH+A==
X-CSE-MsgGUID: IpV3F1kYStuiAlhMlCNcbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48502240"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48502240"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:43 -0700
X-CSE-ConnectionGUID: hJ/5tZHzTq2Fv5PbvUOXIQ==
X-CSE-MsgGUID: HV/wHGnnSQqoebukfse5Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181134796"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:21:42 -0700
Date: Tue, 23 Sep 2025 20:21:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
Message-ID: <aNLXI72gSAn9vv4p@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-7-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 23, 2025 at 06:40:40PM +0530, Ankit Nautiyal wrote:
> The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for the
> delayed vblank after the send push operation. Rename it to
> intel_dsb_wait_for_delayed_vblank() to align with the semantics.
> 
> v2: Rename to intel_dsb_wait_vblank_delay instead of the proposed SCL
> semantics, as this will be ot only about SCL lines with different timing
> generator and different refresh rate modes. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dsb.h     | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 671db6926e4c..51db70d07fae 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2013,7 +2013,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>  
>  	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
>  		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
> -		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
> +		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
>  		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_interrupt(crtc_state->dsb_color);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index aceafe4478d9..445400ed6592 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7268,7 +7268,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>  
>  		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> -		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> +		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>  		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>  					  new_crtc_state);
>  		intel_dsb_interrupt(new_crtc_state->dsb_commit);
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ca31e928ecb0..0584a9597327 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -815,8 +815,8 @@ void intel_dsb_chain(struct intel_atomic_state *state,
>  			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
>  }
>  
> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
> -				 struct intel_dsb *dsb)
> +void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
> +				       struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc = dsb->crtc;
>  	const struct intel_crtc_state *crtc_state =
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index c8f4499916eb..2f31f2c1d0c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -48,8 +48,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
>  void intel_dsb_interrupt(struct intel_dsb *dsb);
>  void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
>  void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
> -				 struct intel_dsb *dsb);
> +void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
> +				       struct intel_dsb *dsb);
>  void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
>  				struct intel_dsb *dsb,
>  				int lower, int upper);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
