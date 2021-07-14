Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0183C84E5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 14:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161DB6E283;
	Wed, 14 Jul 2021 12:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ECA8991D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:57:53 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 l17-20020a05600c1d11b029021f84fcaf75so3850046wms.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 05:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=yFIorUGoY88xfyEidDOEA+W3GWIW9oRQFNTfTg9rDJE=;
 b=HSoWNdFvahBOfPiNltph4sMPW9ZTioX8+uUtZD3OJvTsE+zr1cXXwcstUArYXhXft/
 T0P248iYVb/YWvZp6S/aSqMEwQrtPQEbB6bsBWqMRytNTzoIleuT2TRze02WLk04fLYD
 kuIyAxqcnXKUWdxPPeLeb+3Lvvc7LP1h/1p+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yFIorUGoY88xfyEidDOEA+W3GWIW9oRQFNTfTg9rDJE=;
 b=LK2iHIc9fIZFmq4h8zQq05tU4V7gnisx4L3BGWTOAysn5liq2bPjnxEqToZEzeLn4F
 wah4+4W8hl90foLEu/CNciz/giZRjSSDOp34SAyochbAqGpyQHFH/yiXvSCsmb4jRukC
 lne1kA9BntaorwcyMpyaq8P36zB/PcQp9CjFC+JEJ9jw/RW5LjwR4zbCHsj/hJB4xS4A
 zLKd3WLFqB3R+CQwe3DbmLDmagwQVI2qYVy70HamzyedtczajkMQYoF1+rk0VCaF5XAR
 91z25p50hyx6fmWYgnJxJIK9XADC5xN7Df30Jlh8ZQYb9z6YgFlwzAUq0eocxgXFZ1J1
 LvKQ==
X-Gm-Message-State: AOAM530ZbFyOnXwcdWztFaqy0qu0icovhXMaZUioQ8cE0a7q9JU5Lsmw
 gXiJC8uxfXoDPeuvvpn6uWUMkdsgfBaAaQ==
X-Google-Smtp-Source: ABdhPJwOhuFPku5HRbhI6JaPXR7qSmyO7t6tGAHErVsrKIvC6oRAgyZfpxOXRxCAPJJCW7LdWyLkUg==
X-Received: by 2002:a1c:62c4:: with SMTP id w187mr11023099wmb.27.1626267471696; 
 Wed, 14 Jul 2021 05:57:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l39sm3210923wms.1.2021.07.14.05.57.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 05:57:51 -0700 (PDT)
