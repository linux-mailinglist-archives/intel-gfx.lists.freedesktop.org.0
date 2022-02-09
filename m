Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12344AF315
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5D310E130;
	Wed,  9 Feb 2022 13:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E0B10E130
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644414068; x=1675950068;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Rxkkiv/CrCTboTJ0rD4LJG74Fp/WfQIiRCUqoWpxIxY=;
 b=QrbYb05v2BH71Zn6YeYnldULwNjICVGcnJn+iuafyLshjdmSF4DemzX7
 h3Xb0mURbnYJqTy9xcYsLivZ85avsFEFHmGTpEmxYtYFrIhueIGEcrBc8
 Za8icXfQykEomVosXA1UF2D4CU6/NVsPCy6BL83yjKBbOTUII7wvXoD1s
 9V34nXBX6TUUU3hqSN5FaMCnSimn+fg8J7zbZCS8Ny+TBKaoWqmpJW1HH
 VYqmWh4R/4/qwrwA1XBL8H+v8zMPEJBqme9KQfhIT1wK68cQQHlI5cL53
 Y/2RatFN0lildYK33Q80MEWpPrHmPq8QoYQnQcas1m6jaNDwF8Z67/7/i g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="273740063"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="273740063"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:41:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525989104"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:41:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-6-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:41:02 +0200
Message-ID: <87leyknonl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Fix IPS disable in
 intel_plane_disable_noatomic()
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

On Wed, 09 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> IPS must be disabled prior to disabling the last plane (excluding
> the cursor). Make the code do that instead of assuming the primary
> plane would be the last one. This is probably 100% theoretical
> as the BIOS should never light up the other planes anyway. But
> no harm in making the code totally consistent.
>
> Also let's update the ips_enabled flag in the crtc state afterwards
> so that the first atomic commit has accurate information about
> the state of IPS.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I admit, didn't have the time to dig into the details here now, so let's
just say, seems reasonable,

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cdfee4ba1166..401a339973bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -753,9 +753,11 @@ void intel_plane_disable_noatomic(struct intel_crtc =
*crtc,
>  	crtc_state->data_rate[plane->id] =3D 0;
>  	crtc_state->min_cdclk[plane->id] =3D 0;
>=20=20
> -	if (plane->id =3D=3D PLANE_PRIMARY &&
> -	    hsw_ips_disable(crtc_state))
> +	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) =3D=3D 0 &&
> +	    hsw_ips_disable(crtc_state)) {
> +		crtc_state->ips_enabled =3D false;
>  		intel_crtc_wait_for_next_vblank(crtc);
> +	}
>=20=20
>  	/*
>  	 * Vblank time updates from the shadow to live plane control register

--=20
Jani Nikula, Intel Open Source Graphics Center
