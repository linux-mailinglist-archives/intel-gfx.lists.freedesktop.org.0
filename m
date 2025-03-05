Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F35A569C8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9350310EB7A;
	Fri,  7 Mar 2025 13:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=dragonic.eu header.i=@dragonic.eu header.b="Yp82Y4In";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2486 seconds by postgrey-1.36 at gabe;
 Wed, 05 Mar 2025 20:36:18 UTC
Received: from k11.unixstorm.org (k11.unixstorm.org [91.227.122.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B16810E2AD;
 Wed,  5 Mar 2025 20:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dragonic.eu
 ; s=x;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SIg3IAcWZN8wRN9Nh85uzigI84msQCuskZOaGsF4rys=; b=Yp82Y4InpbJ7eJGCDiM9CC16LH
 qEMrYB1HJWBMLocfwPETVl8enggeBjl8mWV1zEQL8k86G00bpqiymEuiN6v0ztOg6/o43qdwEv6Dj
 LMARyxNOiNbrZXOwQN5BIwv08QC+o4ctibEs3aAsOo7aaRIYfSd/xhBwTzBjMR+KChN0FBwBErq6Q
 s/dWjJaI5AvVx8zDys3IrBMWrJ9hm+Ey/f3IfIDUaozNDuzRoTaFM2Cm9YX67P1p4RqrZz0W0IxH9
 mz0XYM+N7TetqIbIvFI8NZDljlr1f/pa9EbUICZ6jk9+APvOzbqVhqHXGlPnQChLmZX1CVoQAzBes
 iFKM1vvg==;
Received: from 037008241088.gdansk.vectranet.pl ([37.8.241.88]
 helo=folkvangr.lan)
 by k11.unixstorm.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.96.2-12-g29d01ae2a) (envelope-from <rk@dragonic.eu>)
 id 1tpupV-0002oS-2O; Wed, 05 Mar 2025 20:54:57 +0100
Message-ID: <4e752e412143c8515b78146c5149126a7c5f306a.camel@dragonic.eu>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
From: Ryszard Knop <rk@dragonic.eu>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Knop, Ryszard"
 <ryszard.knop@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "daniel@fooishbar.org"
 <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>
Date: Wed, 05 Mar 2025 20:54:44 +0100
In-Reply-To: <871pvbxt40.fsf@intel.com>
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 
MIME-Version: 1.0
X-Authenticated-Id: dragoon
X-Mailman-Approved-At: Fri, 07 Mar 2025 13:57:54 +0000
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

On Wed, 2025-03-05 at 19:52 +0200, Jani Nikula wrote:
> On Wed, 05 Mar 2025, "Knop, Ryszard" <ryszard.knop@intel.com> wrote:
> > Hey everyone,
> >=20
> > Patchwork has been having lots of issues recently, dropping patches,
> > being unusably slow and generally starting to become more of a pain
> > than help. Over on the CI side we are also not super fond of it and we
> > don't have enough resources to maintain it properly. Lucas has
> > suggested using public-inbox archives directly, and with some recent
> > tools like b4/lei making common ML workflows feasible without
> > reinventing the wheel, we are considering setting up a bridge between
> > MLs and GitHub/GitLab to instead drive CI using more modern tools.
>=20
> I am supportive of this change.
>=20
> > We have not decided whether to drop Patchwork yet - this is a thread to
> > gather people's thoughts if this sounds like a good idea.
> >=20
> > The workflow would look like this:
> >=20
> > - A drm-tip mirror would be set up on GitHub/fd.o GitLab, automatically
> > pulling all changes from drm-tip upstream fd.o GitLab as a secondary
> > source.
> > - For each new series on lore.kernel.org a bridge would create a PR by
> > taking the latest mirrored drm-tip source, then applying a new series
> > with `b4 shazam`.
>=20
> There's a small catch here. Patchwork is currently more clever about
> handling series revisions when only some of the patches in a series are
> updated by way of replying to the individual patch. For example [1][2].
>=20
> I've been meaning to report it to upstream b4, but haven't gotten around
> to it yet. But I wouldn't consider this a blocker.
>=20
> [1] https://lore.kernel.org/r/20250305114820.3523077-2-imre.deak@intel.co=
m
> [2] https://patchwork.freedesktop.org/series/145782/
>=20
> > - That PR would then go through the normal CI flow, with CI checks
> > being reported on that PR, instead of sending all the reports to the
> > mailing list.
> > - On the mailing list, the bridge would send an ack that a series has
> > been seen and where are its results. You would no longer receive
> > multiple emails with KBs of logs in your email client, but everything
> > would be available from PR checks (as status checks and links to full
> > logs only, no trimming and "last 1000 lines only").
>=20
> \o/
>=20
> > - Mirrors, PRs and checks for public mailing lists would be public,
> > much like on the current public Patchwork instance.
> > - Logs behind links will be stored for a few months (3-6, depends on
> > traffic and how the situation evolves). GitHub Checks themselves (check
> > status, shortlogs and links) have a hard retention period of 400 days.
> > - Not sure about PR retention: we need a mechanism to correctly
> > identify merged series somehow, then to trim these from the list.
> > Expected retention time?
>=20
> With the velocity of the driver development, the test results go stale
> in a matter of a week or two. I normally wouldn't merge patches older
> than that without a fresh test round.
>=20
> IMO a long retention isn't necessary. At most a few months? The patches
> will still stay on the list forever.
>=20
> > - Not sure about reporting on "CI finished": Maybe we could send one
> > more email with a summary of checks when the entire workflow has been
> > finished?
>=20
> I've previously suggested one short mail as an acknowledgement with a
> URL to the results, and another mail when testing has ended one way or
> another. I think it would be a good starting point.
>=20
> > On GitHub vs fd.o GitLab: I'm thinking more of GitHub here:
> >=20
> > - GitHub generally performs better with large repositories.
> > - Extra fallback drm-tip source for fd.o downtime periods.
> > - Bonus points: We can store public Intel CI tags directly in that
> > mirror for moderate periods of time without abusing fd.o servers.
> >=20
> > Either option would work fine though, so opinions here would be
> > appreciated :)
>=20
> I think eventually we will want to consider accepting contributions via
> gitlab merge requests directly.
>=20
> It would also be interesting if maintainers/committers could merge the
> contributions via gitlab UI already when CI applied the patches from the
> mailing list and created the merge request.
>=20
> In the merge request case, they'd have to be against individual repos
> that feed into drm-tip, *not* merge requests against drm-tip
> directly. So for testing CI would have to recreate drm-tip the same way
> as 'dim push-branch' currently does.

