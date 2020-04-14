Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D131A84EC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4584589C9D;
	Tue, 14 Apr 2020 16:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D669489CAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:30:19 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id x25so13685287wmc.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 09:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j6iT+4OltUOabgOBVLnkXdCNEsUQWouuz2jP5vYgELc=;
 b=NIMIF8ZncM3RCZl4gwuajK430pMg4bISfQ7uqeMPuWe/H3hEkwCX2yLw1gxOuLgy0G
 WFB2gv+1wAVr1zpbKbm071xcyqxH4P/Jo/9uk0KP6iI+pCjqrEs+qH2EbbBmWRRQRMLN
 1wQCkUbOQx7Nb2JjANEwz4DPPDLIws1F7HPCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j6iT+4OltUOabgOBVLnkXdCNEsUQWouuz2jP5vYgELc=;
 b=DOCsMAY9/pYTzgFltdcr26nXp2sn2sO7gy+r39dyHGBz3Wsy6+Y1UN6zqzNI/owG6l
 pHupIc/NikwQ3g8A/NRYj056UO1H5aAmxSspoOa1X7RlH9xCuY8w/DBOp5m9UdLKrej2
 46UvkzeBj8UZmBJ2In97u4B/PZOj0Y2S2Nm3Ap4mTc62IpYDb8JaJTg9EjqBrMMBgHOL
 7CEkfDwy/NgNdClOVFjBQ+FsSDaMhFjEqCl2eZCqSBeaEhoyPfQnCU/BixKgaZq7Acn7
 jhshukxfsNLhw2BVYzuFofvSrMIzMJPoNbMfmBb0cokS+LfEy3iDAO643sOpiQgvNzU5
 MvrQ==
X-Gm-Message-State: AGi0PuYCD6nk+OGYNN4D6/Yp20rcwHXAGqW5/bMbi1cu2ab6uNN/ufgA
 uXie0JOjhvr6ihkAgginHq1ueQ==
X-Google-Smtp-Source: APiQypKFuZ1Tyi6JAmlIPQve6oVDWVGmIA2J3XrIqZx88WDewk4OErRHjXy4QoM6xzgWk8uwpbaZRA==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr596718wmh.157.1586881818446; 
 Tue, 14 Apr 2020 09:30:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g186sm20519838wmg.36.2020.04.14.09.30.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:30:17 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:30:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200414163015.GX3456981@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-10-daniel.vetter@ffwll.ch>
 <20200408072146.GG14965@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408072146.GG14965@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 09/44] drm/vboxvidoe: use managed pci
 functions
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 09:21:46AM +0200, Sam Ravnborg wrote:
> On Fri, Apr 03, 2020 at 03:57:53PM +0200, Daniel Vetter wrote:
> > Allows us to drop the cleanup code on the floor.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Hans de Goede <hdegoede@redhat.com>
> 
> With this change we avoid calling pci_disable_device()
> twise in case vbox_mm_init() fails.
> Once in vbox_hw_fini() and once in the error path.

Yup, I forgot to mention this in the commit message. I've added your
remark here as a quote, thanks for checking stuff in detail.
-Daniel

> 
> Which is just a small extra bonus.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> > ---
> >  drivers/gpu/drm/vboxvideo/vbox_drv.c  | 6 ++----
> >  drivers/gpu/drm/vboxvideo/vbox_main.c | 7 +------
> >  2 files changed, 3 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > index d34cddd809fd..c80695c2f6c0 100644
> > --- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > @@ -55,13 +55,13 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	pci_set_drvdata(pdev, vbox);
> >  	mutex_init(&vbox->hw_mutex);
> >  
> > -	ret = pci_enable_device(pdev);
> > +	ret = pcim_enable_device(pdev);
> >  	if (ret)
> >  		return ret;
> >  
> >  	ret = vbox_hw_init(vbox);
> >  	if (ret)
> > -		goto err_pci_disable;
> > +		return ret;
> >  
> >  	ret = vbox_mm_init(vbox);
> >  	if (ret)
> > @@ -93,8 +93,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	vbox_mm_fini(vbox);
> >  err_hw_fini:
> >  	vbox_hw_fini(vbox);
> > -err_pci_disable:
> > -	pci_disable_device(pdev);
> >  	return ret;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
> > index 9dcab115a261..1336ab9795fc 100644
> > --- a/drivers/gpu/drm/vboxvideo/vbox_main.c
> > +++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
> > @@ -71,8 +71,6 @@ static void vbox_accel_fini(struct vbox_private *vbox)
> >  
> >  	for (i = 0; i < vbox->num_crtcs; ++i)
> >  		vbva_disable(&vbox->vbva_info[i], vbox->guest_pool, i);
> > -
> > -	pci_iounmap(vbox->ddev.pdev, vbox->vbva_buffers);
> >  }
> >  
> >  /* Do we support the 4.3 plus mode hint reporting interface? */
> > @@ -125,7 +123,7 @@ int vbox_hw_init(struct vbox_private *vbox)
> >  	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
> >  	vbox->guest_pool = gen_pool_create(4, -1);
> >  	if (!vbox->guest_pool)
> > -		goto err_unmap_guest_heap;
> > +		return -ENOMEM;
> >  
> >  	ret = gen_pool_add_virt(vbox->guest_pool,
> >  				(unsigned long)vbox->guest_heap,
> > @@ -168,8 +166,6 @@ int vbox_hw_init(struct vbox_private *vbox)
> >  
> >  err_destroy_guest_pool:
> >  	gen_pool_destroy(vbox->guest_pool);
> > -err_unmap_guest_heap:
> > -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
> >  	return ret;
> >  }
> >  
> > @@ -177,5 +173,4 @@ void vbox_hw_fini(struct vbox_private *vbox)
> >  {
> >  	vbox_accel_fini(vbox);
> >  	gen_pool_destroy(vbox->guest_pool);
> > -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
> >  }
> > -- 
> > 2.25.1
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
