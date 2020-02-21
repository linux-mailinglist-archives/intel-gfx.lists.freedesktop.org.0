Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9300E168149
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545506F478;
	Fri, 21 Feb 2020 15:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7326F475
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:17:36 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id r137so1895054oie.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 07:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i+ebonNt6SN4/QaTSrwCbFJUgsRNbsfbpnIZ9oiH1B4=;
 b=E3+GxDGBdBbBjAF6dplIdeMRpEgT9ma1t30kmTPYzkB6jZ3trenGktgfF1R3rRPvrl
 KpelwdMOPEkGranrYOfUg1y0ZgxcQHp1v2t7+q8nMqA/KFyhv/oOq5VwmA3eF8oZb5m6
 iNOcIQadYWux/DtMa7e/bHUJo3uCEYPUpGUwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i+ebonNt6SN4/QaTSrwCbFJUgsRNbsfbpnIZ9oiH1B4=;
 b=BTfgeEzJXnZ2ClBJnRGLrBetNbIJR8S0K1ODpL6cMg8MtUEiJl2HYOeidBMx3RzBu8
 Ob+IrD7QmNYnr4NHMkZyoQL65H894z6+FURatWvwOyBKwGq1crI5GGv2s1ewPs9ASMbe
 Cdbu2PW/bBTn0pvaAweE4uviX5S8aek+U0PaM5JdDlT60aXcsQTLuqT+1q5rICLq+NVF
 LQbHF8ssb8XwaJutsBZx7hHCHM01Sp9vaMwQ2QE1fuehK1zZqh9wFhO7SwEF2p0Ht0CU
 vBrjA6LwgoOoFH5s4zQLdCfG4KOzUWfG7Q9naGi4wP7rj1A2IPCVDy/62ph6U6jWe3n0
 C7aw==
X-Gm-Message-State: APjAAAVqJZPR897xPHT/R/bDc9HSAKfKM7OSzIDj3wtCa7e+w+cH+smZ
 LGsx5nFbwsI+z58W/So6d/nUNxWY8CVV6oVNfLpDqw==
X-Google-Smtp-Source: APXvYqyqL9fVm6DxeBWqXMM5sUDQlPM+ZXb+rl4U+l0iGXljBYae0i76QsacuQ6qmBdtQyVxrkqMB/36mpQRoYzUVZE=
X-Received: by 2002:aca:2407:: with SMTP id n7mr2427071oic.14.1582298255918;
 Fri, 21 Feb 2020 07:17:35 -0800 (PST)
MIME-Version: 1.0
References: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 21 Feb 2020 16:17:24 +0100
Message-ID: <CAKMK7uFXimzbimax1XFkA+7wXNkT6x=_37PxO2UEiZqr3fy5Yg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Precheck for a valid dma_fence
 before acquiring the reference
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
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 21, 2020 at 3:38 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> dma_fence_get_rcu() is used to acquire a reference to under a dma-fence
> under racey conditions -- a perfect recipe for a disaster. As we know
> the caller may be handling stale memory, use kasan to confirm the
> dma-fence, or rather its memory block, is valid before attempting to
> acquire a reference. This should help us to more quickly and clearly
> identify lost races.

Hm ... I'm a bit lost on the purpose, and what this does. Fences need
to be rcu-freed, and I have honestly no idea how kasan treats those.
Are we throwing false positives, because kasan thinks the stuff is
freed, but we're still accessing it (while the grace period hasn't
passed, so anything freed is still guaranteed to be at least in the
slab cache somewhere).

I'm not seeing how this catches lost races quicker, since the refcount
should get to 0 way before we get to the kfree. So the refcount check
on the next line should catch strictly more races than the kasan
check.
-Daniel

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  include/linux/dma-fence.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 3347c54f3a87..2805edd74738 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -301,6 +301,9 @@ static inline struct dma_fence *dma_fence_get(struct dma_fence *fence)
>   */
>  static inline struct dma_fence *dma_fence_get_rcu(struct dma_fence *fence)
>  {
> +       if (unlikely(!kasan_check_read(fence, sizeof(*fence))))
> +               return NULL;
> +
>         if (kref_get_unless_zero(&fence->refcount))
>                 return fence;
>         else
> --
> 2.25.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
