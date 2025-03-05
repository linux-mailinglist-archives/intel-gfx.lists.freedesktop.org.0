Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C3A506F9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 18:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CF210E820;
	Wed,  5 Mar 2025 17:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wosm/IDx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C4F10E81F;
 Wed,  5 Mar 2025 17:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741197159; x=1772733159;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=21dILXGDMN7/qd8CLFbJIVw85H6YniheTbUs+HnyPv8=;
 b=Wosm/IDxPWBW56u82fqz++mPCu70OcQ4gPBanccCxXGhVfskbpjII1rV
 5tWs+NWXVD/BEOecr/5ukH/2FV3DnyfYp5xVL9ygMCumGRwoodVrbuHup
 QQEWW9vYEr3GC1XIqy9xjfu+bLGOyLt2cn7LHrcqV2OyGbPvNvxthyZyo
 Qm8D5vOEcgi5JksY/jb078hyyABGCRPstnWoq5tOcmllIe+s+xwtlqpsk
 F9p9JyIiJzzS+optw6s6O+zOtvBcef5Ku4PuUDeu+77YbEy/bjUmDQfwg
 xK7qsmg7iL2jfFBoR+mlE+6eqYj1YV2C0cClWkS7TBo2PwMmPJ5oPurS5 Q==;
X-CSE-ConnectionGUID: L4pd87PlSRi9clopTD5e7A==
X-CSE-MsgGUID: TypDHG+3QzK5xjbOXMJ6uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53574397"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="53574397"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:52:37 -0800
X-CSE-ConnectionGUID: mIBLfT9PR72qgcl1TV73vQ==
X-CSE-MsgGUID: ZmNm19z4Q/+HExCrNhqk6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119686743"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:52:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>,
 Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Date: Wed, 05 Mar 2025 19:52:31 +0200
Message-ID: <871pvbxt40.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 05 Mar 2025, "Knop, Ryszard" <ryszard.knop@intel.com> wrote:
> Hey everyone,
>
> Patchwork has been having lots of issues recently, dropping patches,
> being unusably slow and generally starting to become more of a pain
> than help. Over on the CI side we are also not super fond of it and we
> don't have enough resources to maintain it properly. Lucas has
> suggested using public-inbox archives directly, and with some recent
> tools like b4/lei making common ML workflows feasible without
> reinventing the wheel, we are considering setting up a bridge between
> MLs and GitHub/GitLab to instead drive CI using more modern tools.

I am supportive of this change.

> We have not decided whether to drop Patchwork yet - this is a thread to
> gather people's thoughts if this sounds like a good idea.
>
> The workflow would look like this:
>
> - A drm-tip mirror would be set up on GitHub/fd.o GitLab, automatically
> pulling all changes from drm-tip upstream fd.o GitLab as a secondary
> source.
> - For each new series on lore.kernel.org a bridge would create a PR by
> taking the latest mirrored drm-tip source, then applying a new series
> with `b4 shazam`.

There's a small catch here. Patchwork is currently more clever about
handling series revisions when only some of the patches in a series are
updated by way of replying to the individual patch. For example [1][2].

I've been meaning to report it to upstream b4, but haven't gotten around
to it yet. But I wouldn't consider this a blocker.

[1] https://lore.kernel.org/r/20250305114820.3523077-2-imre.deak@intel.com
[2] https://patchwork.freedesktop.org/series/145782/

> - That PR would then go through the normal CI flow, with CI checks
> being reported on that PR, instead of sending all the reports to the
> mailing list.
> - On the mailing list, the bridge would send an ack that a series has
> been seen and where are its results. You would no longer receive
> multiple emails with KBs of logs in your email client, but everything
> would be available from PR checks (as status checks and links to full
> logs only, no trimming and "last 1000 lines only").

\o/

> - Mirrors, PRs and checks for public mailing lists would be public,
> much like on the current public Patchwork instance.
> - Logs behind links will be stored for a few months (3-6, depends on
> traffic and how the situation evolves). GitHub Checks themselves (check
> status, shortlogs and links) have a hard retention period of 400 days.
> - Not sure about PR retention: we need a mechanism to correctly
> identify merged series somehow, then to trim these from the list.
> Expected retention time?

With the velocity of the driver development, the test results go stale
in a matter of a week or two. I normally wouldn't merge patches older
than that without a fresh test round.

IMO a long retention isn't necessary. At most a few months? The patches
will still stay on the list forever.

> - Not sure about reporting on "CI finished": Maybe we could send one
> more email with a summary of checks when the entire workflow has been
> finished?

I've previously suggested one short mail as an acknowledgement with a
URL to the results, and another mail when testing has ended one way or
another. I think it would be a good starting point.

> On GitHub vs fd.o GitLab: I'm thinking more of GitHub here:
>
> - GitHub generally performs better with large repositories.
> - Extra fallback drm-tip source for fd.o downtime periods.
> - Bonus points: We can store public Intel CI tags directly in that
> mirror for moderate periods of time without abusing fd.o servers.
>
> Either option would work fine though, so opinions here would be
> appreciated :)

I think eventually we will want to consider accepting contributions via
gitlab merge requests directly.

It would also be interesting if maintainers/committers could merge the
contributions via gitlab UI already when CI applied the patches from the
mailing list and created the merge request.

In the merge request case, they'd have to be against individual repos
that feed into drm-tip, *not* merge requests against drm-tip
directly. So for testing CI would have to recreate drm-tip the same way
as 'dim push-branch' currently does.

I don't think these are hard requests at this time, and should not block
the forward progress, but it's maybe something you want to consider so
you're not inadvertently creating problems for your future self!

> CI itself would not run in the native forge CI either way, but rather
> on our Jenkins infra, as it does today. If there's ever a need to
> switch forges, it would require reworking the bridging/reporting bits,
> but not *all* the bits.
>
> We don't want to self-host another forge as we don't have enough people
> and free time to do that properly. Codeberg, etc are not an option due
> to the drm-tip repo size.
>
> And that's the initial idea. Thoughts? Do you like any of this, or does
> it sound like a downgrade from what we have today?

I think it sounds good overall. I don't like the flood of mails, and
they don't have complete information anyway. I'm hopeful using
github/gitlab would make the whole CI slightly more transparent too.

I wouldn't mind sunsetting fdo patchwork at all.


BR,
Jani.

-- 
Jani Nikula, Intel
