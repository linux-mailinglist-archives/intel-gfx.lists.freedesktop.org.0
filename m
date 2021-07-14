Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEBF3C8404
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 13:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9AB6E221;
	Wed, 14 Jul 2021 11:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745AA6E220;
 Wed, 14 Jul 2021 11:43:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210308524"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="210308524"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 04:42:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="428083356"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 14 Jul 2021 04:42:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Jul 2021 14:42:53 +0300
Date: Wed, 14 Jul 2021 14:42:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YO7NvY3Mb2wgPFAi@intel.com>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <YO23Y3PUS22FaXDC@intel.com>
 <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
 <YO3RsxZHUe5imN3q@intel.com>
 <CAM0jSHOsqPUOWCJu_Ti3gW-fnpWF2CtUoo-qt-aMWExAwDDT5A@mail.gmail.com>
 <YO3fhvKCo8eXrmst@intel.com> <YO7HqVPtY2GpbD77@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YO7HqVPtY2GpbD77@phenom.ffwll.local>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: document caching related bits
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14, 2021 at 01:16:57PM +0200, Daniel Vetter wrote:
> On Tue, Jul 13, 2021 at 09:46:30PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Jul 13, 2021 at 07:24:23PM +0100, Matthew Auld wrote:
> > > On Tue, 13 Jul 2021 at 18:47, Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > On Tue, Jul 13, 2021 at 05:13:37PM +0100, Matthew Auld wrote:
> > > > > On Tue, 13 Jul 2021 at 16:55, Ville Syrj=E4l=E4
> > > > > <ville.syrjala@linux.intel.com> wrote:
> > > > > >
> > > > > > On Tue, Jul 13, 2021 at 11:45:50AM +0100, Matthew Auld wrote:
> > > > > > > +     /**
> > > > > > > +      * @cache_coherent:
> > > > > > > +      *
> > > > > > > +      * Track whether the pages are coherent with the GPU if=
 reading or
> > > > > > > +      * writing through the CPU cache.
> > > > > > > +      *
> > > > > > > +      * This largely depends on the @cache_level, for exampl=
e if the object
> > > > > > > +      * is marked as I915_CACHE_LLC, then GPU access is cohe=
rent for both
> > > > > > > +      * reads and writes through the CPU cache.
> > > > > > > +      *
> > > > > > > +      * Note that on platforms with shared-LLC support(HAS_L=
LC) reads through
> > > > > > > +      * the CPU cache are always coherent, regardless of the=
 @cache_level. On
> > > > > > > +      * snooping based platforms this is not the case, unles=
s the full
> > > > > > > +      * I915_CACHE_LLC or similar setting is used.
> > > > > > > +      *
> > > > > > > +      * As a result of this we need to track coherency separ=
ately for reads
> > > > > > > +      * and writes, in order to avoid superfluous flushing o=
n shared-LLC
> > > > > > > +      * platforms, for reads.
> > > > > > > +      *
> > > > > > > +      * I915_BO_CACHE_COHERENT_FOR_READ:
> > > > > > > +      *
> > > > > > > +      * When reading through the CPU cache, the GPU is still=
 coherent. Note
> > > > > > > +      * that no data has actually been modified here, so it =
might seem
> > > > > > > +      * strange that we care about this.
> > > > > > > +      *
> > > > > > > +      * As an example, if some object is mapped on the CPU w=
ith write-back
> > > > > > > +      * caching, and we read some page, then the cache likel=
y now contains
> > > > > > > +      * the data from that read. At this point the cache and=
 main memory
> > > > > > > +      * match up, so all good. But next the GPU needs to wri=
te some data to
> > > > > > > +      * that same page. Now if the @cache_level is I915_CACH=
E_NONE and the
> > > > > > > +      * the platform doesn't have the shared-LLC, then the G=
PU will
> > > > > > > +      * effectively skip invalidating the cache(or however t=
hat works
> > > > > > > +      * internally) when writing the new value.  This is rea=
lly bad since the
> > > > > > > +      * GPU has just written some new data to main memory, b=
ut the CPU cache
> > > > > > > +      * is still valid and now contains stale data. As a res=
ult the next time
> > > > > > > +      * we do a cached read with the CPU, we are rewarded wi=
th stale data.
> > > > > > > +      * Likewise if the cache is later flushed, we might be =
rewarded with
> > > > > > > +      * overwriting main memory with stale data.
> > > > > > > +      *
> > > > > > > +      * I915_BO_CACHE_COHERENT_FOR_WRITE:
> > > > > > > +      *
> > > > > > > +      * When writing through the CPU cache, the GPU is still=
 coherent. Note
> > > > > > > +      * that this also implies I915_BO_CACHE_COHERENT_FOR_RE=
AD.
> > > > > > > +      *
> > > > > > > +      * This is never set when I915_CACHE_NONE is used for @=
cache_level,
> > > > > > > +      * where instead we have to manually flush the caches a=
fter writing
> > > > > > > +      * through the CPU cache. For other cache levels this s=
hould be set and
> > > > > > > +      * the object is therefore considered coherent for both=
 reads and writes
> > > > > > > +      * through the CPU cache.
> > > > > >
> > > > > > I don't remember why we have this read vs. write split and this=
 new
> > > > > > documentation doesn't seem to really explain it either.
> > > > >
> > > > > Hmm, I attempted to explain that earlier:
> > > > >
> > > > > * Note that on platforms with shared-LLC support(HAS_LLC) reads t=
hrough
> > > > > * the CPU cache are always coherent, regardless of the @cache_lev=
el. On
> > > > > * snooping based platforms this is not the case, unless the full
> > > > > * I915_CACHE_LLC or similar setting is used.
> > > > > *
> > > > > * As a result of this we need to track coherency separately for r=
eads
> > > > > * and writes, in order to avoid superfluous flushing on shared-LLC
> > > > > * platforms, for reads.
> > > > >
> > > > > So AFAIK it's just because shared-LLC can be coherent for reads, =
while
> > > > > also not being coherent for writes(CACHE_NONE),
> > > >
> > > > CPU vs. GPU is fully coherent when it comes to LLC. Or at least I've
> > > > never heard of any mechanism that would make it only partially cohe=
rent.
> > > =

> > > What do you mean by "comes to LLC", are you talking about HAS_LLC() or
> > > I915_CACHE_LLC?
> > =

> > I'm talking about the actual cache.
> > =

> > > =

> > > If you set I915_CACHE_LLC, then yes it is fully coherent for both
> > > HAS_LLC() and HAS_SNOOP().
> > > =

> > > If you set I915_CACHE_NONE, then reads are still coherent on
> > > HAS_LLC(),
> > =

> > Reads and writes both. The only thing that's not coherent is the
> > display engine.
> =

> There's a lot of code which seems to disagree,

Can't even imagine why anyone would make a cache coherency protocol
that only handles reads but not writes...

> plus there's now this new
> MOCS thing.

That's just a full LLC bypass AFAICS. Can't omit invalidates if
you use that one or you'll just get stale data from the cache
on reads as well.

> I really hope we don't have all those cache coherency bits
> just because the code complexity is entertaining?

They were definitely added to fix a display issue, and before
that it was just a single flag, which wasn't doing what the display
needed. I think before the flag was added we used some other indicators
to check when we need to clflush, or maybe we did a some extra pointless
clflushes here and there and the broken single flag was supposed to
avoid those. Not quite sure.

I suppose these two flags should maybe have been named more like
"needs invalidate" and "needs writeback" to make it clear what =

one needs to do.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
