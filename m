Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F2514C9FA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 12:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BADE6E326;
	Wed, 29 Jan 2020 11:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6D66E326
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 11:58:04 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 03:58:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="232408467"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Jan 2020 03:58:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 13:58:00 +0200
Date: Wed, 29 Jan 2020 13:58:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200129115800.GV13686@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
 <20200129114449.GS13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129114449.GS13686@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2020 at 01:44:49PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Jan 28, 2020 at 03:52:40PM -0800, Jos=E9 Roberto de Souza wrote:
> > dGFX have local memory so it do not have aperture and do not support
> > CPU fences but even for iGFX it have a small number of fences.
> > =

> > As replacement for fences to track frontbuffer modifications by CPU
> > we have a software tracking that is already in used by FBC and PSR.
> > PSR don't support fences so it shows that this tracking is reliable.
> > =

> > So lets make fences a nice-to-have to activate FBC for GEN9+(as we
> > only have a good CI coverage for GEN9+), this will allow us to enable
> > FBC for dGFXs and iGFXs even when there is no available fence.
> > =

> > intel_fbc_hw_tracking_covers_screen() maybe can also have the same
> > treatment as fences but BSpec is not clear if the size limitation is
> > for hardware tracking or general use of FBC and I don't have a 5K
> > display to test it, so keeping as is for safety.
> > =

> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 2a3f1333c8ff..1f0d24a1dec1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -717,11 +717,15 @@ static bool intel_fbc_can_activate(struct intel_c=
rtc *crtc)
> >  		return false;
> >  	}
> >  =

> > -	/* The use of a CPU fence is mandatory in order to detect writes
> > -	 * by the CPU to the scanout and trigger updates to the FBC.
> > +	/* The use of a CPU fence is one of two ways to detect writes by the
> > +	 * CPU to the scanout and trigger updates to the FBC.
> > +	 *
> > +	 * The other method is by software tracking(see
> > +	 * intel_fbc_invalidate/flush()), it will manually notify FBC and nuke
> > +	 * the current compressed buffer and recompress it.
> >  	 *
> >  	 * Note that is possible for a tiled surface to be unmappable (and
> > -	 * so have no fence associated with it) due to aperture constaints
> > +	 * so have no fence associated with it) due to aperture constraints
> >  	 * at the time of pinning.
> >  	 *
> >  	 * FIXME with 90/270 degree rotation we should use the fence on
> > @@ -730,7 +734,7 @@ static bool intel_fbc_can_activate(struct intel_crt=
c *crtc)
> >  	 * For now this will effecively disable FBC with 90/270 degree
> >  	 * rotation.
> >  	 */
> > -	if (cache->fence_id < 0) {
> > +	if (cache->fence_id < 0 && INTEL_GEN(dev_priv) < 9) {
> =

> Not enough. We need to check that the tiling format is actually supported.

Actually not sure if all of them are or not. IIRC some docs just said
X/Y tile is supported (and in some other place linear was also listed).

> Also the tracking stuff is busted in intel ddx so need to get
> https://patchwork.freedesktop.org/series/70636/ merged somehow.
> =

> >  		fbc->no_fbc_reason =3D "framebuffer not tiled or fenced";
> >  		return false;
> >  	}
> > -- =

> > 2.25.0
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
