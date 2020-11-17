Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9F32B6909
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9277E89CA4;
	Tue, 17 Nov 2020 15:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED24A89CA4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:49:29 +0000 (UTC)
IronPort-SDR: Egv0LixToVgTVuZuOSUQOtml+Qk4Rv2lpMWCWcBi45cqD9Pus5nTFktpE+2LAFwEVyDaWmyHHK
 oywqRpVxbW+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150217459"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="150217459"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:49:29 -0800
IronPort-SDR: k1vs84nn9KAi27QtGVkU9GmNlFSdG+tihYX/pPx/Tdomge7m1tzSVH5PkYoL6ZxkTCrbhT13a6
 f7W/3u/w/rxA==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="367910955"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:49:29 -0800
Date: Tue, 17 Nov 2020 07:52:00 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201117155200.GC31689@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-22-ville.syrjala@linux.intel.com>
 <20201117003343.GB29332@labuser-Z97X-UD5H>
 <20201117150906.GB6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117150906.GB6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915: Fix cursor src/dst
 rectangle with bigjoiner
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

On Tue, Nov 17, 2020 at 05:09:06PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Nov 16, 2020 at 04:33:50PM -0800, Navare, Manasi wrote:
> > On Sat, Nov 14, 2020 at 12:03:56AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > We can't call drm_plane_state_src() this late for the slave plane sin=
ce
> > > it would consult the wrong uapi state. We've alreayd done the correct
> > > uapi->hw copy earlier, so let's just preserve the unclipped src/dst
> > > rects using a temp copy across the intel_atomic_plane_check_clipping()
> > > call.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 19e9c3795265..7607bcd9b7fe 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -11651,6 +11651,8 @@ static int intel_check_cursor(struct intel_cr=
tc_state *crtc_state,
> > >  {
> > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > >  	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->=
dev);
> > > +	const struct drm_rect src =3D plane_state->uapi.src;
> > > +	const struct drm_rect dst =3D plane_state->uapi.dst;
> > >  	int ret;
> > >  =

> > >  	if (fb && fb->modifier !=3D DRM_FORMAT_MOD_LINEAR) {
> > > @@ -11666,8 +11668,8 @@ static int intel_check_cursor(struct intel_cr=
tc_state *crtc_state,
> > >  		return ret;
> > >  =

> > >  	/* Use the unclipped src/dst rectangles, which we program to hw */
> > > -	plane_state->uapi.src =3D drm_plane_state_src(&plane_state->uapi);
> > > -	plane_state->uapi.dst =3D drm_plane_state_dest(&plane_state->uapi);
> > > +	plane_state->uapi.src =3D src;
> > > +	plane_state->uapi.dst =3D dst;
> > =

> > We get this for both slave and master? No slave condition needed?
> =

> Planes don't know/care about bigjoiner at this stage of the computation
> anymore. The only bigjoiner thing for planes is the
> add_affected_planes()+uapi->hw state copy.
>

Okay cool,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
