Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E36869B354
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 20:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767BC10E43F;
	Fri, 17 Feb 2023 19:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372D210E411
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 19:48:52 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 t6-20020a7bc3c6000000b003dc57ea0dfeso1724346wmj.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 11:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1676663330;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=/zzagqI4o594ye+P8sZFJ7FPrOCINhJemYJfNna1EwQ=;
 b=CmVs0IfX5GquuEp/qSlMfvMLPxqa4lGm/hiU1GGpSUULRFbHeRrlgTDOaOSdfCbRtZ
 8nlkYmDNIdz5g71y5xoXuFs4Xma+tM4Se1Q2LAAOj6rSYYMZ4RvDkt4uqHUmF0bbHhNZ
 Ivd3bs7Rgs0D8Db94FgVWEoJp23So4xz1g77w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1676663330;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/zzagqI4o594ye+P8sZFJ7FPrOCINhJemYJfNna1EwQ=;
 b=5q5PTkt40xXgcvLG1xyKX81j4MJ1BqaS0c75Cn08pwBwkKxHxDftAEgJApgKaE4+x0
 UoKI2eERLi+mAnelzVhWUx9R0kG7Vrgtb2KZIoVDTsqQ4zPPjxB35H8NR5CignEtgTFU
 dRikoOjK/aZUg5gbD/lLn/V4LWfbJu9mfEUkdq6QXuLcbnB+4MyUxoEJruw0CC93vfkh
 k58GmRvY6BCk8dDKhkSZJjTFtE6Vm1Ni7YuLX2KqP+hpt0mrnVjb0DWhgqi46xKedl/i
 dRZ74d8hH5x9JI+PJZQiiaI1awZYSQM+8ULV7Jz1VTHsCtl+YOa6KdF7/Unlz9+L6Ziy
 rIEg==
X-Gm-Message-State: AO0yUKX0krgP1v2K8KNeBvWcJ2gpvXR0oK4IGGOqoKoZWGaDlBBiKUuM
 UZ/Fyqc8rdysd9pJsr309zWHdg==
X-Google-Smtp-Source: AK7set+42TuXYqWItQsdnhDJWmmDQB8Kje8i13BYU8HP4LBloz41BYhA5DIurBdRU6JcW7NjyvbfdA==
X-Received: by 2002:a05:600c:1e0f:b0:3dc:3b1a:5d2d with SMTP id
 ay15-20020a05600c1e0f00b003dc3b1a5d2dmr2223673wmb.0.1676663330637; 
 Fri, 17 Feb 2023 11:48:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 12-20020a05600c020c00b003dc3f3d77e3sm5996834wmi.7.2023.02.17.11.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 11:48:50 -0800 (PST)
Date: Fri, 17 Feb 2023 20:48:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <Y+/aIGoP13k0MhYG@phenom.ffwll.local>
References: <20230216140620.17699-1-tzimmermann@suse.de>
 <Y+6OCAJ9wyE1PfAw@phenom.ffwll.local>
 <a9a85066-6f48-5cc5-550f-b6f301a16b00@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a9a85066-6f48-5cc5-550f-b6f301a16b00@suse.de>
