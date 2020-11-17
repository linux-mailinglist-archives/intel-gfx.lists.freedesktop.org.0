Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4064B2B6882
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A863A6E231;
	Tue, 17 Nov 2020 15:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2BA6E039
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:20:18 +0000 (UTC)
IronPort-SDR: +Qnpvp05KFtJxk/nxbtAfDqeGtQjQQTottRKqlpDkJQKPvA2qXjwPzHq/bhWpykn9qssJbvI7g
 pQeSAg4Ayb1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171111168"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="171111168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:17:18 -0800
IronPort-SDR: p+T2KGGN7qTdvwtvIhSTRVFLWuG/5vqM0L4l4WQDjsfoRijGqcE8jzQbQM1T/7aj5MqRG37n65
 p3YjHWHYDvRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="367897264"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Nov 2020 07:17:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Nov 2020 17:17:15 +0200
Date: Tue, 17 Nov 2020 17:17:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201117151715.GD6112@intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-18-ville.syrjala@linux.intel.com>
 <20201117002408.GB29250@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117002408.GB29250@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Nov 16, 2020 at 04:24:15PM -0800, Navare, Manasi wrote:
> On Sat, Nov 14, 2020 at 12:03:52AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > When using bigjoiner userspace is only controlling the "master"
> > plane, so use its uapi state for the "slave" plane as well.
> > =

> > hw.crtc needs a bit of magic since we don't want to copy that from
> > the uapi state (as it points to the wrong pipe for the "slave
> > " plane). Instead we pass the right crtc in explicitly but only
> > assign it when the uapi state indicates the plane to be logically
> > enabled (ie. uapi.crtc !=3D NULL).
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 59 +++++++++++++------
> >  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
> >  3 files changed, 46 insertions(+), 21 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.c
> > index f47558efb3c2..7abb0e3d6c0b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -247,11 +247,19 @@ static void intel_plane_clear_hw_state(struct int=
el_plane_state *plane_state)
> >  }
> >  =

> >  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane=
_state,
> > -				       const struct intel_plane_state *from_plane_state)
> > +				       const struct intel_plane_state *from_plane_state,
> > +				       struct intel_crtc *crtc)
> >  {
> >  	intel_plane_clear_hw_state(plane_state);
> >  =

> > -	plane_state->hw.crtc =3D from_plane_state->uapi.crtc;
> > +	/*
> > +	 * For the bigjoiner slave uapi.crtc will point at
> > +	 * the master crtc. So we explicitly assign the right
> > +	 * slave crtc to hw.crtc. uapi.crtc!=3DNULL simply indicates
> > +	 * the plane is logically enabled on the uapi level.
> > +	 */
> > +	plane_state->hw.crtc =3D from_plane_state->uapi.crtc ? &crtc->base : =
NULL;
> =

> But here in case of bigjoiner_slave we actualy compute new_master_plane_s=
tate from master_plane which is
> obtained from the slaves linked crtc.
> =

> So here, even for the slave plane's hw.crtc we are using master's uapi.cr=
tc? Is that what is happening here?

Yes.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
