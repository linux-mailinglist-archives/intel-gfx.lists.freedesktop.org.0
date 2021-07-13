Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BA43C76A9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 20:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99556E10F;
	Tue, 13 Jul 2021 18:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8006E10F;
 Tue, 13 Jul 2021 18:46:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210041137"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="210041137"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 11:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="503322163"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 13 Jul 2021 11:46:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Jul 2021 21:46:30 +0300
Date: Tue, 13 Jul 2021 21:46:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YO3fhvKCo8eXrmst@intel.com>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <YO23Y3PUS22FaXDC@intel.com>
 <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
 <YO3RsxZHUe5imN3q@intel.com>
 <CAM0jSHOsqPUOWCJu_Ti3gW-fnpWF2CtUoo-qt-aMWExAwDDT5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHOsqPUOWCJu_Ti3gW-fnpWF2CtUoo-qt-aMWExAwDDT5A@mail.gmail.com>
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

On Tue, Jul 13, 2021 at 07:24:23PM +0100, Matthew Auld wrote:
> On Tue, 13 Jul 2021 at 18:47, Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Jul 13, 2021 at 05:13:37PM +0100, Matthew Auld wrote:
> > > On Tue, 13 Jul 2021 at 16:55, Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > On Tue, Jul 13, 2021 at 11:45:50AM +0100, Matthew Auld wrote:
> > > > > +     /**
> > > > > +      * @cache_coherent:
> > > > > +      *
> > > > > +      * Track whether the pages are coherent with the GPU if rea=
ding or
> > > > > +      * writing through the CPU cache.
> > > > > +      *
> > > > > +      * This largely depends on the @cache_level, for example if=
 the object
> > > > > +      * is marked as I915_CACHE_LLC, then GPU access is coherent=
 for both
> > > > > +      * reads and writes through the CPU cache.
> > > > > +      *
> > > > > +      * Note that on platforms with shared-LLC support(HAS_LLC) =
reads through
> > > > > +      * the CPU cache are always coherent, regardless of the @ca=
che_level. On
> > > > > +      * snooping based platforms this is not the case, unless th=
e full
> > > > > +      * I915_CACHE_LLC or similar setting is used.
> > > > > +      *
> > > > > +      * As a result of this we need to track coherency separatel=
y for reads
> > > > > +      * and writes, in order to avoid superfluous flushing on sh=
ared-LLC
> > > > > +      * platforms, for reads.
> > > > > +      *
> > > > > +      * I915_BO_CACHE_COHERENT_FOR_READ:
> > > > > +      *
> > > > > +      * When reading through the CPU cache, the GPU is still coh=
erent. Note
> > > > > +      * that no data has actually been modified here, so it migh=
t seem
> > > > > +      * strange that we care about this.
> > > > > +      *
> > > > > +      * As an example, if some object is mapped on the CPU with =
write-back
> > > > > +      * caching, and we read some page, then the cache likely no=
w contains
> > > > > +      * the data from that read. At this point the cache and mai=
n memory
> > > > > +      * match up, so all good. But next the GPU needs to write s=
ome data to
> > > > > +      * that same page. Now if the @cache_level is I915_CACHE_NO=
NE and the
> > > > > +      * the platform doesn't have the shared-LLC, then the GPU w=
ill
> > > > > +      * effectively skip invalidating the cache(or however that =
works
> > > > > +      * internally) when writing the new value.  This is really =
bad since the
> > > > > +      * GPU has just written some new data to main memory, but t=
he CPU cache
> > > > > +      * is still valid and now contains stale data. As a result =
the next time
> > > > > +      * we do a cached read with the CPU, we are rewarded with s=
tale data.
> > > > > +      * Likewise if the cache is later flushed, we might be rewa=
rded with
> > > > > +      * overwriting main memory with stale data.
> > > > > +      *
> > > > > +      * I915_BO_CACHE_COHERENT_FOR_WRITE:
> > > > > +      *
> > > > > +      * When writing through the CPU cache, the GPU is still coh=
erent. Note
> > > > > +      * that this also implies I915_BO_CACHE_COHERENT_FOR_READ.
> > > > > +      *
> > > > > +      * This is never set when I915_CACHE_NONE is used for @cach=
e_level,
> > > > > +      * where instead we have to manually flush the caches after=
 writing
> > > > > +      * through the CPU cache. For other cache levels this shoul=
d be set and
> > > > > +      * the object is therefore considered coherent for both rea=
ds and writes
> > > > > +      * through the CPU cache.
> > > >
> > > > I don't remember why we have this read vs. write split and this new
> > > > documentation doesn't seem to really explain it either.
> > >
> > > Hmm, I attempted to explain that earlier:
> > >
> > > * Note that on platforms with shared-LLC support(HAS_LLC) reads throu=
gh
> > > * the CPU cache are always coherent, regardless of the @cache_level. =
On
> > > * snooping based platforms this is not the case, unless the full
> > > * I915_CACHE_LLC or similar setting is used.
> > > *
> > > * As a result of this we need to track coherency separately for reads
> > > * and writes, in order to avoid superfluous flushing on shared-LLC
> > > * platforms, for reads.
> > >
> > > So AFAIK it's just because shared-LLC can be coherent for reads, while
> > > also not being coherent for writes(CACHE_NONE),
> >
> > CPU vs. GPU is fully coherent when it comes to LLC. Or at least I've
> > never heard of any mechanism that would make it only partially coherent.
> =

> What do you mean by "comes to LLC", are you talking about HAS_LLC() or
> I915_CACHE_LLC?

I'm talking about the actual cache.

> =

> If you set I915_CACHE_LLC, then yes it is fully coherent for both
> HAS_LLC() and HAS_SNOOP().
> =

> If you set I915_CACHE_NONE, then reads are still coherent on
> HAS_LLC(),

Reads and writes both. The only thing that's not coherent is the
display engine.

> for HAS_SNOOP() they are not. Or at least that is the
> existing behaviour in the driver AFAIK.
> =

> >
> > --
> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
