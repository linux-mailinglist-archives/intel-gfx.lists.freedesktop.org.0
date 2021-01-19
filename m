Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1E62FBD4A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 18:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FD989ACD;
	Tue, 19 Jan 2021 17:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D957B89ACD
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 17:15:12 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id a1so9470872qvd.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 09:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UIWM6KbAr6WtdDJOvsn6RtjcPsc2uaKOmxIeHS6FCoI=;
 b=Ta255VnnBdQXb/8x/3zz/v/rDxi6SSGj4xI5URivPv0vgDf/T1L9IpUQOrz549LpPW
 VqQ9DZjw4mKlPM91dcKSbw8jAPVvJiR1R4EHfkV0ciHAO7LwW4VDgDgpYWP4TytLB26N
 BX4lwczE1sNTbZD73wbr461eZOUzovY8zX92Ymqm1DmL38BhM5lDdH8ihwUIR1/5EX41
 2j6BSjk9qB3zTdLCKa3RsudkFOfXWwb6+nAR/ajWQjl5HcYJhzueOWtIZ8r+2YyRn6Y0
 3xtP6aUCZMf+pgZbvsLyhbuYGSHwW9a4SIEZv6oGQbf854e5KsGfMWT8VEHFe/EWVmsF
 AOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UIWM6KbAr6WtdDJOvsn6RtjcPsc2uaKOmxIeHS6FCoI=;
 b=P2FPJxRtJiXx3UIhkxOXlMDrY+ctkGG0NWu2Ovzq2+QKD8R3BLA3fi4SCdb3nsnH3i
 YKo8KV9ox2pDalVhXreEjJEOppV1nml1CFhkfTR0dRnnwp7aiPpBHDOSGlNDMy5LXfuA
 HM/R8LRiiZvd70u+KZBe9GMIqBz+W5AvJAj9Sf9OhrjUuGvt4Z32w9rGLzNEY4jUON0N
 6OvIQ2UWBClEv0lRn5QGS2JHikRutq+/3aX6lALIQOQIA1j2e/uT+AuMsJykcmbmb0h5
 qAIpkzXGylbdib+NhkmOHYWbhg69wPdpiQhU5FajOF3z+h6pEWwEanf3S23/l/37eImB
 ekqw==
X-Gm-Message-State: AOAM531m4tv33t6aao0sd+6mggkP89BRQHOJgRagDrkH30T98VgPm527
 EMeNXUgsMXjHTumBhMAjH1IV/pfPiOvqLJLGC2Q=
X-Google-Smtp-Source: ABdhPJy4SBmVaaGWjxVZR4Jh1H5EBj+UN53dCA69CaGYHgKH+jXUSx/CAgVaBnIPDKf+JuTgmQkJJW0iS8tduLFf/qA=
X-Received: by 2002:a0c:a789:: with SMTP id v9mr5042650qva.41.1611076511951;
 Tue, 19 Jan 2021 09:15:11 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-6-chris@chris-wilson.co.uk>
 <CAM0jSHO_bTSEJgkEAzw2_a3=OYvi1tJKQ3Vew9RrJbCZkfUTyQ@mail.gmail.com>
 <161107575499.7548.13117018595783582424@build.alporthouse.com>
In-Reply-To: <161107575499.7548.13117018595783582424@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 17:14:45 +0000
Message-ID: <CAM0jSHO3cbwrmX-YzxSStNmwdxNBOOf1mVib0pTSVn=cFuUiYQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gem: Drop lru bumping on
 display unpinning
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

On Tue, 19 Jan 2021 at 17:02, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2021-01-19 16:38:04)
> > On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Simplify the frontbuffer unpin by removing the lock requirement. The LRU
> > > bumping was primarily to protect the GTT from being evicted and from
> > > frontbuffers being eagerly shrunk. Now we protect frontbuffers from the
> > > shrinker, and we avoid accidentally evicting from the GTT, so the
> > > benefit from bumping LRU is no more, and we can save more time by not.
> >
> > For the GTT evict case, where/how do we currently try to prevent
> > accidental eviction for fb?
>
> Our preference is to try with NOEVICT, and then use smaller partial
> mappings, reducing the risk of evicting anything that may be reused in
> the near future. The goal is to really only use the full GTT mapping for
> when HW needs access to the whole object.

Ah, right.

>
> However, we could apply the same rule as we do for the shrinker as leave
> frontbuffer objects until the second pass. Such as
>
> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> @@ -61,6 +61,19 @@ mark_free(struct drm_mm_scan *scan,
>         return drm_mm_scan_add_block(scan, &vma->node);
>  }
>
> +static bool skip_vma(struct i915_vma *vma)
> +{
> +       if (i915_vma_is_active(vma))
> +               return true;
> +
> +       if (i915_is_ggtt(vma) &&
> +           vma->obj &&
> +           i915_gem_object_is_framebuffer(vma->obj))
> +               return true;
> +
> +       return false;
> +}
> +
>  /**
>   * i915_gem_evict_something - Evict vmas to make room for binding a new one
>   * @vm: address space to evict from
> @@ -150,7 +163,7 @@ i915_gem_evict_something(struct i915_address_space *vm,
>                  * To notice when we complete one full cycle, we record the
>                  * first active element seen, before moving it to the tail.
>                  */
> -               if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
> +               if (active != ERR_PTR(-EAGAIN) && skip_vma(vma)) {
>                         if (!active)
>                                 active = vma;
>
> That would be better if we mark the vma as being used by display.

Makes sense. For whichever method,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
