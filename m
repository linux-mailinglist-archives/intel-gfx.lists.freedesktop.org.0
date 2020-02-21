Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7015E1680E2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 15:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346026F467;
	Fri, 21 Feb 2020 14:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B946F466
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 14:54:51 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id d62so1791106oia.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 06:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srGPntGHrtyR2uaDr0/5fF7b7+5YyS+ull9sDB6HqWE=;
 b=YPDkCBTy+neuaAXnyEa0TnkfgA3iZfG6VugKco1xjsQ9nkrtUz1DI4XxewGHpmPKZ+
 5fIeS+qJO3Wq8ejP+Jp9cb+BrWN/GM4cyGuh4t63At0sDMuSaivrOcnofYyueVZFg6aI
 XDLql52UCoR455r+ZjOu/Rk4XI6OIUlPk8/j4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srGPntGHrtyR2uaDr0/5fF7b7+5YyS+ull9sDB6HqWE=;
 b=Nw1DoYY4kJYXZq3G2U25ebpO4UIAhO+OEbX6AG+J0POEh3avCY93pLjvYjOamz0gP7
 1hS1uu40AygrGkKn6rAYmWliGXR7ZdgYShLaZJtc3TbS6bT8dQOVp8EzUCgC5urcO6ey
 EQu7pgSwCxksfj3hcyD+p8Yl4ZcozEb8dPAKpvi+WkZIVPbew9o5atOzfAZnYC7B0pVh
 5T7pBlnRY7DCyRAuUBYvLPYhFCeewSWDFWR7TA3glbiW/UWlRt+8g852h6fe1N0duEXY
 EUO0YGaMMZrmWoW/ZM2y00w6blJetOI9cbPcDaHGBE5uIHYuzoDB9C3TIOY5Ojdnq+Wx
 cD+w==
X-Gm-Message-State: APjAAAWeUdsyKxjWxIkW6GfFAFvPDrWNjWk2P+K2o4UAzpN/82/1vydM
 bUrhOoM1zAaqsrnv16uILpB2KDb9852Lwnb1ilzVcA==
X-Google-Smtp-Source: APXvYqyqC7OVJv0aDwaVzwp4YWvyVUKdQj02tVL/0EJXUiO0GSjzkWVd2QeEe7UINj6nLNvwVQp74uFz5cH/NcylHgo=
X-Received: by 2002:aca:2407:: with SMTP id n7mr2338119oic.14.1582296890919;
 Fri, 21 Feb 2020 06:54:50 -0800 (PST)
MIME-Version: 1.0
References: <20191208161252.3015727-1-chris@chris-wilson.co.uk>
 <20191208161252.3015727-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191208161252.3015727-2-chris@chris-wilson.co.uk>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 21 Feb 2020 15:54:39 +0100
Message-ID: <CAKMK7uGE0Fzw9CcmAZDN00tt4GCCX2Dk6O=JT7iODyvCXN3aag@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Change i915_vma_unbind() to
 report -EAGAIN on activity
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 8, 2019 at 5:13 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If someone else acquires the i915_vma before we complete our wait and
> unbind it, we currently error out with -EBUSY. Use -EAGAIN instead so
> that if necessary the caller is prepared to try again.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 9ca6664c190c..6794c742fbbf 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1181,7 +1181,7 @@ int __i915_vma_unbind(struct i915_vma *vma)
>         GEM_BUG_ON(i915_vma_is_active(vma));
>         if (i915_vma_is_pinned(vma)) {
>                 vma_print_allocator(vma, "is pinned");
> -               return -EBUSY;
> +               return -EAGAIN;

Maarten is apparently hitting this somehow in his dma_resv work, and
no idea yet why. But just general comment: We can't be leaking
temporary pins outside of holding the right locks, because then other
threads can spot these pins and fail, because parts of whatever they
need more of (vma or object doesn't really matter) can't be evicted
properly. And sprinkling more EAGAIN all over the place really isn't
the solution to get us out of these problems in the long term.

So if we do have random spurious pins that leak out from under their
locks, then we need to tug them back under those locks (struct_mutex
is the worst case for a bunch of these right now). That's the
fundamental shift in locking design with dma_resv vs the previous
design that had the explicit goal of lots of temporary and
not-so-temporary pins to untangle the locking. Now fully clear that we
have a lot of that still lying around, but we really can't spread it
further.
-Daniel

>         }
>
>         GEM_BUG_ON(i915_vma_is_active(vma));
> --
> 2.24.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
