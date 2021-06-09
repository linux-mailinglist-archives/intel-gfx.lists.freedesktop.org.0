Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3733A15FF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 15:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5090D6E3EB;
	Wed,  9 Jun 2021 13:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B626E3B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 13:48:07 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id e11so15383464wrg.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 06:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=WF+Uf0+6uR0qABWPQ66eqhfQdl7rZ4gMMiMR2FGvLq4=;
 b=gz2EonoaoBSw2ST+sIey+GXUGkXRHdJ7428pnv0qX7c26MyUzA6e8zM60WtIKQfUDZ
 07ulSvQoq370E+5uVXtEkwGKvZ5Lh6gDeaeVDIqgw3fQKHQoNcu5SsChl7IHfXH4Yuj9
 U5Ut9590YeC6IcEsouEfVPVG48gH9dQlIcz2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=WF+Uf0+6uR0qABWPQ66eqhfQdl7rZ4gMMiMR2FGvLq4=;
 b=e3dnBTPsvsreoXCr04TWM2n1IRERZPRadESiLnhQ5uifxMGejBjqiYSeYWs4tQ6xNU
 f6yntXBuiClV8wopRqEs/1ZpuP8zjaiWbk2UGCZhcuRCqvyeTFBaA+qT31evYqD5B/rU
 sqV2ov7MvBI29zylZ1T80zdA37+YcceHaXR7PWdrFW34yEyJhgSSE6kgU3AANQBdrxna
 UrRojuQWrSxR3cEvAjzab3zo6dzyJv67ax4oqmQFqh7bzAunqzYOs3cTr/Lx0dueo+1u
 d/+yjkF+IwS3uui20UVbL87Fmp5ykTVCvgiNrGKpy06YYBTcGIfAUkpQbNfiavPs+Ubv
 0EYQ==
X-Gm-Message-State: AOAM5324u9Jm0xcufrO8KSumYXhYxMcBowg+B6GEQ2bWcfncqE9nK354
 7JEftzuurSgWqaIr/R2s7rADBg==
X-Google-Smtp-Source: ABdhPJw8vzGv+KqVF/GkikUJ4ivo4GKJjxbjWP57SoIFORIov3TjYsS91udU2xEqWX1qvaxTOo30RA==
X-Received: by 2002:adf:ea86:: with SMTP id s6mr28336030wrm.75.1623246486104; 
 Wed, 09 Jun 2021 06:48:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b15sm10811649wrr.27.2021.06.09.06.48.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 06:48:05 -0700 (PDT)
Date: Wed, 9 Jun 2021 15:48:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YMDGkyhvVAufp68p@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Felix Kuehling <felix.kuehling@amd.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@linux.ie>,
 DRI <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20210608125046.07c6deca@canb.auug.org.au>
 <22010e38-3686-87ce-532d-4a53cae990b1@amd.com>
 <7b825bc4-9f81-3010-6445-d6708e34a9bd@amd.com>
 <6dc40376-77fc-2f43-693e-1bd2c52d9cbd@amd.com>
 <d06e7d13-f24d-40f9-64bd-2b6e45d74462@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d06e7d13-f24d-40f9-64bd-2b6e45d74462@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Dave Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Felix Kuehling <felix.kuehling@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 08, 2021 at 09:11:57AM +0200, Christian K=F6nig wrote:
> Am 08.06.21 um 09:06 schrieb Felix Kuehling:
> > Am 2021-06-08 um 2:55 a.m. schrieb Christian K=F6nig:
> > > Hi Felix,
> > > =

> > > that should already be fixed in drm-tip as part of the merge of the
> > > TTM changes.
> > No, the preempt_mgr doesn't exist in drm-misc-next. It does exist in
> > drm-next, but that doesn't seem to have the TTM changes yet.
> > =

> > Is there another DRM branch or repository that you're referring to with
> > drm-tip?
> =

> drm-tip is an integration branch for conflict resolution.
> =

> E.g. when we have changes in drm-misc-next which break when we merge with
> drm-next I'm informed and need to provide a conflict resolution patch.
> =

> This is automatically applied when drm-next and drm-misc-next are merged
> together again.
> =

> It just looks like that drm-next and drm-misc-next are merged manually in=
to
> linux-next and then the conflict resolution doesn't apply and everything
> breaks into pieces.
> =

> Adding Daniel as well. How should that be handled? Should we merge
> drm-misc-next into drm-next now?

Yeah I'm expecting there will be a pull request this week. I've given Dave
Airlie a headsup that the conflict is "interesting" and that maybe he
needs to push out a test branch for you and Thomas Hellstrom to
review/test first.
-Daniel

