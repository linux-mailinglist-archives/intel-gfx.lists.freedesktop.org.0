Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9573E35F07A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4386E503;
	Wed, 14 Apr 2021 09:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445116E4D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:10:50 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 y20-20020a1c4b140000b029011f294095d3so12183930wma.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xsQYX2UHTRaG1Vym45NrgNrdV4EUKH9oW8JvGS1IMYY=;
 b=aoXau1/tL0UuarbWeJEoRyF7u0YNWsS7WG34VfjL2OsY+mvp6dA2b8ofn7+jT4rAZJ
 mNlD9nYQyoqJP+Mave/iyaltyaBe0DW3YwUEKSpf797xQVpt776AwFuNHwN9OilD+gXu
 wW90zgCjrmLsyr7/rPn7mk4NbNHOaS3ksiWfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xsQYX2UHTRaG1Vym45NrgNrdV4EUKH9oW8JvGS1IMYY=;
 b=fYCfTfw4o3RaH6BpFAx52vd0bMNNNVCgc5/dvHE80QOuh0FrFMD3ndNs09zCtn1mBO
 9Wt6g0J0s7eC+Nb3fQUKQGKzEYAUNnCTqJElaeRjSVzMwxrIC3nafAs00MS5YFNKyEkO
 QYJouHNqwG8EcFvjh8UUFWBUi++njk4p5fq/Mc+66VTdt3E4JuuhZ0c5VVnNfD5QpMYw
 s2OCCIG8RhJaqj+1Irjic/Vw4f7gXZV+gC79iqatJbznOzMjipZ0fTguqN5r+8lZeuOt
 plLN3Hbcct9BDZidMxW7EZN79SLNBcTiTvHnCrW7RWWbcl5AJXATafI1OEv8kXPq7yoq
 9eJg==
X-Gm-Message-State: AOAM531bOWZLo3MwZozzZyVgvFbgy2oRN+XwU9xIw77a6OAPBSrjrVIA
 44UY5r9GaYWY3ITb00mkg/hzCnDBtb311Q==
X-Google-Smtp-Source: ABdhPJwmXoRmvMh89AnahmLC2e0I/Y6U+Jr4qUNzw+RsZa37BBNREfDXVI1QrkiIoxUzktM8lukOnQ==
X-Received: by 2002:a1c:ac02:: with SMTP id v2mr1975777wme.111.1618391448838; 
 Wed, 14 Apr 2021 02:10:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l9sm4359704wmq.2.2021.04.14.02.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 02:10:48 -0700 (PDT)
Date: Wed, 14 Apr 2021 11:10:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Liu Ying <victor.liu@nxp.com>
Message-ID: <YHaxls5WbuU/5pts@phenom.ffwll.local>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
 <20210413094904.3736372-5-daniel.vetter@ffwll.ch>
 <290aef5ed13749d465eb19235aa87a2cef63dd2a.camel@pengutronix.de>
 <YHWk9V/4mu1lGFgD@phenom.ffwll.local>
 <83a41b2e9636cb6a790b23843c6d2628d02c6997.camel@pengutronix.de>
 <9395e1fde2725d4fe01c206d9172b8acd7cdf921.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9395e1fde2725d4fe01c206d9172b8acd7cdf921.camel@nxp.com>
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 14, 2021 at 10:24:22AM +0800, Liu Ying wrote:
> Hi Daniel,
> 
> On Tue, 2021-04-13 at 16:14 +0200, Lucas Stach wrote:
> > Am Dienstag, dem 13.04.2021 um 16:04 +0200 schrieb Daniel Vetter:
> > > On Tue, Apr 13, 2021 at 01:47:28PM +0200, Lucas Stach wrote:
> > > > Am Dienstag, dem 13.04.2021 um 11:48 +0200 schrieb Daniel Vetter:
> > > > > Since
> > > > > 
> > > > > commit 890880ddfdbe256083170866e49c87618b706ac7
> > > > > Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > Date:   Fri Jan 4 09:56:10 2019 +0100
> > > > > 
> > > > >     drm: Auto-set allow_fb_modifiers when given modifiers at plane init
> > > > > 
> > > > > this is done automatically as part of plane init, if drivers set the
> > > > > modifier list correctly. Which is the case here.
> > > > > 
> > > > > This one actually set it twice on top of what drm_plane_init does, so
> > > > > double-redundant!
> > > > 
> > > > That's not true. imx-dcss and imx-drm are two totally separate drivers.
> > > > Maybe we should move imx-drm into its own ipuv3 directory one day to
> > > > make this more clear. Change is still correct, though.
> > > 
> > > Hm I greeped for drm_universal_plane_init and didn't find anythinf for the
> > > imx main driver ... where are planes set up for that? Need to review that
> > > they have the modifiers listed in all cases.
> > 
> > That's in drivers/gpu/drm/imx/ipuv3-plane.c and modifiers are always
> > set on plane init.

Oh I didn't grep for the new drmm_universal_plane_alloc. Thanks for
pointing this out.

> > 
> > Regards,
> > Lucas
> > 
> > > > Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> > > > 
> > > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > > > > Cc: Fabio Estevam <festevam@gmail.com>
> > > > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > > ---
> > > > >  drivers/gpu/drm/imx/dcss/dcss-kms.c | 1 -
> > > > >  drivers/gpu/drm/imx/imx-drm-core.c  | 1 -
> 
> Nit: Since this patch touches two totally separate drivers(imx-dcss and
> imx-drm), it would be good to split it into two patches.

I think if you expect that, then you need to move the imx-drm driver into
a subdirectory like dcss. And like e.g. drm/msm works too. As-is this is
just kinda confusing for people not involved in imx.
-Daniel

> 
> Thanks,
> Liu Ying
> 
> > > > >  2 files changed, 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/imx/dcss/dcss-kms.c b/drivers/gpu/drm/imx/dcss/dcss-kms.c
> > > > > index b549ce5e7607..37ae68a7fba5 100644
> > > > > --- a/drivers/gpu/drm/imx/dcss/dcss-kms.c
> > > > > +++ b/drivers/gpu/drm/imx/dcss/dcss-kms.c
> > > > > @@ -52,7 +52,6 @@ static void dcss_kms_mode_config_init(struct dcss_kms_dev *kms)
> > > > >  	config->min_height = 1;
> > > > >  	config->max_width = 4096;
> > > > >  	config->max_height = 4096;
> > > > > -	config->allow_fb_modifiers = true;
> > > > >  	config->normalize_zpos = true;
> > > > >  
> > > > > 
> > > > > 
> > > > > 
> > > > >  	config->funcs = &dcss_drm_mode_config_funcs;
> > > > > diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
> > > > > index 2ded8e4f32d0..8be4edaec958 100644
> > > > > --- a/drivers/gpu/drm/imx/imx-drm-core.c
> > > > > +++ b/drivers/gpu/drm/imx/imx-drm-core.c
> > > > > @@ -209,7 +209,6 @@ static int imx_drm_bind(struct device *dev)
> > > > >  	drm->mode_config.max_height = 4096;
> > > > >  	drm->mode_config.funcs = &imx_drm_mode_config_funcs;
> > > > >  	drm->mode_config.helper_private = &imx_drm_mode_config_helpers;
> > > > > -	drm->mode_config.allow_fb_modifiers = true;
> > > > >  	drm->mode_config.normalize_zpos = true;
> > > > >  
> > > > > 
> > > > > 
> > > > > 
> > > > >  	ret = drmm_mode_config_init(drm);
> > 
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
