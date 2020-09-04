Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D116825DA2D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 15:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589366E151;
	Fri,  4 Sep 2020 13:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FB26E29E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 13:42:56 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id u25so5887500otq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 06:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KCjhFigRCnxuR+n/x42/B7BmTnslOFqpAi74/rceJjU=;
 b=N/iFzTCfxZsmpLptZRvTvYDbSSOkE57O8xGBA5IxeEtaOV/VTKg+N1rk3mU68vKu2S
 irFtQ8XW+y25YgfP17RgoBVlKiim0p8fbJbAIc5yC1pzHEtVFl3MrBv18nS2Jh0/UwAA
 wYjTYzcRqq8txj8zFs91yyYSCewV6aCdzX7TE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KCjhFigRCnxuR+n/x42/B7BmTnslOFqpAi74/rceJjU=;
 b=nIYnvgZe71y47zfi561MW46HUTJ9tUTFKCTJrVJk53P2gLXt3yyiX5G4r6cw2dS01P
 hXLbqgGLNBdym3AWlg0rW8tbihyTES1KXqa7m+C7a5hveSrF4MMMYadIMbUo26N/35u3
 QevpoZDrd4qE1ClHheC1V7TXNPjzcyOFSO6QKsAscxDdIFEy8OpYG0GEmwtW/bbaun8I
 qQAL5+QlsvzEQZXYKj/OtBlvhHISctmWrbsg30/QkEkU4M5Ev6hnd+aohAHtXEOANuuY
 ASac9frs6GDi9ncC4gAZmQK9rMRlLfmx5nFNUS/XejQCOV81U63WWQkzhRhFz6tcqk3+
 Su2A==
X-Gm-Message-State: AOAM531vPCfnak50euZKj60p9y3RsNA50u62dvt8fyMaR5fgXVUYTlwT
 lx2shMpGnqTvBjAW2JYy7C6fYh8FXWVmecv/3EFBKg==
X-Google-Smtp-Source: ABdhPJz4AYLB9qLfFgbnbP6K9rXahHrgbv4wnKxqLFilnKxCQUuStOeetrn1PBik1eVM/WaQCCX9X604j9cuANASCjU=
X-Received: by 2002:a9d:7a52:: with SMTP id z18mr5746866otm.281.1599226975701; 
 Fri, 04 Sep 2020 06:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-41-daniel.vetter@ffwll.ch>
 <20200424164626.GD3822@ravnborg.org>
In-Reply-To: <20200424164626.GD3822@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 4 Sep 2020 15:42:44 +0200
Message-ID: <CAKMK7uGcNnFqcwAQMSOuvCeX==vbtbRNe88cgr-yeuWiFJaUcQ@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [Intel-gfx] [PATCH 40/59] drm/arcpgu: Stop using
 drm_device->dev_private
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 24, 2020 at 6:46 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Daniel.
>
> On Wed, Apr 15, 2020 at 09:40:15AM +0200, Daniel Vetter wrote:
> > Upcasting using a container_of macro is more typesafe, faster and
> > easier for the compiler to optimize.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Alexey Brodkin <abrodkin@synopsys.com>
>
> Subject: drm/arc: arcpgu: Stop using drm_device->dev_private
>
> And another bikeshedding below.
> With this considered:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
>
> > ---
> >  drivers/gpu/drm/arc/arcpgu.h      | 2 ++
> >  drivers/gpu/drm/arc/arcpgu_crtc.c | 4 ++--
> >  drivers/gpu/drm/arc/arcpgu_drv.c  | 4 +---
> >  3 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
> > index cd9e932f501e..87821c91a00c 100644
> > --- a/drivers/gpu/drm/arc/arcpgu.h
> > +++ b/drivers/gpu/drm/arc/arcpgu.h
> > @@ -17,6 +17,8 @@ struct arcpgu_drm_private {
> >       struct drm_plane        *plane;
> >  };
> >
> > +#define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
> > +
> Preferred name is to_arcgpu(). There is no device in the name of struct
> arcpgu_drm_private. And the general consensus it to use to_<driver> for
> the top-level struct.

[Sorry just realized I never replied on-list for this here]

drm_device very much has a dev_  and there's some other drivders with
this pattern too. Plus I think it's more consistent with the other
macros in here. For simple drivers where there's only 1 structure I
agree though, so if you insist I can follow up with a patch. Fixing
this in-series is imo too much trouble for the benefit, every single
patch would need to be redone ...

Cheers, Daniel

>
> >  #define crtc_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, crtc)
> >
> >  static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
> > diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
> > index be7c29cec318..ba796a216244 100644
> > --- a/drivers/gpu/drm/arc/arcpgu_crtc.c
> > +++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
> > @@ -178,7 +178,7 @@ static const struct drm_plane_funcs arc_pgu_plane_funcs = {
> >
> >  static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
> >  {
> > -     struct arcpgu_drm_private *arcpgu = drm->dev_private;
> > +     struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
> >       struct drm_plane *plane = NULL;
> >       int ret;
> >
> > @@ -202,7 +202,7 @@ static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
> >
> >  int arc_pgu_setup_crtc(struct drm_device *drm)
> >  {
> > -     struct arcpgu_drm_private *arcpgu = drm->dev_private;
> > +     struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
> >       struct drm_plane *primary;
> >       int ret;
> >
> > diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
> > index bbd7acb150f3..81b8d7ae6623 100644
> > --- a/drivers/gpu/drm/arc/arcpgu_drv.c
> > +++ b/drivers/gpu/drm/arc/arcpgu_drv.c
> > @@ -50,8 +50,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
> >       struct resource *res;
> >       int ret;
> >
> > -     drm->dev_private = arcpgu;
> > -
> >       arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
> >       if (IS_ERR(arcpgu->clk))
> >               return PTR_ERR(arcpgu->clk);
> > @@ -120,7 +118,7 @@ static int arcpgu_show_pxlclock(struct seq_file *m, void *arg)
> >  {
> >       struct drm_info_node *node = (struct drm_info_node *)m->private;
> >       struct drm_device *drm = node->minor->dev;
> > -     struct arcpgu_drm_private *arcpgu = drm->dev_private;
> > +     struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
> >       unsigned long clkrate = clk_get_rate(arcpgu->clk);
> >       unsigned long mode_clock = arcpgu->crtc.mode.crtc_clock * 1000;
> >
> > --
> > 2.25.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
