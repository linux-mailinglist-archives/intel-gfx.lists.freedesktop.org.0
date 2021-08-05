Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2453E15A8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 15:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8256EA4E;
	Thu,  5 Aug 2021 13:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D146EA4D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 13:27:26 +0000 (UTC)
Received: by mail-oo1-xc2f.google.com with SMTP id
 w2-20020a4a9e420000b02902859adadf0fso446449ook.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 06:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Qalves52XLJ7vOzp6TLw36xWZEzh27ZO+8Xjdq0smJo=;
 b=Xg+W1IE5Ssz6GXZHPkJ/ntmsbR5J/6Unp8BgOGq1KC6EtahsTDHNutF/BXcPNK64Xd
 gqs5SRJZh4ZqkGqBT39oAYIjQeCqTU7XfOvVNJ0BvdjM6S6lXMQvchoYvnCL+FGqmCZE
 iYgAK1TIJwyAzn51Q+NIyMOnXv9+jFDjnk3Ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Qalves52XLJ7vOzp6TLw36xWZEzh27ZO+8Xjdq0smJo=;
 b=C4WHcog/wtTG1Pi8KaL7zcIgx51Ng42i09trt3PNrahWtWoEb/4kbyqkWZanaXGGo8
 i9NQxGacuo/lCyr6p7PRtRT6wiW5Zpu4LWUDk38sNBmb/aWnNyAYo3TnFWUY5dH0SM31
 DexLehleUSgSC4D8f6UrJ09ZpIPGutBwy+WAmbQ2bYrlXQMhQtwZ5in1GrE5vxHOg9E9
 hLuAveNd6V6ocfYkfb9TvylzOE8+0b500RZfhZy43I7JPmNc9Ld8eaLMh2M/cKEolxbB
 oQxA4osqGvlKl7x17DBHt7NVDSX2KJMhbOrhgrlmk8+3ORGVL8Doklkc+HyesblWaDMA
 7dqA==
X-Gm-Message-State: AOAM531eTT0VEYPpwmyjOdATF7eEE8+y+SANJaB8sEKlnOGBgGYXkzg1
 n2X9UHHqIhr66lPj8tIaeMXyJ7yKxZgxw/O4ulTPVw==
X-Google-Smtp-Source: ABdhPJwdiWRyV6Abe33vo73yoJf4LzwhPZ4TtR31ItS5xOzjfO9OeNix/2PTEIfa21GRYE1Zw9naL7DKQnQkF40GwCw=
X-Received: by 2002:a4a:b402:: with SMTP id y2mr1161405oon.89.1628170045983;
 Thu, 05 Aug 2021 06:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-16-daniel.vetter@ffwll.ch>
 <67fa5409-df0d-df5f-161e-695394bd7eba@amd.com>
In-Reply-To: <67fa5409-df0d-df5f-161e-695394bd7eba@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 5 Aug 2021 15:27:14 +0200
Message-ID: <CAKMK7uHYD9NXugkRQkeJ8qwHWF-tXP54+PMOexcvV7QqyrOcDw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: DRI Development <dri-devel@lists.freedesktop.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Melissa Wen <mwen@igalia.com>, 
 Daniel Vetter <daniel.vetter@intel.com>, Luben Tuikov <luben.tuikov@amd.com>, 
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 15/20] drm/sched: Check locking in
 drm_sched_job_await_implicit
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

On Thu, Aug 5, 2021 at 3:19 PM Christian K=C3=B6nig <christian.koenig@amd.c=
om> wrote:
>
> Am 05.08.21 um 12:47 schrieb Daniel Vetter:
> > You really need to hold the reservation here or all kinds of funny
> > things can happen between grabbing the dependencies and inserting the
> > new fences.
> >
> > Acked-by: Melissa Wen <mwen@igalia.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Luben Tuikov <luben.tuikov@amd.com>
> > Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
> > Cc: Alex Deucher <alexander.deucher@amd.com>
>
> The function name in the subject line should be updated, apart from that
> feel free to add my rb to this patch.

Fixed locally and r-b added, I think the later parts of this series
will need to be resent anyway. Thanks for your review.
-Daniel

>
> Christian.
>
> > ---
> >   drivers/gpu/drm/scheduler/sched_main.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/s=
cheduler/sched_main.c
> > index 49e507f91ec0..1abb40b07324 100644
> > --- a/drivers/gpu/drm/scheduler/sched_main.c
> > +++ b/drivers/gpu/drm/scheduler/sched_main.c
> > @@ -715,6 +715,8 @@ int drm_sched_job_add_implicit_dependencies(struct =
drm_sched_job *job,
> >       struct dma_fence **fences;
> >       unsigned int i, fence_count;
> >
> > +     dma_resv_assert_held(obj->resv);
> > +
> >       if (!write) {
> >               struct dma_fence *fence =3D dma_resv_get_excl_unlocked(ob=
j->resv);
> >
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