X-Operating-System: Linux phenom 6.0.0-6-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/fb-helper: Remove
 drm_fb_helper_unprepare() from drm_fb_helper_fini()
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
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, javierm@redhat.com, mripard@kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, airlied@gmail.com,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 17, 2023 at 09:18:54AM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 16.02.23 um 21:11 schrieb Daniel Vetter:
> > On Thu, Feb 16, 2023 at 03:06:20PM +0100, Thomas Zimmermann wrote:
> > > Move drm_fb_helper_unprepare() from drm_fb_helper_fini() into the
> > > calling fbdev implementation. Avoids a possible stale mutex with
> > > generic fbdev code.
> > > 
> > > As indicated by its name, drm_fb_helper_prepare() prepares struct
> > > drm_fb_helper before setting up the fbdev support with a call to
> > > drm_fb_helper_init(). In legacy fbdev emulation, this happens next
> > > to each other. If successful, drm_fb_helper_fini() later tear down
> > > the fbdev device and also unprepare via drm_fb_helper_unprepare().
> > > 
> > > Generic fbdev emulation prepares struct drm_fb_helper immediately
> > > after allocating the instance. It only calls drm_fb_helper_init()
> > > as part of processing a hotplug event. If the hotplug-handling fails,
> > > it runs drm_fb_helper_fini(). This unprepares the fb-helper instance
> > > and the next hotplug event runs on stale data.
> > > 
> > > Solve this by moving drm_fb_helper_unprepare() from drm_fb_helper_fini()
> > > into the fbdev implementations. Call it right before freeing the
> > > fb-helper instance.
> > > 
> > > Fixes: 4825797c36da ("drm/fb-helper: Introduce drm_fb_helper_unprepare()")
> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: Javier Martinez Canillas <javierm@redhat.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Maxime Ripard <mripard@kernel.org>
> > > Cc: David Airlie <airlied@gmail.com>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: dri-devel@lists.freedesktop.org
> > > 
> > > Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> > 
> > This reminds me of an old patch I just recently stumbled over again:
> > 
> > https://lore.kernel.org/dri-devel/Y3St2VHJ7jEmcNFw@phenom.ffwll.local/
> > 
> > Should I resurrect that one maybe and send it out? I think that also ties
> > a bit into your story here.
> 
> I don't think it will be necessary. I began to convert the existing fbdev
> emulation to make use of drm_client, which should resove a number of
> problems. I expect to post this after the various trees have merged the
> recent changes to fbdev helpers.

The only version the patch is fixing is the client one, the old one is
unfixable (I think at least, hence just the comments). Note that the link
is pre-splitting, I do have a rebased version here.

I'll just send that out and head into vacations :-)
-Daniel

