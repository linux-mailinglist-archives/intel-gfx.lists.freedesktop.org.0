Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E383E1789
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 17:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777906EAB4;
	Thu,  5 Aug 2021 15:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E046EAB4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 15:06:51 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id t128so7779786oig.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 08:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nldFCRREWDgv9Sz96vuS5wVnx7A75t+USz3dEw/9ctY=;
 b=K6hR2AkSvdxCLU1q0bYixc2xpESvsazcTUisA9QumzrmQPtmSRfEaQPuYSJgy2Tc7o
 +zMS1xGPnvd67IMDt60ylJEReykZADlRCcvswVI8OQTsF2n3iUv5ioZDGg8b4/0a+kJ4
 VvvSgZEgGmDKeYm5PXX7ui1SAbwl7gRHrl7o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nldFCRREWDgv9Sz96vuS5wVnx7A75t+USz3dEw/9ctY=;
 b=S68pLVRGFFV3iXK2hmRcMmo9BbggD68XvwwtI8RLsVJiKiDxzIeQ/guTuf1rIgGoi+
 IDHnWVP2EJtzYXfH0Le5ZR3KpL1sqWM/L9RKTlHO/WtJJEtSho7iny6Gj3ala5FMe4lF
 WsD2JshtyPCuLY05d2oli8IBJhIemW9VZk/gFHnk5gOvw427HmkP3dsH6jz/HDPu85Vr
 oUHjmx/Sm5oi4xFlR9oLv6KSvNaxXCQkq/l6qtf+/it3N3XXviZWtmPX7B1BDebIogj/
 tlc1Q/J7Q7+DYZjx9/MN9ABv8J4QqiLelpAxghUHveJMgNv6Hig1gY4BiavXT+KFYs0B
 pvCQ==
X-Gm-Message-State: AOAM531Rcyn8UbFqzZ6mUV2hweSFfKxy2Agdi/fOk6tnXwB2uzFMhpRq
 HhsRBX4rmhmGIeHDphxiIeVPNslPJw3Hj1jqIkFaZg==
X-Google-Smtp-Source: ABdhPJzzRHsNQy3uox7Snerlk2bqd6n1CMCcKzlMbMKtQKreCi707H+eJeE3pU9cJF8gZTPK0SseO2WE9oKU632KJy4=
X-Received: by 2002:a54:4015:: with SMTP id x21mr1811610oie.128.1628176010612; 
 Thu, 05 Aug 2021 08:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-15-daniel.vetter@ffwll.ch>
 <f883e6af-284c-9400-ca3d-b5192d11fb01@amd.com>
 <CAKMK7uEVbTOuJVvQDybFM+9x4LUP+ojcCzWfkp4sau3oX7fjXQ@mail.gmail.com>
 <32f5f17d-9c2b-c6e3-9809-4100bcadf21c@amd.com>
