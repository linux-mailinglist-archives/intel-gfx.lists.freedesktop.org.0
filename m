Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF5AA1A10A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 10:46:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183EF10E7A7;
	Thu, 23 Jan 2025 09:46:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nV1vbamy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F43210E7A5;
 Thu, 23 Jan 2025 09:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737625609; x=1769161609;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=OVPslsmWUw3uT6MqdqnKuLHTt12e95P1lhsghu5xtn4=;
 b=nV1vbamyrJhP8oMcbzbN0DjrT771/+eLd1KYehN1VEzg2MiOAttRZ6fQ
 tNIrRwAEwpHSMGPwYKat99rk9yVuo1nOqGkFJPL7Xczju8aVkcHfQeH8y
 ypTdwBWdVXwiSfktHBLpgZ1c0MkjfkiI4TzCZ9OJYSMbVoPVAUgb2MV4L
 /yjnGPnaZKGChMjihNmXpCoGgJ+gWpUxyVpdz9zznB1oUHExc3t1+h1R6
 xjfw4vj+6xQLniWuk3xWvcrnJNHWuw76RrzFTN0+IdVDHavPh6XB0vO7u
 qilVBJezFavDgsjDhD3eVXHah/mbdQakKeJF4yz9mFtTIqUQsj4+C89Ey A==;
X-CSE-ConnectionGUID: ua9Cbcl2Qp+SOltTXpJz6Q==
X-CSE-MsgGUID: tbh1lNWiQv6tH8vlxTmFoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="37814202"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="37814202"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 01:46:49 -0800
X-CSE-ConnectionGUID: uJJmXa8PTeCuqKXmkF4YBQ==
X-CSE-MsgGUID: QH1PeogHQX6C8JoXc18lKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107406538"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.98])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 01:46:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 5/6] drm/i915/xe3: handle dirty rect update within
 the scope of DSB
In-Reply-To: <f13004f739a71883e033bf1fd89af6999202cf67.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-6-vinod.govindapillai@intel.com>
 <871pwvp1kc.fsf@intel.com>
 <f13004f739a71883e033bf1fd89af6999202cf67.camel@intel.com>
Date: Thu, 23 Jan 2025 11:46:43 +0200
Message-ID: <87wmeln9q4.fsf@intel.com>
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

On Wed, 22 Jan 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Wed, 2025-01-22 at 12:47 +0200, Jani Nikula wrote:
>> On Wed, 22 Jan 2025, Vinod Govindapillai <vinod.govindapillai@intel.com>=
 wrote:
>> > Programming of the dirty rectangle coordinates should happen
>> > within the scope of DSB prepare and finish calls. So call the
>> > compute and programming of dirty rectangle related routines
>> > early within the DSB programming window. Some of the FBC state
>> > handling is done later as part of pre-plane or post-plane
>> > updates. So enabling / disabling / hw activate will happen
>> > later but it should handle the sequence without any issue.
>> >=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_display.c |=C2=A0 3 ++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
 | 47 ++++++++++++++++----
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.h=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0 3 ++
>> > =C2=A03 files changed, 44 insertions(+), 9 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> > b/drivers/gpu/drm/i915/display/intel_display.c
>> > index d154fcd0e77a..e6e017e65da6 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -7773,6 +7773,9 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>> > =C2=A0
>> > =C2=A0	intel_atomic_prepare_plane_clear_colors(state);
>> > =C2=A0
>> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>> > +		intel_fbc_compute_dirty_rect(state, crtc);
>>=20
>> "compute" is a fairly loaded word in our driver. The immediate
>> association is "it's compute config, but missing the config part". And
>> doing anything "compute" seems completely out of place in
>> intel_atomic_commit_tail(), where we've long since passed the compute
>> config stage.
>
> Well.. actually I dont need this call at all. I don't need to split this =
between compute_dirt_rect
> and program_dirty_rect. Instead I can directly call program_dirty rect wh=
ich internally gets the
> dirty rects. I will update that
>
>>=20
>> > +
>> > =C2=A0	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>> > =C2=A0		intel_atomic_dsb_finish(state, crtc);
>> > =C2=A0
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
>> > index 963fbe2c7361..033eb4a3eab0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -1213,6 +1213,10 @@ static bool tiling_is_valid(const struct intel_=
plane_state *plane_state)
>> > =C2=A0		return i8xx_fbc_tiling_valid(plane_state);
>> > =C2=A0}
>> > =C2=A0
>> > +static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
>> > +				=C2=A0=C2=A0=C2=A0 struct intel_crtc *crtc,
>> > +				=C2=A0=C2=A0=C2=A0 struct intel_plane *plane);
>> > +
>> > =C2=A0static void
>> > =C2=A0__intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct int=
el_plane *plane)
>> > =C2=A0{
>> > @@ -1251,7 +1255,6 @@ intel_fbc_program_dirty_rect(struct intel_dsb *d=
sb,
>> > =C2=A0	}
>> > =C2=A0}
>> > =C2=A0
>> > -
>>=20
>> The previous patch added a superfluous newline here, and this one
>> removes it. Please just don't add it in the first place.
>
> Yeah.. not really intentional. I will update!
> My local checkpatch didn't catch that though! But the CI checkpatch did.

Try with:

