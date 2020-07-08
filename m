Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7F821838B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 11:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2165F89BFD;
	Wed,  8 Jul 2020 09:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF48D896ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 09:28:10 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id e4so29118969oib.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 02:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2BdDZAdvd/3uz3Xva+KF0vjSKdQ1DGrlBJYy0j7ZxSw=;
 b=JUfjFEyH2g3ttfrVlpiS58Uut3jhj/vq6vHjgMoIflRQE28uJe4WcQvCpE0hLERGTw
 rFSQsrOJIy2C03asd4LE0WQMvdBbCNW/KAA0I9VZdnWZ0v2j2nisuxo7E2uYMzs0qsxV
 sy/pa6glaARFc2gvfMbT4tzdVpcaRNonvyhsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2BdDZAdvd/3uz3Xva+KF0vjSKdQ1DGrlBJYy0j7ZxSw=;
 b=eOC2UiIstmZGfwgQU/G7b1KCmzgNL9KRl2itw71WD1mIqQb0Z68b4Zdiy5nVQtg8ba
 OxInhknHpRMqCGPkFnPzuLWz1SLMRgZ0xZL/L60wz2P1a/pV9WHQEo5ZUUOsbmWrNn1n
 WQRqYO/gHPrOJc8Fou0qWV0Bq+2obkGnEd/usUkllvjt4vVnIuqgtdxH/HNHk6L+wrrv
 vu50tt1JkR3vP794i+PyT68l6GlqYKb9unzFA1PRy+a/YxTRAsZ1BblPRKrIfVdCXaq5
 DDCggJTUCWctDXDe0cHSPGgyjmeuhiOpvTB5YeUk5yBiBCYNT1fYW0hv8dwpdBrkV895
 4POg==
X-Gm-Message-State: AOAM532pdCtuKy9y10tqvDG7FSysyKo83KnpCw+5pNi2lZMBlMdJ+Gak
 5e1Rrx29nj3OkZfza9fHQQTUYvB5UV4dTK/0Ir1TyA==
X-Google-Smtp-Source: ABdhPJwfICrnjXPn0Rctf+jtpPXe0QR57PsUf+/WHk6l46Xy0EbWJHvi8HIMRNZDHac0/cmsaGfELr8tQ6MCZ0NZdFo=
X-Received: by 2002:a05:6808:88:: with SMTP id
 s8mr6004348oic.101.1594200490105; 
 Wed, 08 Jul 2020 02:28:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-16-daniel.vetter@ffwll.ch>
 <3d494750-9345-7bb0-08f2-0ebe58c74e88@ti.com>
In-Reply-To: <3d494750-9345-7bb0-08f2-0ebe58c74e88@ti.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 8 Jul 2020 11:27:58 +0200
Message-ID: <CAKMK7uGHk4KEEcE5TqSakGQf9ziibRxKREW7EPnpEPemkn=Azg@mail.gmail.com>
To: Jyri Sarha <jsarha@ti.com>
Subject: Re: [Intel-gfx] [PATCH 15/25] drm/tilcdc: Use standard
 drm_atomic_helper_commit
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 8, 2020 at 11:17 AM Jyri Sarha <jsarha@ti.com> wrote:
>
> On 07/07/2020 23:12, Daniel Vetter wrote:
> > Gives us proper nonblocking support for free, and a pile of other
> > things. The tilcdc code is simply old enough that it was never
> > converted over, but was stuck forever with the copypasta from when it
> > was initially merged.
> >
> > The riskiest thing with this conversion is maybe that there's an issue
> > with the vblank handling or vblank event handling, which will upset
> > the modern commit support in atomic helpers. But from a cursory review
> > drm_crtc_vblank_on/off is called in the right places, and the event
> > handling also seems to exist (albeit with much hand-rolling and
> > probably some races, could perhaps be converted over to
> > drm_crtc_arm_vblank_event without any real loss).
> >
> > Motivated by me not having to hand-roll the dma-fence annotations for
> > this.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Jyri Sarha <jsarha@ti.com>
> > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
>
> I tried this out, but it is not working. Something breaks in the event
> handling and event reference counting. Unfortunately my vacation is
> pressing on, and I am not sure if I have time to debug the issue further
> before that.

Thanks a lot for testing, looks like tilcdc doesn't quite handle the
event stuff in all cases, which results in the direct warning in
hw_done, and then the refcount fallout in plane_destry_state (I think
at least, not entirely sure about whether that's really just
collateral damage or a 2nd bug).

