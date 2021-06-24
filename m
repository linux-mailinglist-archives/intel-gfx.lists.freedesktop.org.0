Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E21003B3040
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 15:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECE66EB93;
	Thu, 24 Jun 2021 13:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FB56EB90
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 13:39:26 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 h21-20020a1ccc150000b02901d4d33c5ca0so3658015wmb.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 06:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nAn0b+6cO0H79Gi5ozqr1ZKgVo31/Ju4Tdkm3z40D+4=;
 b=H3/UfvEZ0+blCsyXdDGIB6FOAez0UMZNPONnat4wlXG8AX+VaTb2mqhwMb2gty3rxB
 HfJCTNwD08h12DMrda3jFIXehlFO4FDisy0D+iupa0n1q9cr32JbfVcL2PoXPKFRvu3e
 V19xHRctr+m7tu/qEqYLgi2nm08+gpZtOOi0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nAn0b+6cO0H79Gi5ozqr1ZKgVo31/Ju4Tdkm3z40D+4=;
 b=LhqACIZ46Ss4q2agA6bC9JOKgeiKlOxUm8Bxud6ncbd92lrPn6eoB1TKMgYAS7EEnJ
 ANDw83WWOLcoz7XmiSFV+1/n6cIjm2puvmxk+dtBgAa9teXE3pqMdHhS1tRo5XMIzalp
 pz2gekUi+FB2pP5yjy2c1vUgq0D1S3BMpsiSdaqom7PqRiHElBSfxq7HxzqoHa/iZobj
 Xiq9dU2vaF7+u4VoHmhPC8PvrklX6bjc0hNdRA+ffuops9Lr3YJPPAw9EO2iBv/giO7i
 mumoebzjwIKeMwpKUi3J5vpWgmnT8zqtPmy50cmveUEkSTUAztJizLYnbuJ2swYLX0G5
 d3SQ==
X-Gm-Message-State: AOAM531wqrRZ3DbRMCPpFaH5AI6o3Yb2K0L5LTF5iL0Mfi0dx7c8AmmY
 t3G9jB3aynswlrhwO8SPNyGltO2HH50e5Q==
X-Google-Smtp-Source: ABdhPJyeWLeb970zBqUbQd26WZzOsWfny+XpW51E092fcqjJllFr6S5Ub//JxERujzf5kRaOsGhaFw==
X-Received: by 2002:a05:600c:1c2a:: with SMTP id
 j42mr4257781wms.173.1624541964875; 
 Thu, 24 Jun 2021 06:39:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 12sm6871248wmj.12.2021.06.24.06.39.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 06:39:24 -0700 (PDT)
Date: Thu, 24 Jun 2021 15:39:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YNSLCkFVDoly65QZ@phenom.ffwll.local>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-11-daniel.vetter@ffwll.ch>
 <da2c2108-6f48-6a85-db71-c93614484369@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da2c2108-6f48-6a85-db71-c93614484369@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/vram-helpers: Create
 DRM_GEM_VRAM_PLANE_HELPER_FUNCS
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Airlie <airlied@redhat.com>, Tian Tao <tiantao6@hisilicon.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 24, 2021 at 09:46:20AM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 22.06.21 um 18:55 schrieb Daniel Vetter:
> > Like we have for the shadow helpers too, and roll it out to drivers.
> =

> In addition to the plane-helper macro, you may also want to add
> DRM_GEM_VRAM_SIMPLE_DISPLAY_PIPE_FUNCS and use it in bochs.

Hm I guess we can do that when we have a 2nd such case. I was more aiming
to make it as friction-less as possible that drivers end up with a
prepare_fb implementation which fishes out the implicit fences as needed
in this series.

Thanks for looking at this patch, I'm merging them all to drm-misc-next
now.
-Daniel

> =

> Best regards
> Thomas
> =

> > =

