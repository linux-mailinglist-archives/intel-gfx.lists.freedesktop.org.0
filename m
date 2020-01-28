Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D4514BC5A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042126EE67;
	Tue, 28 Jan 2020 14:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8BC6EE67
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:53:49 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id q9so2819799wmj.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 06:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YMynlCfkYHuFeP3sWLwxA34LTuWohzR96F2yHt85c04=;
 b=CVFoiZf1WCN2QCev5EQo/SCqM/62/IU98jN4CrVauc7cXr8OUh8pqZGJNTZFIPn6pv
 V/FAjZK/Km5w+IjghE9uoLPLKEzAj+UkRftuew1V38I9RwWfcwq67RnFugBeal+Ie6fQ
 qHPXemAvjsgtKVhgxC4CRUZLFUTWXtjg0Gwtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YMynlCfkYHuFeP3sWLwxA34LTuWohzR96F2yHt85c04=;
 b=lM8jKk0yei11f9xsuv3EKzp7DbOW+mJ8pUeEmtZKjkdgbLb18coVDMUp6/m/cOz+75
 lHO3gaSqH9ZSh+Eq8hasQ7FVLiLUPFpSfMHquCWClxjZhTFuyDp2eh7c6NQHBiUM7rf4
 htFD9rZcBwWezketzYm+6ABEH8OjVcx6O7uflKZj6sDhgc2ll1DWEtdQl+43QnL7C2qq
 ocFqhwLQzjQQr1kewO193okiykxosPkSF8WKVVaKyyrfjWp7CLyFy3/VeravylX+UcFy
 +xLts8sZsgG5nnXtfizvs9jnk0I6nFxeDv03croWd6kQropnA3VVOwJloAAj1uQctyJE
 3/hg==
X-Gm-Message-State: APjAAAXn/6Y7KNV98DGjNa1rhTnbKvyzfd5I27r1Q6+5EGoEIXcV3JeN
 PuZ5h2T7mJI1+SNcoQoU5Ki3xw==
X-Google-Smtp-Source: APXvYqxc96Q3AkcwIKn0yM19+bMyVPyFb3SObWGqjyjeHQupc3pH0DlH4B/1GvTQV3zsI3Mueya5Mg==
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr5446131wmp.109.1580223228269; 
 Tue, 28 Jan 2020 06:53:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y20sm3296409wmj.23.2020.01.28.06.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 06:53:47 -0800 (PST)
Date: Tue, 28 Jan 2020 15:53:45 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200128145345.GD43062@phenom.ffwll.local>
References: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
 <8ccf8e5f-426e-5433-ace0-dc351e610b83@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ccf8e5f-426e-5433-ace0-dc351e610b83@suse.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Complain if drivers still use the
 ->load callback
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 02:41:06PM +0100, Thomas Zimmermann wrote:
> Hi
> =

> Am 28.01.20 um 11:45 schrieb Daniel Vetter:
> > Kinda time to get this sorted. The locking around this really is not
> > nice.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_drv.c | 6 ++++++
> >  include/drm/drm_drv.h     | 3 +++
> >  2 files changed, 9 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 7c18a980cd4b..8deff75b484c 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -948,6 +948,12 @@ int drm_dev_register(struct drm_device *dev, unsig=
ned long flags)
> >  =

> >  	mutex_lock(&drm_global_mutex);
> >  =

> > +	if (dev->driver->load) {
> > +		if (!drm_core_check_feature(dev, DRIVER_LEGACY))
> > +			DRM_INFO("drm driver %s is using deprecated ->load callback\n",
> > +				 dev->driver->name);
> > +	}
> > +
> >  	ret =3D drm_minor_register(dev, DRM_MINOR_RENDER);
> >  	if (ret)
> >  		goto err_minors;
> > diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> > index 77685ed7aa65..77bc63de0a91 100644
> > --- a/include/drm/drm_drv.h
> > +++ b/include/drm/drm_drv.h
> > @@ -173,6 +173,9 @@ struct drm_driver {
> >  	 *
> >  	 * This is deprecated, do not use!
> >  	 *
> > +	 * FIXME: A few non-DRIVER_LEGACY drivers still use this, and should =
be
> > +	 * converted.
> > +	 *
> =

> I recently converted several of them. The status here is that only
> radeon and amdgpu still use load. I've only not been able to convert
> them because they do some debugfs registering that relies on the device
> being registered early. I've not had time to convert the code.

Oh nice, this sounds great. We have an outreachy project to helpt simplify
the debugfs stuff, so might be worth waiting for that. I guess I'll keep
this patch meanwhile (expect if Alex or Harry ack it, they'll see the
fallout if we merge this early).
-Daniel


> On the patch:
> =

> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> =

> >  	 * Returns:
> >  	 *
> >  	 * Zero on success, non-zero value on failure.
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
