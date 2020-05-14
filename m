Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5A1D3040
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28306EB3D;
	Thu, 14 May 2020 12:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A1D6EB3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 12:48:01 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id w64so195475wmg.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1YTgr7wYB3sF5zNrYrHxLwY9SfBFer8B5zfDbxOViag=;
 b=VGgrin3ih6Hw//+Tk3q1j79a333Qk4r7kSb/ExpLqbvUwKS5vHv2RPxcYgN/smjas4
 yE0TmPp1xoosyEprrHF28SttQvAV0IwhtqU2aioIFwzoHkGSmXqAxSmZuEmpUDERN6aD
 aV/l5qmEDhTOTtt+c3UVw6nSrTxFZoplR7GEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1YTgr7wYB3sF5zNrYrHxLwY9SfBFer8B5zfDbxOViag=;
 b=mYRAxkowGmoYfaBidNSOATocXNtWvnqP+BNUQzKjBB+O/uo+u5C4D2WbCwtEmdoQgY
 m/80ffQAkBf94Lq/gkTgDvoguNn/5jNec2tGE6CbjsSbZBFcjq5pCvxfF0FsnWZdejAo
 U8aDwpC/J0HJUITcEO+NZBG6ZnP2fVRW4PhV/LEWY/ssYxFRmySMplqzpKF0zzXjdRb1
 PiTVkcAxHE3IZlnt6eWiVSYIrjHaZ6ALCdmQ7KsIDMZe4ZA7Ag341m/bVaf2fWHtKIQl
 rTLbN4Z1Tp5tnnHK6vBn7mo8djut2fbr9IlHZoQtRSlVghi5iS10V4DHC7v4eDg8x2RN
 NlKA==
X-Gm-Message-State: AGi0PuaKXl+ZrKtXyiamajKReKHsqWqhqpJrb2ImxV4789wiNzO58zzM
 uNhEHjQ7aBICFMh8t214OOilMw==
X-Google-Smtp-Source: APiQypJREYVvXHj7ul8jXqSnCT90YzFFGlV9XRgQoTSMBsFwlEFIwutp3d1JHwIbEE7hfS8Gs+b3vQ==
X-Received: by 2002:a1c:2bc2:: with SMTP id r185mr24372856wmr.49.1589460480468; 
 Thu, 14 May 2020 05:48:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f123sm27249027wmf.44.2020.05.14.05.47.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:47:59 -0700 (PDT)
Date: Thu, 14 May 2020 14:47:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200514124757.GY206103@phenom.ffwll.local>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-6-daniel.vetter@ffwll.ch>
 <1f21209e-c041-7203-af94-5e71d9ee9234@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f21209e-c041-7203-af94-5e71d9ee9234@suse.de>
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
 Gerd Hoffmann <kraxel@redhat.com>, Dave Airlie <airlied@redhat.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 09:25:18AM +0200, Thomas Zimmermann wrote:
> Hi,
> =

> given the upcoming removal of this file, I don't know if you really want
> to merge this patch. If so, please see my comment on patch 6 and

Yeah I can wait for your patch to land, I just looked at that series. I'm
kinda just keeping this around as a reminder locally.
-Daniel

> =

> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
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
