Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFA533B45
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6016010E854;
	Wed, 25 May 2022 11:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729C310E854
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476906; x=1685012906;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yy1RfM0PoZncRGqBOpuuIhV/XldePpWZJi5tfx2+jBg=;
 b=beGrxq3T2IAErTSAascZHEQdb2Qo6C7yk2wQtRN1/XDv9joV0/HlEKHx
 Y1GN4wyWKUGn77EhQn66qgwE9wo1AolU2MXXZGWnJArXl8bpJ0WcNeIn4
 ISVUIybnqXBSO2s7jJZV44SCxD+R4w2J8zrBLTS6K5/l+XDdXTH+TQhSH
 XP/oF2QyA21ZaI7Y36wXPORPfdFYzuKYQjDU7KW+VEcUpbDmiob9bMj5S
 wG1A7kDKhSayusHFMqUNRH3BQI2sBn1yYMPl0xsX1PRCxqWOoZj3RW2mL
 HwcoX0BeRfJ13f+VSst5B9otY7dS+Xb1Hfi95jsXdne45KwUnLAGpc6Cs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="271359889"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="271359889"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:08:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="745702495"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:08:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-19-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:08:21 +0300
Message-ID: <87tu9duaxm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 18/26] drm/i915: Nuke fastet state copy hacks
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we no longer do the fuzzy clock and M/N checks we can
> get rid of the fastset state copy hacks.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 +++-----------------
>  1 file changed, 3 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 066b9e7a5696..11e974d66c29 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7013,23 +7013,6 @@ static void intel_crtc_check_fastset(const struct =
intel_crtc_state *old_crtc_sta
>  	new_crtc_state->update_pipe =3D true;
>  }
>=20=20
> -static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_c=
rtc_state,
> -				    struct intel_crtc_state *new_crtc_state)
> -{
> -	/*
> -	 * If we're not doing the full modeset we want to
> -	 * keep the current M/N values as they may be
> -	 * sufficiently different to the computed values
> -	 * to cause problems.
> -	 *
> -	 * FIXME: should really copy more fuzzy state here
> -	 */
> -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> -}
> -
>  static int intel_crtc_add_planes_to_state(struct intel_atomic_state *sta=
te,
>  					  struct intel_crtc *crtc,
>  					  u8 plane_ids_mask)
> @@ -7739,17 +7722,12 @@ static int intel_atomic_check(struct drm_device *=
dev,
>=20=20
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		if (intel_crtc_needs_modeset(new_crtc_state)) {
> -			any_ms =3D true;
> -
> -			intel_release_shared_dplls(state, crtc);
> +		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
> -		}
>=20=20
> -		if (!new_crtc_state->update_pipe)
> -			continue;
> +		any_ms =3D true;
>=20=20
> -		intel_crtc_copy_fastset(old_crtc_state, new_crtc_state);
> +		intel_release_shared_dplls(state, crtc);
>  	}
>=20=20
>  	if (any_ms && !check_digital_port_conflicts(state)) {

--=20
Jani Nikula, Intel Open Source Graphics Center
