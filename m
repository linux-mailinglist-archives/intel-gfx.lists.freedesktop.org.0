Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292DC9B61FF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EFD10E78C;
	Wed, 30 Oct 2024 11:37:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNvsmGDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9048710E78C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288271; x=1761824271;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=I3koNmlOpZZFE6O/wXYeWCmbR1wXPf1A/pfJvoj3/2A=;
 b=cNvsmGDh08/uA+jlhHYXwGLQA2dDsw1XBXWdDDQRwaQcYfXnfm2psiTq
 a+FlGSjtDB7oHC13kyY2tytQCzCa9w/ybMz3EUiOde5C1hd6Sx993ww2W
 9M74lhVfFAXX0W0czKfmwcF++s0g0AY0t4D2FSDeY+chC1LPZkBWKQIyQ
 6G7zf1+9IrEgMsJRf8SZX5VJvlIvos22OaxGFbyGRVtrgKKz9COPXVbUv
 XmqT42+APqtRwBTcdVwaefEHTLw+qffo7Zc6YsMDmyuM6IMRUjtIPNgKT
 ug4F6iZSbet7SS+wPPsw7SnXmRBiXLG/jCQdijLcOr7yJr2AarYELhv2+ Q==;
X-CSE-ConnectionGUID: IpUprd3USqG+a9XgVqgdFw==
X-CSE-MsgGUID: wtoLb44lR6ec5W4xyE3IjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="32824652"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="32824652"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:37:50 -0700
X-CSE-ConnectionGUID: /oDFIILARHuG2ai2o6kg7g==
X-CSE-MsgGUID: CaugJy+lRGSrEIyf0AWC+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113143659"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:37:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/cdclk: Suck the compression_enable check
 into intel_vdsc_min_cdclk()
In-Reply-To: <20241029215217.3697-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-9-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:37:46 +0200
Message-ID: <87a5eln7n9.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Declutter intel_crtc_compute_min_cdclk() by moving the
> crtc_state->dsc.compression_enable check into
> intel_vdsc_min_cdclk().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index e10378744607..989607c0b35d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2812,6 +2812,9 @@ static int intel_vdsc_min_cdclk(const struct intel_=
crtc_state *crtc_state)
>  	int num_vdsc_instances =3D intel_dsc_get_num_vdsc_instances(crtc_state);
>  	int min_cdclk =3D 0;
>=20=20
> +	if (!crtc_state->dsc.compression_enable)
> +		return 0;
> +
>  	/*
>  	 * When we decide to use only one VDSC engine, since
>  	 * each VDSC operates with 1 ppc throughput, pixel clock
> @@ -2860,9 +2863,7 @@ int intel_crtc_compute_min_cdclk(const struct intel=
_crtc_state *crtc_state)
>  	min_cdclk =3D max(intel_audio_min_cdclk(crtc_state), min_cdclk);
>  	min_cdclk =3D max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
>  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> -
> -	if (crtc_state->dsc.compression_enable)
> -		min_cdclk =3D max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
> +	min_cdclk =3D max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));

Was going to say that it would be nice to have the params in the same
order... but looks like there's patch later in the series for that. Yay!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
>  	return min_cdclk;
>  }

--=20
Jani Nikula, Intel