> =

> Thanks,
> Christian.
> =

> > =

> > Regards,
> >  =A0 Fel
> > =

> > > Regards,
> > > Christian.
> > > =

> > > Am 08.06.21 um 07:37 schrieb Felix Kuehling:
> > > > Hi Christian,
> > > > =

> > > > I based amdgpu_preempt_mgr on amdgpu_gtt_mgr and now I'm looking at=
 what
> > > > changed there. Looks like I'll need to create a dummy node in
> > > > amdgpu_preempt_mgr_new to satisfy TTM, and free it in
> > > > amdgpu_preempt_mgr_del.
> > > > =

> > > > Thanks,
> > > >  =A0=A0 Felix
> > > > =

> > > > =

> > > > Am 2021-06-07 um 10:50 p.m. schrieb Stephen Rothwell:
> > > > > Hi all,
> > > > > =

> > > > > After merging the drm-misc tree, today's linux-next build (x86_64
> > > > > allmodconfig) failed like this:
> > > > > =

> > > > > drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c: In function
> > > > > 'amdgpu_preempt_mgr_new':
> > > > > drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c:75:5: error: 'str=
uct
> > > > > ttm_resource' has no member named 'mm_node'
> > > > >  =A0=A0=A0 75 |=A0 mem->mm_node =3D NULL;
> > > > >  =A0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 ^~
> > > > > drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c: At top level:
> > > > > drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c:129:11: error:
> > > > > initialization of 'int (*)(struct ttm_resource_manager *, struct
> > > > > ttm_buffer_object *, const struct ttm_place *, struct ttm_resource
> > > > > **)' from incompatible pointer type 'int (*)(struct
> > > > > ttm_resource_manager *, struct ttm_buffer_object *, const struct
> > > > > ttm_place *, struct ttm_resource *)'
> > > > > [-Werror=3Dincompatible-pointer-types]
> > > > >  =A0=A0 129 |=A0 .alloc =3D amdgpu_preempt_mgr_new,
> > > > >  =A0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^~~~~~~~~~~~~=
~~~~~~~~~
> > > > > drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c:129:11: note: (ne=
ar
> > > > > initialization for 'amdgpu_preempt_mgr_func.alloc')
> > > > > =

> > > > > Caused by commit
> > > > > =

> > > > >  =A0=A0 cb1c81467af3 ("drm/ttm: flip the switch for driver alloca=
ted
> > > > > resources v2")
> > > > > =

> > > > > from the drm-misc tree interacting with commit
> > > > > =

> > > > >  =A0=A0 b453e42a6e8b ("drm/amdgpu: Add new placement for preempti=
ble SG
> > > > > BOs")
> > > > > =

> > > > > from the drm tree.
> > > > > =

> > > > > I don't know how to fix this, so I added the following hack (a be=
tter
> > > > > fix would be nice):
> > > > > =

> > > > > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > > > > Date: Tue, 8 Jun 2021 12:41:16 +1000
> > > > > Subject: [PATCH] hack fix up for needed amdgpu_preempt_mgr_new() =
fix up
> > > > > =

> > > > > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > > > > ---
> > > > >  =A0 drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c | 4 +++-
> > > > >  =A0 1 file changed, 3 insertions(+), 1 deletion(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c
> > > > > b/drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c
> > > > > index d607f314cc1b..e1a7b3e967b9 100644
> > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c
> > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_preempt_mgr.c
> > > > > @@ -66,14 +66,16 @@ static DEVICE_ATTR_RO(mem_info_preempt_used);
> > > > >  =A0 static int amdgpu_preempt_mgr_new(struct ttm_resource_manage=
r *man,
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct=
 ttm_buffer_object *tbo,
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const =
struct ttm_place *place,
> > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct ttm_r=
esource *mem)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct ttm_r=
esource **res)
> > > > >  =A0 {
> > > > > +#if 0
> > > > >  =A0=A0=A0=A0=A0 struct amdgpu_preempt_mgr *mgr =3D to_preempt_mg=
r(man);
> > > > >  =A0 =A0=A0=A0=A0=A0 atomic64_add(mem->num_pages, &mgr->used);
> > > > >  =A0 =A0=A0=A0=A0=A0 mem->mm_node =3D NULL;
> > > > >  =A0=A0=A0=A0=A0 mem->start =3D AMDGPU_BO_INVALID_OFFSET;
> > > > > +#endif
> > > > >  =A0=A0=A0=A0=A0 return 0;
> > > > >  =A0 }
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
