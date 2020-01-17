Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53AE140947
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9D06F521;
	Fri, 17 Jan 2020 11:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E6F6F521
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:52:20 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id o187so6575334vka.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 03:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MUX7fbPa3d+/KtUk3PT6BGC+TuckGxsvOyxX23xDIVI=;
 b=V34Yqk0aIFSFBzCM1F9Iqk5I6XFtnhtXLq7lr7vGkVVbYxb5jEeBjnIDxz1dbgUtrV
 r1Tj3DM9PAhSuLGdHBBstxsGb7Xy7M/OEYQVkzL91q9WKTUCeOoe0jtYH5F9gB7H6QcX
 53j1yDM3eEB8OxFOhHkkaQlQBDz5NJ/T7ayRf3BxyHusFZnHAR1ZBBHF8ZODIvfAXrmO
 ifgZewWVSgyELhROUuG3hjykFKd81WaUpetsX/54eTFEzk54ti3JO14Adf5rJQTralGn
 eEJBHv9vFLsSkGSp6FKxf9tSNIy635RULIXEgr11V/RmMwkAbqfn0Krb2oj81xUHcwgI
 CbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MUX7fbPa3d+/KtUk3PT6BGC+TuckGxsvOyxX23xDIVI=;
 b=EWlT5I0h6Jw3ghkQGTUIYQP7T1zve6xw25simnwjx5Rhjjz/kAjDpYSQ5zLi2ePsY1
 bzN3z08OCzUziBoMYVuQ2w8Fffq+bhi0S9QfAdN1pga3htTOC/H0gdkDGUmUYyUKwskY
 7dZ1BKnZdoChgt21j5/kpFOz8oCudtgBYOX6UQO7nV06qtWBNosMtq8pkPslH7mrZIqS
 YFpTouTjEYyaTW1MZ+0dG4bl3YjxhGpAZODU45czvM/YwiCNJuWlNJ7l6uIrboybY7Iz
 l0OwWRsHLSCwpwlmrpGgem/tA5yPKl6aMcyTMbSf3jQ2nyZDHxsGD7oGUA+k0FaDI824
 4Teg==
X-Gm-Message-State: APjAAAUdaueVuwDARrDkUU57N7G+xw1LSa7swnk93t7IzsXu2A2h7aiK
 wtefPrnSzqwmpoWw4+I6SnSDtAizLqILdYIgVo8=
X-Google-Smtp-Source: APXvYqyGfFuLg57d/Nl/x1Cv7DZA8WNl858vFoP61M6kPtzyoo3ojS7Bt7AF7ax9JlPHccGQVIHwQyjOPpI2SjN7Pa4=
X-Received: by 2002:a1f:5e54:: with SMTP id s81mr23649102vkb.78.1579261939161; 
 Fri, 17 Jan 2020 03:52:19 -0800 (PST)
MIME-Version: 1.0
References: <20200116203150.923826-1-matthew.auld@intel.com>
 <157920953480.7612.16415611914387513987@skylake-alporthouse-com>
In-Reply-To: <157920953480.7612.16415611914387513987@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Jan 2020 11:51:53 +0000
Message-ID: <CAM0jSHPB1Fc9YjL1R57SKg0g1xdHfcoJ0m-1uT2Qb4FwtJhW=w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/userptr: add user_size
 limit check
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

On Thu, 16 Jan 2020 at 21:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2020-01-16 20:31:49)
> > Don't allow a mismatch between obj->base.size/vma->size and the actual
> > number of pages for the backing store, which is limited to INT_MAX
> > pages.
> >
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > index e5558af111e2..fef96a303d9d 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > @@ -768,6 +768,18 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
> >         if (args->flags & ~(I915_USERPTR_READ_ONLY |
> >                             I915_USERPTR_UNSYNCHRONIZED))
> >                 return -EINVAL;
> > +       /*
> > +        * XXX: There is a prevalence of the assumption that we fit the
> > +        * object's page count inside a 32bit _signed_ variable. Let's document
> > +        * this and catch if we ever need to fix it. In the meantime, if you do
> > +        * spot such a local variable, please consider fixing!
> > +        */
> > +
> > +       if (args->user_size >> PAGE_SHIFT > INT_MAX)
> > +               return -E2BIG;
>
> I'm convinced that the following patch is the last bug (excusing
> i915_gem_internal.c), and think we should commit to removing this limit.

You mean on our side? There is still all the sg_table stuff,
__get_user_pages_fast etc.

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
