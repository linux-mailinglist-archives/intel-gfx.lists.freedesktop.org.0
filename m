Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFAD3CBCF6
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46186E9DA;
	Fri, 16 Jul 2021 19:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CEB6E9D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:49:18 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id c16so9919286ybl.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 12:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzjGgFUtHPHk4mtkEkY+oMHVSqXsZpl49iGD+maxsDU=;
 b=F1iWJApapl/w6+uWWLzu7W8VvnkKnv4duroWsin9t/al1NHx+V6tgFE8XVTnf3VSZR
 1lfZB+j2lIdm5NyVi/6JPPj3lhs+v20R2+KgIWGHmYDl0HKYmqzo9nBkjmRRjuCUR46q
 Mpk7retLFVuS6advFdHt79ErO1H0IXx7inmcSAupljueNDB+yDUeqEOMKuvuZpJc9cF+
 gdUlK5ktH+79kudPmIIqfkRCx6dX8qmSK8OXTKg2N7eE5nHszGUHERHxw+EoBhfxK6G3
 cWFHhCKdcI2TvXz3gADHkAHV3CLciJQNJOvcFt2zpX40S9wMiIJRPfkhTY+Un5rA/vWf
 YDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzjGgFUtHPHk4mtkEkY+oMHVSqXsZpl49iGD+maxsDU=;
 b=jkorJ77+QVZiJ3KOxnROcHBntxwVGkCYUSinr2jyFk1AXPmhR5DH9g3O3XyvmZBSdF
 dPJ0ALZipRc0pvzSxKbJKWCXiKJdJ3aely/+VR0aqO/A9B4SyK9vyvrDbXgPZvAaVEc8
 l6GAZg0UF8Ey/YfqzzAFQnUk5NOkDYfvprP2hkN+R9/4zhZXoCmzMKqsaH6dR22M+A3n
 4j3WO1Qbjj5FiOEpVVtjJGmyY4ildTNkhZXBtcp5sxyH2Ir24Dh5Klk6ffJxD7hMOasc
 jWDUGOnfwuezD+fLx7e20y/uhfgrVOB8VTvCOKxslTTyxXeqSS5JtduPIfWsbuXtFO5y
 Eetg==
X-Gm-Message-State: AOAM532vhzgzIWKePJzKe/2R1gTJzafstWSz/60QDdA6M01T/vVDKse6
 nmcwRlleXoyKcr3OKlQYS50585mc5oIYfktDuf/obA==
X-Google-Smtp-Source: ABdhPJxCtDO6nfX3/54XMoa7G3lnnTVGTYemTkdsTl2rRQ5P4Ga5GDFC/Ks56T7gDpjAU6DIVO24NhAHHK1CMSJ5Hp8=
X-Received: by 2002:a25:d113:: with SMTP id i19mr15626226ybg.180.1626464957526; 
 Fri, 16 Jul 2021 12:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-6-jason@jlekstrand.net>
 <CAM0jSHPu1EBfnAJ06Dp51a1Qbg+9QnmP=EyUfYXS0fZnJzxR8g@mail.gmail.com>
 <CAOFGe95gEUNsjCh+30AXhrQLz8_OKbHwwxv=_OhaGKQxGpvcew@mail.gmail.com>
 <CAM0jSHO4EU_gBXo-56GtDJffezfVHYoUhCeOnb97ZgBj5vyA7Q@mail.gmail.com>
 <CAM0jSHOHCr6ppLhUBVSd_JUnBDFAcsYEYtma01benzs_nkhtGg@mail.gmail.com>
 <CAOFGe95YYjS=k9SnQg0EuOR02FWGPyCAvJH7Ymm6ZhiHq5iNCw@mail.gmail.com>
 <CAM0jSHP8vS9FeEjKx9sQqek2-eGVEK+=6y03eNnf0zpnxmmP6w@mail.gmail.com>
