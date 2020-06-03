Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1841ED092
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 15:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDA08937C;
	Wed,  3 Jun 2020 13:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3088937C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 13:12:13 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id l26so1874995wme.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jun 2020 06:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JSBMjB9rJ3MuFq/okeIoC+fuKHgtYWUv9ufcPO0A2aU=;
 b=IeRS7TbCWpwz3sRy/xQeggJS2LxQgbeNNjmYwx55R/iAbgTPVF/V0k5Zv9IE08gL7l
 eRZ8RULczh8xUph3Wxv/rmhUTd7z2ngWSwQIm2gu/CnQPTNidE3IyBcQWXkFiiYG/xjO
 zGKFQWn1rwF1w1k2hoie/6ZMTgiaoDh+IHmFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JSBMjB9rJ3MuFq/okeIoC+fuKHgtYWUv9ufcPO0A2aU=;
 b=EkbIolSQiZMIFK19FJjxyoLXFa/yLCUVcz1U4IC5Nx8x7wjCK7RaRpEGu7Aem62eYm
 f8ez67ICOLumh2Jf73NY210qo71DT4RVMHfoNhHnmoSIwh9gvqcPsJA7pqe4IgMeN9n1
 9n4fHm+1Tm86h5OQoLLhqviNApPp4tgn/PUOG3OaXKyjlRspYkruaG80mgVxea/SnqkQ
 64cAUScxUkNXdpNGMWamJ9xpGS0iYtpTdp1w9oFwZHBAKfyKrAGSnzljIrvBIPHtkfbR
 Ob1AGC42Im9az01rFXSK32qS2IRyRUlgljwzUZlm3kG+2JmSqGxhg4l+R1/SrRqkWAYQ
 Igtw==
X-Gm-Message-State: AOAM530M4mBlZLt9jZp6+6XtBzJCQxADofQILcLppSGdTHyjV46DuqKf
 etElla3BEl7sB63PXxny5otabw==
X-Google-Smtp-Source: ABdhPJw12uZsiZhosNB7o/t0uCZnxYjqSTmiIYpu9yH1Tfz85Rc88dc51qbdLf6gadsd3cC8TBOoRA==
X-Received: by 2002:a05:600c:2153:: with SMTP id
 v19mr8355435wml.47.1591189932412; 
 Wed, 03 Jun 2020 06:12:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j68sm3563885wrj.28.2020.06.03.06.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 06:12:11 -0700 (PDT)
Date: Wed, 3 Jun 2020 15:12:09 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200603131209.GN20149@phenom.ffwll.local>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-9-daniel.vetter@ffwll.ch>
 <41b3f24c-de0c-9390-6b8c-e71ceadb6d07@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41b3f24c-de0c-9390-6b8c-e71ceadb6d07@suse.de>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/shmem-helpers: Ensure get_pages is
 not called on imported dma-buf
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

On Thu, May 14, 2020 at 09:30:04AM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 11.05.20 um 11:35 schrieb Daniel Vetter:
> > Just a bit of light paranoia. Also sprinkle this check over
> > drm_gem_shmem_get_sg_table, which should only be called when
> > exporting, same for the pin/unpin functions, on which it relies to
> > work correctly.
> > =

> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_gem_shmem_helper.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/d=
rm_gem_shmem_helper.c
> > index 117a7841e284..f7011338813e 100644
> > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > @@ -170,6 +170,8 @@ int drm_gem_shmem_get_pages(struct drm_gem_shmem_ob=
ject *shmem)
> >  {
> >  	int ret;
> >  =

> > +	WARN_ON(shmem->base.import_attach);
> > +
> >  	ret =3D mutex_lock_interruptible(&shmem->pages_lock);
> >  	if (ret)
> >  		return ret;
> > @@ -225,6 +227,8 @@ int drm_gem_shmem_pin(struct drm_gem_object *obj)
> >  {
> >  	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
> >  =

> > +	WARN_ON(shmem->base.import_attach);
> > +
> =

> I don't understand this change. If a driver pins pages it now has to
> check that the pages are not imported?

Nope. There's two classes of functions in the helpers, and I'm trying to
unconfuse them:

- stuff used to implement gem_funcs. These are obviously only ever used on
  native objects, never on imported ones (on imported ones we try to
  forward through the dma-buf layer to the exporter). drm_gem_shmem_pin is
  only used in that role to implement gem_funcs->pin. Calling it on an
  imported buffer is indeed a bug.

- the other set of functions are for drivers to do their stuff. The
  interface which (implicitly) pins stuff into places is various set of
  get_pages, which do have different paths for native and imported
  objects.

Apologies that I missed your question here, I merged all the patches
leading up to this one for now.

Thanks, Daniel

> =

> =

> >  	return drm_gem_shmem_get_pages(shmem);
> >  }
> >  EXPORT_SYMBOL(drm_gem_shmem_pin);
> > @@ -240,6 +244,8 @@ void drm_gem_shmem_unpin(struct drm_gem_object *obj)
> >  {
> >  	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
> >  =

> > +	WARN_ON(shmem->base.import_attach);
> > +
> >  	drm_gem_shmem_put_pages(shmem);
> >  }
> >  EXPORT_SYMBOL(drm_gem_shmem_unpin);
> > @@ -510,6 +516,8 @@ static void drm_gem_shmem_vm_open(struct vm_area_st=
ruct *vma)
> >  	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
> >  	int ret;
> >  =

> > +	WARN_ON(shmem->base.import_attach);
> > +
> >  	ret =3D drm_gem_shmem_get_pages(shmem);
> >  	WARN_ON_ONCE(ret !=3D 0);
> >  =

> > @@ -611,6 +619,8 @@ struct sg_table *drm_gem_shmem_get_sg_table(struct =
drm_gem_object *obj)
> >  {
> >  	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
> >  =

> > +	WARN_ON(shmem->base.import_attach);
> > +
> >  	return drm_prime_pages_to_sg(shmem->pages, obj->size >> PAGE_SHIFT);
> >  }
> >  EXPORT_SYMBOL_GPL(drm_gem_shmem_get_sg_table);
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
