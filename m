Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA86E1CDEFC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 17:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BB66E4D2;
	Mon, 11 May 2020 15:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099EE6E4D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 15:29:08 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id o24so15437750oic.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 08:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jr8BqxYa5N2UQFIWCH+ZeFGjIUjI6K0QpaYQti5dmF0=;
 b=Lg++tOm6IwiIzgdNtd59XFNZ5Rmlo64vDv1d4OxItcq8FR+s48C8JwmCXbAKorjZ6J
 YMSEEwHXoSig7JadxHN8PtMZuZemoD+1KjSnSKqfgM2CBbOHJslVSimDSF7trCKxPCQU
 IZR0vJPAXGKhAKd75Zi+m8C4aIcjuV9t7jzbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jr8BqxYa5N2UQFIWCH+ZeFGjIUjI6K0QpaYQti5dmF0=;
 b=SMgggbLMBGT38/ojUVoquoGu6rEadJ7bsCjG0OKwcaRtcBK0YggOV1Z771Tjay3Tp7
 6jJoTIV0zMfh3Z+AF1EsU91pY446qQg4uDfmqaXCtdBBAbKep6clcU/qj/gYIfpvTChE
 931D0wqfrs9TM+KgKxd755eWfpLbZbRiWkXHF+m3RfDbzTdtrb3P+j/3ttSnmEYqU8gp
 0gwh28By6ivdBP4Ll5Jc0pRBoLgf76fLYcJ219kofKqLh660Keq5zywbK9yoQVigVuQ2
 ZgNGm892sUoQuu8jOH2kzuVDRoJPnKwtgbrVv3O906lR3n6eZgrVtUylS+323KHZME6u
 dmEA==
X-Gm-Message-State: AGi0PuYLDc+sjBKACw/N7DPQNsC9kEgqLPbkIFmoxBenNKFVJYRPaBif
 +WBeZSkL+bkkLNf1qJ7Y6dMvPBvNEG1Yr9ReJpFIYdTX
X-Google-Smtp-Source: APiQypKoTHn0cJuzKGjhu51d/sGUsrkJZ4SrSZew0vSiBm3gQMc/ep2bCh/uj8x3VtDMZyNngfdYdPlUlBeH3a6m4Zs=
X-Received: by 2002:aca:2113:: with SMTP id 19mr11528686oiz.128.1589210947246; 
 Mon, 11 May 2020 08:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-2-daniel.vetter@ffwll.ch>
 <CAF6AEGuy050MWGxHk48i2f4XqKuF-9q9+FD3N8z55s6sQ+CALQ@mail.gmail.com>
In-Reply-To: <CAF6AEGuy050MWGxHk48i2f4XqKuF-9q9+FD3N8z55s6sQ+CALQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 11 May 2020 17:28:56 +0200
Message-ID: <CAKMK7uEq1vPPB9AaXb-Me6FG_pwGdRwzu87jNGquHexDRHMowg@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/msm: Don't call dma_buf_vunmap
 without _vmap
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 11, 2020 at 5:24 PM Rob Clark <robdclark@gmail.com> wrote:
>
> On Mon, May 11, 2020 at 2:36 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > I honestly don't exactly understand what's going on here, but the
> > current code is wrong for sure: It calls dma_buf_vunmap without ever
> > calling dma_buf_vmap.
> >
> > What I'm not sure about is whether the WARN_ON is correct:
> > - msm imports dma-buf using drm_prime_sg_to_page_addr_arrays. Which is
> >   a pretty neat layering violation of how you shouldn't peek behind
> >   the curtain of the dma-buf exporter, but par for course. Note that
> >   all the nice new helpers don't (and we should probably have a bit a
> >   warning about this in the kerneldoc).
> >
> > - but then in the get_vaddr() in msm_gem.c, and that seems to happily
> >   wrap a vmap() around any object with ->pages set (so including
> >   imported dma-buf)
> >
> > - I'm not seeing any guarantees that userspace can't use an imported
> >   dma-buf for e.g. MSM_SUBMIT_CMD_BUF in a5xx_submit_in_rb, so no
> >   guarantees that an imported dma-buf won't end up with a ->vaddr set.
>
> fwiw, a5xx_submit_in_rb() isn't a "normal" path (build-time disabled
> by default, and restricted to sudo).. it really only exists to
> simplify poking at fw.
>
> There could be vmap's in the msm_gem_submit path, however.  If we
> don't, we should probably just disallow using an imported dma-buf as
> cmdstream.. I don't think there is any sane reason to permit that.  We
> should probably also disallow get_vaddr() on imported buffers.

Yeah if that's possible and won't blow up (I can't test) I think it'd
be best. Something like
if (bo->import_attach) return NULL; should do the trick I think.
Should I type that up as v2 of this?
-Daniel

>
> BR,
> -R
>
> >
> > But even if that WARN_ON is wrong, cleaning up a vmap() done by msm by
> > calling dma_buf_vmap is the wrong thing to do.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Rob Clark <robdclark@gmail.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: linux-arm-msm@vger.kernel.org
> > Cc: freedreno@lists.freedesktop.org
> > ---
> >  drivers/gpu/drm/msm/msm_gem.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
> > index 5a6a79fbc9d6..3305a457960e 100644
> > --- a/drivers/gpu/drm/msm/msm_gem.c
> > +++ b/drivers/gpu/drm/msm/msm_gem.c
> > @@ -907,8 +907,7 @@ static void free_object(struct msm_gem_object *msm_obj)
> >         put_iova(obj);
> >
> >         if (obj->import_attach) {
> > -               if (msm_obj->vaddr)
> > -                       dma_buf_vunmap(obj->import_attach->dmabuf, msm_obj->vaddr);
> > +               WARN_ON(msm_obj->vaddr);
> >
> >                 /* Don't drop the pages for imported dmabuf, as they are not
> >                  * ours, just free the array we allocated:
> > --
> > 2.26.2
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
