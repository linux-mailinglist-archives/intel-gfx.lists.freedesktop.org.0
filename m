Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E586D1D303F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E4E6EB3B;
	Thu, 14 May 2020 12:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AEC6EB3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 12:47:14 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id n5so17581260wmd.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 05:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=COVflVHOEuSW5Bmw34Dk2yWHL2qrU8HBExCrishOWcI=;
 b=LY1nmjgqUghCnDTku8VbnnbMKhbK8NeWRzDjIZm/kHYNDqrcdfhV8LI3VtXSWstTiI
 qkcWkcAoLI2sj8qJtb7UMG6mRbwEAeDTGPnTpJFv3Fo3uJquU9aRlR4BOWd+dGG1lFar
 lgx8YJEQBUiEbRgnuarsbhpnyUnbxBNUN0KTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=COVflVHOEuSW5Bmw34Dk2yWHL2qrU8HBExCrishOWcI=;
 b=mq9YN7M1HO2JMTjlYov/JTcEJZkXQPDz/DvWbP/4KkH9oH8JeyeJuot225QOoU70b0
 IRM7aZSsnfaSk4Iyk3uWPh1EllNJKoSLP5CXyAr9jRmr50M28NFH9J1fImd4TFEJzfxO
 c5/+d/GRiChUdACaTIFIY0Qe3LlY77c7qgh+vaogAzc7wItm5cCsFi6BL1Kn/OgzjYzQ
 I/5zXLP+hh3livRckzNrx3fri3T65BogfHfmdZHeTMd2iakdfwMe4U5XCvzEML8aJ7dF
 DG0Xb9HkubiaSEHGEyJKIolT9YALQf2Ovi/09QmX+InXo3fn9a7Yccvips4MD3yTTdJB
 H9jg==
X-Gm-Message-State: AGi0PuaKe/kVtvf7VngZS+bZl3y+uRuy7pC+gdpbnXxL6Imji0rHUKg9
 ip8XbfOMPFgy6cRUsD9c/Rikyg==
X-Google-Smtp-Source: APiQypKtqc8/+WmJuEe7tSBagc+sGmEZ1i78zplXDtJAAdCLWkHz+iPdYcAI7BB0GC4KmpwwzuBc9A==
X-Received: by 2002:a1c:2089:: with SMTP id g131mr28522838wmg.47.1589460433232; 
 Thu, 14 May 2020 05:47:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t129sm14215437wmg.27.2020.05.14.05.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:47:12 -0700 (PDT)
Date: Thu, 14 May 2020 14:47:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200514124710.GX206103@phenom.ffwll.local>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-8-daniel.vetter@ffwll.ch>
 <0032ff1a-c2a3-23ec-79e1-342bacaf9b33@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0032ff1a-c2a3-23ec-79e1-342bacaf9b33@suse.de>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/shmem-helpers: Redirect mmap for
 imported dma-buf
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 09:23:37AM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 11.05.20 um 11:35 schrieb Daniel Vetter:
> > Currently this seems to work by converting the sgt into a pages array,
> > and then treating it like a native object. Do the right thing and
> > redirect mmap to the exporter.
> > =

> > With this nothing is calling get_pages anymore on imported dma-buf,
> > and we can start to remove the use of the ->pages array for that case.
> > =

> > v2: Rebase
> > =

> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_gem_shmem_helper.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/d=
rm_gem_shmem_helper.c
> > index b9cba5cc61c3..117a7841e284 100644
> > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > @@ -551,6 +551,9 @@ int drm_gem_shmem_mmap(struct drm_gem_object *obj, =
struct vm_area_struct *vma)
> >  	/* Remove the fake offset */
> >  	vma->vm_pgoff -=3D drm_vma_node_start(&obj->vma_node);
> >  =

> > +	if (obj->import_attach)
> > +		return dma_buf_mmap(obj->dma_buf, vma, 0);
> > +
> =

> Just a question: how does it work with the fake value in vm_pgoffset?
> The offset is a DRM-specific thing and the dma-buf exporter expects the
> real offset?

For drm chardev file descriptor we have one file, but want to let
userspace map arbitrary objects. So an object gets a allocated an area
within the over drm mmap space, this fake offset.

For dma-buf mmap otoh there's a 1:1 mapping between fd and object, so no
additional offset needed.
-Daniel

> =

> With this question clarified:
> =

> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> =

> >  	shmem =3D to_drm_gem_shmem_obj(obj);
> >  =

> >  	ret =3D drm_gem_shmem_get_pages(shmem);
> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
