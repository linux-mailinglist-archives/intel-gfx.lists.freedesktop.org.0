Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D8BA170B6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9E210E065;
	Mon, 20 Jan 2025 16:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lsGnAwxO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA6B10E065
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737391758; x=1768927758;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zUzmg1NG06eEcbM0/kSYd3Y6nBZ/fWFJ/i+1EsVNkVM=;
 b=lsGnAwxOYmpODTQVqyuVLQ8Ri+j9wnCxqbXpENVkxl4YCXi1DRQqQ0Vg
 fDsROlGj2qi9JxQovXKeXHDVv1sfrGqwz1vGUQHYVu4gtLvL2Ib6pJO6Q
 wXf2OFi20ctXaeJRojJ2PQwzEduVOPF2RBRdZ2xDF6nd8khXpstiROO0I
 bRH//ifprKuScP/g9IadnVi4kOgWWjZDLN7bML+XKT6K2gWarstAj3ExU
 tC7S1ePvkNUy9unwfIe9YzGKUXHnMSiTqqLfZ3I4Nsdxgt74884q2x1eR
 oIzjWjhoLbuUGDVFqxgSTS3JU/s0cjRhHD/G47XeACLIJ7vfhhV8yhvx9 A==;
X-CSE-ConnectionGUID: L0mS3t1YQAG98/WvdrFpsQ==
X-CSE-MsgGUID: a8d9f7s3TVKwmBwAs1/4RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37681890"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37681890"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:49:17 -0800
X-CSE-ConnectionGUID: q4eT4mi4TOOWcK/uwzUo4Q==
X-CSE-MsgGUID: Bl/f8NrCQwSUac5yFzXLPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106508340"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:49:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 2/8] drm/i915: Handle interlaced modes in
 intel_set_transcoder_timings_lrr()
In-Reply-To: <20250116201637.22486-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-3-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:49:12 +0200
Message-ID: <8734hdqvlj.fsf@intel.com>
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

On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I want to start using intel_set_transcoder_timings_lrr() also for
> fixing up the vblank delay during boot. To that end make sure it
> can cope with interlaced modes as well.
>
> Note that we have soft-defeatured interlaced modes on tgl+ so
> technically this is dead code, but if we ever have the need to
> bring interlaced support back it seems better to handle this.

I might've added that as a comment in code, but *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5ba3b2d658e5..1260e394afc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2923,6 +2923,12 @@ static void intel_set_transcoder_timings_lrr(const=
 struct intel_crtc_state *crtc
>  	crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;
>  	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
>=20=20
> +	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> +		/* the chip adds 2 halflines automatically */
> +		crtc_vtotal -=3D 1;
> +		crtc_vblank_end -=3D 1;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 13) {
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
> @@ -2931,8 +2937,6 @@ static void intel_set_transcoder_timings_lrr(const =
struct intel_crtc_state *crtc
>  		crtc_vblank_start =3D 1;
>  	}
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERL=
ACE);
> -
>  	/*
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
>  	 * But let's write it anyway to keep the state checker happy.

--=20
Jani Nikula, Intel
