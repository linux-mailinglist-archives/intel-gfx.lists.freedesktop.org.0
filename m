Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCA62BAC55
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 16:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7A46E8CB;
	Fri, 20 Nov 2020 15:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6176E8CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 15:02:07 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id u12so10395929wrt.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 07:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=jqz5UUOEhQicM8GI1n91U9BhGV2BVxiLUJ6mo3aw7K4=;
 b=Za9K5ZBRRUOSU+0PZlbgfXPoH9UJHcGZJXwkFjGFMJH1oiLnbIPrrDVhiJxSyC16Ax
 IOXjrzfxBVKv4jkQm7Ufl+ViL6OnMvjv9Clx+XkaaiRWogoWhDQY+pCfWbOerFbIqzUT
 RIt3OBcx+tHFlmzAIMMtC8HZwqxhBlw4cwXnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=jqz5UUOEhQicM8GI1n91U9BhGV2BVxiLUJ6mo3aw7K4=;
 b=YegBGbuYlK4KqB/Kt/O5P34JuWzhAyAyHfwdCTPLmqmh2ghcvRbx31IQQqhad6/UDK
 7oogWzMovylHOF7bgFW0fDhaoUSrsPaQcWbfBNGinmYmEd/mtnX1qc/N227y4RvYh5Lt
 j2hkfZGp5Bs+MYT2VxGpBSpLik1uPkMFZVcTsrUcPR6cZLr7JJujtXdy64ZGr7LHqxod
 eOKoA6iqQylQEnRkIn9vlAwuChNqPus8XgkZaDhhJHjFt3ZRQkH7gytfpiIwU8UOaJJj
 aLZ0b3UgbWWUpAu9qkVyfyPstCFxmFMa3u2UhVONlaPJhdk6J9WJ+5g6FfBz/MdkUPKk
 jVDw==
X-Gm-Message-State: AOAM532JMTebuWSgkfYiH45PUDqBM2ve4Hb8Fg+vZ2Gd8z+C9Nz07+O+
 re3M6tHzPuAbT7gx1Dta7xL3LA==
X-Google-Smtp-Source: ABdhPJwCO3CSQICPk9Pv96NQEDcEp0urkvsbCS2ctV63pmGILJUA9/JLkDue0FlOM93UAlTT4tyiyg==
X-Received: by 2002:a05:6000:14a:: with SMTP id
 r10mr4302070wrx.149.1605884511731; 
 Fri, 20 Nov 2020 07:01:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x63sm5104218wmb.48.2020.11.20.07.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Nov 2020 07:01:50 -0800 (PST)
Date: Fri, 20 Nov 2020 16:01:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20201120150148.GJ401619@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Thomas Hellstrom <thellstrom@vmware.com>,
 Brian Paul <brianp@vmware.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Huang Rui <ray.huang@amd.com>
References: <20201120095445.1195585-1-daniel.vetter@ffwll.ch>
 <20201120095445.1195585-5-daniel.vetter@ffwll.ch>
 <26a62dfb-02e4-1707-c833-a3c8d5cbe828@amd.com>
 <CAKMK7uHnYGiBsBLeyGA8sZXmAiaHaym9jnLKN_xY4VAtKJjG5A@mail.gmail.com>
 <0b853a0e-b737-e02c-b885-0b0249449cb3@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b853a0e-b737-e02c-b885-0b0249449cb3@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-xfs@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Huang Rui <ray.huang@amd.com>,
 Brian Paul <brianp@vmware.com>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 20, 2020 at 11:08:31AM +0100, Christian K=F6nig wrote:
> Am 20.11.20 um 11:05 schrieb Daniel Vetter:
> > On Fri, Nov 20, 2020 at 11:04 AM Christian K=F6nig
> > <christian.koenig@amd.com> wrote:
> > > Am 20.11.20 um 10:54 schrieb Daniel Vetter:
> > > > Random observation while trying to review Christian's patch series =
to
> > > > stop looking at struct page for dma-buf imports.
> > > > =

