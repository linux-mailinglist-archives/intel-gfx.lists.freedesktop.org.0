Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5D736085A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 13:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FB56EA3C;
	Thu, 15 Apr 2021 11:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38FC6EA3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 11:35:39 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 i21-20020a05600c3555b029012eae2af5d4so2458841wmq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 04:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+Dud4UY0cgOdr5KV1F1Du/NHhBxXZS4O4G9qdOaVT+A=;
 b=YmfQ0vxcMsp1IA5c9AhpCv+ZsM11PSIycWI0aMqWoHqUhi6qZ+J4W8vuszQZHCyjfU
 1UfqYWo5NDdmd2GNKq18jFvcGudTHUvRgLHufzZidAG+ArSKuiMbecUQdI8wRTw4nOry
 9V/E7+84rdIsFssrvt4phBzndFEdmuYBqIpS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+Dud4UY0cgOdr5KV1F1Du/NHhBxXZS4O4G9qdOaVT+A=;
 b=lulmwvt9ljdnwmAHSzeEqFA7QzMwti+19jU/Jnzk3oNJ4vpaVSWpD5AsBzrdTKDBFT
 2m6zTUeT7CQGR4t4BDqtBYeJ7poqJbyOhC12X81mKlqTtZMg28svBXZbqIZJx7SMCSmL
 Q1R7keo3SMAaNz5t049D5xyT6BnmorjApdua00HYHqyOGGfn1udMrQrnLNkQB8vyOMtv
 rR1i8V/iqAiev51w4y8L36tO9mq/McyXIEYWgPmcqXj5p/mDUgFSUz6OBTNcvlMqEyDa
 f1H/3Pcp07VcwdxFiM36Hw5L5ITngDJIxOkIxgIGrJvbYK39rEyb7VXzCMX5QXH27x/E
 j5rg==
X-Gm-Message-State: AOAM5314Oo31PBa0WJUNuQR2oo33+FVgKzHLf4bxC5DkDvsore5ctPe/
 xAmjNd2faTfJfQEWfrwCRp0bbw==
X-Google-Smtp-Source: ABdhPJxxSzwwyMvxVgC5ujTI/MK9RoqYpuNmkKUbB6zBEA0UZIIGvwC9mGZYt7wlzokscmS9/B1IUw==
X-Received: by 2002:a05:600c:410c:: with SMTP id
 j12mr2649400wmi.112.1618486538703; 
 Thu, 15 Apr 2021 04:35:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x8sm2539759wru.70.2021.04.15.04.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Apr 2021 04:35:38 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:35:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas Stach <l.stach@pengutronix.de>
Message-ID: <YHglCIAhDFPoLPRL@phenom.ffwll.local>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
 <20210413094904.3736372-5-daniel.vetter@ffwll.ch>
 <290aef5ed13749d465eb19235aa87a2cef63dd2a.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <290aef5ed13749d465eb19235aa87a2cef63dd2a.camel@pengutronix.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/imx: Don't set allow_fb_modifiers
 explicitly
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
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 01:47:28PM +0200, Lucas Stach wrote:
> Am Dienstag, dem 13.04.2021 um 11:48 +0200 schrieb Daniel Vetter:
> > Since
> > =

> > commit 890880ddfdbe256083170866e49c87618b706ac7
> > Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Date:   Fri Jan 4 09:56:10 2019 +0100
> > =

> > =A0=A0=A0=A0drm: Auto-set allow_fb_modifiers when given modifiers at pl=
ane init
> > =

> > this is done automatically as part of plane init, if drivers set the
> > modifier list correctly. Which is the case here.
> > =

> > This one actually set it twice on top of what drm_plane_init does, so
> > double-redundant!
> =

> That's not true. imx-dcss and imx-drm are two totally separate drivers.
> Maybe we should move imx-drm into its own ipuv3 directory one day to
> make this more clear. Change is still correct, though.

I've fixed the commit message to reflect reality and merged to
drm-misc-next. Thanks for taking a look.
-Daniel

> =

> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> > =A0drivers/gpu/drm/imx/dcss/dcss-kms.c | 1 -
> > =A0drivers/gpu/drm/imx/imx-drm-core.c  | 1 -
> > =A02 files changed, 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/imx/dcss/dcss-kms.c b/drivers/gpu/drm/imx/=
dcss/dcss-kms.c
> > index b549ce5e7607..37ae68a7fba5 100644
> > --- a/drivers/gpu/drm/imx/dcss/dcss-kms.c
> > +++ b/drivers/gpu/drm/imx/dcss/dcss-kms.c
> > @@ -52,7 +52,6 @@ static void dcss_kms_mode_config_init(struct dcss_kms=
_dev *kms)
> > =A0	config->min_height =3D 1;
> > =A0	config->max_width =3D 4096;
> > =A0	config->max_height =3D 4096;
> > -	config->allow_fb_modifiers =3D true;
> > =A0	config->normalize_zpos =3D true;
> > =A0
> > =

> > =

> > =

> > =A0	config->funcs =3D &dcss_drm_mode_config_funcs;
> > diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/i=
mx-drm-core.c
> > index 2ded8e4f32d0..8be4edaec958 100644
> > --- a/drivers/gpu/drm/imx/imx-drm-core.c
> > +++ b/drivers/gpu/drm/imx/imx-drm-core.c
> > @@ -209,7 +209,6 @@ static int imx_drm_bind(struct device *dev)
> > =A0	drm->mode_config.max_height =3D 4096;
> > =A0	drm->mode_config.funcs =3D &imx_drm_mode_config_funcs;
> > =A0	drm->mode_config.helper_private =3D &imx_drm_mode_config_helpers;
> > -	drm->mode_config.allow_fb_modifiers =3D true;
> > =A0	drm->mode_config.normalize_zpos =3D true;
> > =A0
> > =

> > =

> > =

> > =A0	ret =3D drmm_mode_config_init(drm);
> =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