> 
> Best regards
> Thomas
> 
> > 
> > > ---
> > >   drivers/gpu/drm/armada/armada_fbdev.c      | 3 +++
> > >   drivers/gpu/drm/drm_fb_helper.c            | 2 --
> > >   drivers/gpu/drm/drm_fbdev_generic.c        | 2 ++
> > >   drivers/gpu/drm/exynos/exynos_drm_fbdev.c  | 3 ++-
> > >   drivers/gpu/drm/gma500/framebuffer.c       | 2 ++
> > >   drivers/gpu/drm/i915/display/intel_fbdev.c | 1 +
> > >   drivers/gpu/drm/msm/msm_fbdev.c            | 2 ++
> > >   drivers/gpu/drm/omapdrm/omap_fbdev.c       | 2 ++
> > >   drivers/gpu/drm/radeon/radeon_fb.c         | 2 ++
> > >   drivers/gpu/drm/tegra/fb.c                 | 1 +
> > >   10 files changed, 17 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> > > index 07e410c62b7a..0e44f53e9fa4 100644
> > > --- a/drivers/gpu/drm/armada/armada_fbdev.c
> > > +++ b/drivers/gpu/drm/armada/armada_fbdev.c
> > > @@ -147,6 +147,7 @@ int armada_fbdev_init(struct drm_device *dev)
> > >    err_fb_setup:
> > >   	drm_fb_helper_fini(fbh);
> > >    err_fb_helper:
> > > +	drm_fb_helper_unprepare(fbh);
> > >   	priv->fbdev = NULL;
> > >   	return ret;
> > >   }
> > > @@ -164,6 +165,8 @@ void armada_fbdev_fini(struct drm_device *dev)
> > >   		if (fbh->fb)
> > >   			fbh->fb->funcs->destroy(fbh->fb);
> > > +		drm_fb_helper_unprepare(fbh);
> > > +
> > >   		priv->fbdev = NULL;
> > >   	}
> > >   }
> > > diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> > > index 28c428e9c530..a39998047f8a 100644
> > > --- a/drivers/gpu/drm/drm_fb_helper.c
> > > +++ b/drivers/gpu/drm/drm_fb_helper.c
> > > @@ -590,8 +590,6 @@ void drm_fb_helper_fini(struct drm_fb_helper *fb_helper)
> > 
> > I think it would be good to update the kerneldoc of _init() and _fini()
> > here to mention each another like we usually do with these pairs. Same
> > with prepare/unprepare() although the latter rerfences _prepare() already.
> > 
> > >   	}
> > >   	mutex_unlock(&kernel_fb_helper_lock);
> > > -	drm_fb_helper_unprepare(fb_helper);
> > > -
> > >   	if (!fb_helper->client.funcs)
> > >   		drm_client_release(&fb_helper->client);
> > >   }
> > > diff --git a/drivers/gpu/drm/drm_fbdev_generic.c b/drivers/gpu/drm/drm_fbdev_generic.c
> > > index 365f80717fa1..4d6325e91565 100644
> > > --- a/drivers/gpu/drm/drm_fbdev_generic.c
> > > +++ b/drivers/gpu/drm/drm_fbdev_generic.c
> > > @@ -65,6 +65,8 @@ static void drm_fbdev_fb_destroy(struct fb_info *info)
> > >   	drm_client_framebuffer_delete(fb_helper->buffer);
> > >   	drm_client_release(&fb_helper->client);
> > > +
> > > +	drm_fb_helper_unprepare(fb_helper);
> > >   	kfree(fb_helper);
> > >   }
> > > diff --git a/drivers/gpu/drm/exynos/exynos_drm_fbdev.c b/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
> > > index b89e33af8da8..4929ffe5a09a 100644
> > > --- a/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
> > > +++ b/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
> > > @@ -183,8 +183,8 @@ int exynos_drm_fbdev_init(struct drm_device *dev)
> > >   err_setup:
> > >   	drm_fb_helper_fini(helper);
> > > -
> > >   err_init:
> > > +	drm_fb_helper_unprepare(helper);
> > >   	private->fb_helper = NULL;
> > >   	kfree(fbdev);
> > > @@ -219,6 +219,7 @@ void exynos_drm_fbdev_fini(struct drm_device *dev)
> > >   	fbdev = to_exynos_fbdev(private->fb_helper);
> > >   	exynos_drm_fbdev_destroy(dev, private->fb_helper);
> > > +	drm_fb_helper_unprepare(private->fb_helper);
> > >   	kfree(fbdev);
> > >   	private->fb_helper = NULL;
> > >   }
> > > diff --git a/drivers/gpu/drm/gma500/framebuffer.c b/drivers/gpu/drm/gma500/framebuffer.c
> > > index 1f04c07ee180..f471e0cb7298 100644
> > > --- a/drivers/gpu/drm/gma500/framebuffer.c
> > > +++ b/drivers/gpu/drm/gma500/framebuffer.c
> > > @@ -427,6 +427,7 @@ int psb_fbdev_init(struct drm_device *dev)
> > >   fini:
> > >   	drm_fb_helper_fini(fb_helper);
> > >   free:
> > > +	drm_fb_helper_unprepare(fb_helper);
> > >   	kfree(fb_helper);
> > >   	return ret;
> > >   }
> > > @@ -439,6 +440,7 @@ static void psb_fbdev_fini(struct drm_device *dev)
> > >   		return;
> > >   	psb_fbdev_destroy(dev, dev_priv->fb_helper);
> > > +	drm_fb_helper_unprepare(dev_priv->fb_helper);
> > >   	kfree(dev_priv->fb_helper);
> > >   	dev_priv->fb_helper = NULL;
> > >   }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > index 6113d7627d45..98029059f701 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > > @@ -352,6 +352,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
> > >   	if (ifbdev->fb)
> > >   		drm_framebuffer_remove(&ifbdev->fb->base);
> > > +	drm_fb_helper_unprepare(&ifbdev->helper);
> > >   	kfree(ifbdev);
> > >   }
> > > diff --git a/drivers/gpu/drm/msm/msm_fbdev.c b/drivers/gpu/drm/msm/msm_fbdev.c
> > > index 915b213f3a5c..c804e5ba682a 100644
> > > --- a/drivers/gpu/drm/msm/msm_fbdev.c
> > > +++ b/drivers/gpu/drm/msm/msm_fbdev.c
> > > @@ -170,6 +170,7 @@ struct drm_fb_helper *msm_fbdev_init(struct drm_device *dev)
> > >   fini:
> > >   	drm_fb_helper_fini(helper);
> > >   fail:
> > > +	drm_fb_helper_unprepare(helper);
> > >   	kfree(fbdev);
> > >   	return NULL;
> > >   }
> > > @@ -196,6 +197,7 @@ void msm_fbdev_free(struct drm_device *dev)
> > >   		drm_framebuffer_remove(fbdev->fb);
> > >   	}
> > > +	drm_fb_helper_unprepare(helper);
> > >   	kfree(fbdev);
> > >   	priv->fbdev = NULL;
> > > diff --git a/drivers/gpu/drm/omapdrm/omap_fbdev.c b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > > index fc5f52d567c6..84429728347f 100644
> > > --- a/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > > +++ b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> > > @@ -256,6 +256,7 @@ void omap_fbdev_init(struct drm_device *dev)
> > >   fini:
> > >   	drm_fb_helper_fini(helper);
> > >   fail:
> > > +	drm_fb_helper_unprepare(helper);
> > >   	kfree(fbdev);
> > >   	dev_warn(dev->dev, "omap_fbdev_init failed\n");
> > > @@ -286,6 +287,7 @@ void omap_fbdev_fini(struct drm_device *dev)
> > >   	if (fbdev->fb)
> > >   		drm_framebuffer_remove(fbdev->fb);
> > > +	drm_fb_helper_unprepare(helper);
> > >   	kfree(fbdev);
> > >   	priv->fbdev = NULL;
> > > diff --git a/drivers/gpu/drm/radeon/radeon_fb.c b/drivers/gpu/drm/radeon/radeon_fb.c
> > > index 6e5eed0e157c..c4807f0c43bc 100644
> > > --- a/drivers/gpu/drm/radeon/radeon_fb.c
> > > +++ b/drivers/gpu/drm/radeon/radeon_fb.c
> > > @@ -367,6 +367,7 @@ int radeon_fbdev_init(struct radeon_device *rdev)
> > >   fini:
> > >   	drm_fb_helper_fini(&rfbdev->helper);
> > >   free:
> > > +	drm_fb_helper_unprepare(&rfbdev->helper);
> > >   	kfree(rfbdev);
> > >   	return ret;
> > >   }
> > > @@ -377,6 +378,7 @@ void radeon_fbdev_fini(struct radeon_device *rdev)
> > >   		return;
> > >   	radeon_fbdev_destroy(rdev->ddev, rdev->mode_info.rfbdev);
> > > +	drm_fb_helper_unprepare(&rdev->mode_info.rfbdev->helper);
> > >   	kfree(rdev->mode_info.rfbdev);
> > >   	rdev->mode_info.rfbdev = NULL;
> > >   }
> > > diff --git a/drivers/gpu/drm/tegra/fb.c b/drivers/gpu/drm/tegra/fb.c
> > > index 153c39c32c71..bfebe2786d61 100644
> > > --- a/drivers/gpu/drm/tegra/fb.c
> > > +++ b/drivers/gpu/drm/tegra/fb.c
> > > @@ -315,6 +315,7 @@ static struct tegra_fbdev *tegra_fbdev_create(struct drm_device *drm)
> > >   static void tegra_fbdev_free(struct tegra_fbdev *fbdev)
> > >   {
> > > +	drm_fb_helper_unprepare(&fbdev->base);
> > 
> > Ok this one tegra change was a bit tricky, drivers really should just use
> > drmm_/devm_ for everything :-)
> > 
> > With the kerneldoc augmented:
> > 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > >   	kfree(fbdev);
> > >   }
> > > -- 
> > > 2.39.1
> > > 
> > 
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Ivo Totev




-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