> > > > This was originally added in
> > > > =

> > > > commit 58aa6622d32af7d2c08d45085f44c54554a16ed7
> > > > Author: Thomas Hellstrom <thellstrom@vmware.com>
> > > > Date:   Fri Jan 3 11:47:23 2014 +0100
> > > > =

> > > >       drm/ttm: Correctly set page mapping and -index members
> > > > =

> > > >       Needed for some vm operations; most notably unmap_mapping_ran=
ge() with
> > > >       even_cows =3D 0.
> > > > =

> > > >       Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
> > > >       Reviewed-by: Brian Paul <brianp@vmware.com>
> > > > =

> > > > but we do not have a single caller of unmap_mapping_range with
> > > > even_cows =3D=3D 0. And all the gem drivers don't do this, so anoth=
er
> > > > small thing we could standardize between drm and ttm drivers.
> > > > =

> > > > Plus I don't really see a need for unamp_mapping_range where we don=
't
> > > > want to indiscriminately shoot down all ptes.
> > > > =

> > > > Cc: Thomas Hellstrom <thellstrom@vmware.com>
> > > > Cc: Brian Paul <brianp@vmware.com>
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Christian Koenig <christian.koenig@amd.com>
> > > > Cc: Huang Rui <ray.huang@amd.com>
> > > This is still a NAK as long as we can't come up with a better way to
> > > track TTMs page allocations.
> > > =

> > > Additional to that page_mapping() is used quite extensively in the mm
> > > code and I'm not sure if that isn't needed for other stuff as well.
> > Apologies, I'm honestly not quite sure how this lone patch here ended
> > up in this submission. I didn't want to send it out.
> =

> No problem.
> =

> But looking a bit deeper into the mm code that other drm drivers don't set
> this correctly and still use unmap_mapping_range() sounds like quite a bug
> to me.
> =

> Going to track down what exactly that is used for.

Pagecache shootdown. unmap_mapping_range only shoots down from the virtual
side. Since that's all we care about, we don't need to set up the
address_space in the page.
-Daniel

> =

> Christian.
> =

> > -Daniel
> > =

> > > Regards,
> > > Christian.
> > > =

> > > > ---
> > > >    drivers/gpu/drm/ttm/ttm_tt.c | 12 ------------
> > > >    1 file changed, 12 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm=
_tt.c
> > > > index da9eeffe0c6d..5b2eb6d58bb7 100644
> > > > --- a/drivers/gpu/drm/ttm/ttm_tt.c
> > > > +++ b/drivers/gpu/drm/ttm/ttm_tt.c
> > > > @@ -284,17 +284,6 @@ int ttm_tt_swapout(struct ttm_bo_device *bdev,=
 struct ttm_tt *ttm)
> > > >        return ret;
> > > >    }
> > > > =

> > > > -static void ttm_tt_add_mapping(struct ttm_bo_device *bdev, struct =
ttm_tt *ttm)
> > > > -{
> > > > -     pgoff_t i;
> > > > -
> > > > -     if (ttm->page_flags & TTM_PAGE_FLAG_SG)
> > > > -             return;
> > > > -
> > > > -     for (i =3D 0; i < ttm->num_pages; ++i)
> > > > -             ttm->pages[i]->mapping =3D bdev->dev_mapping;
> > > > -}
> > > > -
> > > >    int ttm_tt_populate(struct ttm_bo_device *bdev,
> > > >                    struct ttm_tt *ttm, struct ttm_operation_ctx *ct=
x)
> > > >    {
> > > > @@ -313,7 +302,6 @@ int ttm_tt_populate(struct ttm_bo_device *bdev,
> > > >        if (ret)
> > > >                return ret;
> > > > =

> > > > -     ttm_tt_add_mapping(bdev, ttm);
> > > >        ttm->page_flags |=3D TTM_PAGE_FLAG_PRIV_POPULATED;
> > > >        if (unlikely(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
> > > >                ret =3D ttm_tt_swapin(ttm);
> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
