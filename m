Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F7048EA9B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 14:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897B410E39C;
	Fri, 14 Jan 2022 13:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7235E10E39C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 13:24:25 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id a5so15611050wrh.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=peHIYQopYcbF+FlXKawEnSXVoHRuaZtysSFyxMwAgB8=;
 b=dRGNhyDOdpx15OrdWBdIXMyEunZjNSgn9j4PjS3x4dA4GbmpbEY4+/xLGReENA3u9E
 paLBEGJzMkeEoW+MEFKdhuhpkJjShcoayBubGzdCgO+7sNNuuY+ihThcreyY3jRz3y0m
 gI5KJE4ppCCfKliZ27YDKc5M7xR/A131pQnr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=peHIYQopYcbF+FlXKawEnSXVoHRuaZtysSFyxMwAgB8=;
 b=MHyzkgTOkm7iEidIZqsH4jgInZ6Jhyl/2qrcVrTexM+tZ+A+OCCRJwwiECBEhOD/00
 XYs7rJUnybGku8Dw6BRax6ZrcDmNX0B2WK2fADne076wEtc1GorACfy1ZL27jBYtqnwq
 Ua0+SIYqqQWp+C+xRIgamHUspAmQ5QKts8rGdUBnJWi1Ng1rOR3DPdOVpWsf61uXMUUA
 n+V4XFOzyR4/0YeyeNnuScFf9T5Pz7dkXLiVw2eHyrPMrzv0Xzux3ObqvUcE6whghnur
 JHm/lLQO7gM9dW78wRs5PmAqyDK+He6yyT0rNsV8Km98M3M8rKvCtey7r+i6HS9aemXK
 Mt4A==
X-Gm-Message-State: AOAM531KjqJtu39cNETrLa1TfXIbyPnYtOxZNZT7x/Jez1Iqw+ccc6XP
 nmELMhlGEbjYxvEbVGp/yI9BxA==
X-Google-Smtp-Source: ABdhPJyFbSDmsEJnOpz+y7xgaDxT+PS4Md8/hf9n3h6tv1O5JiCWslxMW1kSDwhyPjR0GnFGLSIqEg==
X-Received: by 2002:a5d:624f:: with SMTP id m15mr8078929wrv.13.1642166664086; 
 Fri, 14 Jan 2022 05:24:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j11sm7346396wmq.23.2022.01.14.05.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Jan 2022 05:24:23 -0800 (PST)
Date: Fri, 14 Jan 2022 14:24:21 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YeF5heL0ePMR6CGf@phenom.ffwll.local>
References: <Yd/i/zj9vEHisSSB@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yd/i/zj9vEHisSSB@linux-uq9g>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 09:29:51AM +0100, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> here's this week's PR for drm-misc-next-fixes.
> 
> Best regards
> Thomas
> 
> drm-misc-next-fixes-2022-01-13:
>  * Fix use of CRTC state's active vs enable in atomic helper
> The following changes since commit 5da8b49de472c1da8658466d4f63ef8d9251a819:
> 
>   dt-bindings: display: bridge: lvds-codec: Fix duplicate key (2021-12-22 14:02:04 -0400)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2022-01-13
> 
> for you to fetch changes up to 69e630016ef4e4a1745310c446f204dc6243e907:

Thanks, pulled to drm-next.
-Daniel

> 
>   drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode (2022-01-11 10:37:15 -0500)
> 
> ----------------------------------------------------------------
>  * Fix use of CRTC state's active vs enable in atomic helper
> 
> ----------------------------------------------------------------
> Liu Ying (1):
>       drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode
> 
>  drivers/gpu/drm/drm_atomic_helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Felix Imendörffer

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
