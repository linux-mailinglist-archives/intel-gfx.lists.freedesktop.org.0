Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC767C9E3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 12:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0557C10E075;
	Thu, 26 Jan 2023 11:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D7710E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 11:29:52 +0000 (UTC)
Received: from 85-76-162-133-nat.elisa-mobile.fi ([85.76.162.133]
 helo=[192.168.127.197])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pL0Rw-005x2j-F4;
 Thu, 26 Jan 2023 13:29:50 +0200
Message-ID: <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 26 Jan 2023 13:29:47 +0200
In-Reply-To: <20230125104439.1662832-1-jouni.hogander@intel.com>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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

On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
> > SEL_FETCH_CTL registers are armed immediately when plane is disabled.
> > SEL_FETCH_* instances of plane configuration are used when doing
> > selective update and normal plane register instances for full updates.
> > Currently all SEL_FETCH_* registers are written as a part of noarm
> > plane configuration. If noarm and arm plane configuration are not
> > happening within same vblank we may end up having plane as a part of
> > selective update before it's PLANE_SURF register is written.
> >=20
> > Fix this by splitting plane selective fetch configuration into arm and
> > noarm versions and call them accordingly. Write SEL_FETCH_CTL in arm
> > version.
> >=20
> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> > ---

Looks fine to me. A couple of nitpicks.


> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 29 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_psr.h      |  6 +++-
> >  .../drm/i915/display/skl_universal_plane.c    |  4 ++-
> >  4 files changed, 30 insertions(+), 11 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/=
drm/i915/display/intel_cursor.c
> > index d190fa0d393b..50232cec48e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -532,7 +532,7 @@ static void i9xx_cursor_update_arm(struct intel_pla=
ne *plane,
> >  		skl_write_cursor_wm(plane, crtc_state);
> > =20
> >  	if (plane_state)
> > -		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0=
);
> > +		intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state, plane_stat=
e, 0);

This goes well over 80 chars.  Even though it's accepted to go over
that nowadays, I think it's still preferred to keep it shorter and this
line is easily breakable.


> >  	else
> >  		intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
> > =20
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm=
/i915/display/intel_psr.c
> > index 7d4a15a283a0..63b79c611932 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct i=
ntel_plane *plane,
> >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> >  }
> > =20
> > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
> > +					const struct intel_crtc_state *crtc_state,
> > +					const struct intel_plane_state *plane_state,
> > +					int color_plane)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);

Should you use i915 instead of dev_priv? I've heard and read elsewhere
that this is generally a desired change.  Much easier to use always the
same local name for this kind of thing.  Though this file is already
interspersed with both versions...

Regardless of these nitpicks (change them if you want):

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