I'll try to come up with something, enjoy your vacations meanwhile!

Cheers, Daniel

> Anyway, I have attached the boot log with the following WARN dumps:
> ----------------------------------------------------------------
> [   12.203874] WARNING: CPU: 0 PID: 208 at
> drivers/gpu/drm/drm_atomic_helper.c:2329
> drm_atomic_helper_commit_hw_done+0x144/0x168 [drm_kms_helper]
>
> [   12.217682] WARNING: CPU: 0 PID: 208 at
> drivers/gpu/drm/drm_atomic_helper.c:2329
> drm_atomic_helper_commit_hw_done+0x144/0x168 [drm_kms_helper]
>
> [  232.156231] WARNING: CPU: 0 PID: 1315 at
> drivers/gpu/drm/drm_atomic_helper.c:2329
> drm_atomic_helper_commit_hw_done+0x144/0x168 [drm_kms_helper]
>
> [  232.472068] WARNING: CPU: 0 PID: 1315 at lib/refcount.c:28
> __drm_atomic_helper_plane_destroy_state+0xd0/0xe0 [drm_kms_helper]
>
> [  240.611129] WARNING: CPU: 0 PID: 1317 at
> drivers/gpu/drm/drm_atomic_helper.c:2329
> drm_atomic_helper_commit_hw_done+0x144/0x168 [drm_kms_helper]
> ----------------------------------------------------------------
>
> The first two came at boot time when setting up the fbconsole, the ones
> after that came when I tried to use kmstest[1]. The fbconsole came up,
> but nothing after that works.
>
> I am back from vacation in the beginning of august, so there may be some
> time before I can debug this further.
>
> Best regards,
> Jyri
>
>
>
> [1] https://github.com/tomba/kmsxx
>
> > ---
> >  drivers/gpu/drm/tilcdc/tilcdc_drv.c | 47 +----------------------------
> >  1 file changed, 1 insertion(+), 46 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > index 0d74a6443263..4f5fc3e87383 100644
> > --- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > +++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > @@ -87,55 +87,10 @@ static int tilcdc_atomic_check(struct drm_device *dev,
> >       return ret;
> >  }
> >
> > -static int tilcdc_commit(struct drm_device *dev,
> > -               struct drm_atomic_state *state,
> > -               bool async)
> > -{
> > -     int ret;
> > -
> > -     ret = drm_atomic_helper_prepare_planes(dev, state);
> > -     if (ret)
> > -             return ret;
> > -
> > -     ret = drm_atomic_helper_swap_state(state, true);
> > -     if (ret) {
> > -             drm_atomic_helper_cleanup_planes(dev, state);
> > -             return ret;
> > -     }
> > -
> > -     /*
> > -      * Everything below can be run asynchronously without the need to grab
> > -      * any modeset locks at all under one condition: It must be guaranteed
> > -      * that the asynchronous work has either been cancelled (if the driver
> > -      * supports it, which at least requires that the framebuffers get
> > -      * cleaned up with drm_atomic_helper_cleanup_planes()) or completed
> > -      * before the new state gets committed on the software side with
> > -      * drm_atomic_helper_swap_state().
> > -      *
> > -      * This scheme allows new atomic state updates to be prepared and
> > -      * checked in parallel to the asynchronous completion of the previous
> > -      * update. Which is important since compositors need to figure out the
> > -      * composition of the next frame right after having submitted the
> > -      * current layout.
> > -      */
> > -
> > -     drm_atomic_helper_commit_modeset_disables(dev, state);
> > -
> > -     drm_atomic_helper_commit_planes(dev, state, 0);
> > -
> > -     drm_atomic_helper_commit_modeset_enables(dev, state);
> > -
> > -     drm_atomic_helper_wait_for_vblanks(dev, state);
> > -
> > -     drm_atomic_helper_cleanup_planes(dev, state);
> > -
> > -     return 0;
> > -}
> > -
> >  static const struct drm_mode_config_funcs mode_config_funcs = {
> >       .fb_create = drm_gem_fb_create,
> >       .atomic_check = tilcdc_atomic_check,
> > -     .atomic_commit = tilcdc_commit,
> > +     .atomic_commit = drm_atomic_helper_commit,
> >  };
> >
> >  static void modeset_init(struct drm_device *dev)
> >
>
>
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
