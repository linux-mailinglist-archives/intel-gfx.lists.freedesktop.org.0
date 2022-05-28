Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC43536ED4
	for <lists+intel-gfx@lfdr.de>; Sun, 29 May 2022 01:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5DC10E122;
	Sat, 28 May 2022 23:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AE110E122
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 May 2022 23:52:21 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id f4so7039509pgf.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 May 2022 16:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fireburn-co-uk.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Nufpgj4WrVDOY3pDZhjA4ff1zW3gqCcbtHnisr85ZyY=;
 b=s0JQFCLPbNMyIAn/e51czi5dJtQ+dUeQ2gvMOdGi6tS2NgbI49v0VsbB+PAc82PIw4
 nQgco7a3P8lLmLsPJVHQB9E71kRVsqug5ma+EM8qIxBCmqM5oXD0la1ELVD8Ulz9yzYD
 VnKBV+KJK4jypCIAVWQzOmVG3LmFDIfNR0MMDEAYR08xOW2QMX5qesJKm+Uf7E+hDduJ
 Pcq6QlB4Uf3I3qy3ztboQvxZyfMrKJlj5Wkqq0ktf4k6Tb6JaWrwXSkA7p1mhDXONON0
 BKFL3A0ImJ/Y1TRYh8tL8JqKGqc4ToS/epezYxWCjZbGqwgXt9zYfGPYU3c0uyilt+qo
 9ZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Nufpgj4WrVDOY3pDZhjA4ff1zW3gqCcbtHnisr85ZyY=;
 b=EptkatBD4aj9lzQ1KlPSkUjmm1IwYzWuu2UJkvKR43X9zxS87KsX2BEtr/eoDRq4Fj
 fV/A3ojMnut7k8Pc/ZnFxBjYbAd7ZGa7E5qPlIPZUM7jmA5PCN9XXjPfUWl+e6MKFPOB
 T19CklbrYcLfIfQM7s6JWrXavhwQwHb+AwMLk8p002C/48ToRmM8M6o129G4LMW5RYVx
 i2vD87RGT2MAeokD085t1GCoEtYOo6KEhbpgmPzo6owAkDgrXCVGfCmJU8w/tJ0qA71K
 K1A0nhno4oStru+yTt4wXUgm5bLaq7F88P+hS+e7R97qI20Cvvwd4cFwpwkHaDOuY2J8
 9tag==
X-Gm-Message-State: AOAM532HAcRULrpwTA6lZ9pY7phaLnPFvhOmytTZfW5DjJb6554PwZj5
 LODuoDqIdja3Mu/VQGvg5qaHKuLX5ViGuOysg1xqvQ==
X-Google-Smtp-Source: ABdhPJyUehceXYDZKshl8AFUK3x2Dnnl2LNGICbZeEaV/YzFZUoSDJRYF36aS3WgW9cUC8wLZHJcUOJztjxi9ebdfEw=
X-Received: by 2002:a63:d747:0:b0:3db:74a9:ff92 with SMTP id
 w7-20020a63d747000000b003db74a9ff92mr43048483pgi.293.1653781940899; Sat, 28
 May 2022 16:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
 <CAHbf0-H5uE4RtZwY0L8Wz0VG6QnU1+E3yhg3fDFVc3n__=nrNQ@mail.gmail.com>
 <c0facbf4-0e14-fde5-4334-499135a36f0c@amd.com>
 <CAHbf0-FMqAA3vWx_uRDYG_vr=FX+tFoLAL6BZLDe5upv7KJqrg@mail.gmail.com>
 <CAHbf0-En606VT_HYDyeo6TtsfSZmR_+wsZaVgS4XiedLO9ndiA@mail.gmail.com>
 <8b99ca20-f711-ec32-0cd2-16fc52846ce0@amd.com>
 <CAHbf0-EzPP5gAyZQmxeAo3Ep0g-rO4XbDgEB_SdsR84xY+at9A@mail.gmail.com>
 <CAHbf0-G-rnvNXaXxMzkPerW6h=9vkxJyysUUV-oJV5UGD67KqA@mail.gmail.com>
 <CADnq5_PTRPTsCvGwKFzNA_k7diAVqYEv1xV1yJszRD1K-v2FfQ@mail.gmail.com>
 <MN2PR12MB43425B6EC07A7F6877B884C7E4DB9@MN2PR12MB4342.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB43425B6EC07A7F6877B884C7E4DB9@MN2PR12MB4342.namprd12.prod.outlook.com>
From: Mike Lothian <mike@fireburn.co.uk>
Date: Sun, 29 May 2022 00:52:09 +0100
Message-ID: <CAHbf0-G8Qgv-uKHBYxhv=SLUv7-z4gzjMziN_x+oAobTrqW0PQ@mail.gmail.com>
To: "Paneer Selvam, Arunpravin" <Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v12] drm/amdgpu: add drm buddy support to
 amdgpu
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
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexdeucher@gmail.com>, "Koenig,
 Christian" <Christian.Koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 28 May 2022 at 08:44, Paneer Selvam, Arunpravin
<Arunpravin.PaneerSelvam@amd.com> wrote:
>
> [Public]
>
> Hi,
>
> After investigating quite some time on this issue, found freeze problem i=
s not with the amdgpu part of buddy allocator patch as the patch doesn=E2=
=80=99t throw any issues when applied separately on top of the stable base =
of drm-next. After digging more into this issue, the below patch seems to b=
e the cause of this problem,
>
> drm/ttm: rework bulk move handling v5
> https://cgit.freedesktop.org/drm/drm/commit/?id=3Dfee2ede155423b0f7a55905=
0a39750b98fe9db69
>
> when this patch applied on top of the stable (working version) of drm-nex=
t without buddy allocator patch, we can see multiple issues listed below, e=
ach thrown randomly at every GravityMark run, 1. general protection fault a=
t ttm_lru_bulk_move_tail() 2. NULL pointer deference at ttm_lru_bulk_move_t=
ail() 3. NULL pointer deference at ttm_resource_init().
>
> Regards,
> Arun.

Thanks for tracking it down, fee2ede155423b0f7a559050a39750b98fe9db69
isn't trivial to revert

Hopefully Christian can figure it out
