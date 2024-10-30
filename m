Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1413C9B6202
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:39:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB5389453;
	Wed, 30 Oct 2024 11:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ndp3uJZz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36FC89453
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288357; x=1761824357;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ljdRp8IeqcpKAeKXXdl7iL4CX6kiRzJ0CR36byXiBTA=;
 b=ndp3uJZzoKWU9GKqr+OvOWiBdrn+OMM4QwsGm0EM1e+0PsncQgnUQpw6
 tjNwwYTzb6MqayVWeFlN3n50eQopcqWdxGD1HS2zl0fEVLWl+RPfZjOAy
 AXuqaqKrtwhODyXUU8rZiCkHjjs5s/cGtVpxFgRgdVPWOx10CvOwMKz/H
 5PsS9f5TgAY/t3GXh0BNtqAs4n/nJZfOO2dZMvadcQWDKT+iYsDkJS+WN
 fqPWcmCQkLJ/rtYKX0SG6wP1/C13OWEyKBt1LH1mQf/XMJ56OJJkIYNle
 yHRgQmmmLKQuWklYApp2RJqFp1gjXBQleEJmDCfudvNtNxZ/DeZVO6qUj w==;
X-CSE-ConnectionGUID: eegM6qRRScC4/aANB55uJA==
X-CSE-MsgGUID: 1zump1EdQaapOirJxbyOCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29402546"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="29402546"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:39:17 -0700
X-CSE-ConnectionGUID: VrRSj7QQT/6ztBNhPd4uUw==
X-CSE-MsgGUID: tTjZVKXUReiI7GVHrK2z0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="105605179"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:39:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/11] drm/i915/cdclk: Drop pointles max_t() usage in
 intel_vdsc_min_cdclk()
In-Reply-To: <20241029215217.3697-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-10-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:39:13 +0200
Message-ID: <877c9pn7ku.fsf@intel.com>
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
> min_cdclk=3D=3D0 when intel_vdsc_min_cdclk() calls max_t() on it.
> Drop the redundant max_t().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 989607c0b35d..d376f7bccf21 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2810,7 +2810,7 @@ static int intel_vdsc_min_cdclk(const struct intel_=
crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	int num_vdsc_instances =3D intel_dsc_get_num_vdsc_instances(crtc_state);
> -	int min_cdclk =3D 0;
> +	int min_cdclk;
>=20=20
>  	if (!crtc_state->dsc.compression_enable)
>  		return 0;
> @@ -2822,8 +2822,7 @@ static int intel_vdsc_min_cdclk(const struct intel_=
crtc_state *crtc_state)
>  	 * If there 2 VDSC engines, then pixel clock can't be higher than
>  	 * VDSC clock(cdclk) * 2 and so on.
>  	 */
> -	min_cdclk =3D max_t(int, min_cdclk,
> -			  DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances));
> +	min_cdclk =3D DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
>=20=20
>  	if (crtc_state->joiner_pipes) {
>  		int pixel_clock =3D intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted=
_mode.clock);

--=20
Jani Nikula, Intel