scripts/checkpatch.pl -q --emacs --strict --show-types --max-line-length=3D=
100 --ignore=3DBIT_MACRO,SPLIT_STRING,LONG_LINE_STRING,BOOL_MEMBER


>
> BR
> Vinod
>
>>=20
>> > =C2=A0static void
>> > =C2=A0update_dirty_rect_to_full_region(struct intel_plane_state *plane=
_state,
>> > =C2=A0				 struct drm_rect *dirty_rect)
>> > @@ -1276,9 +1279,9 @@ validate_and_clip_dirty_rect(struct intel_plane_=
state *plane_state,
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static void
>> > -intel_fbc_compute_dirty_rect(struct intel_plane *plane,
>> > -			=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_plane_state *old_plane_state,
>> > -			=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_plane_state *new_plane_state)
>> > +__intel_fbc_compute_dirty_rect(struct intel_plane *plane,
>> > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_plane_state *old=
_plane_state,
>> > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_plane_state *new=
_plane_state)
>> > =C2=A0{
>> > =C2=A0	struct intel_fbc *fbc =3D plane->fbc;
>> > =C2=A0	struct intel_fbc_state *fbc_state =3D &fbc->state;
>> > @@ -1292,6 +1295,37 @@ intel_fbc_compute_dirty_rect(struct intel_plane=
 *plane,
>> > =C2=A0		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_re=
ct);
>> > =C2=A0}
>> > =C2=A0
>> > +void
>> > +intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
>> > +			=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_crtc *crtc)
>> > +{
>> > +	struct intel_display *display =3D to_intel_display(state);
>> > +	struct intel_plane_state *new_plane_state;
>> > +	struct intel_plane_state *old_plane_state;
>> > +	struct intel_plane *plane;
>> > +	int i;
>> > +
>> > +	if (DISPLAY_VER(display) < 30)
>> > +		return;
>> > +
>> > +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, =
new_plane_state, i)
>> > {
>> > +		struct intel_fbc *fbc =3D plane->fbc;
>> > +
>> > +		if (!fbc || plane->pipe !=3D crtc->pipe)
>> > +			continue;
>> > +
>> > +		/* If plane not visible, dirty rect might have invalid coordinates =
*/
>> > +		if (!new_plane_state->uapi.visible)
>> > +			continue;
>> > +
>> > +		/* If FBC to be disabled, then no need to update dirty rect */
>> > +		if (!intel_fbc_can_flip_nuke(state, crtc, plane))
>> > +			continue;
>> > +
>> > +		__intel_fbc_compute_dirty_rect(plane, old_plane_state, new_plane_st=
ate);
>> > +	}
>> > +}
>> > +
>> > =C2=A0static void intel_fbc_update_state(struct intel_atomic_state *st=
ate,
>> > =C2=A0				=C2=A0=C2=A0 struct intel_crtc *crtc,
>> > =C2=A0				=C2=A0=C2=A0 struct intel_plane *plane)
>> > @@ -1301,8 +1335,6 @@ static void intel_fbc_update_state(struct intel_=
atomic_state *state,
>> > =C2=A0		intel_atomic_get_new_crtc_state(state, crtc);
>> > =C2=A0	struct intel_plane_state *plane_state =3D
>> > =C2=A0		intel_atomic_get_new_plane_state(state, plane);
>> > -	struct intel_plane_state *old_plane_state =3D
>> > -		intel_atomic_get_old_plane_state(state, plane);
>> > =C2=A0	struct intel_fbc *fbc =3D plane->fbc;
>> > =C2=A0	struct intel_fbc_state *fbc_state =3D &fbc->state;
>> > =C2=A0
>> > @@ -1327,9 +1359,6 @@ static void intel_fbc_update_state(struct intel_=
atomic_state *state,
>> > =C2=A0	fbc_state->cfb_stride =3D intel_fbc_cfb_stride(plane_state);
>> > =C2=A0	fbc_state->cfb_size =3D intel_fbc_cfb_size(plane_state);
>> > =C2=A0	fbc_state->override_cfb_stride =3D intel_fbc_override_cfb_strid=
e(plane_state);
>> > -
>> > -	if (DISPLAY_VER(display) >=3D 30)
>> > -		intel_fbc_compute_dirty_rect(plane, old_plane_state, plane_state);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static bool intel_fbc_is_fence_ok(const struct intel_plane_state=
 *plane_state)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/dr=
m/i915/display/intel_fbc.h
>> > index acaebe15f312..87be5653db0f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
>> > @@ -49,8 +49,11 @@ void intel_fbc_handle_fifo_underrun_irq(struct inte=
l_display *display);
>> > =C2=A0void intel_fbc_reset_underrun(struct intel_display *display);
>> > =C2=A0void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>> > =C2=A0void intel_fbc_debugfs_register(struct intel_display *display);
>> > +void intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
>> > +				=C2=A0 struct intel_crtc *crtc);
>> > =C2=A0void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
>> > =C2=A0				=C2=A0 struct intel_atomic_state *state,
>> > =C2=A0				=C2=A0 struct intel_crtc *crtc);
>> > =C2=A0
>> > +
>>=20
>> Superfluous newline.
>>=20
>> > =C2=A0#endif /* __INTEL_FBC_H__ */
>>=20
>

--=20
Jani Nikula, Intel
