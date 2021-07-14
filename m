Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEBA3C8396
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 13:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CB06E216;
	Wed, 14 Jul 2021 11:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FC36E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 11:17:01 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d12so2693247wre.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 04:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=o4jVt0FM0uAOA8tI8bouOUQFzl1zaNiC0NrKdXM6dVw=;
 b=MDyz5/5F+mKIzn7pjRzpVCsBk/ysg1vO8murrzxivOdY3gat8oShcdeYtgzWd6gZSp
 942fNhxcMgyVrlpO5rp2i0yRIYvMmfg6Ffq6Ac1iIelA/u3DpJKPakIihpFTNzx6MGRA
 i+Py3WPwntttAaD4Kh9kUiglTfCSS+tnbwcvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=o4jVt0FM0uAOA8tI8bouOUQFzl1zaNiC0NrKdXM6dVw=;
 b=fN+a9Rb+nDdKWVCo+mEQRTmBtlj+ZUDlBkPKrAmF8hi4QV7edOCusTSy5QVAqwmtQI
 jQoWBv1K7/6x+Vzfa4wL/Ht8ezWo6dmcWYC1XANJJk5kiGCYC6NheXo8e0TrafV5GDae
 cAuhfGrUT5CpBOwRFN+eTFTPGuVTj4QGXznH2bB/XCw1/M2hs3I7WQw9T96eKnno9rez
 GVFNznetHZdPS7vBbvtJNptI37peapyqDlJJacCEdoFcockIu4UhMzHgvzwWowHtynBz
 3PE/MBZ3EfWK0qgSGe6ZiI5xfVVDOUaxn1yNrr+9Wl1OMdEoVkEzpGsA6kcVQRj0ZSfM
 BK0w==
X-Gm-Message-State: AOAM530fYMXVfn/nkmJqII4uA4Yj4qjGnAUs/zZtAeg+sUx20Ty2IkCi
 974e05qK6dxKe0EOo18s12CGFiDcaeU2/A==
X-Google-Smtp-Source: ABdhPJwkf5F4x9FZ486vbcPY4mjJm2lVy4arVYixqB3Jatd0VqiZjlofaKudrfy37tYy9LZ2Q47olA==
X-Received: by 2002:a5d:68c2:: with SMTP id p2mr11750294wrw.27.1626261420349; 
 Wed, 14 Jul 2021 04:17:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f15sm4728066wmj.15.2021.07.14.04.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 04:16:59 -0700 (PDT)
