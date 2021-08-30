Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6893FB2D7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 11:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5498E89A5E;
	Mon, 30 Aug 2021 09:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004CE899F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 09:02:45 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id n11so20475946edv.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 02:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=P0VwUkxlwiDNF5zXlJbfV8JNAaRiNE6CCyXYomEyvrI=;
 b=hfS6z/FKy4eXTdRumbtkBdRZxKmkoRQer3FHqIbFXcWZ8JldQkNBXy8cS5R8V8X199
 wa30n7EaQ1FNoXda2wlwE6FFaoG7Lbp4KuGTyk3b0A1fZJXCCDIgia+z+nDtH21B4z3I
 tlK6+VPFd52FGv9TuLI6/1g7hm/2h15D1abSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P0VwUkxlwiDNF5zXlJbfV8JNAaRiNE6CCyXYomEyvrI=;
 b=P1wzsjYUQrPL/nEMxK/jZBnDo3R+DtjDCEAaQE+uH9xWdyzK8B87VjMiNulViikUEx
 ZqlmGMPoG/51QmGEEI/laujlXkma5Lj0RVU7I1mVTYIMuNUCNUkinyvoHjIOMccOK1LZ
 k3h/uoEclyK42PC/AwrgbgoEYHNYjhbuVLE5/OYjHYbx8TNV3QIJ6D4aCMcJ/ex2W3q9
 B9gDsrNZhOZEJdWTI1e28MNRUYTB0IbOpgL0SErHORpr/88QDY4xjtPu2Qwwb1vVF7kI
 W1T9/eC1IdoRafUvcqJX8nq4guw1AbXBKz1c4wWupnSItV4fl1vEcSQ2yvPzyM6pSrqF
 tc8w==
X-Gm-Message-State: AOAM533JRxDz2vi+EfCqR2qAo8CmHonFWknat1AiMm1eE1Adh0mcHH2J
 eUbcDnoDkgXaKkhslkgTIJk1TQ==
X-Google-Smtp-Source: ABdhPJxYyxhCjR7uuGM8J7R+lgAExXey1usensekyctDskpS84BLeSBbFiTNH3XD6qyITSLiAHrxkQ==
X-Received: by 2002:aa7:cc02:: with SMTP id q2mr22493221edt.154.1630314164602; 
 Mon, 30 Aug 2021 02:02:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id cb22sm3862182edb.5.2021.08.30.02.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 02:02:44 -0700 (PDT)
Date: Mon, 30 Aug 2021 11:02:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sean Paul <sean@poorly.run>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>
Message-ID: <YSyesupzftTAuWqI@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-17-daniel.vetter@ffwll.ch>
 <CAF6AEGtSM_TfCKvHh48WFX4DvhdrWLLi3oCMPz1x2_pCZwbPCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF6AEGtSM_TfCKvHh48WFX4DvhdrWLLi3oCMPz1x2_pCZwbPCQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v5 16/20] drm/msm: Don't break exclusive
 fence ordering
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 26, 2021 at 09:16:25AM -0700, Rob Clark wrote:
> On Thu, Aug 5, 2021 at 3:47 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > There's only one exclusive slot, and we must not break the ordering.
> >
> > Adding a new exclusive fence drops all previous fences from the
> > dma_resv. To avoid violating the signalling order we err on the side of
> > over-synchronizing by waiting for the existing fences, even if
> > userspace asked us to ignore them.
> >
> > A better fix would be to us a dma_fence_chain or _array like e.g.
> > amdgpu now uses, but
> > - msm has a synchronous dma_fence_wait for anything from another
> >   context, so doesn't seem to care much,
> > - and it probably makes sense to lift this into dma-resv.c code as a
> >   proper concept, so that drivers don't have to hack up their own
> >   solution each on their own.
> >
> > v2: Improve commit message per Lucas' suggestion.
> >
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Rob Clark <robdclark@gmail.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: linux-arm-msm@vger.kernel.org
> > Cc: freedreno@lists.freedesktop.org
> 
> a-b

Also pushed to drm-misc-next, thanks for review&testing.
-Daniel

> 
> > ---
> >  drivers/gpu/drm/msm/msm_gem_submit.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
> > index fb5a2eab27a2..66633dfd58a2 100644
> > --- a/drivers/gpu/drm/msm/msm_gem_submit.c
> > +++ b/drivers/gpu/drm/msm/msm_gem_submit.c
> > @@ -330,7 +330,8 @@ static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
> >                                 return ret;
> >                 }
> >
> > -               if (no_implicit)
> > +               /* exclusive fences must be ordered */
> > +               if (no_implicit && !write)
> >                         continue;
> >
> >                 ret = drm_sched_job_add_implicit_dependencies(&submit->base,
> > --
> > 2.32.0
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
