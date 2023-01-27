Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EA667EC31
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 18:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD4810E11A;
	Fri, 27 Jan 2023 17:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F6C10E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 17:12:37 +0000 (UTC)
Received: from 91-155-255-60.elisa-laajakaista.fi ([91.155.255.60]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pLSH8-005yEC-4k;
 Fri, 27 Jan 2023 19:12:32 +0200
Message-ID: <00ecdb6e66b13d92c7013f8486cb598a4ecc27f0.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Jouni =?ISO-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 19:12:29 +0200
In-Reply-To: <87o7qk3uxp.fsf@intel.com>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
 <87o7qk3uxp.fsf@intel.com>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2023-01-27 at 16:37 +0200, Jani Nikula wrote:
> On Fri, 27 Jan 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrot=
e:
> > On 26/01/2023 16:05, Jani Nikula wrote:
> > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
> > > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
> > > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
> > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/d=
rivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > index 7d4a15a283a0..63b79c611932 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_=
fetch(struct intel_plane *plane,
> > > > > > > > >   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, =
plane->id), 0);
> > > > > > > > >   }
> > > > > > > > >  =20
> > > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_pla=
ne *plane,
> > > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel=
_plane *plane,
> > > > > > > > > +					const struct intel_crtc_state *crtc_state,
> > > > > > > > > +					const struct intel_plane_state *plane_state,
> > > > > > > > > +					int color_plane)
> > > > > > > > > +{
> > > > > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(plane->ba=
se.dev);
> > > > > > >=20
> > > > > > > Should you use i915 instead of dev_priv? I've heard and read =
elsewhere
> > > > > > > that this is generally a desired change.  Much easier to use =
always the
> > > > > > > same local name for this kind of thing.  Though this file is =
already
> > > > > > > interspersed with both versions...
> > > > > >=20
> > > > > > Basically the only reason to use dev_priv for new code is to de=
al with
> > > > > > some register macros that still have implicit dev_priv in
> > > > > > them. Otherwise, i915 should be used, and when convenient, dev_=
priv
> > > > > > should be converted to i915 while touching the code anyway (in =
a
> > > > > > separate patch, but while you're there).
> > > > >=20
> > > > > Thanks for the clarification! In this case we're not using any of=
 the
> > > > > macros, AFAICT, so I guess it's better to go with i915 already? A=
nd I
> > > > > think it should even be in this same patch, since it's a new func=
tion
> > > > > anyway.
> > > > >=20
> > > > >=20
> > > > > > The implicit dev_priv dependencies in the register macros are a=
 bit
> > > > > > annoying to fix, and it's been going slow. In retrospect maybe =
the right
> > > > > > thing would have been to just sed the parameter to all of them
> > > > > > everywhere and be done with it for good. Not too late now, I gu=
ess, and
> > > > > > I'd take the patches in a heartbeat if someone were to step up =
and do
> > > > > > it.
> > > > >=20
> > > > > I see that there is a boatload of register macros using it... I w=
on't
> > > > > promise, but I think it would be a good exercise for a n00b like =
me to
> > > > > make this patch, though I already foresee another boatload of con=
flicts
> > > > > with the internal trees and everything...
> > > >=20
> > > > There were actually 10 boatloads of places to change:
> > > >=20
> > > >   187 files changed, 12104 insertions(+), 12104 deletions(-)
> > > >=20
> > > > ...but it _does_ compile. =F0=9F=98=84
> > > >=20
> > > > Do you think this is fine? Lots of shuffle, but if you think it's o=
kay,
> > > > I can send the patch out now.
> > >=20
> > > Heh, I said I'd take patchES, not everything together! ;)
> > >=20
> > > Rodrigo, Tvrtko, Joonas, thoughts?
> >=20
> > IMO if the elimination of implicit dev_priv is not included then I am=
=20
> > not sure the churn is worth the effort.
> >=20
> > I think one trap is that it is easy to assume solving those conflicts i=
s=20
> > easy because there is a script, somewhere, whatever, but one needs to b=
e=20
> > careful with assuming a random person hitting a merge conflict will=20
> > realize there is a script, know where to find it, and know how to use i=
t=20
> > against a state where conflict markers are sitting in their local tree.=
=20
> > That's a lot of assumed knowledge which my experience tells me is not=
=20
> > universally there.
> >=20
> > Having said all that, I looked at the occurrence histogram for the=20
> > proposed churn and gut feel says conflicts wouldn't even be that bad=
=20
> > since they seem heavily localized in a handful of files plus the displa=
y=20
> > subdir.
> >=20
> > Plus it is upstream.. so we are allowed not to care too much about=20
> > backporting woes. I would still hope implicit dev_priv, albeit=20
> > orthogonal, would be coming somewhat together with the rename. For that=
=20
> > warm fuzzy feeling that the churn was really really worth it.
>=20
> I was mostly talking about the implicit dev_priv removal. It's somewhat
> easy, because you can always assume dev_priv is around when the macros
> in question are used.
>=20
> The above is a dependency to any renames. I don't think the renames are
> as important as removing the implicit dev_priv, and the renames are
> easier to handle piecemeal, say a file at a time or something.

I'm trying to write a semantic patch to convert this stuff.  But
coccinelle is problematic when it comes to macros, so it turned out not
to be as trivial as I though.

Now that I've been looking at the code more, so I see the issue with
the implicit dev_priv in some of the macros.  But I think that is
really trivial to solve.  It shouldn't be an issue to add a parameter
to those macros.  It will probably need some manual work, but I'm on it
and hopefully will be able to send some patches as RFC.

--
Cheers,
Luca.
