Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3894F3D2174
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 11:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794746EA47;
	Thu, 22 Jul 2021 09:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3756EA3D;
 Thu, 22 Jul 2021 09:59:37 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id r17so3839499qtp.5;
 Thu, 22 Jul 2021 02:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PpPenB436LKQ8tbaXwu3zmj9iUJSJfX20rYt2FJ6tDE=;
 b=YWdEXAInlPt+Ew2O1+kxHRWkRAdrRMT6BImML2Yylis7jluiFbE6C2R7yu18rCmfFM
 90i30j83XzT+R5IP+hO9D8hyK7vrRrPlnXENo8DD7tzM38aNcvWWigzewsWb7VtY93/k
 g71Mpv7xYTRsqcNxhnfQbrdhyuiX9ljY+/4iexov3tqDEGBem+JD4fM6guZLaSPRrywh
 I/CY4dRIP2XslhwSotdI7OZ72g1e2/2OxGbWFvTsU44mSsoeaF+eYiRuit3PUtyd9v2h
 opnc0FAh1oHMwJYvfxVAkIiI6nhB1IduY6xMg/grayDrYf+YoZm7QrzbQQCS934LplpH
 Qm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PpPenB436LKQ8tbaXwu3zmj9iUJSJfX20rYt2FJ6tDE=;
 b=QcSOMyKwD3DfMICNNWg41VEeErPodWwubpWjNxVOw/hu+H6AVDaON4T+89FF+aGRy+
 2BdbsJ6YlCU9d/Rs/s4dEF8mWZEf7QL1d/3iXk9PDjKrVwWepW/G1kfiTeLMpEuR9lrN
 LYw+dKH0Ir7Ctd6A7XkNKUd1SyDNdK6pj60Y6MUtZ3TMi7KSyjBXquYRO4W48iPf3vSj
 Wc2fyvt+ox0q8GaF8BYITYEG8FzzscmwyicBg9a9ZolsPMaD+tsPSpTU3Zyr8+1PR2i8
 56OQSdsqIe9F7A3r5B+XA353liCNw4wVMOz3Qo4Y/Q0o41TrYhAoUU8qGMOARg74wP9/
 8bvQ==
X-Gm-Message-State: AOAM533SWOfmn0y469+skTBQOS9Q+sXSdCNncgetp7AIGLUTq2flGIU9
 WBBwveSzGUrrItsTHo8njMHUGDNihmDWAeVSIEM=
X-Google-Smtp-Source: ABdhPJz/wPm252xnQP8KTxb3BcYGx1laIe5S3uiYGJMHC3NhGFVNx5YMLM6m7uRTgZjUnnngWovly0n+UQUu8a2H3Zg=
X-Received: by 2002:ac8:584d:: with SMTP id h13mr10891136qth.341.1626947976117; 
 Thu, 22 Jul 2021 02:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-6-jason@jlekstrand.net>
 <CAM0jSHPu1EBfnAJ06Dp51a1Qbg+9QnmP=EyUfYXS0fZnJzxR8g@mail.gmail.com>
 <CAOFGe95gEUNsjCh+30AXhrQLz8_OKbHwwxv=_OhaGKQxGpvcew@mail.gmail.com>
 <CAM0jSHO4EU_gBXo-56GtDJffezfVHYoUhCeOnb97ZgBj5vyA7Q@mail.gmail.com>
 <CAM0jSHOHCr6ppLhUBVSd_JUnBDFAcsYEYtma01benzs_nkhtGg@mail.gmail.com>
 <CAOFGe95YYjS=k9SnQg0EuOR02FWGPyCAvJH7Ymm6ZhiHq5iNCw@mail.gmail.com>
 <CAM0jSHP8vS9FeEjKx9sQqek2-eGVEK+=6y03eNnf0zpnxmmP6w@mail.gmail.com>
 <CAOFGe94C48djm1uWXC2Tn-ssSvGr=sTOaEDORG355s72ysfqQg@mail.gmail.com>
 <CAM0jSHOTjp-zSdOR1u9H_YM8ryQbA-H9N3RQh-7cQvGr0k5wjw@mail.gmail.com>
 <CAOFGe9705fJxg4L5W9y_WA5T4PaohsEzgEMJcuojg7aKWTJSfA@mail.gmail.com>
 <CAM0jSHOXb_y-s46NUQ-jMJKfBc1FnDxC8ngkKYX29yEE+A7MVg@mail.gmail.com>
In-Reply-To: <CAM0jSHOXb_y-s46NUQ-jMJKfBc1FnDxC8ngkKYX29yEE+A7MVg@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 22 Jul 2021 10:59:09 +0100
Message-ID: <CAM0jSHNRE2tb4tS4q62MMAA7-WSGZE4_PryVFE7i1j13Sax1Mg@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
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

