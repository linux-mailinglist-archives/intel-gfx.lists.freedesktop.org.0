Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678701BBEE2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 15:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590D16E3E1;
	Tue, 28 Apr 2020 13:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEE96E394
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 13:18:16 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id e26so2713366wmk.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 06:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=llbzA7ECh9uaJN0zbhsknBn/XwuYSTfq4MrVVcdpgiQ=;
 b=Z505emclDYGPgv8Eq67u/hLKqdL6DLAlYp3V5yGxyKDsTt6+OVI4XdVFIg9jY1PF54
 o6S+dVB5Mx/ymFrzY+6nOWAGxoBKuXwaJ6bkwXtXi3yo+ta6toV8tALjJahV0hoSEEj9
 8Xlmt0y1IUIAQM3eZppCvMnORDykp3NsKQrRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=llbzA7ECh9uaJN0zbhsknBn/XwuYSTfq4MrVVcdpgiQ=;
 b=XKSt5srvlMrB8L0Apbkl35xOKTEZ1BA2XROlAkLyTIuPOwCMbA66LVVj3eSTu72LoH
 0SlSrE0slriIHxpxGbOxDK7kNPqz/6xz8IufjhhWS/q12XLAxHVgEfs1GrqrcmA2zfzI
 YjtHRPE/P+pAwHZpz42FqeZ6WG4zVGcTBDeOvieO7zMbXtBndmxG6Y6M9E7yH+b5jZEO
 jjWGOijFUjpzk090Jw2LXsW9LY78GdtLOTawf7ZAqV/nVl20sq0K3c9i8M4/+pnw3aKQ
 yfcPhhPuF8Eozd1mcknrShhokmKh/5TjkajrX8rwBLHawRIpyByWSJc5nCTvK67Z9jaa
 yj+Q==
X-Gm-Message-State: AGi0PuYq4kuPT6XbqKK1YYYRrG/roz2O/1UNT3Xw1kWOBfnNQAvkjoCQ
 Ygc94SKm2kh33zNXt6Hs6nEy2A==
X-Google-Smtp-Source: APiQypLNxk3d2cp5V0sNW/NpTOnI+ScdS7pTtFWmSrNXZ4ddlhYFM6EsIt5YLOHMt3ViZhxZ0j6RTg==
X-Received: by 2002:a1c:a7c2:: with SMTP id q185mr4675938wme.42.1588079895134; 
 Tue, 28 Apr 2020 06:18:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f23sm3208059wml.4.2020.04.28.06.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 06:18:14 -0700 (PDT)
Date: Tue, 28 Apr 2020 15:18:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200428131812.GJ3456981@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-12-daniel.vetter@ffwll.ch>
 <20200424145556.GA20856@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424145556.GA20856@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 11/59] drm/udl: Use devm_drm_dev_alloc
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
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 24, 2020 at 04:55:56PM +0200, Sam Ravnborg wrote:
> Hi Daniel.
> =

> On Wed, Apr 15, 2020 at 09:39:46AM +0200, Daniel Vetter wrote:
> > Also init the fbdev emulation before we register the device, that way
> > we can rely on the auto-cleanup and simplify the probe error code even
> > more.
> > =

> > v2: Rebase on top of Thomas' patches to remove the return value from
> > drm_fbdev_generic_setup()
> =

> with the rebase the changelog in confusing as this patch does nothing of
> what is described in the changelog.
> Only the title (that is in convinently not available when replying to
> email) describes what this patch does.

Good point, I fixed that up while applying, thanks for taking a look.
-Daniel

> =

> With the changelog properly adjusted:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> =

> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Emil Velikov <emil.l.velikov@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > ---
> >  drivers/gpu/drm/udl/udl_drv.c | 26 +++++++-------------------
> >  1 file changed, 7 insertions(+), 19 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/udl/udl_drv.c b/drivers/gpu/drm/udl/udl_dr=
v.c
> > index 9cc6d075cb40..523f60e02a85 100644
> > --- a/drivers/gpu/drm/udl/udl_drv.c
> > +++ b/drivers/gpu/drm/udl/udl_drv.c
> > @@ -57,27 +57,20 @@ static struct udl_device *udl_driver_create(struct =
usb_interface *interface)
> >  	struct udl_device *udl;
> >  	int r;
> >  =

> > -	udl =3D kzalloc(sizeof(*udl), GFP_KERNEL);
> > -	if (!udl)
> > -		return ERR_PTR(-ENOMEM);
> > -
> > -	r =3D drm_dev_init(&udl->drm, &driver, &interface->dev);
> > -	if (r) {
> > -		kfree(udl);
> > -		return ERR_PTR(r);
> > -	}
> > +	udl =3D devm_drm_dev_alloc(&interface->dev, &driver,
> > +				 struct udl_device, drm);
> > +	if (IS_ERR(udl))
> > +		return udl;
> >  =

> >  	udl->udev =3D udev;
> >  	udl->drm.dev_private =3D udl;
> > -	drmm_add_final_kfree(&udl->drm, udl);
> >  =

> >  	r =3D udl_init(udl);
> > -	if (r) {
> > -		drm_dev_put(&udl->drm);
> > +	if (r)
> >  		return ERR_PTR(r);
> > -	}
> >  =

> >  	usb_set_intfdata(interface, udl);
> > +
> >  	return udl;
> >  }
> >  =

> > @@ -93,17 +86,13 @@ static int udl_usb_probe(struct usb_interface *inte=
rface,
> >  =

> >  	r =3D drm_dev_register(&udl->drm, 0);
> >  	if (r)
> > -		goto err_free;
> > +		return r;
> >  =

> >  	DRM_INFO("Initialized udl on minor %d\n", udl->drm.primary->index);
> >  =

> >  	drm_fbdev_generic_setup(&udl->drm, 0);
> >  =

> >  	return 0;
> > -
> > -err_free:
> > -	drm_dev_put(&udl->drm);
> > -	return r;
> >  }
> >  =

> >  static void udl_usb_disconnect(struct usb_interface *interface)
> > @@ -113,7 +102,6 @@ static void udl_usb_disconnect(struct usb_interface=
 *interface)
> >  	drm_kms_helper_poll_fini(dev);
> >  	udl_drop_usb(dev);
> >  	drm_dev_unplug(dev);
> > -	drm_dev_put(dev);
> >  }
> >  =

> >  /*
> > -- =

> > 2.25.1
> > =

> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