> > Acked-by: Tian Tao <tiantao6@hisilicon.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Hans de Goede <hdegoede@redhat.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Tian Tao <tiantao6@hisilicon.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >   drivers/gpu/drm/ast/ast_mode.c                 |  3 +--
> >   drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c |  3 +--
> >   drivers/gpu/drm/vboxvideo/vbox_mode.c          |  3 +--
> >   include/drm/drm_gem_vram_helper.h              | 12 ++++++++++++
> >   4 files changed, 15 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_m=
ode.c
> > index e5996ae03c49..f5d58c3088fe 100644
> > --- a/drivers/gpu/drm/ast/ast_mode.c
> > +++ b/drivers/gpu/drm/ast/ast_mode.c
> > @@ -612,8 +612,7 @@ ast_primary_plane_helper_atomic_disable(struct drm_=
plane *plane,
> >   }
> >   static const struct drm_plane_helper_funcs ast_primary_plane_helper_f=
uncs =3D {
> > -	.prepare_fb =3D drm_gem_vram_plane_helper_prepare_fb,
> > -	.cleanup_fb =3D drm_gem_vram_plane_helper_cleanup_fb,
> > +	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
> >   	.atomic_check =3D ast_primary_plane_helper_atomic_check,
> >   	.atomic_update =3D ast_primary_plane_helper_atomic_update,
> >   	.atomic_disable =3D ast_primary_plane_helper_atomic_disable,
> > diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c b/drivers/g=
pu/drm/hisilicon/hibmc/hibmc_drm_de.c
> > index 29b8332b2bca..ccf80e369b4b 100644
> > --- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
> > +++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
> > @@ -158,8 +158,7 @@ static const struct drm_plane_funcs hibmc_plane_fun=
cs =3D {
> >   };
> >   static const struct drm_plane_helper_funcs hibmc_plane_helper_funcs =
=3D {
> > -	.prepare_fb	=3D drm_gem_vram_plane_helper_prepare_fb,
> > -	.cleanup_fb	=3D drm_gem_vram_plane_helper_cleanup_fb,
> > +	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
> >   	.atomic_check =3D hibmc_plane_atomic_check,
> >   	.atomic_update =3D hibmc_plane_atomic_update,
> >   };
> > diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vb=
oxvideo/vbox_mode.c
> > index 964381d55fc1..972c83b720aa 100644
> > --- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
> > +++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
> > @@ -488,8 +488,7 @@ static const struct drm_plane_helper_funcs vbox_pri=
mary_helper_funcs =3D {
> >   	.atomic_check =3D vbox_primary_atomic_check,
> >   	.atomic_update =3D vbox_primary_atomic_update,
> >   	.atomic_disable =3D vbox_primary_atomic_disable,
> > -	.prepare_fb	=3D drm_gem_vram_plane_helper_prepare_fb,
> > -	.cleanup_fb	=3D drm_gem_vram_plane_helper_cleanup_fb,
> > +	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
> >   };
> >   static const struct drm_plane_funcs vbox_primary_plane_funcs =3D {
> > diff --git a/include/drm/drm_gem_vram_helper.h b/include/drm/drm_gem_vr=
am_helper.h
> > index 27ed7e9243b9..f48d181c824b 100644
> > --- a/include/drm/drm_gem_vram_helper.h
> > +++ b/include/drm/drm_gem_vram_helper.h
> > @@ -124,6 +124,18 @@ void
> >   drm_gem_vram_plane_helper_cleanup_fb(struct drm_plane *plane,
> >   				     struct drm_plane_state *old_state);
> > +/**
> > + * DRM_GEM_VRAM_PLANE_HELPER_FUNCS -
> > + *	Initializes struct drm_plane_helper_funcs for VRAM handling
> > + *
> > + * Drivers may use GEM BOs as VRAM helpers for the framebuffer memory.=
 This
> > + * macro initializes struct drm_plane_helper_funcs to use the respecti=
ve helper
> > + * functions.
> > + */
> > +#define DRM_GEM_VRAM_PLANE_HELPER_FUNCS \
> > +	.prepare_fb =3D drm_gem_vram_plane_helper_prepare_fb, \
> > +	.cleanup_fb =3D drm_gem_vram_plane_helper_cleanup_fb
> > +
> >   /*
> >    * Helpers for struct drm_simple_display_pipe_funcs
> >    */
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
