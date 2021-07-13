Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7A3C7564
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 18:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAD689E1B;
	Tue, 13 Jul 2021 16:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D483689E9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 16:58:30 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso23170019otu.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 09:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6SEHtexM30zQ1pNlegjyNVvT5I02vNfZvNmYrTBM0+0=;
 b=ZQ+ry+Bx8r9GFRJnBTRGJ89JZCMdTEXJ7q5yArO2dp23xWpZw4BvXP1uG4PK+Uq/ie
 t4UPLQr8vSBiOZFs0RUvpyf6uMGF3ZQntmNGZDOdBBUow/VsywUeAw3wdXzYzCrq/+h2
 QA7P5Sr7mYfyRDcB20gerZcLdLFsNws/E1mDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6SEHtexM30zQ1pNlegjyNVvT5I02vNfZvNmYrTBM0+0=;
 b=kkK+QgOrWetOQJ2wsRzs7PEUxxKiFQyDRnKlB4Cq9d+6Iwwe0qNdRCmEDKAsUeF1tk
 RSG13Rrj8Jop3+uQcMaVqmAJ11iF1lao9wAXz9DlxBzX42oURr3AMdE64vbTokv0rSt0
 DwNdEv9k3XMa3w32MBa2eKezqmZ6LF5eCQ945sglBjF5ulGfFtIGCnoFIMNTSH+czR0w
 58kHc7xOJzelusCJYrQ+kKL8PKVX4LyBX0oiXnIaRkMA0L8yVjFwMJmL/OEyUoR+ocIm
 /YnDhuQ/rOC5dgj5PjxaqtFl6HkJ5jK01JMHHR0pLk79mvw1mM6qaZ53y1PKuydV+j+/
 CMfA==
X-Gm-Message-State: AOAM5315PEkHnqaJWxFHcqHRDJhbSXlzFPGhrdkKxbjZihu+IT8WmggC
 2PAZ1Qp62iCW/yMk7c1UBmXxDXmvzjWZcbpVUqN9ig==
X-Google-Smtp-Source: ABdhPJwfBxb7hGnmJjrluM8xypb4cOTE7kDdsy2G6JzETLnn61eE66M9+B1vlIXxd1/coMtHeMn4CAh93opbQGLOymI=
X-Received: by 2002:a05:6830:2366:: with SMTP id
 r6mr4310903oth.188.1626195510078; 
 Tue, 13 Jul 2021 09:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-15-daniel.vetter@ffwll.ch>
 <CAF6AEGtC0BxABJtSaOmhEt_WKiuptWCHP7g4D5wEaJ4NaEuz4w@mail.gmail.com>
In-Reply-To: <CAF6AEGtC0BxABJtSaOmhEt_WKiuptWCHP7g4D5wEaJ4NaEuz4w@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 13 Jul 2021 18:58:19 +0200
Message-ID: <CAKMK7uEL8dr5RT2362ehR1Gb7mvwLmcEsZV+uWDj_kpoovWKxg@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v4 14/18] drm/msm: Don't break exclusive
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 6:51 PM Rob Clark <robdclark@gmail.com> wrote:
>
> On Mon, Jul 12, 2021 at 1:02 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
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
> > ---
> >  drivers/gpu/drm/msm/msm_gem_submit.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
> > index b71da71a3dd8..edd0051d849f 100644
> > --- a/drivers/gpu/drm/msm/msm_gem_submit.c
> > +++ b/drivers/gpu/drm/msm/msm_gem_submit.c
> > @@ -306,7 +306,8 @@ static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
> >                                 return ret;
> >                 }
> >
> > -               if (no_implicit)
> > +               /* exclusive fences must be ordered */
> > +               if (no_implicit && !write)
> >                         continue;
>
> In practice, modern userspace (the kind that is more likely to set the
> no-implicit flag on every submit) also sets MSM_SUBMIT_BO_WRITE on
> every bo, to shave some cpu overhead so I suppose this would not
> really hurt anything
>
> Do you know if this is covered in any piglit/etc test?

You need some command submission, plus buffer sharing with vgem
setting it's own exclusive fences, plus checking with dma_buf poll()
whether it signals all in the right order. That's pretty low-level, so
maybe something in igt, but I haven't typed that. Maybe I need to do
that for i915 at least.
-Daniel

> BR,
> -R
>
> >
> >                 ret = msm_gem_sync_object(&msm_obj->base, submit->ring->fctx,
> > --
> > 2.32.0
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
