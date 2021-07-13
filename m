Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D53C75E7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 19:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E226E105;
	Tue, 13 Jul 2021 17:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CAB6E105;
 Tue, 13 Jul 2021 17:47:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232019174"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="232019174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 10:47:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="493199519"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 13 Jul 2021 10:47:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Jul 2021 20:47:31 +0300
Date: Tue, 13 Jul 2021 20:47:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YO3RsxZHUe5imN3q@intel.com>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <YO23Y3PUS22FaXDC@intel.com>
 <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
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

On Tue, Jul 13, 2021 at 05:13:37PM +0100, Matthew Auld wrote:
> On Tue, 13 Jul 2021 at 16:55, Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Jul 13, 2021 at 11:45:50AM +0100, Matthew Auld wrote:
> > > +     /**
> > > +      * @cache_coherent:
> > > +      *
> > > +      * Track whether the pages are coherent with the GPU if reading=
 or
> > > +      * writing through the CPU cache.
> > > +      *
> > > +      * This largely depends on the @cache_level, for example if the=
 object
> > > +      * is marked as I915_CACHE_LLC, then GPU access is coherent for=
 both
> > > +      * reads and writes through the CPU cache.
> > > +      *
> > > +      * Note that on platforms with shared-LLC support(HAS_LLC) read=
s through
> > > +      * the CPU cache are always coherent, regardless of the @cache_=
level. On
> > > +      * snooping based platforms this is not the case, unless the fu=
ll
> > > +      * I915_CACHE_LLC or similar setting is used.
> > > +      *
> > > +      * As a result of this we need to track coherency separately fo=
r reads
> > > +      * and writes, in order to avoid superfluous flushing on shared=
-LLC
> > > +      * platforms, for reads.
> > > +      *
> > > +      * I915_BO_CACHE_COHERENT_FOR_READ:
> > > +      *
> > > +      * When reading through the CPU cache, the GPU is still coheren=
t. Note
> > > +      * that no data has actually been modified here, so it might se=
em
> > > +      * strange that we care about this.
> > > +      *
> > > +      * As an example, if some object is mapped on the CPU with writ=
e-back
> > > +      * caching, and we read some page, then the cache likely now co=
ntains
> > > +      * the data from that read. At this point the cache and main me=
mory
> > > +      * match up, so all good. But next the GPU needs to write some =
data to
> > > +      * that same page. Now if the @cache_level is I915_CACHE_NONE a=
nd the
> > > +      * the platform doesn't have the shared-LLC, then the GPU will
> > > +      * effectively skip invalidating the cache(or however that works
> > > +      * internally) when writing the new value.  This is really bad =
since the
> > > +      * GPU has just written some new data to main memory, but the C=
PU cache
> > > +      * is still valid and now contains stale data. As a result the =
next time
> > > +      * we do a cached read with the CPU, we are rewarded with stale=
 data.
> > > +      * Likewise if the cache is later flushed, we might be rewarded=
 with
> > > +      * overwriting main memory with stale data.
> > > +      *
> > > +      * I915_BO_CACHE_COHERENT_FOR_WRITE:
> > > +      *
> > > +      * When writing through the CPU cache, the GPU is still coheren=
t. Note
> > > +      * that this also implies I915_BO_CACHE_COHERENT_FOR_READ.
> > > +      *
> > > +      * This is never set when I915_CACHE_NONE is used for @cache_le=
vel,
> > > +      * where instead we have to manually flush the caches after wri=
ting
> > > +      * through the CPU cache. For other cache levels this should be=
 set and
> > > +      * the object is therefore considered coherent for both reads a=
nd writes
> > > +      * through the CPU cache.
> >
> > I don't remember why we have this read vs. write split and this new
> > documentation doesn't seem to really explain it either.
> =

> Hmm, I attempted to explain that earlier:
> =

> * Note that on platforms with shared-LLC support(HAS_LLC) reads through
> * the CPU cache are always coherent, regardless of the @cache_level. On
> * snooping based platforms this is not the case, unless the full
> * I915_CACHE_LLC or similar setting is used.
> *
> * As a result of this we need to track coherency separately for reads
> * and writes, in order to avoid superfluous flushing on shared-LLC
> * platforms, for reads.
> =

> So AFAIK it's just because shared-LLC can be coherent for reads, while
> also not being coherent for writes(CACHE_NONE),

CPU vs. GPU is fully coherent when it comes to LLC. Or at least I've
never heard of any mechanism that would make it only partially coherent.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
