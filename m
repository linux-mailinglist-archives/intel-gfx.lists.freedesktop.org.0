Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F008D4C21
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 14:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60CC10E69D;
	Thu, 30 May 2024 12:57:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KShX7eEB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAC710E69D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 12:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717073840; x=1748609840;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0TWypgnFH7nOoOIz6bQd4FoYwT6/ef3ynl5Oriifha0=;
 b=KShX7eEBtMBzfqD6+hTDXn4eevlAobBvygecSJtUm2vyi4dKu6Oc5V8q
 LGoo7KZTPnuA8qG4tomgKM+/ZD1zz65k9q08/Tqh9Cxe6H/OZeiBPTsR9
 JExki5T0rO0yF7gkAdJ2pJp9mvOwWYK5a1AoOGXrN2b5KiEOuJnAPcpq0
 6tZjRAPOk6EeZHpjFHE728poIzyqjHy+V7w8hx803TxzVpx7aE9R2Xnga
 gUWwBg9oToelIien3skpY2PNuMu4r2Hig8EeE8E3i3oUbaBzoTWoFbdRz
 Pg3R2xtyj/jeQOnhFApDVuSSFPo3Cp9bi8iMxOpymeoRGtdSe7p3xuG3d g==;
X-CSE-ConnectionGUID: ghr2IZRbTXmQW8PZY4IgIQ==
X-CSE-MsgGUID: ErVddkDVQ4KY8gSH+HZKHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31076563"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="31076563"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 05:57:20 -0700
X-CSE-ConnectionGUID: 1wbtH/wLSKeiPgKz3vxPbg==
X-CSE-MsgGUID: X6G9dL4aTbGCWnjEo9KnRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="35881661"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 05:57:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: Plumb the full atomic state into
 icl_check_nv12_planes()
In-Reply-To: <20240528184945.24083-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
 <20240528184945.24083-2-ville.syrjala@linux.intel.com>
Date: Thu, 30 May 2024 15:57:16 +0300
Message-ID: <87v82vh2z7.fsf@intel.com>
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> icl_check_nv12_planes() needs the full atomic state. Instead of
> digging that out from dubious sources plumb it in explicitly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Are most to_intel_atomic_state() uses suspect...?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 071ba95a1472..dbbc72494a46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4033,11 +4033,12 @@ static int icl_add_linked_planes(struct intel_ato=
mic_state *state)
>  	return 0;
>  }
>=20=20
> -static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
> +static int icl_check_nv12_planes(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_plane *plane, *linked;
>  	struct intel_plane_state *plane_state;
>  	int i;
> @@ -5786,7 +5787,7 @@ static int intel_atomic_check_planes(struct intel_a=
tomic_state *state)
>  					    new_crtc_state, i) {
>  		u8 old_active_planes, new_active_planes;
>=20=20
> -		ret =3D icl_check_nv12_planes(new_crtc_state);
> +		ret =3D icl_check_nv12_planes(state, crtc);
>  		if (ret)
>  			return ret;

--=20
Jani Nikula, Intel
