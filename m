Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B0D1AAFF8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494A56EA49;
	Wed, 15 Apr 2020 17:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B480A6EA49
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:44:22 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id f13so855856wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Z3EgI6y1x/2gZxTcsFxc6xdUylc34r7+3ZsVMhfc87Q=;
 b=TcfyxSBuu6YZ843BvI5yRt+GzmSYiFozurhOpVTCaYbW0dzeQrYHOZ348/1GflmdOb
 VhUQn0YpkASuMfJINkCT3HM1Oa01GNQNist+3A7e1N2jJEytz3/yPVmIFipd5AntriG0
 lfIzvg2pfWueWlh+oFgpC9tdEQsL1mlenc03Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z3EgI6y1x/2gZxTcsFxc6xdUylc34r7+3ZsVMhfc87Q=;
 b=mSG/fdQeVoxSmAAxgKK65004nt/teIJa2LrI51itiLL04Yk6GVFKy3uJzxAQgvPzeP
 70FIAGO9E8lbnbc51mUzUm5gtCmAFXAFRkXh8CIH1aQ9Oja/boXODzwMZkIltAs4xb44
 d1IoVfhC6YJAShaipLAl1OCX7WUhfSY/g5SIjUEdQKsvDftdUFlWkNBUCPkjwTzPkKZi
 jMYJgyU25+I/iHIWsaHpNwAwUgE1AF6akZzLF0FA0RK4MbRhlxqvmY2BqLv+2k3dahUK
 IxkvygtNnP06/TxI+6aktSXgWyOI+EYd+FENuzTl9K+MNrZlnIcUrURcYFQq5MGwTBI2
 bB7A==
X-Gm-Message-State: AGi0PuYeYnC3fwS61BWN1lWBvG68Lv6Ncy/0oVR9uu5YLWWSCa60yZ1y
 Fc6CKLxDoaBcGDK/Y9DaqeW3Gw==
X-Google-Smtp-Source: APiQypKO2GjJIad+YCFQJVPPtVKB/oo3WwF9Ueha0GhNgFlWd+XbC98IEpNiYfGQgLLNtCQAtNzqlw==
X-Received: by 2002:adf:8b48:: with SMTP id v8mr32369826wra.342.1586972661291; 
 Wed, 15 Apr 2020 10:44:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m14sm22214278wrs.76.2020.04.15.10.44.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 10:44:20 -0700 (PDT)
Date: Wed, 15 Apr 2020 19:44:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200415174418.GH3456981@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-6-daniel.vetter@ffwll.ch>
 <75d2db08-a47f-a331-84bc-b61072da94e8@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75d2db08-a47f-a331-84bc-b61072da94e8@redhat.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 05/59] drm/vboxvidoe: use managed pci
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 05:03:55PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 4/15/20 9:39 AM, Daniel Vetter wrote:
> > Allows us to drop the cleanup code on the floor.
> > 
> > Sam noticed in his review:
> > > With this change we avoid calling pci_disable_device()
> > > twise in case vbox_mm_init() fails.
> > > Once in vbox_hw_fini() and once in the error path.
> > 
> > v2: Include Sam's review remarks
> > 
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Hans de Goede <hdegoede@redhat.com>
> > ---
> >   drivers/gpu/drm/vboxvideo/vbox_drv.c  | 6 ++----
> >   drivers/gpu/drm/vboxvideo/vbox_main.c | 7 +------
> >   2 files changed, 3 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > index cfa4639c5142..cf2e3e6a2388 100644
> > --- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> > @@ -55,13 +55,13 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	pci_set_drvdata(pdev, vbox);
> >   	mutex_init(&vbox->hw_mutex);
> > -	ret = pci_enable_device(pdev);
> > +	ret = pcim_enable_device(pdev);
> >   	if (ret)
> >   		return ret;
> >   	ret = vbox_hw_init(vbox);
> >   	if (ret)
> > -		goto err_pci_disable;
> > +		return ret;
> >   	ret = vbox_mm_init(vbox);
> >   	if (ret)
> > @@ -91,8 +91,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	vbox_mm_fini(vbox);
> >   err_hw_fini:
> >   	vbox_hw_fini(vbox);
> > -err_pci_disable:
> > -	pci_disable_device(pdev);
> >   	return ret;
> >   }
> > diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
> > index 9dcab115a261..1336ab9795fc 100644
> > --- a/drivers/gpu/drm/vboxvideo/vbox_main.c
> > +++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
> > @@ -71,8 +71,6 @@ static void vbox_accel_fini(struct vbox_private *vbox)
> >   	for (i = 0; i < vbox->num_crtcs; ++i)
> >   		vbva_disable(&vbox->vbva_info[i], vbox->guest_pool, i);
> > -
> > -	pci_iounmap(vbox->ddev.pdev, vbox->vbva_buffers);
> >   }
> >   /* Do we support the 4.3 plus mode hint reporting interface? */
> 
> This seems to be missing the conversion of the iomap_range call to
> the devm equivalent ?   :
> 
> drivers/gpu/drm/vboxvideo/vbox_main.c
> 44:     vbox->vbva_buffers = pci_iomap_range(vbox->ddev.pdev, 0, ...

pcim_enable_device is pure magic, it converts _all_ pci_ calls on that
device to the managed version. There's no other manged pci_ functions (ok
1-2 more, but they're rather special).
-Daniel

> 
> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> > @@ -125,7 +123,7 @@ int vbox_hw_init(struct vbox_private *vbox)
> >   	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
> >   	vbox->guest_pool = gen_pool_create(4, -1);
> >   	if (!vbox->guest_pool)
> > -		goto err_unmap_guest_heap;
> > +		return -ENOMEM;
> >   	ret = gen_pool_add_virt(vbox->guest_pool,
> >   				(unsigned long)vbox->guest_heap,
> > @@ -168,8 +166,6 @@ int vbox_hw_init(struct vbox_private *vbox)
> >   err_destroy_guest_pool:
> >   	gen_pool_destroy(vbox->guest_pool);
> > -err_unmap_guest_heap:
> > -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
> >   	return ret;
> >   }
> > @@ -177,5 +173,4 @@ void vbox_hw_fini(struct vbox_private *vbox)
> >   {
> >   	vbox_accel_fini(vbox);
> >   	gen_pool_destroy(vbox->guest_pool);
> > -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
> >   }
> > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
