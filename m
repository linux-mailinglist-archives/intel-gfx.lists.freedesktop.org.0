Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BA0294277
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 20:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907F16E214;
	Tue, 20 Oct 2020 18:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0DB6E214
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 18:51:18 +0000 (UTC)
IronPort-SDR: H5vrcd50M2hSVuZaj2zvSTEv8Nv94Hild+aemRxPpXFsIJu+9sulxLKUp6/tKfIL5Lfysthlz5
 St0MhUqbwR1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="155046728"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="155046728"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 11:51:18 -0700
IronPort-SDR: 9FGjZSrFY2PWdW714/Rlmaq5NIu+QtVze2Cftbd6/WdbQmx0Ia0+tKuCkVWDhzvOyKXkaBFRs5
 7aF2A3uSOAag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="359262727"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Oct 2020 11:51:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 21:51:15 +0300
Date: Tue, 20 Oct 2020 21:51:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201020185115.GD6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-9-manasi.d.navare@intel.com>
 <20201019162031.GT6112@intel.com>
 <20201019225637.GC22486@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019225637.GC22486@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 09/11] drm/i915: Add bigjoiner aware
 plane clipping checks
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

On Mon, Oct 19, 2020 at 03:56:37PM -0700, Navare, Manasi wrote:
> On Mon, Oct 19, 2020 at 07:20:31PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Oct 08, 2020 at 02:45:33PM -0700, Manasi Navare wrote:
> > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > =

> > > We need to look at hw.fb for the framebuffer, and add the translation
> > > for the slave_plane_state. With these changes we set the correct
> > > rectangle on the bigjoiner slave, and don't set incorrect
> > > src/dst/visibility on the slave plane.
> > > =

> > > v2:
> > > * Manual rebase (Manasi)
> > > =

> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 60 +++++++++++++++++=
++
> > >  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 19 +++---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c   | 21 +++----
> > >  4 files changed, 80 insertions(+), 24 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driv=
ers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index a8f1fd85a6c0..09cb3adc36da 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -267,6 +267,9 @@ void intel_plane_copy_uapi_to_hw_state(const stru=
ct intel_crtc_state *crtc_state
> > >  	plane_state->hw.rotation =3D from_plane_state->uapi.rotation;
> > >  	plane_state->hw.color_encoding =3D from_plane_state->uapi.color_enc=
oding;
> > >  	plane_state->hw.color_range =3D from_plane_state->uapi.color_range;
> > > +
> > > +	plane_state->uapi.src =3D drm_plane_state_src(&from_plane_state->ua=
pi);
> > > +	plane_state->uapi.dst =3D drm_plane_state_dest(&from_plane_state->u=
api);
> > >  }
> > >  =

> > >  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> > > @@ -519,6 +522,63 @@ void i9xx_update_planes_on_crtc(struct intel_ato=
mic_state *state,
> > >  	}
> > >  }
> > >  =

> > > +int intel_atomic_plane_check_clipping(struct intel_plane_state *plan=
e_state,
> > > +				      struct intel_crtc_state *crtc_state,
> > > +				      int min_scale, int max_scale,
> > > +				      bool can_position)
> > > +{
> > > +	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > +	struct drm_rect *src =3D &plane_state->uapi.src;
> > > +	struct drm_rect *dst =3D &plane_state->uapi.dst;
> > > +	unsigned int rotation =3D plane_state->uapi.rotation;
> > =

> > hw.rotation
> =

> So use hw.rotation instead of uapi.rotation ?

Yes.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