On Thu, 22 Jul 2021 at 10:49, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Wed, 21 Jul 2021 at 21:11, Jason Ekstrand <jason@jlekstrand.net> wrote:
> >
> > On Mon, Jul 19, 2021 at 8:35 AM Matthew Auld
> > <matthew.william.auld@gmail.com> wrote:
> > >
> > > On Fri, 16 Jul 2021 at 20:49, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > >
> > > > On Fri, Jul 16, 2021 at 1:45 PM Matthew Auld
> > > > <matthew.william.auld@gmail.com> wrote:
> > > > >
> > > > > On Fri, 16 Jul 2021 at 18:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > > >
> > > > > > On Fri, Jul 16, 2021 at 11:00 AM Matthew Auld
> > > > > > <matthew.william.auld@gmail.com> wrote:
> > > > > > >
> > > > > > > On Fri, 16 Jul 2021 at 16:52, Matthew Auld
> > > > > > > <matthew.william.auld@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Fri, 16 Jul 2021 at 15:10, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > > > > > >
> > > > > > > > > On Fri, Jul 16, 2021 at 8:54 AM Matthew Auld
> > > > > > > > > <matthew.william.auld@gmail.com> wrote:
> > > > > > > > > >
> > > > > > > > > > On Thu, 15 Jul 2021 at 23:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Whenever we had a user object (n_placements > 0), we were ignoring
> > > > > > > > > > > obj->mm.region and always putting obj->placements[0] as the requested
> > > > > > > > > > > region.  For LMEM+SMEM objects, this was causing them to get shoved into
> > > > > > > > > > > LMEM on every i915_ttm_get_pages() even when SMEM was requested by, say,
> > > > > > > > > > > i915_gem_object_migrate().
> > > > > > > > > >
> > > > > > > > > > i915_ttm_migrate calls i915_ttm_place_from_region() directly with the
> > > > > > > > > > requested region, so there shouldn't be an issue with migration right?
> > > > > > > > > > Do you have some more details?
> > > > > > > > >
> > > > > > > > > With i915_ttm_migrate directly, no.  But, in the last patch in the
> > > > > > > > > series, we're trying to migrate LMEM+SMEM buffers into SMEM on
> > > > > > > > > attach() and pin it there.  This blows up in a very unexpected (IMO)
> > > > > > > > > way.  The flow goes something like this:
> > > > > > > > >
> > > > > > > > >  - Client attempts a dma-buf import from another device
> > > > > > > > >  - In attach() we call i915_gem_object_migrate() which calls
> > > > > > > > > i915_ttm_migrate() which migrates as requested.
> > > > > > > > >  - Once the migration is complete, we call i915_gem_object_pin_pages()
> > > > > > > > > which calls i915_ttm_get_pages() which depends on
> > > > > > > > > i915_ttm_placement_from_obj() and so migrates it right back to LMEM.
> > > > > > > >
> > > > > > > > The mm.pages must be NULL here, otherwise it would just increment the
> > > > > > > > pages_pin_count?
> > > > > >
> > > > > > Given that the test is using the ____four_underscores version, it
> > > > > > doesn't have that check.  However, this executes after we've done the
> > > > > > dma-buf import which pinned pages.  So we should definitely have
> > > > > > pages.
> > > > >
> > > > > We shouldn't call ____four_underscores() if we might already have
> > > > > pages though. Under non-TTM that would leak the pages, and in TTM we
> > > > > might hit the WARN_ON(mm->pages) in __i915_ttm_get_pages(), if for
> > > > > example nothing was moved. I take it we can't just call pin_pages()?
> > > > > Four scary underscores usually means "don't call this in normal code".
> > > >
> > > > I've switched the ____four_underscores call to a __two_underscores in
> > > > the selftests and it had no effect, good or bad.  But, still, probably
> > > > better to call that one.
> > > >
> > > > > >
> > > > > > > > >
> > > > > > > > > Maybe the problem here is actually that our TTM code isn't respecting
> > > > > > > > > obj->mm.pages_pin_count?
> > > > > > > >
> > > > > > > > I think if the resource is moved, we always nuke the mm.pages after
> > > > > > > > being notified of the move. Also TTM is also not allowed to move
> > > > > > > > pinned buffers.
> > > > > > > >
> > > > > > > > I guess if we are evicted/swapped, so assuming we are not holding the
> > > > > > > > object lock, and it's not pinned, the future call to get_pages() will
> > > > > > > > see mm.pages = NULL, even though the ttm_resource is still there, and
> > > > > > > > because we prioritise the placements[0], instead of mm.region we end
> > > > > > > > up moving it for no good reason. But in your case you are holding the
> > > > > > > > lock, or it's pinned? Also is this just with the selftest, or
> > > > > > > > something real?
> > > > > > >
> > > > > > > Or at least in the selftest I see ____i915_gem_object_get_pages()
> > > > > > > which doesn't even consider the mm.pages AFAIK.
> > > > > >
> > > > > > The bogus migration is happening as part of the
> > > > > > __i915_gem_object_get_pages() (2 __underscores) call in
> > > > > > i915_gem_dmabuf_attach (see last patch).  That code is attempting to
> > > > > > migrate the BO to SMEM and then pin it there using the obvious calls
> > > > > > to do so.  However, in the pin_pages call, it gets implicitly migrated
> > > > > > back to LMEM thanks to i915_ttm_get_pages().  Why is _get_pages()
> > > > > > migrating things at all?
> > > > >
> > > > > Not sure yet, but __two_underscores() checks if
> > > > > i915_gem_object_has_pages() before actually calling into
> > > > > i915_ttm_get_pages(), so the mm.pages would have to be NULL here for
> > > > > some reason, so best guess is something to do with move_notify().
> > > >
> > > > Did a bit of experimenting along those lines and added the following
> > > > to the self-test BEFORE the export/import:
> > > >
> > > >     i915_gem_object_lock(obj, NULL);
> > > >     err = __i915_gem_object_get_pages(obj);
> > > >     __i915_gem_object_unpin_pages(obj);
> > > >     i915_gem_object_unlock(obj);
> > > >     if (err) {
> > > >         pr_err("__i915_gem_object_get_pages failed with err=%d\n", err);
> > > >         goto out_ret;
> > > >     }
> > > >
> > > > This seems to make the migration happen as expected without this
> > > > patch.  So it seems the problem only exists on buffers that haven't
> > > > gotten any backing storage yet (if I'm understanding get_pages
> > > > correctly).
> > > >
> > > > One potential work-around (not sure if this is a good idea or not!)
> > > > would be to do this inside dmabuf_attach().  Is this reliable?  Once
> > > > it has pages will it always have pages?  Or are there crazy races I
> > > > need to be worried about here?
> > >
> > > It turns out that the i915_ttm_adjust_gem_after_move() call in
> > > ttm_object_init will always update the mm.region to system memory(so
> > > that it matches the ttm resource), which seems reasonable given the
> > > default system placeholder thing, but does seem slightly iffy since we
> > > haven't actually moved/allocated anything.
> > >
> > > So effectively i915_ttm_migrate(SYSTEM) becomes a noop here since
> > > mm.region == mr. Which ofc means when we actually call get_pages() all
> > > that happens is that we allocate the pages in system memory(or without
> > > this patch placements[0]). Also with this patch lmem+smem, will always
> > > be placed in smem first, regardless of the placements ordering.
> > >
> > > For now we could maybe just split i915_ttm_adjust_gem_after_move() so
> > > we skip the part which updates the mm.region here in the init portion,
> > > since that should only happen when we try to place the object for
> > > real?
> >
> > Doesn't that mean we would end up with obj->mm.region and
> > obj->mm.res->mem_type are out-of-sync?  That seems bad.  I would think
> > we'd want the two in sync at all times.
>
> It likely doesn't matter since all roads lead to i915_ttm_get_pages()
> when we need to actually use the object?
>
> Also updating the mm.region in ttm_object_init() to reflect the dummy
> ttm resource seems a little scary, since any existing is_lmem() check
> now needs to happen after we place the object. Or at least the
> existing callers(for kernel internal objects) might not have expected
> that behaviour. Not sure if we checked all the callers.
>
> >
> > It seems like the fundamental problem here is that, when it's created,
> > the object isn't really in any memory region at all.  While I don't
> > think obj->mm.region == NULL is allowed or a good idea, it does seem
> > closer to the ground truth.
>
> Yeah, seems reasonable, especially for create_user where we don't know
> the placement until we actually call get_pages(). I think for internal
> users like with create_lmem() setting the mm.region early still makes
> some sense?
>
> >
> > Perhaps what we really want is for i915_gem_object_migrate to
> > get_pages before it does the migration to ensure that pages exist.
> > The only call to i915_gem_object_migrate in the code-base today is in
> > the display code and it's immediately followed by pin_pages().  For
> > that matter, maybe the call we actually want is
> > i915_object_migrate_and_pin that does the whole lot.
>
> I guess the only downside is that we might end up doing a real
> migration, with mempy or the blitter vs just changing the preferred
> placement for later? I think just go with whatever you feel is the
> simplest for now.

Another cheapo could be to drop the mr == mm.region noop, and just try
to place the object at mr anyway?

>
> >
> > Thoughts?
> >
> > --Jason
> >
> > P.S.  I'm going to go ahead and send another version with your other
> > comments addressed.  We can keep this discussion going here for now.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
