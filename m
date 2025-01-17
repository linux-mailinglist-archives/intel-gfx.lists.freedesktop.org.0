Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B727A15815
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 20:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AA610EB71;
	Fri, 17 Jan 2025 19:23:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qs3RpHFV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9CC210EB6F;
 Fri, 17 Jan 2025 19:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737141784; x=1768677784;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zq8uWJLTHWc76ny0pfw626Q9Q+LEadxNgHIbDbz4DWI=;
 b=Qs3RpHFVoMI7Nxw9nqJ+WGUzM8GXPzTMawHX+38iB6MQ5ckztTvwLjtL
 UTfoK0eOU2cOSkzen0D39/nt22CXZ5iyM+qAHfIh5ihYbiCXXSwZtRnCS
 63GzYZsF5aZ9pc/cb9Ww2iyjVO/j9DMNMkuDqFEtz0tkRW5c8cGlXV1cp
 pPcSMgRwb9sA8hrG33KZmR6Y4GSdhvkjdFNLlSkU1mESCz+Mzt5PSEk8I
 J6OlQtOG7pmsfSPxtokpOYtkEUK1ZC6eGRZnAyB6XX5EQlbmmYohMeekE
 J9UkJGO+FT46C+OAbQota/9tX9kHwQr6LGja5GoCeUjrfVKYR0a7/ptiP A==;
X-CSE-ConnectionGUID: 3EU3m2aPRH+Oam3TsaFe5Q==
X-CSE-MsgGUID: TgYiAf43QlWWnf6hAGL4gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="60057351"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="60057351"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 11:23:04 -0800
X-CSE-ConnectionGUID: 5U/MS53uQQWOz6W4qa8UCg==
X-CSE-MsgGUID: AQVLhIBmTzyoCE4Ms5DSOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="106067106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Jan 2025 11:23:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2025 21:22:59 +0200
Date: Fri, 17 Jan 2025 21:22:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 06/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL
 using DSB
Message-ID: <Z4quE2WnwYfiEIwT@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-7-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250109073137.1977494-7-jouni.hogander@intel.com>
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

On Thu, Jan 09, 2025 at 09:31:33AM +0200, Jouni Högander wrote:
> Allow writing PSR2_MAN_TRK_CTL using DSB by using intel_de_write_dsb. Do
> not check intel_dp->psr.lock being held when using DSB. This assertion
> doesn't make sense as in case of using DSB the actual write happens later
> and we are not taking intel_dp->psr.lock mutex over dsb commit.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c     | 16 ++++++++++------
>  drivers/gpu/drm/i915/display/intel_psr.h     |  4 +++-
>  3 files changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4271da219b41..5a5100f147a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7089,7 +7089,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  			intel_pipe_fastset(old_crtc_state, new_crtc_state);
>  	}
>  
> -	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
> +	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
>  
>  	intel_atomic_update_watermarks(state, crtc);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 85ecedd3162d..1e99329b70a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2330,7 +2330,8 @@ static void intel_psr_force_update(struct intel_dp *intel_dp)
>  	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
>  }
>  
> -void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
> +void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
> +					  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2344,20 +2345,23 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
>  					     crtc_state->uapi.encoder_mask) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
> -		lockdep_assert_held(&intel_dp->psr.lock);
> +		if (!dsb)
> +			lockdep_assert_held(&intel_dp->psr.lock);

The question now becomes what exactly that lock is protecting, why
is that important for the mmio path, and how is it not an issue
for the DSB path?

> +
>  		if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_cff_enabled)
>  			return;
>  		break;
>  	}
>  
> -	intel_de_write(display, PSR2_MAN_TRK_CTL(display, cpu_transcoder),
> -		       crtc_state->psr2_man_track_ctl);
> +	intel_de_write_dsb(display, dsb,
> +			   PSR2_MAN_TRK_CTL(display, cpu_transcoder),
> +			   crtc_state->psr2_man_track_ctl);
>  
>  	if (!crtc_state->enable_psr2_su_region_et)
>  		return;
>  
> -	intel_de_write(display, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
> -		       crtc_state->pipe_srcsz_early_tpt);
> +	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
> +			   crtc_state->pipe_srcsz_early_tpt);
>  }
>  
>  static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 956be263c09e..fc807817863e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -17,6 +17,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dp;
> +struct intel_dsb;
>  struct intel_encoder;
>  struct intel_plane;
>  struct intel_plane_state;
> @@ -55,7 +56,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
>  bool intel_psr_enabled(struct intel_dp *intel_dp);
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
> -void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
> +void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
> +					  const struct intel_crtc_state *crtc_state);
>  void intel_psr_pause(struct intel_dp *intel_dp);
>  void intel_psr_resume(struct intel_dp *intel_dp);
>  bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
