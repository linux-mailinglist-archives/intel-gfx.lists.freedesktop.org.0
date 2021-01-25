Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F889302454
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C6389E01;
	Mon, 25 Jan 2021 11:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FCD89E01
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:35:49 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id n7so769907qkc.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 03:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IPVT0JyUfsn6DywKFxESxrp6A4L8hn554suSGzK92Qk=;
 b=B92zQqrbhaaLK3PrPGyCPoa3/cHmKTJna1ORfBVy5pgFeQ/zf34s6yyWJzHiF3B32z
 Cb+QHbpZHBgjJueD3sQ8OXc5bBB6XVCPraICl75OSc5ahjpURSSWc+QcQQNK2CxSVrIN
 Cw0gojjoX8oBN1xwvy0jVxLVAguoYoaPt9wmbJhdGSxbtGx38Q2gPtelcpOdPhlXMCAN
 8iNoPcpMhWWb21/Tbj/TNNH89NiN3nCeWy7KkRPQ1J0vgScMjrWkEe3FZFuOLAEIG1cF
 Ifuw2N+8xsMToe9kSwKFPyfJrEFjFa+6kXE3JqhHSaHfchGa1EUAcUgVf2lry3OybaOo
 Oh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IPVT0JyUfsn6DywKFxESxrp6A4L8hn554suSGzK92Qk=;
 b=VkLSLtCHwv28iNi+tOzFClv11zaM0aF1LX4kjXk+qnnu56+AX0Jj5zicZy9zeyjpzt
 aad8mpQuDN+m9EUPDj8TaOj7v9tLo8K56WlhnjimMPOG8PKhtAHiVCmv9ihDzXq9R05b
 kiwRixH/5H1Lw30hQUQDvBt6h6qlJnsvEwenO9XxztuhGLs7wqKsySJ3EefPAtJiaP5k
 vdJv3ovr0dq4WBBsDJIGCFzj+86g2yp2kA6PI463gapjbrwT80qfNGjRln1nK5mqlbGB
 Yr1yudpohd/vVpaz9G8Y9FIBLmLh8Hfed7bofunZlVwmv5gUg9du/BBORVkBp9lk7ZeG
 Y1sQ==
X-Gm-Message-State: AOAM5316xSd9v0ex6oaAfyBVNg4vXLphyOZDOqERs6Pkmdb+O3/DnWGU
 MQbe/I2hV0qvyhSDnC9j23fOXEwS7hf6N4NcOUbQ38ls4n0=
X-Google-Smtp-Source: ABdhPJyGvBZnXijhiaOkqoVkKc7ofWZVYFa5uSfDsnmIqQjaJslt9P5vsLL/0NJBnZA6t+btxJDVDrD9wtd7xuMN920=
X-Received: by 2002:a05:620a:12fa:: with SMTP id
 f26mr190659qkl.327.1611574548448; 
 Mon, 25 Jan 2021 03:35:48 -0800 (PST)
MIME-Version: 1.0
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
 <20210124135726.1795-1-chris@chris-wilson.co.uk>
 <CAM0jSHMc8F4tS6SsZtSLUMs3XOUS4puW3XBq1nUHJp1o=3=1sg@mail.gmail.com>
 <161157386286.27462.13615100015195592952@build.alporthouse.com>
 <161157408735.27462.6891739735261623194@build.alporthouse.com>
In-Reply-To: <161157408735.27462.6891739735261623194@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 25 Jan 2021 11:35:22 +0000
Message-ID: <CAM0jSHN0Uj5F1PpeDcGfzT9-G1H5NgS1-bjcJfoHOsqb36X8PQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove guard page insertion
 around unevictable nodes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 25 Jan 2021 at 11:28, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Chris Wilson (2021-01-25 11:24:22)
> > Quoting Matthew Auld (2021-01-25 11:16:13)
> > > On Sun, 24 Jan 2021 at 13:57, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > >
> > > > Assume that unevictable nodes are not in the GTT and so we can ignore
> > > > page boundary concerns, and so allow regular nodes to abutt against
> > > > irregular unevictable nodes.
> > > >
> > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_drv.h       |  2 --
> > > >  drivers/gpu/drm/i915/i915_gem_evict.c |  6 ++++--
> > > >  drivers/gpu/drm/i915/i915_vma.h       | 10 +++++++++-
> > > >  drivers/gpu/drm/i915/i915_vma_types.h |  2 ++
> > > >  4 files changed, 15 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > > index 99cf861df92d..69c5a185ecff 100644
> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > @@ -357,8 +357,6 @@ enum i915_cache_level {
> > > >         I915_CACHE_WT, /* hsw:gt3e WriteThrough for scanouts */
> > > >  };
> > > >
> > > > -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> > > > -
> > > >  struct intel_fbc {
> > > >         /* This is always the inner lock when overlapping with struct_mutex and
> > > >          * it's the outer lock when overlapping with stolen_lock. */
> > > > diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> > > > index 4d2d59a9942b..aef88fdb9f66 100644
> > > > --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> > > > +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> > > > @@ -313,11 +313,13 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
> > > >                  */
> > > >                 if (i915_vm_has_cache_coloring(vm)) {
> > > >                         if (node->start + node->size == target->start) {
> > > > -                               if (node->color == target->color)
> > > > +                               if (i915_node_color_matches(node,
> > > > +                                                           target->color))
> > > >                                         continue;
> > > >                         }
> > > >                         if (node->start == target->start + target->size) {
> > > > -                               if (node->color == target->color)
> > > > +                               if (i915_node_color_matches(node,
> > > > +                                                           target->color))
> > > >                                         continue;
> > > >                         }
> > > >                 }
> > >
> > > Since we bail early on seeing COLOR_UNEVICTABLE, and since we have to
> > > enlarge our search space by a page on both ends, do we need something
> > > like:
> >
> > Are we not doing the opposite here, and skipping the evict if either
> > node/target is unevictable?
>
> Oh, you mean the earlier abort if we try to evict an unevictable node
> inside the target range.

Yeah, if it only abuts and is COLOR_UNEVICTABLE we can ignore the node
now, but if it's actually within our range then we abort like before.
And then there is some strangeness with the head node.

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
