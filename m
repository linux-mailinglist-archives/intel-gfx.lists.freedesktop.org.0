Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295E0BDF3B0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F75610E823;
	Wed, 15 Oct 2025 15:01:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpskO4MS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A2A10E823;
 Wed, 15 Oct 2025 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760540460; x=1792076460;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=t+z8QEfBdTkPDo+cM+wp8rjSp8tmFl2ePo272bVpfJ4=;
 b=RpskO4MSQZ3Bf/ZmJdtDYeUOdkZ1hmmgSxPfduW97MKGj9/xpwH9vSPt
 naHIyDMAv/MIWcznkU1bPwdevIjcrwTbk51rF6kn4UY5MZYbZg90D1YwL
 kN7AzaUMc6jD9osMjOUAW9ikXxnG82GQll9yBQ05TsEox74SOkp5+yK8g
 l2iSyw23A3pZU6Cer3N6f8anCKttwGoaOu80bUSclMagBoAt5h2fFVy3b
 IGfLhyefVS4XcCvKSI6qtF517O4530OuPob8JioiS8yK849Y43hLg/PY2
 d4sIQYU5+L1V7cE+n7uAhF76iMxvDHnkB4F3QTSJOxLam6SXOvQarsC4/ w==;
X-CSE-ConnectionGUID: g4etd3TYSESxmtJ3M+Relg==
X-CSE-MsgGUID: xdqwe92ZQ5Wptu9nki4vWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="61924856"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="61924856"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:00:59 -0700
X-CSE-ConnectionGUID: eAcKTgf8TWW8XzG8tvmJFQ==
X-CSE-MsgGUID: Hl7IOouZRvakwnjkfafOyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182182675"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:00:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>,
 Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Juha-pekka
 Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-19-d2d1e26520aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-19-d2d1e26520aa@intel.com>
Date: Wed, 15 Oct 2025 18:00:51 +0300
Message-ID: <9437c341d8a7ce4104ca3b65275f34ea728259db@intel.com>
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

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> From: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>
> Ensure the minimum selective update line count is 4 in case of display
> version 35 and onwards.
>
> Bspec: 69887
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 2131473cead6..c663ca91f490 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2701,6 +2701,29 @@ intel_psr_apply_su_area_workarounds(struct intel_c=
rtc_state *crtc_state)
>  		intel_psr_apply_pr_link_on_su_wa(crtc_state);
>  }
>=20=20
> +static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_st=
ate)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct drm_rect damaged_area;
> +
> +	/*
> +	 * Bspec mentions 4 being minimum lines in SU for display version
> +	 * 35 and onwards.
> +	 */
> +	if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->psr2_su_a=
rea) >=3D 4)
> +		return;
> +
> +	damaged_area.x1 =3D crtc_state->psr2_su_area.x1;
> +	damaged_area.y1 =3D crtc_state->psr2_su_area.y1;
> +	damaged_area.x2 =3D crtc_state->psr2_su_area.x2;
> +	damaged_area.y2 =3D crtc_state->psr2_su_area.y2;
> +
> +	damaged_area.y2 +=3D  4 - drm_rect_height(&damaged_area);
> +	drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
> +	damaged_area.y1 -=3D  4 - drm_rect_height(&damaged_area);

Stray extra spaces in there.

> +	clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state-=
>pipe_src);
> +}
> +
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> @@ -2809,6 +2832,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic=
_state *state,
>  	if (full_update)
>  		goto skip_sel_fetch_set_loop;
>=20=20
> +	intel_psr_su_area_min_lines(crtc_state);
> +
>  	intel_psr_apply_su_area_workarounds(crtc_state);
>=20=20
>  	ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);

--=20
Jani Nikula, Intel
