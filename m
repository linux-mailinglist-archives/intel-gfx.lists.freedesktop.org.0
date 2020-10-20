Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16AD29426C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 20:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180966E090;
	Tue, 20 Oct 2020 18:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7196E090
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 18:45:27 +0000 (UTC)
IronPort-SDR: gzQUjjLjzT0quXZaWja7/g7VMp1YYlKvrdJO/6rUdpPIsMzCm6MHVKSjFjDsepCbxQn342rIGN
 bGaqb8UyMP6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167350999"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="167350999"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 11:45:26 -0700
IronPort-SDR: Pu634iupjQFa5fKPNIfT2MKTy707Qsi+TpI0g4ez0L2NzIhHugQ+uQvd0iid0BSP6hHDP9RaBN
 X8kudBy8zyTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="358629120"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 20 Oct 2020 11:45:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 21:45:02 +0300
Date: Tue, 20 Oct 2020 21:45:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201020184502.GC6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-7-manasi.d.navare@intel.com>
 <20201019163659.GW6112@intel.com>
 <20201019224457.GB22411@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019224457.GB22411@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 07/11] drm/i915: Make hardware readout
 work on i915.
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

On Mon, Oct 19, 2020 at 03:45:04PM -0700, Navare, Manasi wrote:
> On Mon, Oct 19, 2020 at 07:36:59PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Oct 08, 2020 at 02:45:31PM -0700, Manasi Navare wrote:
> > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > =

> > > Unfortunately I have no way to test this, but it should be correct
> > > if the bios sets up bigjoiner in a sane way.
> > > =

> > > Skip iterating over bigjoiner slaves, only the master has the state we
> > > care about.
> > > =

> > > Add the width of the bigjoiner slave to the reconstructed fb.
> > > =

> > > Hide the bigjoiner slave to userspace, and double the mode on bigjoin=
er
> > > master.
> > > =

> > > And last, disable bigjoiner slave from primary if reconstruction fail=
s.
> > > =

> > > v2:
> > > * Manual Rebase (Manasi)
> > > =

> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++++++++=
+-
> > >  1 file changed, 62 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index faf8bf757bed..aa981aa4f6a1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -3619,6 +3619,8 @@ intel_find_initial_plane_obj(struct intel_crtc =
*intel_crtc,
> > >  	struct intel_plane *intel_plane =3D to_intel_plane(primary);
> > >  	struct intel_plane_state *intel_state =3D
> > >  		to_intel_plane_state(plane_state);
> > > +	 struct intel_crtc_state *crtc_state =3D
> > =

> > Whitespace fail. Didn't checkpatch complain?
> =

> I will fix this
> =

> > =

> > > +		 to_intel_crtc_state(intel_crtc->base.state);
> > >  	struct drm_framebuffer *fb;
> > >  	struct i915_vma *vma;
> > >  =

> > > @@ -3641,7 +3643,7 @@ intel_find_initial_plane_obj(struct intel_crtc =
*intel_crtc,
> > >  		if (c =3D=3D &intel_crtc->base)
> > >  			continue;
> > >  =

> > > -		if (!to_intel_crtc(c)->active)
> > > +		if (!to_intel_crtc_state(c->state)->uapi.active)
> > >  			continue;
> > >  =

> > >  		state =3D to_intel_plane_state(c->primary->state);
> > > @@ -3663,6 +3665,11 @@ intel_find_initial_plane_obj(struct intel_crtc=
 *intel_crtc,
> > >  	 * pretend the BIOS never had it enabled.
> > >  	 */
> > >  	intel_plane_disable_noatomic(intel_crtc, intel_plane);
> > > +	if (crtc_state->bigjoiner) {
> > > +		struct intel_crtc *slave =3D
> > > +			crtc_state->bigjoiner_linked_crtc;
> > > +		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.pri=
mary));
> > > +	}
> > >  =

> > >  	return;
> > >  =

> > > @@ -10687,6 +10694,7 @@ static void
> > >  skl_get_initial_plane_config(struct intel_crtc *crtc,
> > >  			     struct intel_initial_plane_config *plane_config)
> > >  {
> > > +	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->b=
ase.state);
> > >  	struct drm_device *dev =3D crtc->base.dev;
> > >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > >  	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> > > @@ -10795,6 +10803,18 @@ skl_get_initial_plane_config(struct intel_cr=
tc *crtc,
> > >  	fb->height =3D ((val >> 16) & 0xffff) + 1;
> > >  	fb->width =3D ((val >> 0) & 0xffff) + 1;
> > >  =

> > > +	/* add bigjoiner slave as well, if the fb stretches both */
> > > +	if (crtc_state->bigjoiner) {
> > > +		enum pipe bigjoiner_pipe =3D crtc_state->bigjoiner_linked_crtc->pi=
pe;
> > > +
> > > +		if (fb->width =3D=3D crtc_state->pipe_src_w &&
> > > +		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff=
000) =3D=3D plane_config->base) {
> > > +			val =3D intel_de_read(dev_priv, PLANE_SIZE(bigjoiner_pipe, plane_=
id));
> > > +			fb->height +=3D ((val >> 16) & 0xfff) + 1;
> > > +			fb->width +=3D ((val >> 0) & 0x1fff) + 1;
> > =

> > This looks wrong.
> =

> Why is it wrong? Double checked the plane size width and height bits from=
 bspec
> and the mask looks correct here. =

> Can you elaborate on what is wrong here?

The pipes are side-by-side.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
