Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11631CD8A2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 13:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C301F6E43D;
	Mon, 11 May 2020 11:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3CA6E43D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 11:37:44 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z72so9211027wmc.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 04:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ONEtdIkAc0XGrzdJ+vZ9El01kQJP8dEySAsiTgZYuB0=;
 b=QZBHN+27NsrB4jrWbRtmq8kKBtqYQxFjmxlehkFzC5xw+yq5qTaio7B1Q39/mwwPH2
 6giK0t+F0BCXOCLRtwvWmQpwooKyIfJXVcj17eaJUsEsOD6rKWb6iGLviL+9raxm0TdI
 BQGuS3FAy/rQHbA2qUa3HWuMgpuXiIx7krzoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ONEtdIkAc0XGrzdJ+vZ9El01kQJP8dEySAsiTgZYuB0=;
 b=Phu+02qrJxAyCl6mThV5U6PNkLWzBsgmfKARMBnHiCaNHLDQZP5d4TS0/SYbC4LNIK
 4ykZmkgGk8RwbhHG7H/iyAKz9BNpyG/8g3z3+PmDIWd355W9s3DlrI7GwPf3aHx/qcJ5
 tsBpWC5VRJWCyysqZZi2wS7tT6h2BTQPxWFv+vR5yPdhw6V0ZeiyQ1I1fphaUX5IX9LL
 kSoHqpunWbYEBSpFXmQoGiYAJNP1P3M43TyFud4bv/hXhQgnUxzLHMdFWc93vplZZl9L
 ogeuOVNPnqS/KgFoSlFtpyK5Cl9gzWgpxQtP92HjdLdl0wmhkN6DbKhaPbQL9u2KWl9o
 C/PA==
X-Gm-Message-State: AGi0PubeI1FVUpKo4eplujFjJ1UNPvyKp0J+hqzYkYUK/PCW9TAPaIWf
 HwSy2VZZinVRZubKEuGDVgG+eg==
X-Google-Smtp-Source: APiQypLW21qp23JdQwUR+Xp+ib17FxstPFRyP2ifSuL9uprRmR3mzz72pX06eak3SJYySbt7OOPzVw==
X-Received: by 2002:a7b:cd10:: with SMTP id f16mr32404977wmj.21.1589197062995; 
 Mon, 11 May 2020 04:37:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w15sm16625890wrl.73.2020.05.11.04.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:37:42 -0700 (PDT)
Date: Mon, 11 May 2020 13:37:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200511113740.GE206103@phenom.ffwll.local>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-6-daniel.vetter@ffwll.ch>
 <d34c53ef-1cba-9559-8169-66535d06b6cf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d34c53ef-1cba-9559-8169-66535d06b6cf@suse.de>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/udl: Don't call get/put_pages on
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dave Airlie <airlied@redhat.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 11, 2020 at 01:23:38PM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 11.05.20 um 11:35 schrieb Daniel Vetter:
> > There's no direct harm, because for the shmem helpers these are noops
> > on imported buffers. The trouble is in the locks these take - I want
> > to change dma_buf_vmap locking, and so need to make sure that we only
> > ever take certain locks on one side of the dma-buf interface: Either
> > for exporters, or for importers.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Alex Deucher <alexander.deucher@amd.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  drivers/gpu/drm/udl/udl_gem.c | 22 ++++++++++++----------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/udl/udl_gem.c b/drivers/gpu/drm/udl/udl_ge=
m.c
> > index b6e26f98aa0a..c68d3e265329 100644
> > --- a/drivers/gpu/drm/udl/udl_gem.c
> > +++ b/drivers/gpu/drm/udl/udl_gem.c
> > @@ -46,29 +46,31 @@ static void *udl_gem_object_vmap(struct drm_gem_obj=
ect *obj)
> =

> It's still not clear to me why this function exists in the first place.
> It's the same code as the default implementation, except that it doesn't
> support cached mappings.
> =

> I don't see why udl is special. I'd suggest to try to use the original
> shmem function and remove this one. Same for the mmap code.

tbh no idea, could be that the usb code is then a bit too inefficient at
uploading stuff if it needs to cache flush.

But then on x86 at least everything (except real gpus) is coherent, so
cached mappings should be faster.

No idea, but also don't have the hw so not going to touch udl that much.
-Daniel

> =

> Best regards
> Thomas
> =

> >  	if (shmem->vmap_use_count++ > 0)
> >  		goto out;
> >  =

> > -	ret =3D drm_gem_shmem_get_pages(shmem);
> > -	if (ret)
> > -		goto err_zero_use;
> > -
> > -	if (obj->import_attach)
> > +	if (obj->import_attach) {
> >  		shmem->vaddr =3D dma_buf_vmap(obj->import_attach->dmabuf);
> > -	else
> > +	} else {
> > +		ret =3D drm_gem_shmem_get_pages(shmem);
> > +		if (ret)
> > +			goto err;
> > +
> >  		shmem->vaddr =3D vmap(shmem->pages, obj->size >> PAGE_SHIFT,
> >  				    VM_MAP, PAGE_KERNEL);
> >  =

> > +		if (!shmem->vaddr)
> > +			drm_gem_shmem_put_pages(shmem);
> > +	}
> > +
> >  	if (!shmem->vaddr) {
> >  		DRM_DEBUG_KMS("Failed to vmap pages\n");
> >  		ret =3D -ENOMEM;
> > -		goto err_put_pages;
> > +		goto err;
> >  	}
> >  =

> >  out:
> >  	mutex_unlock(&shmem->vmap_lock);
> >  	return shmem->vaddr;
> >  =

> > -err_put_pages:
> > -	drm_gem_shmem_put_pages(shmem);
> > -err_zero_use:
> > +err:
> >  	shmem->vmap_use_count =3D 0;
> >  	mutex_unlock(&shmem->vmap_lock);
> >  	return ERR_PTR(ret);
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
