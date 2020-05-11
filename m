Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0EA1CD5CF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 12:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4D86E42A;
	Mon, 11 May 2020 10:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63426E429;
 Mon, 11 May 2020 10:03:14 +0000 (UTC)
IronPort-SDR: HLxiFiFTSnOP/1LNTrv4GHE7c5hz1g4ewvThqdT+La7hzJYKM+5mVOa3mIk/lKgqMCXrlW6zeg
 bXNr01z7F85g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 03:03:14 -0700
IronPort-SDR: mLG4qhYpDXGc7JqvduoZK98CFk/WdJAL134dEKlFRAzDQQdgq+7k8c7blLaj4jFpqxXcDqQgCf
 lPy/JB1wN6kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="463330686"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga006.fm.intel.com with ESMTP; 11 May 2020 03:03:13 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jY5HE-0001Zv-5r; Mon, 11 May 2020 13:03:12 +0300
Date: Mon, 11 May 2020 13:03:12 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200511100312.GF9497@platvala-desk.ger.corp.intel.com>
References: <20200511082141.65494-1-chris@chris-wilson.co.uk>
 <20200511093924.65748-1-chris@chris-wilson.co.uk>
 <20200511094910.GE9497@platvala-desk.ger.corp.intel.com>
 <158919083801.1729.7931773800344388565@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158919083801.1729.7931773800344388565@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ringfill: Do a
 basic pass over all engines simultaneously
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 11, 2020 at 10:53:58AM +0100, Chris Wilson wrote:
> Quoting Petri Latvala (2020-05-11 10:49:10)
> > On Mon, May 11, 2020 at 10:39:24AM +0100, Chris Wilson wrote:
> > > Change the basic pre-mergetest to do a single pass over all engines
> > > simultaneously. This should take no longer than checking a single
> > > engine, while providing just the right amount of stress regardless of
> > > machine size.
> > > 
> > > v2: Move around the quiescence and requires to avoid calling them from
> > > the children.
> > > 
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Petri Latvala <petri.latvala@intel.com>
> > > ---
> > >  tests/i915/gem_ringfill.c             | 31 ++++++++++++++++++++-------
> > >  tests/intel-ci/fast-feedback.testlist |  2 +-
> > >  2 files changed, 24 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
> > > index a2157bd6f..05b997ed4 100644
> > > --- a/tests/i915/gem_ringfill.c
> > > +++ b/tests/i915/gem_ringfill.c
> > > @@ -178,13 +178,11 @@ static void run_test(int fd, unsigned ring, unsigned flags, unsigned timeout)
> > >       struct drm_i915_gem_execbuffer2 execbuf;
> > >       igt_hang_t hang;
> > >  
> > > -     gem_require_ring(fd, ring);
> > > -     igt_require(gem_can_store_dword(fd, ring));
> > > -
> > > -     if (flags & (SUSPEND | HIBERNATE))
> > > +     if (flags & (SUSPEND | HIBERNATE)) {
> > >               run_test(fd, ring, 0, 0);
> > > +             gem_quiescent_gpu(fd);
> > > +     }
> > >  
> > > -     gem_quiescent_gpu(fd);
> > >       igt_require(setup_execbuf(fd, &execbuf, obj, reloc, ring) == 0);
> > 
> > What about this one?
> 
> If that fails, I'll accept the punishment of having to debug a
> mysterious segfault. That's a require for v3.10.

It will just assert() out, saying you can't skip in a fork. See the v1
BAT results.

If you add a comment stating that it shouldn't usually fire and having
it in a function sometimes called in a child process is intentional,
Reviewed-by: Petri Latvala <petri.latvala@intel.com>


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
