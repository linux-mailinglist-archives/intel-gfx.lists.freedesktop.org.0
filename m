Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC667D5DD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 21:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F6F10E031;
	Thu, 26 Jan 2023 20:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5054710E031
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 20:03:55 +0000 (UTC)
Received: from 91-155-255-60.elisa-laajakaista.fi ([91.155.255.60]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pL8TN-005xQU-JO;
 Thu, 26 Jan 2023 22:03:51 +0200
Message-ID: <0dc8e6a85980c88e01af17165d57ae4549f4c95b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Date: Thu, 26 Jan 2023 22:03:48 +0200
In-Reply-To: <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com> <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2023-01-26 at 08:36 -0800, Lucas De Marchi wrote:
> On Thu, Jan 26, 2023 at 06:05:32PM +0200, Jani Nikula wrote:
> > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
> > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
> > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/dri=
vers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > index 7d4a15a283a0..63b79c611932 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fe=
tch(struct intel_plane *plane,
> > > > > > > >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, pla=
ne->id), 0);
> > > > > > > >  }
> > > > > > > >=20
> > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane=
 *plane,
> > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_p=
lane *plane,
> > > > > > > > +					const struct intel_crtc_state *crtc_state,
> > > > > > > > +					const struct intel_plane_state *plane_state,
> > > > > > > > +					int color_plane)
> > > > > > > > +{
> > > > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(plane->base=
.dev);
> > > > > >=20
> > > > > > Should you use i915 instead of dev_priv? I've heard and read el=
sewhere
> > > > > > that this is generally a desired change.  Much easier to use al=
ways the
> > > > > > same local name for this kind of thing.  Though this file is al=
ready
> > > > > > interspersed with both versions...
> > > > >=20
> > > > > Basically the only reason to use dev_priv for new code is to deal=
 with
> > > > > some register macros that still have implicit dev_priv in
> > > > > them. Otherwise, i915 should be used, and when convenient, dev_pr=
iv
> > > > > should be converted to i915 while touching the code anyway (in a
> > > > > separate patch, but while you're there).
> > > >=20
> > > > Thanks for the clarification! In this case we're not using any of t=
he
> > > > macros, AFAICT, so I guess it's better to go with i915 already? And=
 I
> > > > think it should even be in this same patch, since it's a new functi=
on
> > > > anyway.
> > > >=20
> > > >=20
> > > > > The implicit dev_priv dependencies in the register macros are a b=
it
> > > > > annoying to fix, and it's been going slow. In retrospect maybe th=
e right
> > > > > thing would have been to just sed the parameter to all of them
> > > > > everywhere and be done with it for good. Not too late now, I gues=
s, and
> > > > > I'd take the patches in a heartbeat if someone were to step up an=
d do
> > > > > it.
> > > >=20
> > > > I see that there is a boatload of register macros using it... I won=
't
> > > > promise, but I think it would be a good exercise for a n00b like me=
 to
> > > > make this patch, though I already foresee another boatload of confl=
icts
> > > > with the internal trees and everything...
> > >=20
> > > There were actually 10 boatloads of places to change:
> > >=20
> > >  187 files changed, 12104 insertions(+), 12104 deletions(-)
> > >=20
> > > ...but it _does_ compile. =F0=9F=98=84
> > >=20
> > > Do you think this is fine? Lots of shuffle, but if you think it's oka=
y,
> > > I can send the patch out now.
> >=20
> > Heh, I said I'd take patchES, not everything together! ;)
> >=20
> > Rodrigo, Tvrtko, Joonas, thoughts?
>=20
> If it's a sed or something that can be automated, I think it could be
> ok as single patch as long as we find the right time to generate it,
> when the trees are in sync.
>=20
> I do remember doing a sed s/dev_priv/i915/ (or it was with a cocci
> script, don't remember) a few years ago, and I'm
> glad we are giving up the slow conversion and just ripping the
> bandaid.

I first started doing it with coccinelle, but it just required too many
rules to justify it.  My idea was to do it bit by bit with coccinelle
in separate patches, but it didn't look great.

A simple sed seems to have done the job very nicely and, since that's
the case, I do agree that doing it in one patch is the way to go.  I
don't see the reason to artificially break it down into several patches
and manually handle all the interdependencies.

--
Cheers,
Luca.