In-Reply-To: <32f5f17d-9c2b-c6e3-9809-4100bcadf21c@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 5 Aug 2021 17:06:39 +0200
Message-ID: <CAKMK7uHhUTPzBXSYZfJr8ZtqcT3xqg6ZzhOoc12Dgi+aVDZNYw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: DRI Development <dri-devel@lists.freedesktop.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 Melissa Wen <mwen@igalia.com>, Daniel Vetter <daniel.vetter@intel.com>, 
 Luben Tuikov <luben.tuikov@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 14/20] drm/sched: Don't store
 self-dependencies
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 5, 2021 at 3:57 PM Christian K=C3=B6nig <christian.koenig@amd.c=
om> wrote:
> Am 05.08.21 um 15:25 schrieb Daniel Vetter:
> > On Thu, Aug 5, 2021 at 3:18 PM Christian K=C3=B6nig <christian.koenig@a=
md.com> wrote:
> >>
> >>
> >> Am 05.08.21 um 12:46 schrieb Daniel Vetter:
> >>> This is essentially part of drm_sched_dependency_optimized(), which
> >>> only amdgpu seems to make use of. Use it a bit more.
> >>>
> >>> This would mean that as-is amdgpu can't use the dependency helpers, a=
t
> >>> least not with the current approach amdgpu has for deciding whether a
> >>> vm_flush is needed. Since amdgpu also has very special rules around
> >>> implicit fencing it can't use those helpers either, and adding a
> >>> drm_sched_job_await_fence_always or similar for amdgpu wouldn't be to=
o
> >>> onerous. That way the special case handling for amdgpu sticks even
> >>> more out and we have higher chances that reviewers that go across all
> >>> drivers wont miss it.
> >> Well you should probably drop the sentence about the vm_flush, this is
> >> completely unrelated.
> >>
> >> Additional to that I still don't think that this is a good idea.
> >> Dependency handling is something completely driver specific.
> >>
> >> E.g. even when you have submitted jobs back to back they still might
> >> need a cache flush in between and that is not only for amdgpu like thi=
s.
> >>
> >> What you can do is to optimize for while looking at the fences later o=
n
> >> and then note that you have done so and what the last hw fence is you
> >> used instead.
> > Out of 6 drivers using drm/sched 5 can use this. When we get i915
> > over, that one will be added to the list. amdgpu can't use any of this
> > anyway due to the vm_id allocation requirements, which is why I
> > mention that. Also note that all the callbacks are still there, so you
> > can just ignore this all and still build your own. Like amdgpu does.
>
> The VMID allocation stuff is rather easy to handle, that's why I noted
> we should remove that sentence.
>
> The problematic stuff is handling the cache flush and pipeline sync
> which you make impossible with this here.

Well the vmid is tied to the flush, but yeah the commit message
doesn't make this clear.

> > So I'm not sure what exactly your object is, aside from "this doesn't
> > fit for amdgpu", which a) I know b) the commit message explains c)
> > doesn't actually hurt amdgpu in the slightest. And we still get the
> > benefit that for most drivers it's a nice optimization.
>
> Well exactly that's what I wanted to avoid. We still can use this in
> amdgpu even with the VMID allocation stuff and I still hope to do so.
>
> Can't we add this as a wrapper or similar?

This patch is not the only thing that will prevent you from using
these helpers, because amdgpu also needs to keep track of all the
fences in the xarray, which these helpers don't - they get cleared out
as we hand them off to the scheduler. So it's more surgery than just
not having this, and I'm honestly not sure it's worth it since you'd
need to duplicate quite a bit more than just the functions to add
dependencies.
-Daniel

-Daniel

> Christian.
>
> > -Daniel
> >
> >> Regards,
> >> Christian.
> >>
> >>> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> >>> Acked-by: Melissa Wen <mwen@igalia.com>
> >>> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >>> Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> >>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> >>> Cc: Luben Tuikov <luben.tuikov@amd.com>
> >>> Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
> >>> Cc: Alex Deucher <alexander.deucher@amd.com>
> >>> ---
> >>>    drivers/gpu/drm/scheduler/sched_main.c | 7 +++++++
> >>>    1 file changed, 7 insertions(+)
> >>>
> >>> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm=
/scheduler/sched_main.c
> >>> index f77456929139..49e507f91ec0 100644
> >>> --- a/drivers/gpu/drm/scheduler/sched_main.c
> >>> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> >>> @@ -660,6 +660,13 @@ int drm_sched_job_add_dependency(struct drm_sche=
d_job *job,
> >>>        if (!fence)
> >>>                return 0;
> >>>
> >>> +     /* if it's a fence from us it's guaranteed to be earlier */
> >>> +     if (fence->context =3D=3D job->entity->fence_context ||
> >>> +         fence->context =3D=3D job->entity->fence_context + 1) {
> >>> +             dma_fence_put(fence);
> >>> +             return 0;
> >>> +     }
> >>> +
> >>>        /* Deduplicate if we already depend on a fence from the same c=
ontext.
> >>>         * This lets the size of the array of deps scale with the numb=
er of
> >>>         * engines involved, rather than the number of BOs.
> >
>


--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