Date: Wed, 14 Jul 2021 13:16:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YO7HqVPtY2GpbD77@phenom.ffwll.local>
References: <20210713104554.2381406-1-matthew.auld@intel.com>
 <YO23Y3PUS22FaXDC@intel.com>
 <CAM0jSHOx=WVbzfQzn=kL-5qaG4B3dxPLOimkvUdv6HFJymZeZw@mail.gmail.com>
 <YO3RsxZHUe5imN3q@intel.com>
 <CAM0jSHOsqPUOWCJu_Ti3gW-fnpWF2CtUoo-qt-aMWExAwDDT5A@mail.gmail.com>
 <YO3fhvKCo8eXrmst@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YO3fhvKCo8eXrmst@intel.com>
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
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 09:46:30PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jul 13, 2021 at 07:24:23PM +0100, Matthew Auld wrote:
> > On Tue, 13 Jul 2021 at 18:47, Ville Syrj=E4l=E4
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Tue, Jul 13, 2021 at 05:13:37PM +0100, Matthew Auld wrote:
> > > > On Tue, 13 Jul 2021 at 16:55, Ville Syrj=E4l=E4
> > > > <ville.syrjala@linux.intel.com> wrote:
> > > > >
> > > > > On Tue, Jul 13, 2021 at 11:45:50AM +0100, Matthew Auld wrote:
> > > > > > +     /**
> > > > > > +      * @cache_coherent:
> > > > > > +      *
> > > > > > +      * Track whether the pages are coherent with the GPU if r=
eading or
> > > > > > +      * writing through the CPU cache.
> > > > > > +      *
> > > > > > +      * This largely depends on the @cache_level, for example =
if the object
> > > > > > +      * is marked as I915_CACHE_LLC, then GPU access is cohere=
nt for both
> > > > > > +      * reads and writes through the CPU cache.
> > > > > > +      *
> > > > > > +      * Note that on platforms with shared-LLC support(HAS_LLC=
) reads through
> > > > > > +      * the CPU cache are always coherent, regardless of the @=
cache_level. On
> > > > > > +      * snooping based platforms this is not the case, unless =
the full
> > > > > > +      * I915_CACHE_LLC or similar setting is used.
> > > > > > +      *
> > > > > > +      * As a result of this we need to track coherency separat=
ely for reads
> > > > > > +      * and writes, in order to avoid superfluous flushing on =
shared-LLC
> > > > > > +      * platforms, for reads.
> > > > > > +      *
> > > > > > +      * I915_BO_CACHE_COHERENT_FOR_READ:
> > > > > > +      *
> > > > > > +      * When reading through the CPU cache, the GPU is still c=
oherent. Note
> > > > > > +      * that no data has actually been modified here, so it mi=
ght seem
> > > > > > +      * strange that we care about this.
> > > > > > +      *
> > > > > > +      * As an example, if some object is mapped on the CPU wit=
h write-back
> > > > > > +      * caching, and we read some page, then the cache likely =
now contains
> > > > > > +      * the data from that read. At this point the cache and m=
ain memory
> > > > > > +      * match up, so all good. But next the GPU needs to write=
 some data to
> > > > > > +      * that same page. Now if the @cache_level is I915_CACHE_=
NONE and the
> > > > > > +      * the platform doesn't have the shared-LLC, then the GPU=
 will
> > > > > > +      * effectively skip invalidating the cache(or however tha=
t works
> > > > > > +      * internally) when writing the new value.  This is reall=
y bad since the
> > > > > > +      * GPU has just written some new data to main memory, but=
 the CPU cache
> > > > > > +      * is still valid and now contains stale data. As a resul=
t the next time
> > > > > > +      * we do a cached read with the CPU, we are rewarded with=
 stale data.
> > > > > > +      * Likewise if the cache is later flushed, we might be re=
warded with
> > > > > > +      * overwriting main memory with stale data.
> > > > > > +      *
> > > > > > +      * I915_BO_CACHE_COHERENT_FOR_WRITE:
> > > > > > +      *
> > > > > > +      * When writing through the CPU cache, the GPU is still c=
oherent. Note
> > > > > > +      * that this also implies I915_BO_CACHE_COHERENT_FOR_READ.
> > > > > > +      *
> > > > > > +      * This is never set when I915_CACHE_NONE is used for @ca=
che_level,
> > > > > > +      * where instead we have to manually flush the caches aft=
er writing
> > > > > > +      * through the CPU cache. For other cache levels this sho=
uld be set and
> > > > > > +      * the object is therefore considered coherent for both r=
eads and writes
> > > > > > +      * through the CPU cache.
> > > > >
> > > > > I don't remember why we have this read vs. write split and this n=
ew
> > > > > documentation doesn't seem to really explain it either.
> > > >
> > > > Hmm, I attempted to explain that earlier:
> > > >
> > > > * Note that on platforms with shared-LLC support(HAS_LLC) reads thr=
ough
> > > > * the CPU cache are always coherent, regardless of the @cache_level=
. On
> > > > * snooping based platforms this is not the case, unless the full
> > > > * I915_CACHE_LLC or similar setting is used.
> > > > *
> > > > * As a result of this we need to track coherency separately for rea=
ds
> > > > * and writes, in order to avoid superfluous flushing on shared-LLC
> > > > * platforms, for reads.
> > > >
> > > > So AFAIK it's just because shared-LLC can be coherent for reads, wh=
ile
> > > > also not being coherent for writes(CACHE_NONE),
> > >
> > > CPU vs. GPU is fully coherent when it comes to LLC. Or at least I've
> > > never heard of any mechanism that would make it only partially cohere=
nt.
> > =

> > What do you mean by "comes to LLC", are you talking about HAS_LLC() or
> > I915_CACHE_LLC?
> =

> I'm talking about the actual cache.
> =

> > =

> > If you set I915_CACHE_LLC, then yes it is fully coherent for both
> > HAS_LLC() and HAS_SNOOP().
> > =

> > If you set I915_CACHE_NONE, then reads are still coherent on
> > HAS_LLC(),
> =

> Reads and writes both. The only thing that's not coherent is the
> display engine.

There's a lot of code which seems to disagree, plus there's now this new
MOCS thing. I really hope we don't have all those cache coherency bits
just because the code complexity is entertaining?

Are there some igts to verify this all? Or selftests probably more
appropriate.
-Daniel


> > for HAS_SNOOP() they are not. Or at least that is the
> > existing behaviour in the driver AFAIK.
> > =

> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
