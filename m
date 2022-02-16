Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC2A4B884C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7AA10E991;
	Wed, 16 Feb 2022 12:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F36410E990
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645016273; x=1676552273;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eyOihWTDmPshtEhF9FTuRnncl6WOGi8cPlPB7B3Loo4=;
 b=NN0ga1N8waCZmcs3gp3wyVQ0dM5jcMD6uEzrAA6DCB6mbphBp3d7ZamH
 rwju4+e2m9cwlFJyzOsed9Fe73IqnHyMZELASvJJClUFOJ68tSf7utwQS
 46Ze0AFHUk+3nmjO4rafdIlTdGNA8x0LVz7vQbGT1Az7CMD0aEWbeJ0DJ
 szpkXKQCbhLVoXI5Eba48UMfFKXXR185BRfPyMyBOujIdYRmHGxmvhi4+
 u9Xa7qN0Uxd6v/fmV6CxUgLTv6Sg4UJmO71qZ8zwFFJBz1Dojat7PsnYO
 ElMAUizzvH0VGJhj2VOct6OeFBQ4bMSCSv9vRWfzSzwFRL4VAFKRcdGKs A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="238000634"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="238000634"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:57:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498978193"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:57:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YgzxlgIimedOAirv@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-3-ville.syrjala@linux.intel.com>
 <877d9v5exn.fsf@intel.com> <YgzxlgIimedOAirv@intel.com>
Date: Wed, 16 Feb 2022 14:57:45 +0200
Message-ID: <87iltf3r5i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Introduce
 intel_arm_planes_on_crtc()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 16 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 16, 2022 at 11:38:44AM +0200, Jani Nikula wrote:
>> On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > No reason the high level intel_update_crtc() needs to know
>> > that there is something magical about the commit order of
>> > planes between different platforms. So let's hide that
>> > detail even better.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 19 +++++++++++++++----
>> >  .../gpu/drm/i915/display/intel_atomic_plane.h |  6 ++----
>> >  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-----
>> >  3 files changed, 18 insertions(+), 13 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drive=
rs/gpu/drm/i915/display/intel_atomic_plane.c
>> > index 3355eb637eac..bba2f105b7dd 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> > @@ -716,8 +716,8 @@ void intel_update_planes_on_crtc(struct intel_atom=
ic_state *state,
>> >  	}
>> >  }
>> >=20=20
>> > -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
>> > -			    struct intel_crtc *crtc)
>> > +static void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
>> > +				   struct intel_crtc *crtc)
>> >  {
>> >  	struct intel_crtc_state *old_crtc_state =3D
>> >  		intel_atomic_get_old_crtc_state(state, crtc);
>> > @@ -751,8 +751,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_st=
ate *state,
>> >  	}
>> >  }
>> >=20=20
>> > -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
>> > -			     struct intel_crtc *crtc)
>> > +static void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
>> > +				    struct intel_crtc *crtc)
>> >  {
>> >  	struct intel_crtc_state *new_crtc_state =3D
>> >  		intel_atomic_get_new_crtc_state(state, crtc);
>> > @@ -777,6 +777,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_=
state *state,
>> >  	}
>> >  }
>> >=20=20
>> > +void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
>> > +			      struct intel_crtc *crtc)
>> > +{
>>=20
>> I don't much like the intel_arm_ prefix here. I'd go for intel_plane_
>> something or other.
>
> intel_plane_ is rather bad since this operates on multiple planes.
> Though I'm not super happy with the _arm_ vs. _update_ thing we have
> going on now. The plane hooks I made .update_noarm() and .update_arm()
> (which certainly has a few bad puns in it) so should perhaps just
> try to follow a similar naming convention for the high level stuff.
>
> I guess I'd prefer intel_crtc_ as the prefix actually since thats
> what we pass in anyway.

We can bikeshed this later, I think the patch is net positive as-is.

BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center
