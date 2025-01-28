Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7766A2079F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 10:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8BE10E61B;
	Tue, 28 Jan 2025 09:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtbKoZGY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C7A10E619;
 Tue, 28 Jan 2025 09:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738057588; x=1769593588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hhCXzM1hTkP+NyB735GArtjFpG53cZu/W0PlC6qXVUc=;
 b=AtbKoZGY20tqbUx1zHotsiqe0AD/hp8Qo6BBQssIlcCTgom1gInIXAOu
 b8Ka7b4IRF2twPj09CqltpkjCoywXMVhL8ymzxzoHAzWAeFjyYs9L/Wy7
 D5+HJYZ0xh+Jim6fqh8ZDrl1M0+GHzDqfSRBlD9UnhUVTXU14An2MJE1K
 6B0b2O6Ey13zb4Gqmmzp/T55PKDtAXJhIxhvmW2dWA2/v0H407Vt/5QA4
 OeZXbnqgsc/uwPrOh7s7tuyUZUHUYAyGRb3A9aYNl+m/lkYuRKmStRtfG
 ZAXzflZ/9svHCeBU30B8te3yGSfelDeJ7wby6APhhWfbV15wG4o4l5NYx A==;
X-CSE-ConnectionGUID: vaYnqvlLTqCi/bx9lsv60A==
X-CSE-MsgGUID: Hsk/7koCRmyUIQoatYWG6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="49520988"
X-IronPort-AV: E=Sophos;i="6.13,240,1732608000"; d="scan'208";a="49520988"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 01:46:28 -0800
X-CSE-ConnectionGUID: ByuXSU52TcOqj/3JmaUh5Q==
X-CSE-MsgGUID: widdsbWWRPe23REUV9mUeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108538323"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.130])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 01:46:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915: Move VT-d alignment into
 plane->min_alignment()
In-Reply-To: <Z5fCEEIgHItifhwQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
 <20250122151755.6928-2-ville.syrjala@linux.intel.com>
 <878qqwbn6d.fsf@intel.com> <Z5e35V4CqZ3m40y-@intel.com>
 <Z5fCEEIgHItifhwQ@intel.com>
Date: Tue, 28 Jan 2025 11:46:23 +0200
Message-ID: <87h65j9spc.fsf@intel.com>
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

On Mon, 27 Jan 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Jan 27, 2025 at 06:44:21PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, Jan 27, 2025 at 11:50:34AM +0200, Jani Nikula wrote:
>> > On Wed, 22 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wro=
te:
>> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >
>> > > Currently we don't account for the VT-d alignment w/a in
>> > > plane->min_alignment() which means that panning inside a larger
>> > > framebuffer can still cause the plane SURF to be misaligned.
>> > > Fix the issue by moving the VT-d alignment w/a into
>> > > plane->min_alignment() itself (for the affected platforms).
>> > >
>> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.co=
m>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/i9xx_plane.c          | 10 ++++++++++
>> > >  drivers/gpu/drm/i915/display/intel_cursor.c        |  5 +++++
>> > >  drivers/gpu/drm/i915/display/intel_fb_pin.c        |  8 --------
>> > >  drivers/gpu/drm/i915/display/intel_sprite.c        |  5 +++++
>> > >  drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 ++++
>> > >  5 files changed, 24 insertions(+), 8 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu=
/drm/i915/display/i9xx_plane.c
>> > > index ed171fbf8720..19cc34babef3 100644
>> > > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>> > > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>> > > @@ -780,9 +780,14 @@ unsigned int vlv_plane_min_alignment(struct int=
el_plane *plane,
>> > >  				     const struct drm_framebuffer *fb,
>> > >  				     int color_plane)
>> > >  {
>> > > +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>> > > +
>> > >  	if (intel_plane_can_async_flip(plane, fb->modifier))
>> > >  		return 256 * 1024;
>> > >=20=20
>> > > +	if (intel_scanout_needs_vtd_wa(i915))
>> > > +		return 256 * 1024;
>> >=20
>> > Nitpick, would be great to convert intel_scanout_needs_vtd_wa() to
>> > struct intel_display first, so we wouldn't have to introduce so many n=
ew
>> > struct drm_i915_private uses.
>>=20
>> I didn't really want to add intel_display stuff to the
>> gem side (where this is being used currently). Once
>> its all moved into the display code (patch 3) then it
>> makes more sense.

Roger.

> BTW I do have full conversion of all the low level
> plane code (+ a bunch of other stuff including
> intel_display_power_{put,get}() stuff) done locally.
> But I have quite a few series on the list already
> needing review, so not sure I should also post that
> one right now. I can, if you especially want something
> mundane to read?

I might be up for just that, actually.

BR,
Jani.

--=20
Jani Nikula, Intel
