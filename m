Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65D92B68F8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCC389B46;
	Tue, 17 Nov 2020 15:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE2F89B46
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:45:39 +0000 (UTC)
IronPort-SDR: JkO5JYaUYkofLkcavkeROQ5pu90fPjl5QGtVeNk6fViHMZPUxPd7tDQvSFKfNqJGT52GOG4XoQ
 4LIlmqoONv4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150216818"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="150216818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:45:38 -0800
IronPort-SDR: 8Z0lsdQ2c9z8NKvi+R2n0D2HhjxOu7Oemba6lKACpr0yNZCrj26BzZWpg5O/4F2Ek/yCrEf15R
 nl5okRPN19ww==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="475964445"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:45:38 -0800
Date: Tue, 17 Nov 2020 07:48:09 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201117154809.GA31689@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-18-ville.syrjala@linux.intel.com>
 <20201117002408.GB29250@labuser-Z97X-UD5H>
 <20201117151715.GD6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117151715.GD6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915: Get the uapi state from the
 correct plane when bigjoiner is used
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 05:17:15PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Nov 16, 2020 at 04:24:15PM -0800, Navare, Manasi wrote:
> > On Sat, Nov 14, 2020 at 12:03:52AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > When using bigjoiner userspace is only controlling the "master"
> > > plane, so use its uapi state for the "slave" plane as well.
> > > =

> > > hw.crtc needs a bit of magic since we don't want to copy that from
> > > the uapi state (as it points to the wrong pipe for the "slave
> > > " plane). Instead we pass the right crtc in explicitly but only
> > > assign it when the uapi state indicates the plane to be logically
> > > enabled (ie. uapi.crtc !=3D NULL).
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 59 +++++++++++++----=
--
> > >  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
> > >  3 files changed, 46 insertions(+), 21 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driv=
ers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index f47558efb3c2..7abb0e3d6c0b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -247,11 +247,19 @@ static void intel_plane_clear_hw_state(struct i=
ntel_plane_state *plane_state)
> > >  }
> > >  =

> > >  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *pla=
ne_state,
> > > -				       const struct intel_plane_state *from_plane_state)
> > > +				       const struct intel_plane_state *from_plane_state,
> > > +				       struct intel_crtc *crtc)
> > >  {
> > >  	intel_plane_clear_hw_state(plane_state);
> > >  =

> > > -	plane_state->hw.crtc =3D from_plane_state->uapi.crtc;
> > > +	/*
> > > +	 * For the bigjoiner slave uapi.crtc will point at
> > > +	 * the master crtc. So we explicitly assign the right
> > > +	 * slave crtc to hw.crtc. uapi.crtc!=3DNULL simply indicates
> > > +	 * the plane is logically enabled on the uapi level.
> > > +	 */
> > > +	plane_state->hw.crtc =3D from_plane_state->uapi.crtc ? &crtc->base =
: NULL;
> > =

> > But here in case of bigjoiner_slave we actualy compute new_master_plane=
_state from master_plane which is
> > obtained from the slaves linked crtc.
> > =

> > So here, even for the slave plane's hw.crtc we are using master's uapi.=
crtc? Is that what is happening here?
> =

> Yes.

Ok gotcha

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
