Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF43A83D6A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A039510E7C5;
	Thu, 10 Apr 2025 08:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUhO5NX3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFD910E7C5;
 Thu, 10 Apr 2025 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744274836; x=1775810836;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EKyBK6QTBeHdH4XccECBlRdiiDKNZ50pqbsKtDk/v3o=;
 b=KUhO5NX34bY4lYR8bRj9eDHxkyuPkgLgCTnOHt5BL90ILxOrp6VM4y9P
 DUC3Fh+V4i/P9k+8vgJd5LyG87D/PYG775JMbSNMtc40iqzzzzZ0nWukS
 UBhthkk/WaeEOEBbA6z0Ss8+F2TkyXZ/HHslkug7v+0oIfgrERdYvtAKs
 syv7uK5ZN5U0uRxCivmwn4kDppd2nVxl+yVzxfDewBOXBGK5+WQxCrn7C
 0BbqJ2NVSL1daSiDyU4IrWlnUpxvm+jyA8SQnsTM3tkTm+He/OR+ZWL0K
 1Fo6BgGlyLU5/Aw48OoH/15jZGHnwgqKkamQGAtInndbPjlH6qJfn39+/ g==;
X-CSE-ConnectionGUID: 2/yqAwaYSaGnrGiypgaRyg==
X-CSE-MsgGUID: q7QkGp28Qd2KS8fnaRf6XA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45668378"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45668378"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:47:16 -0700
X-CSE-ConnectionGUID: rI0rXay8SV60z1DQsS25bg==
X-CSE-MsgGUID: BSlboaXKQDiieopIKJx71A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128757929"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:47:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/6] drm/i915: Nuke intel_plane_ggtt_offset()
In-Reply-To: <Z-_4-rGD_gEAS-zc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-3-ville.syrjala@linux.intel.com>
 <87o6xd1wdr.fsf@intel.com> <Z-_4-rGD_gEAS-zc@intel.com>
Date: Thu, 10 Apr 2025 11:47:11 +0300
Message-ID: <871pu0wghc.fsf@intel.com>
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

On Fri, 04 Apr 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Apr 03, 2025 at 11:29:04AM +0300, Jani Nikula wrote:
>> On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > We don't really need the extra intel_plane_ggtt_offset() wrapper
>> > anymore. Get rid of it.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 -----
>> >  drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 2 --
>> >  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
>> >  drivers/gpu/drm/xe/display/xe_fb_pin.c             | 2 +-
>> >  drivers/gpu/drm/xe/display/xe_plane_initial.c      | 2 +-
>> >  6 files changed, 4 insertions(+), 11 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drive=
rs/gpu/drm/i915/display/intel_atomic_plane.c
>> > index 7276179df878..264a50b29c16 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> > @@ -1565,8 +1565,3 @@ int intel_atomic_check_planes(struct intel_atomi=
c_state *state)
>> >=20=20
>> >  	return 0;
>> >  }
>> > -
>> > -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_sta=
te)
>> > -{
>> > -	return i915_ggtt_offset(plane_state->ggtt_vma);
>> > -}
>> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drive=
rs/gpu/drm/i915/display/intel_atomic_plane.h
>> > index 6efac923dcbc..65edd88d28a9 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>> > @@ -88,6 +88,4 @@ int intel_atomic_add_affected_planes(struct intel_at=
omic_state *state,
>> >  				     struct intel_crtc *crtc);
>> >  int intel_atomic_check_planes(struct intel_atomic_state *state);
>> >=20=20
>> > -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_sta=
te);
>> > -
>> >  #endif /* __INTEL_ATOMIC_PLANE_H__ */
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu=
/drm/i915/display/intel_fb_pin.c
>> > index fb7d0c8b9302..f2d8675dd98a 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> > @@ -311,7 +311,7 @@ int intel_plane_pin_fb(struct intel_plane_state *p=
lane_state,
>> >  		plane_state->surf =3D i915_gem_object_get_dma_address(obj, 0) +
>> >  			plane->surf_offset(plane_state);
>> >  	} else {
>> > -		plane_state->surf =3D intel_plane_ggtt_offset(plane_state) +
>> > +		plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma) +
>> >  			plane->surf_offset(plane_state);
>> >  	}
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/driv=
ers/gpu/drm/i915/display/intel_plane_initial.c
>> > index 1c49610eb42f..3afff528a7bd 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>> > @@ -356,7 +356,7 @@ intel_find_initial_plane_obj(struct intel_crtc *cr=
tc,
>> >  	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
>> >  		plane_state->flags |=3D PLANE_HAS_FENCE;
>> >=20=20
>> > -	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
>> > +	plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma);
>> >=20=20
>> >  	plane_state->uapi.src_x =3D 0;
>> >  	plane_state->uapi.src_y =3D 0;
>> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/=
xe/display/xe_fb_pin.c
>> > index b9c45a5a3d82..b2e979805455 100644
>> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> > @@ -438,7 +438,7 @@ int intel_plane_pin_fb(struct intel_plane_state *n=
ew_plane_state,
>> >=20=20
>> >  	new_plane_state->ggtt_vma =3D vma;
>> >=20=20
>> > -	new_plane_state->surf =3D intel_plane_ggtt_offset(new_plane_state) +
>> > +	new_plane_state->surf =3D i915_ggtt_offset(new_plane_state->ggtt_vma=
) +
>> >  		plane->surf_offset(new_plane_state);
>>=20
>> I don't think xe specific code should be calling i915 compat functions
>> directly.
>
> xe doesn't seem to have anything native to call here either.
> I'll leave it to someone else to fix that mess.

*sigh* okay.

At least the dependencies on i915_vma.h are inside .c files. But we have
to clean *all* of them up, both in i915 and xe.


Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
>>=20
>> >=20=20
>> >  	return 0;
>> > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/g=
pu/drm/xe/display/xe_plane_initial.c
>> > index a15f60835239..c563edf14b1a 100644
>> > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> > @@ -239,7 +239,7 @@ intel_find_initial_plane_obj(struct intel_crtc *cr=
tc,
>> >=20=20
>> >  	plane_state->ggtt_vma =3D vma;
>> >=20=20
>> > -	plane_state->surf =3D intel_plane_ggtt_offset(plane_state);
>> > +	plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma);
>>=20
>> Ditto.
>>=20
>> >=20=20
>> >  	plane_state->uapi.src_x =3D 0;
>> >  	plane_state->uapi.src_y =3D 0;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