This is doable, but perf-wise is not going to be great. We would have to
checkout all trees pulled into drm/tip for each build as listed in the
latest integration-manifest, replace target tree with the MR tree, then
provide results from that. We'll see how this works out in practice.
(It should be just `dim rebuild-tip` after pointing all the branches at
the required commits?)

This also means having a backup drm/tip source when fd.o is offline is
out; it's patched into too many places if dim gets used.

Ryszard

> I don't think these are hard requests at this time, and should not block
> the forward progress, but it's maybe something you want to consider so
> you're not inadvertently creating problems for your future self!
>=20
> > CI itself would not run in the native forge CI either way, but rather
> > on our Jenkins infra, as it does today. If there's ever a need to
> > switch forges, it would require reworking the bridging/reporting bits,
> > but not *all* the bits.
> >=20
> > We don't want to self-host another forge as we don't have enough people
> > and free time to do that properly. Codeberg, etc are not an option due
> > to the drm-tip repo size.
> >=20
> > And that's the initial idea. Thoughts? Do you like any of this, or does
> > it sound like a downgrade from what we have today?
>=20
> I think it sounds good overall. I don't like the flood of mails, and
> they don't have complete information anyway. I'm hopeful using
> github/gitlab would make the whole CI slightly more transparent too.
>=20
> I wouldn't mind sunsetting fdo patchwork at all.
>=20
>=20
> BR,
> Jani.
>=20

