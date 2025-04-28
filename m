Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C88A9EF5A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 13:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAA810E3A6;
	Mon, 28 Apr 2025 11:38:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AH73kQbd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF3710E3A6;
 Mon, 28 Apr 2025 11:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745840316; x=1777376316;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=L7T4B8uXn2+FdTakt5u6/hxZeFWv8UJLWdy+1r123LQ=;
 b=AH73kQbd9jsxjBUIM2d3zJGB746UMChLnjDOppQTZwvq1JfPF7kb6Ssn
 qefEMZpQzZaY+0TyKkvuRgO6KpzUETSlCEV+zHtyt0G99y1XUz8RTsorG
 k2JQe/yuCo3WAdqkXR9EW1ZkWAmr1IJ23uy6QGbcDnrrCLU68ibJphqr8
 7M2LRxnSpAIzMEwG7r9LRxavOesdEbM1xR7WKPIgN7g1+fNj294OBUHKV
 QkhzbshlKu896CTQd6Ka/ZG11t2VSxbouR+DF840wpMFd2RNgWDC2gduY
 9gUmNMilXRuU8kpFsDEGKDGLvgWwylqPrp8zie38wo0bwoaLv811/OiBD g==;
X-CSE-ConnectionGUID: Ye7uZO5CS7mTrdnVsisWVg==
X-CSE-MsgGUID: ULsrOppBQRWX1N7+UZA6Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="46668462"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="46668462"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 04:38:36 -0700
X-CSE-ConnectionGUID: j43iD1GgReeMag7kpaUj8g==
X-CSE-MsgGUID: +BT79whrT+6qUWK9j3bfRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138308585"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 04:38:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/alpm: Introduce has_alpm to simplify alpm
 check in enable/disable
In-Reply-To: <20250428095838.3154962-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250428095838.3154962-1-animesh.manna@intel.com>
Date: Mon, 28 Apr 2025 14:38:29 +0300
Message-ID: <877c34y0qy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 28 Apr 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Simplify alpm check in enable/disable with has_alpm.
> Add a check for alpm during lobf disable which can be enabled
> with panel replay/psr2.
>
> Suggested-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 23 +++++++++++++------
>  .../drm/i915/display/intel_display_types.h    |  3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 ++
>  3 files changed, 21 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index 1bf08b80c23f..aa3f442bf8bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -322,6 +322,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *=
intel_dp,
>=20=20
>  	crtc_state->has_lobf =3D (context_latency + guardband) >
>  		(first_sdp_position + waketime_in_lines);
> +
> +	crtc_state->has_alpm |=3D crtc_state->has_lobf;

I'm averse to using bitwise operators on logical booleans.

>  }
>=20=20
>  static void lnl_alpm_configure(struct intel_dp *intel_dp,
> @@ -332,8 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel=
_dp,
>  	enum port port =3D dp_to_dig_port(intel_dp)->base.port;
>  	u32 alpm_ctl;
>=20=20
> -	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp, crtc_=
state) &&
> -					  !crtc_state->has_lobf))
> +	if (DISPLAY_VER(display) < 20 || !crtc_state->has_alpm)
>  		return;
>=20=20
>  	mutex_lock(&intel_dp->alpm_parameters.lock);
> @@ -417,12 +418,20 @@ void intel_alpm_pre_plane_update(struct intel_atomi=
c_state *state,
>  		if (!intel_dp_is_edp(intel_dp))
>  			continue;
>=20=20
> -		if (old_crtc_state->has_lobf) {
> -			mutex_lock(&intel_dp->alpm_parameters.lock);
> +		mutex_lock(&intel_dp->alpm_parameters.lock);
> +		if (crtc_state->has_alpm) {
> +			u32 alpm_ctl =3D intel_de_read(display, ALPM_CTL(display, cpu_transco=
der));
> +			if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {
> +				alpm_ctl &=3D ~ALPM_CTL_LOBF_ENABLE;
> +				intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
> +				drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n=
");
> +			}
> +		} else {
>  			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
> -			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n"=
);
> -			mutex_unlock(&intel_dp->alpm_parameters.lock);
> +			drm_dbg_kms(display->drm,
> +				    "Link off between frames (LOBF) with ALPM disabled\n");
>  		}
> +		mutex_unlock(&intel_dp->alpm_parameters.lock);
>  	}
>  }
>=20=20
> @@ -431,7 +440,7 @@ static void intel_alpm_enable_sink(struct intel_dp *i=
ntel_dp,
>  {
>  	u8 val;
>=20=20
> -	if (!intel_psr_needs_alpm(intel_dp, crtc_state) && !crtc_state->has_lob=
f)
> +	if (!crtc_state->has_alpm)
>  		return;
>=20=20
>  	val =3D DP_ALPM_ENABLE | DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a..6edcfa5d9c41 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1328,6 +1328,9 @@ struct intel_crtc_state {
>=20=20
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* ALPM flag */

What benefit does this or the above "LOBF flag" comment give?

If you don't know what "has_lobf" or "has_alpm" mean, how on earth would
adding the word "flag" help here?

> +	bool has_alpm;
>  };
>=20=20
>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index ccd66bbc72f7..e643f36057f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1707,6 +1707,8 @@ void intel_psr_compute_config(struct intel_dp *inte=
l_dp,
>=20=20
>  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp, =
crtc_state);
>=20=20
> +	crtc_state->has_alpm =3D intel_psr_needs_alpm(intel_dp, crtc_state);

Looks like the below thing can disable PSR usage, but you'll still leave
has_sel_update and (with this patch) has_alpm enabled. Are you taking
all those combos into account? Including in readout?

BR,
Jani.

> +
>  	/* Wa_18037818876 */
>  	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
>  		crtc_state->has_psr =3D false;

--=20
Jani Nikula, Intel
