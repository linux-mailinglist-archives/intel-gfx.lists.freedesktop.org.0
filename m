Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB541FAF98
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 13:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33666E8A6;
	Tue, 16 Jun 2020 11:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E9A6E8A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 11:55:31 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id l26so2585259wme.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 04:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qo94uGaWDPdmNgYBu+bSlH0/hxQqVNwEZFamefpgV7k=;
 b=Pw/rv7z+YOnEq6Dje1FtMuuSX7IkrIRIcLSAgphOKVRP24U+tP6QWRhCtyVB1A3rNc
 fi3JgYqHGSzMaPc/70WKwXVTRO1PB5/d1vt3US666DHccLalRNSOlCog+prRL1CIn/e7
 EH9hoR0JerLVP1fDKW2uCLwjvYaEtCxojYNlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qo94uGaWDPdmNgYBu+bSlH0/hxQqVNwEZFamefpgV7k=;
 b=iOu218zCW52VMpnvbvKreNn9i/upwfKwxOaGeGApNqRquu1fNce2WHVoQ0dvt9fHj0
 cu83bNHs3y2QcssZaLDWDtalSHIPHauYFb+dt1MhYoMms8gLUPrMWjKAlGNF/2Tdls9D
 A9ZYUl3YAxHUMnenG8qh6+Zdd2I6QTGsWZExTeU7Fc64EQPCLXQd26ENwfuTGMOpjRGa
 mA9S4Ji9nGzl52oZSWsqrly7FVSqd0jdll85YQTuyYz6i85aJfscMRI9VxCa6r6LxAFH
 /mGAtYZxhd1e80XxHT3cPDPW7YCdFmscqYU41EpOzOGpwGm65pngA/bKNDTp0KHhFD1k
 unjw==
X-Gm-Message-State: AOAM533Xxu/rcqK567129+FfqzzpIOJD1Lbp758/a0eVbeNCkl9EqzWy
 G6eEl07Qc7pGTERwAI2pYZUnHknv7Kg=
X-Google-Smtp-Source: ABdhPJyrZ5/80sB9uknbAYb4pONj2FS847HbM5mnxsqlkvqv0g8tZ0mzglLmBa/aQfm2o4jezR93Yg==
X-Received: by 2002:a1c:f301:: with SMTP id q1mr2901108wmq.110.1592308529856; 
 Tue, 16 Jun 2020 04:55:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l17sm28860348wrq.17.2020.06.16.04.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 04:55:29 -0700 (PDT)
Date: Tue, 16 Jun 2020 13:55:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200616115527.GK20149@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-58-daniel.vetter@ffwll.ch>
 <b14b78e4-556d-9e52-bdfd-7c4229392ed9@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b14b78e4-556d-9e52-bdfd-7c4229392ed9@suse.de>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 57/59] drm/ast: Use managed pci functions
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
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Dave Airlie <airlied@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 11, 2020 at 02:04:03PM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 15.04.20 um 09:40 schrieb Daniel Vetter:
> > Allows us to remove a bit of cleanup code.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Emil Velikov <emil.velikov@collabora.com>
> > Cc: "Noralf Tr=F8nnes" <noralf@tronnes.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>
> =

> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> Thanks for answering my questions. Sorry for never getting back to it.

Nw, patch applied now, thanks for your review.
-Daniel

> =

> Best regards
> Thomas
> =

> > ---
> >  drivers/gpu/drm/ast/ast_drv.c  | 10 +++-------
> >  drivers/gpu/drm/ast/ast_main.c |  3 ---
> >  2 files changed, 3 insertions(+), 10 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_dr=
v.c
> > index b7ba22dddcad..48a9cc4e080a 100644
> > --- a/drivers/gpu/drm/ast/ast_drv.c
> > +++ b/drivers/gpu/drm/ast/ast_drv.c
> > @@ -91,15 +91,13 @@ static int ast_pci_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
> >  =

> >  	ast_kick_out_firmware_fb(pdev);
> >  =

> > -	ret =3D pci_enable_device(pdev);
> > +	ret =3D pcim_enable_device(pdev);
> >  	if (ret)
> >  		return ret;
> >  =

> >  	dev =3D drm_dev_alloc(&driver, &pdev->dev);
> > -	if (IS_ERR(dev)) {
> > -		ret =3D PTR_ERR(dev);
> > -		goto err_pci_disable_device;
> > -	}
> > +	if (IS_ERR(dev))
> > +		return  PTR_ERR(dev);
> >  =

> >  	dev->pdev =3D pdev;
> >  	pci_set_drvdata(pdev, dev);
> > @@ -120,8 +118,6 @@ static int ast_pci_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
> >  	ast_driver_unload(dev);
> >  err_drm_dev_put:
> >  	drm_dev_put(dev);
> > -err_pci_disable_device:
> > -	pci_disable_device(pdev);
> >  	return ret;
> >  =

> >  }
> > diff --git a/drivers/gpu/drm/ast/ast_main.c b/drivers/gpu/drm/ast/ast_m=
ain.c
> > index e5398e3dabe7..1b35728ad871 100644
> > --- a/drivers/gpu/drm/ast/ast_main.c
> > +++ b/drivers/gpu/drm/ast/ast_main.c
> > @@ -531,8 +531,5 @@ void ast_driver_unload(struct drm_device *dev)
> >  	drm_mode_config_cleanup(dev);
> >  =

> >  	ast_mm_fini(ast);
> > -	if (ast->ioregs !=3D ast->regs + AST_IO_MM_OFFSET)
> > -		pci_iounmap(dev->pdev, ast->ioregs);
> > -	pci_iounmap(dev->pdev, ast->regs);
> >  	kfree(ast);
> >  }
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
