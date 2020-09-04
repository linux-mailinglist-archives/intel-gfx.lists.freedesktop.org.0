Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E677625DCDA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 17:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DE06EC5B;
	Fri,  4 Sep 2020 15:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DC76EC5B
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 15:09:12 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id g96so6111738otb.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 08:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LLXRKJtLNbEcp5g/T/A6yrq/6SFy8C5BoER+Ub1+7K0=;
 b=crCpchY4OoPwIiEmB/st+N3c6TIuW2ZK6cQo6ocEd+Uj2ePDbL5tDfrWrV2MRrH6qZ
 cV/XrO1a0VZI2JEoci+x2nAMC/r5nqVEduhauA4ZY5TAEa8wRonygrpv5sqKi1Pb4k4S
 F/thBHP/LDt2TaMK4imwSYYqRPd+gO9zickqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LLXRKJtLNbEcp5g/T/A6yrq/6SFy8C5BoER+Ub1+7K0=;
 b=FgT4rgEZPqI2/RLz5JH42U6M5UphMMgfjmgXIdqaw8cG5KpcL7Mq13F9Qj9XwhBYUZ
 0cvfNBa2ATYm8QWKJUpUu9h5AF07bye3gEO138P7g5lPpL4EtBB/SOiEZtN3WvV6OSeF
 qN/fCrfud8TnRTf830RF8lNBLwRKEgfPcemMP/La+VPipMZ0thRKLIejkKR4y5aFcU0e
 9QCEgxwe5OgWzk0wcm4BLfYjYzBLw8KIO6hLeiC1bMkkbgbryyoKcqPBO0d2VJ+xWyr/
 6bLWKyqUWaZcipg3mZdx+6B53rPnylEbQigg7tkt7wqbYwo2aHMUir8+U+5paOH+K3DG
 oJYA==
X-Gm-Message-State: AOAM53398KI2pQtwXXPjvUk786WxBNUrMu8J7RvJmmPMpaBEnfYUgmeG
 5PbUHhfjpC+lxTOj1wvK0RFrUB2ksoWRXqATIPYgPg==
X-Google-Smtp-Source: ABdhPJzkT29QFnoQmlVfeI0t2n/r+Z//DZZxrqhqzGMcHcpYROW5t42khqbabTqrNSEjeFQ2NghNAlak5WLHEUY+J4k=
X-Received: by 2002:a05:6830:14d9:: with SMTP id
 t25mr5420344otq.188.1599232151691; 
 Fri, 04 Sep 2020 08:09:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
 <20200904143941.110665-12-daniel.vetter@ffwll.ch>
In-Reply-To: <20200904143941.110665-12-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 4 Sep 2020 17:09:00 +0200
Message-ID: <CAKMK7uFyZCUpQu_E3ntrbe=nL0=rGAchn0aLWOwnmQ2q_VmbbQ@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [Intel-gfx] [PATCH 11/24] drm/arc: Stop using
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
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 4, 2020 at 4:40 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Upcasting using a container_of macro is more typesafe, faster and
> easier for the compiler to optimize.
>
> Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Alexey Brodkin <abrodkin@synopsys.com>

From the old thread Sam just confirmed he's ok with dev_to_arcpgu:

Acked-by: Sam Ravnborg <sam@ravnborg.org>

Cheers, Daniel

> ---
>  drivers/gpu/drm/arc/arcpgu.h      | 2 ++
>  drivers/gpu/drm/arc/arcpgu_crtc.c | 4 ++--
>  drivers/gpu/drm/arc/arcpgu_drv.c  | 4 +---
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
> index cd9e932f501e..87821c91a00c 100644
> --- a/drivers/gpu/drm/arc/arcpgu.h
> +++ b/drivers/gpu/drm/arc/arcpgu.h
> @@ -17,6 +17,8 @@ struct arcpgu_drm_private {
>         struct drm_plane        *plane;
>  };
>
> +#define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
> +
>  #define crtc_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, crtc)
>
>  static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
> diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
> index be7c29cec318..ba796a216244 100644
> --- a/drivers/gpu/drm/arc/arcpgu_crtc.c
> +++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
> @@ -178,7 +178,7 @@ static const struct drm_plane_funcs arc_pgu_plane_funcs = {
>
>  static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
>  {
> -       struct arcpgu_drm_private *arcpgu = drm->dev_private;
> +       struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
>         struct drm_plane *plane = NULL;
>         int ret;
>
> @@ -202,7 +202,7 @@ static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
>
>  int arc_pgu_setup_crtc(struct drm_device *drm)
>  {
> -       struct arcpgu_drm_private *arcpgu = drm->dev_private;
> +       struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
>         struct drm_plane *primary;
>         int ret;
>
> diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
> index 68eb4a31c54b..c6a8deb56b0f 100644
> --- a/drivers/gpu/drm/arc/arcpgu_drv.c
> +++ b/drivers/gpu/drm/arc/arcpgu_drv.c
> @@ -50,8 +50,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
>         struct resource *res;
>         int ret;
>
> -       drm->dev_private = arcpgu;
> -
>         arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
>         if (IS_ERR(arcpgu->clk))
>                 return PTR_ERR(arcpgu->clk);
> @@ -120,7 +118,7 @@ static int arcpgu_show_pxlclock(struct seq_file *m, void *arg)
>  {
>         struct drm_info_node *node = (struct drm_info_node *)m->private;
>         struct drm_device *drm = node->minor->dev;
> -       struct arcpgu_drm_private *arcpgu = drm->dev_private;
> +       struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
>         unsigned long clkrate = clk_get_rate(arcpgu->clk);
>         unsigned long mode_clock = arcpgu->crtc.mode.crtc_clock * 1000;
>
> --
> 2.28.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