In-Reply-To: <CAM0jSHP8vS9FeEjKx9sQqek2-eGVEK+=6y03eNnf0zpnxmmP6w@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 16 Jul 2021 14:49:06 -0500
Message-ID: <CAOFGe94C48djm1uWXC2Tn-ssSvGr=sTOaEDORG355s72ysfqQg@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gem/ttm: Respect the objection
 region in placement_from_obj
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 16, 2021 at 1:45 PM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Fri, 16 Jul 2021 at 18:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> >
> > On Fri, Jul 16, 2021 at 11:00 AM Matthew Auld
> > <matthew.william.auld@gmail.com> wrote:
> > >
> > > On Fri, 16 Jul 2021 at 16:52, Matthew Auld
> > > <matthew.william.auld@gmail.com> wrote:
> > > >
> > > > On Fri, 16 Jul 2021 at 15:10, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > >
> > > > > On Fri, Jul 16, 2021 at 8:54 AM Matthew Auld
> > > > > <matthew.william.auld@gmail.com> wrote:
> > > > > >
> > > > > > On Thu, 15 Jul 2021 at 23:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > > > >
> > > > > > > Whenever we had a user object (n_placements > 0), we were ignoring
> > > > > > > obj->mm.region and always putting obj->placements[0] as the requested
> > > > > > > region.  For LMEM+SMEM objects, this was causing them to get shoved into
> > > > > > > LMEM on every i915_ttm_get_pages() even when SMEM was requested by, say,
> > > > > > > i915_gem_object_migrate().
> > > > > >
> > > > > > i915_ttm_migrate calls i915_ttm_place_from_region() directly with the
> > > > > > requested region, so there shouldn't be an issue with migration right?
> > > > > > Do you have some more details?
> > > > >
> > > > > With i915_ttm_migrate directly, no.  But, in the last patch in the
> > > > > series, we're trying to migrate LMEM+SMEM buffers into SMEM on
> > > > > attach() and pin it there.  This blows up in a very unexpected (IMO)
> > > > > way.  The flow goes something like this:
> > > > >
> > > > >  - Client attempts a dma-buf import from another device
> > > > >  - In attach() we call i915_gem_object_migrate() which calls
> > > > > i915_ttm_migrate() which migrates as requested.
> > > > >  - Once the migration is complete, we call i915_gem_object_pin_pages()
> > > > > which calls i915_ttm_get_pages() which depends on
> > > > > i915_ttm_placement_from_obj() and so migrates it right back to LMEM.
> > > >
> > > > The mm.pages must be NULL here, otherwise it would just increment the
> > > > pages_pin_count?
> >
> > Given that the test is using the ____four_underscores version, it
> > doesn't have that check.  However, this executes after we've done the
> > dma-buf import which pinned pages.  So we should definitely have
> > pages.
>
> We shouldn't call ____four_underscores() if we might already have
> pages though. Under non-TTM that would leak the pages, and in TTM we
> might hit the WARN_ON(mm->pages) in __i915_ttm_get_pages(), if for
> example nothing was moved. I take it we can't just call pin_pages()?
> Four scary underscores usually means "don't call this in normal code".

I've switched the ____four_underscores call to a __two_underscores in
the selftests and it had no effect, good or bad.  But, still, probably
better to call that one.

> >
> > > > >
> > > > > Maybe the problem here is actually that our TTM code isn't respecting
> > > > > obj->mm.pages_pin_count?
> > > >
> > > > I think if the resource is moved, we always nuke the mm.pages after
> > > > being notified of the move. Also TTM is also not allowed to move
> > > > pinned buffers.
> > > >
> > > > I guess if we are evicted/swapped, so assuming we are not holding the
> > > > object lock, and it's not pinned, the future call to get_pages() will
> > > > see mm.pages = NULL, even though the ttm_resource is still there, and
> > > > because we prioritise the placements[0], instead of mm.region we end
> > > > up moving it for no good reason. But in your case you are holding the
> > > > lock, or it's pinned? Also is this just with the selftest, or
> > > > something real?
> > >
> > > Or at least in the selftest I see ____i915_gem_object_get_pages()
> > > which doesn't even consider the mm.pages AFAIK.
> >
> > The bogus migration is happening as part of the
> > __i915_gem_object_get_pages() (2 __underscores) call in
> > i915_gem_dmabuf_attach (see last patch).  That code is attempting to
> > migrate the BO to SMEM and then pin it there using the obvious calls
> > to do so.  However, in the pin_pages call, it gets implicitly migrated
> > back to LMEM thanks to i915_ttm_get_pages().  Why is _get_pages()
> > migrating things at all?
>
> Not sure yet, but __two_underscores() checks if
> i915_gem_object_has_pages() before actually calling into
> i915_ttm_get_pages(), so the mm.pages would have to be NULL here for
> some reason, so best guess is something to do with move_notify().

Did a bit of experimenting along those lines and added the following
to the self-test BEFORE the export/import:

    i915_gem_object_lock(obj, NULL);
    err = __i915_gem_object_get_pages(obj);
    __i915_gem_object_unpin_pages(obj);
    i915_gem_object_unlock(obj);
    if (err) {
        pr_err("__i915_gem_object_get_pages failed with err=%d\n", err);
        goto out_ret;
    }

This seems to make the migration happen as expected without this
patch.  So it seems the problem only exists on buffers that haven't
gotten any backing storage yet (if I'm understanding get_pages
correctly).

One potential work-around (not sure if this is a good idea or not!)
would be to do this inside dmabuf_attach().  Is this reliable?  Once
it has pages will it always have pages?  Or are there crazy races I
need to be worried about here?

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
