Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6C51E56F8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 07:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568676E177;
	Thu, 28 May 2020 05:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FD66E177
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 05:46:48 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id n5so1892425wmd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 22:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ippx2MHf4bBIL8gswP/FHgb+jqJ3Lt0DInexFTWRZ30=;
 b=IJNgsJJOTWhZyjqt5tRNB2c6yFml1Jns6RP9JQv6paJ9WNg/5Slp2PlqulABwgH/X4
 bSPPL+ig62+FFK7mdLOMQcqWiZIY2PrwNwGL+rycfovS2EvIzNRcFKLT/DhDqWso4J9j
 Jv0FD0G8cxcC1AwI65zh8L7k71+qRo873c7jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ippx2MHf4bBIL8gswP/FHgb+jqJ3Lt0DInexFTWRZ30=;
 b=FbtzVrwQ4nvyYh+r1p6Vx3wcxSGRnCcr9JDrr1Bw94KXecsHGRFU0h02mg010mdiLV
 7Zi0kwfIIx9Qh/OBL8Qtxu8ofMwuiYCzLOarmkLzRTE45VZqeTvZsJpqYajdZ/qlnDaU
 /aiXxTxxd2S/vxC/B0KAm9j3DN/7fHYtmmhsuQUtSHe8dJ+H/hTRFQ5Z5yg5oSPUYeuD
 97txs2pQXMhy3QcN/vGpmLcDiAx18zZsrhALrInoh0O2CIlyi5yXcs6MNodU20tIM5s7
 NvDIqC1bF7I4rE+f8nRsCgq9wq/UW7M89BhD3f4mCGqyQARs0v+zdgZ/n6wkgU9lOxkr
 PnDg==
X-Gm-Message-State: AOAM530S33rPcGMrM89u2ZQe67hJr/h7hUQ0NQgh0LDdBr8x8hvLCz8o
 8lG+eOcKtbKC9sY0HeNUxNzjJQ==
X-Google-Smtp-Source: ABdhPJwuag71of/p+Z9jCVFiTwZqc0Sg36w1Cu6Df/y3upnKUUn7+x132HaZweIfbIdVnWbpjuQAeQ==
X-Received: by 2002:a1c:22d7:: with SMTP id i206mr1583884wmi.186.1590644806739; 
 Wed, 27 May 2020 22:46:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 5sm4905641wmd.19.2020.05.27.22.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 22:46:45 -0700 (PDT)
Date: Thu, 28 May 2020 07:46:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20200528054643.GQ206103@phenom.ffwll.local>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
> mxsfb has vblank support, is atomic, but doesn't call
> drm_crtc_vblank_on/off as it should. Not good.
> 
> With my next patch to add the drm_crtc_vblank_reset to helpers this
> means not even the very first crtc enabling will vblanks work anymore,
> since they'll just stay off forever.
> 
> Since mxsfb doesn't have any vblank waits of its own in the
> enable/disable flow, nor an enable/disable_vblank callback we can do
> the on/off as the first respectively last operation, and it should all
> work.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org

Ping for some ack/review on this one here, it's holding up the subsystem
wide fix in patch 2.

Thanks, Daniel

> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 497cf443a9af..1891cd6deb2f 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
>  	drm_panel_prepare(mxsfb->panel);
>  	mxsfb_crtc_enable(mxsfb);
>  	drm_panel_enable(mxsfb->panel);
> +	drm_crtc_vblank_on(&pipe->crtc);
>  }
>  
>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>  	struct drm_crtc *crtc = &pipe->crtc;
>  	struct drm_pending_vblank_event *event;
>  
> +	drm_crtc_vblank_off(&pipe->crtc);
>  	drm_panel_disable(mxsfb->panel);
>  	mxsfb_crtc_disable(mxsfb);
>  	drm_panel_unprepare(mxsfb->panel);
> -- 
> 2.26.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
