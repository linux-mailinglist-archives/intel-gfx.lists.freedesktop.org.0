Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFD91D304C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F386E33C;
	Thu, 14 May 2020 12:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0E06EB3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 12:49:50 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id d207so11332264wmd.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 05:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=bloCnaq8kEhJLc92W8Ae9wynkl5ZdlQmtWQtta8YKP0=;
 b=Nm7GC19hczTQ+sai5rDvZ5MjdahgnlLMqXxcfnwSWJq7/NdjvEEUm2xgvz2qjQMvFn
 46n6bcNilc4kZvv/8D57xcjgsH1X6X1pegC3bL+6n+LkrgLW5vN2V6FiMvCeB1rHvya1
 jVESko9ldfxz+Sx4h0LtHxOhnJYwNnAnGgR4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=bloCnaq8kEhJLc92W8Ae9wynkl5ZdlQmtWQtta8YKP0=;
 b=qAdnusrrZs+JY+CkVV+I2qEa6TFYAyJLAgbLRA/uEulhSIhS3NYoKvWknTJNUCPwrB
 G7B/bou+2PyrYhRm4OnhSGYzmvpU59ApcA0d//72YUXu6g/NrpV5B8aXHy/fUjoeQ5p6
 OqhIXHT0TLxaTWQPiim/mRvgbmxxHoIogkVT1vEkZkCQ5SX0LoqsbFnlJSzz3DZRw4Nh
 UYBxOng3GANZgL8sWZATnrWoeALOt+sWxQXyn8Uueyvn4qfEDWW8QaFC73XnqdrJIB90
 WV21Y1/VmZWyM4y6jwZylRaxXTD2YlmK3BFEx+KI54uTKBnCDnDifquY5gqLVdfsPUQC
 Rhrw==
X-Gm-Message-State: AGi0PubLPMzR4EwiS9rUDrEidAJWr4WnqHUujyBesChf31qBt6L3CkiQ
 rM+cEyOW7tB+/+ublsC1G2/3SA==
X-Google-Smtp-Source: APiQypLD7L5rX6Xx06rYZCvSGbZD9MjGGaR8Q9/Aap4chpVVKC/y8vWKvppZBwwb8IZ6k+lyMI5XWQ==
X-Received: by 2002:a05:600c:280b:: with SMTP id
 m11mr20202846wmb.115.1589460589505; 
 Thu, 14 May 2020 05:49:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q9sm15764296wmb.34.2020.05.14.05.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:49:48 -0700 (PDT)
Date: Thu, 14 May 2020 14:49:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200514124947.GZ206103@phenom.ffwll.local>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-7-daniel.vetter@ffwll.ch>
 <6910cb3c-7169-fe1c-efc1-3acb8a218384@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6910cb3c-7169-fe1c-efc1-3acb8a218384@suse.de>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/shmem-helpers: Don't call
 get/put_pages on imported dma-buf in vmap
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

On Thu, May 14, 2020 at 09:16:54AM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 11.05.20 um 11:35 schrieb Daniel Vetter:
> > There's no direct harm, because for the shmem helpers these are noops
> > on imported buffers. The trouble is in the locks these take - I want
> > to change dma_buf_vmap locking, and so need to make sure that we only
> > ever take certain locks on one side of the dma-buf interface: Either
> > for exporters, or for importers.
> > =

> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_gem_shmem_helper.c | 17 +++++++++--------
> >  1 file changed, 9 insertions(+), 8 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/d=
rm_gem_shmem_helper.c
> > index 2a70159d50ef..b9cba5cc61c3 100644
> > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > @@ -252,32 +252,33 @@ static void *drm_gem_shmem_vmap_locked(struct drm=
_gem_shmem_object *shmem)
> >  	if (shmem->vmap_use_count++ > 0)
> >  		return shmem->vaddr;
> >  =

> > -	ret =3D drm_gem_shmem_get_pages(shmem);
> > -	if (ret)
> > -		goto err_zero_use;
> > -
> >  	if (obj->import_attach) {
> >  		shmem->vaddr =3D dma_buf_vmap(obj->import_attach->dmabuf);
> >  	} else {
> >  		pgprot_t prot =3D PAGE_KERNEL;
> >  =

> > +		ret =3D drm_gem_shmem_get_pages(shmem);
> > +		if (ret)
> > +			goto err;
> > +
> >  		if (!shmem->map_cached)
> >  			prot =3D pgprot_writecombine(prot);
> >  		shmem->vaddr =3D vmap(shmem->pages, obj->size >> PAGE_SHIFT,
> >  				    VM_MAP, prot);
> > +
> > +		if (!shmem->vaddr)
> > +			drm_gem_shmem_put_pages(shmem);
> >  	}
> >  =

> >  	if (!shmem->vaddr) {
> >  		DRM_DEBUG_KMS("Failed to vmap pages\n");
> >  		ret =3D -ENOMEM;
> > -		goto err_put_pages;
> > +		goto err;
> >  	}
> >  =

> >  	return shmem->vaddr;
> >  =

> > -err_put_pages:
> > -	drm_gem_shmem_put_pages(shmem);
> =

> I found the new code to be less readable. Maybe keep the error rollback
> as-is and protect _put_pages() with if (!import_attach).

Hm yeah I guess I can leave this as-is mostly, makes at least the diff
smaller. Imo it all looks a bit awkward, but what I've done isn't clearly
better than just leaving stuff mostly where it was.
-Daniel

> =

> In any case
> =

> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> > -err_zero_use:
> > +err:
> >  	shmem->vmap_use_count =3D 0;
> >  =

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
