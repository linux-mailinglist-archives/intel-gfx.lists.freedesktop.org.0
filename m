Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7461818F65C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839CF897E0;
	Mon, 23 Mar 2020 13:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D458897E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:53:41 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id d18so857524vso.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 06:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bbk111No1CllfmXhS4OJRRiJEiHyrtPLgBDfmC91/9Y=;
 b=Q2JtOVjF8sTHjunuBvcy1lXPFWG2ynaw57gTVINOIcadLFmbcMUGZiZkbJUCDZykjX
 rOGQGy+YARu9NTb+Lf+VmhtV2KPcGGZjuBRRlyKtOuRyRzLiCeBeFuNsIUPA09Msrern
 TaUyoor29aFIXf9AnHItwWhsUQ0mRWZM+VTvSD+yY3lV5hcIYAjDojd44AWlEdlesydi
 j+4KfqDQlRHvq1/UDkhpUhHpiv+KEh1LqmzMq39hlR2cx6FKeTxOfNPazNV8lrEM1FKw
 zEvFIlYUkjphMdwmuUsvSavvlfdB7xjMxGw2V6p/0mKHuAlrdBuEreWIqZih3UjrnWuv
 XgJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bbk111No1CllfmXhS4OJRRiJEiHyrtPLgBDfmC91/9Y=;
 b=ri5V8OaNhBT0VlDgjlNlCVXp+C3k4Wg2KcJEfaqnRxFV4fvnw7UapdzUXT5bua6B4U
 pUlYPh+RHee4rMGgmSqVrEqmceJRH5Xz19UkJKin9vxYanRjaG5P2KWP+4qDrdWnel1n
 adOP7h6Grt4/yefs++h6g1nJZFJQsCuA0y11quAJHdzTVUrqPQ5APzafjgEMQmadLFzG
 tlOS6JZdmBkkE8mpK9/qF5tmfAX4TxJam9CcKqUzA62IkWX0URK6zXljliwdsZpwJQaW
 WnsvWC66isTY9bESkuZn2BYTtIRkb8Z5/IrjlaocDP5SaSDjNFTUwqTtp/lfgTTESWEY
 eX+Q==
X-Gm-Message-State: ANhLgQ1k51JexlN49oNKQ9VzFxM3ZN3vy/+QeUncrhCyopIZh3NWqq61
 0F3eWyCzYCgg/ax4/VEqxNI6PieTntp956PH5zA=
X-Google-Smtp-Source: ADFU+vvKhlWbe1MeONZEV3G35ve4h/d0Gbu0CXa7Niwl5+P2Wnlyznj+oGxxyji8SWC0YiGxpGLvsgRUHYerNoz/w6M=
X-Received: by 2002:a67:d982:: with SMTP id u2mr5201388vsj.164.1584971620219; 
 Mon, 23 Mar 2020 06:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200323130821.47914-1-matthew.auld@intel.com>
 <158496942642.17851.15395283043398460951@build.alporthouse.com>
In-Reply-To: <158496942642.17851.15395283043398460951@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 23 Mar 2020 13:53:13 +0000
Message-ID: <CAM0jSHM9gThEKh21vzswvLfb3rMbqWaVzu90WVimBza5KvPq+A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: mark huge_gem_object as
 not shrinkable
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Mar 2020 at 13:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2020-03-23 13:08:21)
> > It looks like the callers expect a non-volatile object, but it looks the
> > shrinker will discard the object pages anyway, thinking that the pages
> > can be swapped out if the object is marked as WILLNEED. If that's true
> > then it might be better to mark it as volatile and fix the callers
> > instead, but on the other hand huge_gem_objects are fairly unique in
> > that they duplicate pages for the backing store, so maybe shrinking is
> > not that applicable.
>
> Duplication of backing store is irrelevant for the shrinker -- it just
> deals with trying to make room by releasing objects. If we release the
> entire object, all duplicate references are released and the pages
> become recoverable.

Ok. My rough thinking was that the shrinker page accounting(i.e what
we return) is currently based on obj->base.size, which might be pure
lies for huge_gem_object.

>
> Now as to whether the callers were expecting the object to be volatile
> (for the backing pages to be discarded on swapping) is another question.
> The answer would be that originally it was used with perma-pinned pages,
> so it was never a problem. But looking at the users, they do *not*
> expect to lose data on swapping.
>
> So we need to fix the huge object to not gleefully throw away data,
> which also means that we cannot shrink it (as there is no backing
> storage to copy the pages to).
>
> So both making the pages as DONTNEED and IS_SHRINKABLE are technically
> incorrect.

Do you mean WILLNEED and IS_SHRINKABLE, if object doesn't also support
swapping? DONTNEED and IS_SHRINKABLE is correct for volatile objects.

GEM_BUG_ON(is_shrinkable(obj) && !is_swappable(obj) && obj->mm.madv ==
WILLNEED);

>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> > index fa16f2c3f3ac..2b46c6530da9 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> > @@ -88,8 +88,7 @@ static void huge_put_pages(struct drm_i915_gem_object *obj,
> >  }
> >
> >  static const struct drm_i915_gem_object_ops huge_ops = {
> > -       .flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
> > -                I915_GEM_OBJECT_IS_SHRINKABLE,
> > +       .flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE,
>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>
> but I think the changelog can be clarified and we either include the
> DONTNEED fixes or follow up.
> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