Date: Wed, 14 Jul 2021 14:57:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YO7fTWsbbhPjaLkn@phenom.ffwll.local>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <YO23Y3PUS22FaXDC@intel.com>
 <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
 <YO3RsxZHUe5imN3q@intel.com>
 <CAM0jSHOsqPUOWCJu_Ti3gW-fnpWF2CtUoo-qt-aMWExAwDDT5A@mail.gmail.com>
 <YO3fhvKCo8eXrmst@intel.com> <YO7HqVPtY2GpbD77@phenom.ffwll.local>
 <YO7NvY3Mb2wgPFAi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YO7NvY3Mb2wgPFAi@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
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
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14, 2021 at 02:42:53PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jul 14, 2021 at 01:16:57PM +0200, Daniel Vetter wrote:
> > On Tue, Jul 13, 2021 at 09:46:30PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Jul 13, 2021 at 07:24:23PM +0100, Matthew Auld wrote:
> > > > On Tue, 13 Jul 2021 at 18:47, Ville Syrj=E4l=E4
> > > > <ville.syrjala@linux.intel.com> wrote:
> > > > >
> > > > > On Tue, Jul 13, 2021 at 05:13:37PM +0100, Matthew Auld wrote:
> > > > > > On Tue, 13 Jul 2021 at 16:55, Ville Syrj=E4l=E4
> > > > > > <ville.syrjala@linux.intel.com> wrote:
> > > > > > >
> > > > > > > On Tue, Jul 13, 2021 at 11:45:50AM +0100, Matthew Auld wrote:
> > > > > > > > +     /**
> > > > > > > > +      * @cache_coherent:
> > > > > > > > +      *
> > > > > > > > +      * Track whether the pages are coherent with the GPU =
if reading or
> > > > > > > > +      * writing through the CPU cache.
> > > > > > > > +      *
> > > > > > > > +      * This largely depends on the @cache_level, for exam=
ple if the object
> > > > > > > > +      * is marked as I915_CACHE_LLC, then GPU access is co=
herent for both
> > > > > > > > +      * reads and writes through the CPU cache.
> > > > > > > > +      *
> > > > > > > > +      * Note that on platforms with shared-LLC support(HAS=
_LLC) reads through
> > > > > > > > +      * the CPU cache are always coherent, regardless of t=
he @cache_level. On
> > > > > > > > +      * snooping based platforms this is not the case, unl=
ess the full
> > > > > > > > +      * I915_CACHE_LLC or similar setting is used.
> > > > > > > > +      *
> > > > > > > > +      * As a result of this we need to track coherency sep=
arately for reads
> > > > > > > > +      * and writes, in order to avoid superfluous flushing=
 on shared-LLC
> > > > > > > > +      * platforms, for reads.
> > > > > > > > +      *
> > > > > > > > +      * I915_BO_CACHE_COHERENT_FOR_READ:
> > > > > > > > +      *
> > > > > > > > +      * When reading through the CPU cache, the GPU is sti=
ll coherent. Note
> > > > > > > > +      * that no data has actually been modified here, so i=
t might seem
> > > > > > > > +      * strange that we care about this.
> > > > > > > > +      *
> > > > > > > > +      * As an example, if some object is mapped on the CPU=
 with write-back
> > > > > > > > +      * caching, and we read some page, then the cache lik=
ely now contains
> > > > > > > > +      * the data from that read. At this point the cache a=
nd main memory
> > > > > > > > +      * match up, so all good. But next the GPU needs to w=
rite some data to
> > > > > > > > +      * that same page. Now if the @cache_level is I915_CA=
CHE_NONE and the
> > > > > > > > +      * the platform doesn't have the shared-LLC, then the=
 GPU will
> > > > > > > > +      * effectively skip invalidating the cache(or however=
 that works
> > > > > > > > +      * internally) when writing the new value.  This is r=
eally bad since the
> > > > > > > > +      * GPU has just written some new data to main memory,=
 but the CPU cache
> > > > > > > > +      * is still valid and now contains stale data. As a r=
esult the next time
> > > > > > > > +      * we do a cached read with the CPU, we are rewarded =
with stale data.
> > > > > > > > +      * Likewise if the cache is later flushed, we might b=
e rewarded with
> > > > > > > > +      * overwriting main memory with stale data.
> > > > > > > > +      *
> > > > > > > > +      * I915_BO_CACHE_COHERENT_FOR_WRITE:
> > > > > > > > +      *
> > > > > > > > +      * When writing through the CPU cache, the GPU is sti=
ll coherent. Note
> > > > > > > > +      * that this also implies I915_BO_CACHE_COHERENT_FOR_=
READ.
> > > > > > > > +      *
> > > > > > > > +      * This is never set when I915_CACHE_NONE is used for=
 @cache_level,
> > > > > > > > +      * where instead we have to manually flush the caches=
 after writing
> > > > > > > > +      * through the CPU cache. For other cache levels this=
 should be set and
> > > > > > > > +      * the object is therefore considered coherent for bo=
th reads and writes
> > > > > > > > +      * through the CPU cache.
> > > > > > >
> > > > > > > I don't remember why we have this read vs. write split and th=
is new
> > > > > > > documentation doesn't seem to really explain it either.
> > > > > >
> > > > > > Hmm, I attempted to explain that earlier:
> > > > > >
> > > > > > * Note that on platforms with shared-LLC support(HAS_LLC) reads=
 through
> > > > > > * the CPU cache are always coherent, regardless of the @cache_l=
evel. On
> > > > > > * snooping based platforms this is not the case, unless the full
> > > > > > * I915_CACHE_LLC or similar setting is used.
> > > > > > *
> > > > > > * As a result of this we need to track coherency separately for=
 reads
> > > > > > * and writes, in order to avoid superfluous flushing on shared-=
LLC
> > > > > > * platforms, for reads.
> > > > > >
> > > > > > So AFAIK it's just because shared-LLC can be coherent for reads=
, while
> > > > > > also not being coherent for writes(CACHE_NONE),
> > > > >
> > > > > CPU vs. GPU is fully coherent when it comes to LLC. Or at least I=
've
> > > > > never heard of any mechanism that would make it only partially co=
herent.
> > > > =

> > > > What do you mean by "comes to LLC", are you talking about HAS_LLC()=
 or
> > > > I915_CACHE_LLC?
> > > =

> > > I'm talking about the actual cache.
> > > =

> > > > =

> > > > If you set I915_CACHE_LLC, then yes it is fully coherent for both
> > > > HAS_LLC() and HAS_SNOOP().
> > > > =

> > > > If you set I915_CACHE_NONE, then reads are still coherent on
> > > > HAS_LLC(),
> > > =

> > > Reads and writes both. The only thing that's not coherent is the
> > > display engine.
> > =

> > There's a lot of code which seems to disagree,
> =

> Can't even imagine why anyone would make a cache coherency protocol
> that only handles reads but not writes...
> =

> > plus there's now this new
> > MOCS thing.
> =

> That's just a full LLC bypass AFAICS. Can't omit invalidates if
> you use that one or you'll just get stale data from the cache
> on reads as well.
> =

> > I really hope we don't have all those cache coherency bits
> > just because the code complexity is entertaining?
> =

> They were definitely added to fix a display issue, and before
> that it was just a single flag, which wasn't doing what the display
> needed. I think before the flag was added we used some other indicators
> to check when we need to clflush, or maybe we did a some extra pointless
> clflushes here and there and the broken single flag was supposed to
> avoid those. Not quite sure.

Hm I thought cache_dirty was added for that display case? But yeah this
entire model is maybe not super well-defined in terms of all the use-cases
and what exactly it means ...

I'm also not clear why this is on the object, and not some kind of
function which computes it from the platform + cache_level.

> I suppose these two flags should maybe have been named more like
> "needs invalidate" and "needs writeback" to make it clear what =

> one needs to do.

tbh I have no idea, this all started to get added after I disappeared for
a few years into display.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
