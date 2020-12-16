Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31452DBDC9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 10:41:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422836E0D7;
	Wed, 16 Dec 2020 09:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAF46E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 09:41:51 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id a109so22295015otc.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 01:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f3hFtHny9tWcZXe9Ppr41tOMRXk5DQrjAzV/rnP5TFc=;
 b=NYZ8CJ5ai6cJl9VtmTEM7bTiae/MtYvXAyJoXxtb8De6ETtw+NlEXRxOyL8rUhYAry
 BZLuMufDaHyUEu2hP5Fryx4vr1+F4iJPWLjJHJ4nQTMD4zfk0ZM5vbr43dRWuDCmhWm3
 gZEMzNXTjv/IlKikDOWk5ATZ34LDIaZXqqpQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f3hFtHny9tWcZXe9Ppr41tOMRXk5DQrjAzV/rnP5TFc=;
 b=KFRImnSbX3TWCNqKdrlS0WEu1zhGAA0Z2SaNyFn9IQAC4m1JqgdB7s9y5I+nJduqNp
 czO06fIqldHksclkEvoIvJI+r6xNnR5DGpDUILbPKlqRfZaIBeXuJgOyn6Gj1YYFfAud
 UlAxTQDST4Bij7uNK5cF6vQrAOr/vRaWiI0o78a3sA5/nPFOtMM/yefutzth8jSAjkUY
 nq/bbuap5UdjSCh0DPOHLHIxwg2LVjaddMlzA5xowKPHm5Gd52XX8lDOzlM5mKyAwmXX
 uFSBhiVuwV7hXANOp8bbpol4Rk6T98l7cdaPn+OgReS5uH5+ChgfIa0wEdfT8luVH2HK
 IDgA==
X-Gm-Message-State: AOAM5306Wl9VU4ccDHUwJqwTS0CjXY+/dtxiztsJo712gRAHmEo4TE1r
 a2Da8nK2CY3kQPZGOIwnO6JfZFlguvn/GvYFn6XBJQ==
X-Google-Smtp-Source: ABdhPJxMXZuDmdTKCNd+t3C7uTCdbzCNOEW5fSzqxK+RVd/yxec7n29mF1Nm9n15J7L2OmMqvIonRa+3kwaIt9znTpw=
X-Received: by 2002:a9d:4e08:: with SMTP id p8mr25635431otf.188.1608111710460; 
 Wed, 16 Dec 2020 01:41:50 -0800 (PST)
MIME-Version: 1.0
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-14-daniel.vetter@ffwll.ch>
 <X9ljB3sRJHXf7ZZJ@pendragon.ideasonboard.com>
In-Reply-To: <X9ljB3sRJHXf7ZZJ@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 16 Dec 2020 10:41:39 +0100
Message-ID: <CAKMK7uE8mD_X718iuNU1e-NEZV7QMvbgu5xLMqS3tOFqdUXAgQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH 14/65] drm/rcar-du: Annotate dma-fence
 critical section in commit path
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
Cc: "open list:DRM DRIVERS FOR RENESAS" <linux-renesas-soc@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 16, 2020 at 2:29 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> Thank you for the patch.
>
> On Fri, Oct 23, 2020 at 02:21:25PM +0200, Daniel Vetter wrote:
> > Ends right after drm_atomic_helper_commit_hw_done(), absolutely
> > nothing fancy going on here.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> > Cc: linux-renesas-soc@vger.kernel.org
>
> I'm lacking context here, there's only one instance of a call to
> dma_fence_begin_signalling() in the subsystem, and no cover letter in
> the series to explain what's going on. Some information would help
> reviewing the patch :-)
>
> Also, could you mention in the cover letter for the next version if you
> will merge the whole series, or expect individual maintainers to pick up
> the relevant patches ?

This series was a misfire of git send-email. I figured that following
up to 65 patches with "I'm sorry" doesn't help the spam problem, so I
only did it once.

This patch was part of a proper series half a year ago, with cover
letter and everything, and a few patches from that series have landed.
I've planed to resubmit this all this week again.
-Daniel

>
> > ---
> >  drivers/gpu/drm/rcar-du/rcar_du_kms.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/rcar-du/rcar_du_kms.c b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> > index 72dda446355f..8d91140151cc 100644
> > --- a/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> > +++ b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
> > @@ -441,6 +441,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
> >       struct drm_crtc_state *crtc_state;
> >       struct drm_crtc *crtc;
> >       unsigned int i;
> > +     bool fence_cookie = dma_fence_begin_signalling();
> >
> >       /*
> >        * Store RGB routing to DPAD0 and DPAD1, the hardware will be configured
> > @@ -467,6 +468,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
> >       drm_atomic_helper_commit_modeset_enables(dev, old_state);
> >
> >       drm_atomic_helper_commit_hw_done(old_state);
> > +     dma_fence_end_signalling(fence_cookie);
> >       drm_atomic_helper_wait_for_flip_done(dev, old_state);
> >
> >       drm_atomic_helper_cleanup_planes(dev, old_state);
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
