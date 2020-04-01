Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5269F19B65F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C40A895B2;
	Wed,  1 Apr 2020 19:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB68895B2
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:26:23 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id b187so196828vkh.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 12:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HRYyjRcr5P6f1XLp8XNAa0vBcwdzkX/fgCthmVY97MM=;
 b=fVGaU7LkHdi8HcMRsp9e1qeCHYhxuloF0z/s5UlVEwWeyirpUNwkkRQAHj+qZKblun
 gnVtUZmXaCRdXD+l+ggZjqO9/6DyLPXhbY2vI1xOaEUrjHpv+xKbJhrNQonxOf15PZsN
 0t58VIlDCzgiiCwKLLHaPQdt8WxOJL75iAk/Qs/KO6XdePVAUSUgMpFDqq/FXZqPkpmo
 Q0UvlVQo1etyngazmf9IU9x4plfWC12xU+wHjvV2hYaVrYVrchQ5/bojCNLSwSToPKsR
 NGXIpiSdSKRp8S9qskC/Uhlvenc9jIVvi1rRhYjLf1ICpTxTuAJKCv9IxEvemFyi40Bc
 i+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HRYyjRcr5P6f1XLp8XNAa0vBcwdzkX/fgCthmVY97MM=;
 b=ifg4DEVsJvZxAlHKdgIH8puyC9aYLHnb6s6NU9QHA2TllKgFlrOCVDDJxI9dOtdkXn
 c9LBG7Croi2nusX76X9DSuz71tcXtM5PQWHXvv4uei2Uk8D6+GG7PoWIar+QA9Lg/JFf
 yMnVUPhTzy6bEJCKAYq5DS1DWOXbHf+/vu8dTFCurjqI6by6Kd0C3kNUHbt9z6UwC/Py
 BMExMNSWuWeNtIkm+vqYPBImtTZN2yVLMsOEITKxq6FCzjY8uUEJm1m6xDuYoDZ3OP4l
 r2Hir+fHV9rbMEYLJYfJ+zoITnAjurIafD4PuQ0PX6rVN1uqVvZ0LnOq1/r7t9bW6Vw6
 ERbg==
X-Gm-Message-State: AGi0PuZzmlknxRCs0YSs7sMF4d5LqcA5o2Bvgywoc5sO2te4OaY2KrMJ
 rbAJvKDStisV2VzePX6Srs24puwWFd7FhkO58xA1H/ZW
X-Google-Smtp-Source: APiQypJxzGeXVlgqAf2/RGrdLNkNuV4LcDbwv4aloGWmT4N9q1IOTY/kKgRTqt5vyCx0+x2FaQmh1W9v7xvfzJhulhg=
X-Received: by 2002:a1f:2414:: with SMTP id k20mr16873104vkk.57.1585769182804; 
 Wed, 01 Apr 2020 12:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-8-chris@chris-wilson.co.uk>
 <CAM0jSHNPFgEwensdSNvVj_twgyXp15-xtyumT3Jdw7p+EUNMzA@mail.gmail.com>
 <158576772942.5852.2189448640813013601@build.alporthouse.com>
In-Reply-To: <158576772942.5852.2189448640813013601@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 20:25:56 +0100
Message-ID: <CAM0jSHMHb5zb-DLu0xu4cryPbn16RbfkHSNg=cyB+HoC_GuakA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/gt: Only wait for GPU
 activity before unbinding a GGTT fence
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

On Wed, 1 Apr 2020 at 20:02, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2020-04-01 19:56:23)
> > On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Only GPU activity via the GGTT fence is asynchronous, we know that we
> > > control the CPU access directly, so we only need to wait for the GPU to
> > > stop using the fence before we relinquish it.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 12 ++++++++----
> > >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  3 +++
> > >  drivers/gpu/drm/i915/i915_vma.c              |  4 ++++
> > >  3 files changed, 15 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > > index 225970f4a4ef..74f8201486b2 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > > @@ -239,15 +239,18 @@ static int fence_update(struct i915_fence_reg *fence,
> > >                 if (!i915_vma_is_map_and_fenceable(vma))
> > >                         return -EINVAL;
> > >
> > > -               ret = i915_vma_sync(vma);
> > > -               if (ret)
> > > -                       return ret;
> > > +               if (INTEL_GEN(fence_to_i915(fence)) < 4) {
> > > +                       /* implicit 'unfenced' GPU blits */
> > > +                       ret = i915_vma_sync(vma);
> >
> > What was the strangeness with gen < 4 again?
>
> From gen4, all gpu ops have implicit fences and never reference the
> global fence registers.
>
> if (gpu_uses_fence_registers())
>
> worksforme
>
> > > +                       if (ret)
> > > +                               return ret;
> > > +               }
> > >         }
> > >
> > >         old = xchg(&fence->vma, NULL);
> > >         if (old) {
> > >                 /* XXX Ideally we would move the waiting to outside the mutex */
> > > -               ret = i915_vma_sync(old);
> > > +               ret = i915_active_wait(&fence->active);
> > >                 if (ret) {
> > >                         fence->vma = old;
> > >                         return ret;
> > > @@ -869,6 +872,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
> > >         for (i = 0; i < num_fences; i++) {
> > >                 struct i915_fence_reg *fence = &ggtt->fence_regs[i];
> > >
> > > +               i915_active_init(&fence->active, NULL, NULL);
> >
> > Some active_fini?
>
> For debug peace of mind, I think we added fini_fences so should be easy
> to type up.

Ok,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
