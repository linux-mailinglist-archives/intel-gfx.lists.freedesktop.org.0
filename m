Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DC61E5AB6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E896E500;
	Thu, 28 May 2020 08:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2628D6E503
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 08:25:45 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x6so13315348wrm.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 01:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dZm4qqnvnFfi9AnD6QwHMa98Owv4lt6xBotC4KU/1vk=;
 b=czup3S4I54O/SmAYJ1Yp032Bx7qbeA/atZsIzCP1VOKKssxod9difMHd2pgQRQxnAl
 XPPDdkNnsr4nGucu0jsfvEjhEvgKy1XhTyVyjk00Kpj5+6kbsaTM3Rf0jqixp6tjilap
 QsF7jrQHPymmQ1iI926fYhE6+fP62b0lLwEik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dZm4qqnvnFfi9AnD6QwHMa98Owv4lt6xBotC4KU/1vk=;
 b=RoJoOHzoV1w0O4fpX5/f7eWtjsBXIqb7kj/T5yxArxiLoXdng3ydRuVtmOZqN5NvVg
 buaphMoBbiUAKjrz5DnOMHFoXx68Y0RBCc+D560F2k/eCIRJY40/asSDfG7dWKZPEH9l
 t+zk8fnVWiMPwVGRWg++XIMV8uN2k9gxZF8JBlXS5CpvblnnK5UN6fRxzyzEGdD6Z50B
 IN+M07Ru0A94m/nNS1/aE/5FqLRQ/ZL+lJ/lYq/UNPl2R0vYBkx1mCGJQ8IHSnSKycB8
 neWEsJqbKkvsj70tvYq6H5uy7ps43p1WNwROPPj9USWsaBEkAsZ/Wpiq/xaGKaK84Jcq
 bIqg==
X-Gm-Message-State: AOAM531hb4UWC1humSS81cHtuxbcRlebr/feEi1HWDonsHX9kyurpmlS
 MfNncbaDMnlHgA9+FVWAhp1ZNg==
X-Google-Smtp-Source: ABdhPJxgiT43pQLH7LRt5KZW/Vdlek75Gu2WZPGjirY+tzqkiyl5+Cnx66FgSLx0/C9mCLO0V0lQfg==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr2309159wrq.140.1590654343729; 
 Thu, 28 May 2020 01:25:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j4sm3492917wma.7.2020.05.28.01.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 01:25:43 -0700 (PDT)
Date: Thu, 28 May 2020 10:25:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Stefan Agner <stefan@agner.ch>
Message-ID: <20200528082541.GS206103@phenom.ffwll.local>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200528054643.GQ206103@phenom.ffwll.local>
 <7911368105b92200b661f0fed39f5642@agner.ch>
 <CAKMK7uGzbadiY1EQKQvQcBND4Ja73WZRF8-DoxLJNTsGBJS0jw@mail.gmail.com>
 <c8294901e201cd40a41111b05ecccd43@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8294901e201cd40a41111b05ecccd43@agner.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
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
Cc: Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 28, 2020 at 10:19:46AM +0200, Stefan Agner wrote:
> On 2020-05-28 10:06, Daniel Vetter wrote:
> > On Thu, May 28, 2020 at 9:56 AM Stefan Agner <stefan@agner.ch> wrote:
> >>
> >> Hi Daniel,
> >>
> >> On 2020-05-28 07:46, Daniel Vetter wrote:
> >> > On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
> >> >> mxsfb has vblank support, is atomic, but doesn't call
> >> >> drm_crtc_vblank_on/off as it should. Not good.
> >> >>
> >> >> With my next patch to add the drm_crtc_vblank_reset to helpers this
> >> >> means not even the very first crtc enabling will vblanks work anymore,
> >> >> since they'll just stay off forever.
> >> >>
> >> >> Since mxsfb doesn't have any vblank waits of its own in the
> >> >> enable/disable flow, nor an enable/disable_vblank callback we can do
> >> >> the on/off as the first respectively last operation, and it should all
> >> >> work.
> >> >>
> >> >> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >> >> Cc: Marek Vasut <marex@denx.de>
> >> >> Cc: Stefan Agner <stefan@agner.ch>
> >> >> Cc: Shawn Guo <shawnguo@kernel.org>
> >> >> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> >> >> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> >> >> Cc: Fabio Estevam <festevam@gmail.com>
> >> >> Cc: NXP Linux Team <linux-imx@nxp.com>
> >> >> Cc: linux-arm-kernel@lists.infradead.org
> >> >
> >> > Ping for some ack/review on this one here, it's holding up the subsystem
> >> > wide fix in patch 2.
> >>
> >> Sorry for the delay.
> >>
> >> I guess that has the same effect as patch 14 in Laurent's patchset would
> >> have:
> >> https://lore.kernel.org/dri-devel/20200309195216.31042-15-laurent.pinchart@ideasonboard.com/
> > 
> > Uh, looking at that patch I realized that mxsfb indeed calls
> > drm_vblank_init before mode_config.num_crtc is set. Which means it
> > never had working vblank support in upstream. That also explains the
> > lack of fireworks, since all other drivers that actually do initialize
> > vblank support have the drm_crtc_vblank_on/off calls - without them
> > the driver doesn't survive for very long.
> > 
> > tldr; I don't need this patch here to apply the 2nd one, so no
> > conflict potential at all. And the patch from Laurent does fix up
> > everything correctly, so we should be good.
> 
> Uh I see, that is somehow unfortunate and fortunate at the same time!
> 
> Ok, I hope we get this cleaned up soon.

I recommend igt tests for actually making sure your driver does something,
instead of just thinking you've enabled a feature :-)
-Daniel

> 
> --
> Stefan
> 
> > -Daniel
> > 
> >> But should be rather trivial to rebase. So until Laurent's patchset is
> >> ready, we can go with this fix.
> >>
> >> Acked-by: Stefan Agner <stefan@agner.ch>
> >>
> >> --
> >> Stefan
> >>
> >> >
> >> > Thanks, Daniel
> >> >
> >> >> ---
> >> >>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
> >> >>  1 file changed, 2 insertions(+)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> index 497cf443a9af..1891cd6deb2f 100644
> >> >> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
> >> >>      drm_panel_prepare(mxsfb->panel);
> >> >>      mxsfb_crtc_enable(mxsfb);
> >> >>      drm_panel_enable(mxsfb->panel);
> >> >> +    drm_crtc_vblank_on(&pipe->crtc);
> >> >>  }
> >> >>
> >> >>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >> >> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >> >>      struct drm_crtc *crtc = &pipe->crtc;
> >> >>      struct drm_pending_vblank_event *event;
> >> >>
> >> >> +    drm_crtc_vblank_off(&pipe->crtc);
> >> >>      drm_panel_disable(mxsfb->panel);
> >> >>      mxsfb_crtc_disable(mxsfb);
> >> >>      drm_panel_unprepare(mxsfb->panel);
> >> >> --
> >> >> 2.26.2
> >> >>

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
