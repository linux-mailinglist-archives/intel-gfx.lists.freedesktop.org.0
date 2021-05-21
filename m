Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E433D38C9A3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 17:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4BC6E881;
	Fri, 21 May 2021 15:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3DA6E929
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 15:00:46 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id o10so17496375ilm.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 08:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=basnieuwenhuizen.nl; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oQj0FNiG5bAM6343Ct0j671goIZefi3SHzLA0KT/hl8=;
 b=WRZG8R/TiBJaa40Inm1tkYallr21e2Cs/WDV6SMojo2Kx+RJPr6/Y8bBCZuWNFWr9P
 HOScqfCSYVrJMAVgScEYpvYHplI7iVuU9MkADe30miNNuV4+V/X7FN5lhdilznpCtJjg
 DD8CyaqrLA5qhtxxlI9sS+Ww8R/oNhO79fGag+B6OpA4SqWvZv8sLBIBfx5Em1FaccbW
 WHhzocOycwZNsbN/6KZcG9KUmTQu42swG1xmXQAcFJ/atgF+f34Y2cUXSwgTwCSbkg/x
 Lqple5/CpftCT7yChrBKBh2HhYqAl/z98MB3iPrliv0cdlTnBLj4vmM9dDGRj8k+UTe2
 gljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oQj0FNiG5bAM6343Ct0j671goIZefi3SHzLA0KT/hl8=;
 b=lNjW7jXkG12vYttBpfOJBxzY1kmWU8q3wl/u2JrUwhZL32E05jzP6B9WBzYPxIrG+E
 xHnuN5Au90twPmOkzRGMETGuS6ISXH1ef0d4encLUuA/5qOfRJk6/kkVR5PjhNZGfG6Y
 q3HUMMjD+Gz/CUQ53cGt/pvhEdlAxRU0fpE9FlA1P//r6oxtY3FTjhRl1T1bAncQZRx6
 xWVC5/pTzqQebq5+nv82nohUKstRmCDTSzdFN0tuq7JXwbbSoxHTCf+r94pJcAssYojK
 F5XulJ4c164x7twp1q/ueWm+La19vgX7E8fMjX0xidjHtuG0/YY8ftb0A4yFoTCsIu3d
 yueQ==
X-Gm-Message-State: AOAM531t/sHKvPOKpVA8qw+FxBxsCmKhfCeO2FbtR5mKJhZdtkLAOA1X
 XetH/ZVpSN3ShWVV2ZH0odB/wiVpZgnrPT64eQ4KQw==
X-Google-Smtp-Source: ABdhPJwFLlg9azhy3Koju3Q+BJeqcaD6/u45aY3WiO+f1FPZOGvKThJnsIadcwaVPRhwU3mmQmZX8X01e+eLbQeJu0k=
X-Received: by 2002:a05:6e02:11b3:: with SMTP id
 19mr11897277ilj.41.1621609245262; 
 Fri, 21 May 2021 08:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAP+8YyEhRwgz2hCri3K7Kv1OusVa_LGEuKZqQEx5jv+NiDKZrA@mail.gmail.com>
 <YKfFqrlLrikGMn4K@phenom.ffwll.local>
In-Reply-To: <YKfFqrlLrikGMn4K@phenom.ffwll.local>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Fri, 21 May 2021 17:00:46 +0200
Message-ID: <CAP+8YyG0o58dQt_tvnJ2ESbeqo02xxvFdifpMwnhz2VYNk8HUw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/amdgpu: Comply with implicit
 fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 21, 2021 at 4:37 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, May 21, 2021 at 11:46:23AM +0200, Bas Nieuwenhuizen wrote:
> > On Fri, May 21, 2021 at 11:10 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > ---
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > index 88a24a0b5691..cc8426e1e8a8 100644
> > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > @@ -617,8 +617,8 @@ static int amdgpu_cs_parser_bos(struct amdgpu_cs_parser *p,
> > >         amdgpu_bo_list_for_each_entry(e, p->bo_list) {
> > >                 struct amdgpu_bo *bo = ttm_to_amdgpu_bo(e->tv.bo);
> > >
> > > -               /* Make sure we use the exclusive slot for shared BOs */
> > > -               if (bo->prime_shared_count)
> > > +               /* Make sure we use the exclusive slot for all potentially shared BOs */
> > > +               if (!(bo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID))
> > >                         e->tv.num_shared = 0;
> >
> > I think it also makes sense to skip this with
> > AMDGPU_GEM_CREATE_EXPLICIT_SYNC? It can be shared but I don't think
> > anyone expects implicit sync to happen with those.
>
> Ah yes, I missed this entirely. So the "no implicit flag" is already
> there, and the _only_ thing that's missing really is a way to fish out the
> implicit fences, and set them.
>
> https://lore.kernel.org/dri-devel/20210520190007.534046-1-jason@jlekstrand.net/
>
> So I think all that's really needed in radv is not setting
> RADEON_FLAG_IMPLICIT_SYNC for winsys buffers when Jason's dma-buf ioctl
> are present (means you need to do some import/export and keep the fd
> around for winsys buffers, but shouldn't be too bad), and then control the
> implicit fences entirely explicitly like vk expects.

That is the part I'm less sure about. This is a BO wide flag so we are
also disabling implicit sync in the compositor. If the compositor does
only do read stuff that is ok, as the inserted exclusive fence will
work for that. But as I learned recently the app provided buffer may
end up being written to by the X server which open a whole can of
potential problems if implicit sync gets disabled between Xserver
operations on the app provided buffer. Hence setting that on the WSI
buffer is a whole new can of potential problems and hence I've said a
submission based flag would be preferred.

I can certainly try it out though.

>
> Are you bored enough to type this up for radv? I'll give Jason's kernel
> stuff another review meanwhile.
> -Daniel
>
> > >                 e->bo_va = amdgpu_vm_bo_find(vm, bo);
> > >         }
> > > --
> > > 2.31.0
> > >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
