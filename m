Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4412267EE57
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 20:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6840E10E1A2;
	Fri, 27 Jan 2023 19:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C7510E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 19:39:19 +0000 (UTC)
Received: from 91-155-255-60.elisa-laajakaista.fi ([91.155.255.60]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pLUZ6-005yKs-VT;
 Fri, 27 Jan 2023 21:39:14 +0200
Message-ID: <3d881c62a5b7102e78b3d132be7c7a380d1a08a3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Fri, 27 Jan 2023 21:39:11 +0200
In-Reply-To: <20230127193351.nkw6csaifvgjcrt3@ldmartin-desk2>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
 <87o7qk3uxp.fsf@intel.com>
 <00ecdb6e66b13d92c7013f8486cb598a4ecc27f0.camel@coelho.fi>
 <20230127193351.nkw6csaifvgjcrt3@ldmartin-desk2>
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

On Fri, 2023-01-27 at 11:33 -0800, Lucas De Marchi wrote:
> On Fri, Jan 27, 2023 at 07:12:29PM +0200, Luca Coelho wrote:
> > On Fri, 2023-01-27 at 16:37 +0200, Jani Nikula wrote:
> > > On Fri, 27 Jan 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> =
wrote:
> > > > On 26/01/2023 16:05, Jani Nikula wrote:
> > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
> > > > > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
> > > > > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wr=
ote:
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c=
 b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > > > index 7d4a15a283a0..63b79c611932 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_=
sel_fetch(struct intel_plane *plane,
> > > > > > > > > > >   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pi=
pe, plane->id), 0);
> > > > > > > > > > >   }
> > > > > > > > > > >=20
> > > > > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel=
_plane *plane,
> > > > > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct i=
ntel_plane *plane,
> > > > > > > > > > > +					const struct intel_crtc_state *crtc_state,
> > > > > > > > > > > +					const struct intel_plane_state *plane_state,
> > > > > > > > > > > +					int color_plane)
> > > > > > > > > > > +{
> > > > > > > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(plane=
->base.dev);
> > > > > > > > >=20
> > > > > > > > > Should you use i915 instead of dev_priv? I've heard and r=
ead elsewhere
> > > > > > > > > that this is generally a desired change.  Much easier to =
use always the
> > > > > > > > > same local name for this kind of thing.  Though this file=
 is already
> > > > > > > > > interspersed with both versions...
> > > > > > > >=20
> > > > > > > > Basically the only reason to use dev_priv for new code is t=
o deal with
> > > > > > > > some register macros that still have implicit dev_priv in
> > > > > > > > them. Otherwise, i915 should be used, and when convenient, =
dev_priv
> > > > > > > > should be converted to i915 while touching the code anyway =
(in a
> > > > > > > > separate patch, but while you're there).
> > > > > > >=20
> > > > > > > Thanks for the clarification! In this case we're not using an=
y of the
> > > > > > > macros, AFAICT, so I guess it's better to go with i915 alread=
y? And I
> > > > > > > think it should even be in this same patch, since it's a new =
function
> > > > > > > anyway.
> > > > > > >=20
> > > > > > >=20
> > > > > > > > The implicit dev_priv dependencies in the register macros a=
re a bit
> > > > > > > > annoying to fix, and it's been going slow. In retrospect ma=
ybe the right
> > > > > > > > thing would have been to just sed the parameter to all of t=
hem
> > > > > > > > everywhere and be done with it for good. Not too late now, =
I guess, and
> > > > > > > > I'd take the patches in a heartbeat if someone were to step=
 up and do
> > > > > > > > it.
> > > > > > >=20
> > > > > > > I see that there is a boatload of register macros using it...=
 I won't
> > > > > > > promise, but I think it would be a good exercise for a n00b l=
ike me to
> > > > > > > make this patch, though I already foresee another boatload of=
 conflicts
> > > > > > > with the internal trees and everything...
> > > > > >=20
> > > > > > There were actually 10 boatloads of places to change:
> > > > > >=20
> > > > > >   187 files changed, 12104 insertions(+), 12104 deletions(-)
> > > > > >=20
> > > > > > ...but it _does_ compile. =F0=9F=98=84
> > > > > >=20
> > > > > > Do you think this is fine? Lots of shuffle, but if you think it=
's okay,
> > > > > > I can send the patch out now.
> > > > >=20
> > > > > Heh, I said I'd take patchES, not everything together! ;)
> > > > >=20
> > > > > Rodrigo, Tvrtko, Joonas, thoughts?
> > > >=20
> > > > IMO if the elimination of implicit dev_priv is not included then I =
am
> > > > not sure the churn is worth the effort.
> > > >=20
> > > > I think one trap is that it is easy to assume solving those conflic=
ts is
> > > > easy because there is a script, somewhere, whatever, but one needs =
to be
> > > > careful with assuming a random person hitting a merge conflict will
> > > > realize there is a script, know where to find it, and know how to u=
se it
> > > > against a state where conflict markers are sitting in their local t=
ree.
> > > > That's a lot of assumed knowledge which my experience tells me is n=
ot
> > > > universally there.
> > > >=20
> > > > Having said all that, I looked at the occurrence histogram for the
> > > > proposed churn and gut feel says conflicts wouldn't even be that ba=
d
> > > > since they seem heavily localized in a handful of files plus the di=
splay
> > > > subdir.
> > > >=20
> > > > Plus it is upstream.. so we are allowed not to care too much about
> > > > backporting woes. I would still hope implicit dev_priv, albeit
> > > > orthogonal, would be coming somewhat together with the rename. For =
that
> > > > warm fuzzy feeling that the churn was really really worth it.
> > >=20
> > > I was mostly talking about the implicit dev_priv removal. It's somewh=
at
> > > easy, because you can always assume dev_priv is around when the macro=
s
> > > in question are used.
> > >=20
> > > The above is a dependency to any renames. I don't think the renames a=
re
> > > as important as removing the implicit dev_priv, and the renames are
> > > easier to handle piecemeal, say a file at a time or something.
> >=20
> > I'm trying to write a semantic patch to convert this stuff.  But
> > coccinelle is problematic when it comes to macros, so it turned out not
> > to be as trivial as I though.
>=20
> I think that the definition in the header is easier to do manually and
> let coccinelle change only the users. I started this and it seems to be
> going the right direction:
>=20
> 2 prerequisite commits:
> https://git.kernel.org/pub/scm/linux/kernel/git/demarchi/linux.git/log/?h=
=3Dtip-drm-intel-dev-priv
>=20
> $ cat /tmp/a.cocci
> virtual patch
>=20
> @@
> expression e;
> @@
> - DPLL(e)
> + DPLL(dev_priv, e)
>=20
> @@
> expression e;
> @@
> - DPLL_MD(e)
> + DPLL_MD(dev_priv, e)
>=20
> @@
> expression e1, e2;
> @@
> - PALETTE(e1, e2)
> + PALETTE(dev_priv, e1, e2)
>=20
> ... simply continuing with the same pattern for the other macros
> I *think* would produce a good result. I slightly tested it with
> `make coccicheck MODE=3Dpatch COCCI=3D/tmp/a.cocci  M=3D./drivers/gpu/drm=
/i915`

Yes, this probably works, but it is more "seddy" than semantic.  My
goal was to find rules that will change all these occurrences without
having to specify each different patch individually. ;)


> Then if we change the macro in i915_reg.h we could remove all the
> implicit deps. Wether we should pass dev_priv or mmio_base I think will
> vary from macro to macro.  The rename s/dev_priv/i915/ being the cherry
> on top.

Yes, the changes are a bit independent, but we'll have to do one on top
of the other, of course.

--
Cheers,
Luca.
