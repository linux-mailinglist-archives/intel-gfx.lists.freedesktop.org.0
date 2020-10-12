Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838B28BA75
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9B16E457;
	Mon, 12 Oct 2020 14:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0686E0C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:10:45 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id z22so13861251wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 07:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=q4EC5hEm8KrtPAdtrlfLWYj7biKnJdAbCRH4TVorbTc=;
 b=Xfpm0AW6tFAd+5MArS1u7SlBI7k8C9OsfABYl6ok371G0BU5yexElnGPL1lR4UuQyo
 VyfItlZKYvS8hZIghbXJ6scX085q3jXsTPS/IcCkGwvr5PT+O1JMqxPiAxOkZGcvv9md
 GF0dVeH1iNqvXVyKYlTzouPTnQgtbGqYdKe98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=q4EC5hEm8KrtPAdtrlfLWYj7biKnJdAbCRH4TVorbTc=;
 b=sx8JgvBSCw1Ra4gjwKbr7KGDQcya9XQ4VXZwcQAB1hMFKpbqy0by/ZEMRtU/AJB2VS
 2pZAboL8GguUsM+NSPpUFvSX5lAz5X/ilNnu2pETtPG09ofh2rV94HDpEhMxoWXdIoQX
 WTTMa4rY4YDX+ZoxqkAhwgCNyzDUeVM3o6kb47JwCQ0wRbaiqswZnS2WApx1gEDY3pkE
 S71W6QFvm2/ARe51Kz8mMpIbuIgh4AWj0jhm8oJ6+hpQpu2BEKycKes+mCdHRQ8FMIht
 G+QIrIcOZKSC8OsFqcb8jO3SkqBAnYp0kGFelKFFW1dXw6cuSpOYT5oq7gEjQAJMqMR6
 JXkA==
X-Gm-Message-State: AOAM5324iAI9G57nLNVDdx7Y6IHSfGVSKpT4Kq7rGZ5Q9C+QetLADl3+
 EnQpa9VdT+qhZRKSLMKQT/1bm/0gRRDaZ4tq
X-Google-Smtp-Source: ABdhPJz0EEzJMOfm+/fWHF2RgRn0n9XPU46VbSxuwjXE9wF0lrHRND6yaOKUIT8xJPh/UcQf3iBJXQ==
X-Received: by 2002:a1c:4e05:: with SMTP id g5mr11154183wmh.162.1602511843895; 
 Mon, 12 Oct 2020 07:10:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u15sm24674205wrm.77.2020.10.12.07.10.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 07:10:43 -0700 (PDT)
Date: Mon, 12 Oct 2020 16:10:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20201012141041.GU438822@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Sam Ravnborg <sam@ravnborg.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-next@vger.kernel.org
References: <20201012152452.432c4867@canb.auug.org.au>
 <20201012102509.10690-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012102509.10690-1-paul@crapouillou.net>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/ingenic: Fix bad revert
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, linux-next@vger.kernel.org,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 12, 2020 at 12:25:09PM +0200, Paul Cercueil wrote:
> Fix a badly reverted commit. The revert commit was cherry-picked from
> drm-misc-next to drm-misc-next-fixes, and in the process some unrelated
> code was added.
> 
> Fixes: a3fb64c00d44 "Revert "gpu/drm: ingenic: Add option to mmap GEM buffers cached""
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

And yes if you use git cherry-pick it'll do a 3 way merge, and
occasionally it's very tricky to resolve that properly. Especially when
you're not used to it.

What I tend to do to double check cerry-picks is git show both commits,
and compare the entire diff line-by-line to make sure I didn't misplace
anything.

Another trick is to use the raw patch instead of cherry-pick, since that
won't do a 3 way merge where you might get confused with other context and
fun stuff like that.

Cheers, Daniel
> ---
>  drivers/gpu/drm/ingenic/ingenic-drm-drv.c | 16 ----------------
>  1 file changed, 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
> index 1be1235bd546..a3d1617d7c67 100644
> --- a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
> +++ b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
> @@ -440,20 +440,6 @@ void ingenic_drm_plane_config(struct device *dev,
>  	}
>  }
>  
> -static void ingenic_drm_update_palette(struct ingenic_drm *priv,
> -				       const struct drm_color_lut *lut)
> -{
> -	unsigned int i;
> -
> -	for (i = 0; i < ARRAY_SIZE(priv->dma_hwdescs->palette); i++) {
> -		u16 color = drm_color_lut_extract(lut[i].red, 5) << 11
> -			| drm_color_lut_extract(lut[i].green, 6) << 5
> -			| drm_color_lut_extract(lut[i].blue, 5);
> -
> -		priv->dma_hwdescs->palette[i] = color;
> -	}
> -}
> -
>  static void ingenic_drm_plane_atomic_update(struct drm_plane *plane,
>  					    struct drm_plane_state *oldstate)
>  {
> @@ -464,8 +450,6 @@ static void ingenic_drm_plane_atomic_update(struct drm_plane *plane,
>  	dma_addr_t addr;
>  
>  	if (state && state->fb) {
> -		crtc_state = state->crtc->state;
> -
>  		addr = drm_fb_cma_get_gem_addr(state->fb, state, 0);
>  		width = state->src_w >> 16;
>  		height = state->src_h >> 16;
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
