Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601FA6C7AFC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC8210E16A;
	Fri, 24 Mar 2023 09:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84E0410E16A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:17:48 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id r11so1009550wrr.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 02:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1679649467;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hampNiqQqI1x0h2wRV/QGw+nS+VAF+iIK/Cr2njUY/o=;
 b=cgcyGZwj00xSBFqDMcDQ0IBbAER9QdsJgHqgStbRv/8/obGH0bEyuU+BTD4jm+xYJn
 lqH4sTPNY+1pF45HcUO909iMjNbBNuteL9ZOflOG9slRcxfa1/VXmVGH6h+tG4tcO/Bt
 iMtSk66x/qPAbQUZ/vAY/g9ooz+5+G8m6f9w4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679649467;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hampNiqQqI1x0h2wRV/QGw+nS+VAF+iIK/Cr2njUY/o=;
 b=aYSIfFpz2EMYEBN44Xv3rRrwduKeiqoTshrFboA8+7+ikCRGLolfyqXwewgOIrKhLU
 j10CUJOEmfIqPRp42+imOrdy1f0/xYAbyd56pEsLnUAwUAzbDSGaDlOqAyj3zMKSZnFy
 r3CB7Ij6lxIQNlDfMIhrwo4OSeMNB8kz8O8hfY1sPrqDZJil/PnxZNEe7SqDJ9oIjpcQ
 Y7m/9naihQlUolqZd3bT0gZurj8LK5yOaYvFR5IYBW9rkBLbCChBOp9ssZjzU7umpZ3B
 ZG6ro35haFf/hbEeG7ELmkolWCZtTtUzy9XuOsfy4jzxztRFIMVqEGEDQb/3HR3jel5j
 /Tog==
X-Gm-Message-State: AAQBX9eAV8p/ZtKdb4TvHIuOLTXTfVzBkTgPcm2CyICF0r3LpgO+v1SF
 K+WpKKmWX9bC5TooYoqZxPKK1w==
X-Google-Smtp-Source: AKy350YT7JsHcevBm1QBmucRovoxS6Dtfbv44wGUzdFgZZSYCAKjCGo4T1dLNqWNwc+XjdrIr5JC1A==
X-Received: by 2002:adf:e552:0:b0:2d3:1c7d:a3a3 with SMTP id
 z18-20020adfe552000000b002d31c7da3a3mr1187902wrm.7.1679649467031; 
 Fri, 24 Mar 2023 02:17:47 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 a10-20020a056000050a00b002d78a96cf5fsm10874017wrf.70.2023.03.24.02.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Mar 2023 02:17:46 -0700 (PDT)
Date: Fri, 24 Mar 2023 10:17:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ZB1quLCb1W29JV7v@phenom.ffwll.local>
References: <20230323082401.GA8371@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230323082401.GA8371@linux-uq9g>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 23, 2023 at 09:24:01AM +0100, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> here's the weekly PR for drm-misc-fixes.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2023-03-23:
> Short summary of fixes pull:
> 
>  * fixes for bind and probing error handling
>  * panel-orientation fixes for Lenovo Book X90F
> The following changes since commit 4028cbf867f70a3c599c9b0c9509334c56ed97d7:
> 
>   drm/meson: dw-hdmi: Fix devm_regulator_*get_enable*() conversion again (2023-03-15 10:06:46 +0100)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-03-23

Pulled, thanks.
-Daniel

> 
> for you to fetch changes up to 1a70ca89d59c7c8af006d29b965a95ede0abb0da:
> 
>   drm/bridge: lt8912b: return EPROBE_DEFER if bridge is not found (2023-03-22 18:01:57 +0100)
> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
>  * fixes for bind and probing error handling
>  * panel-orientation fixes for Lenovo Book X90F
> 
> ----------------------------------------------------------------
> Hans de Goede (1):
>       drm: panel-orientation-quirks: Add quirk for Lenovo Yoga Book X90F
> 
> Johan Hovold (1):
>       drm/meson: fix missing component unbind on bind errors
> 
> Matheus Castello (1):
>       drm/bridge: lt8912b: return EPROBE_DEFER if bridge is not found
> 
>  drivers/gpu/drm/bridge/lontium-lt8912b.c       |  4 ++--
>  drivers/gpu/drm/drm_panel_orientation_quirks.c | 13 ++++++++++---
>  drivers/gpu/drm/meson/meson_drv.c              | 13 ++++++++-----
>  3 files changed, 20 insertions(+), 10 deletions(-)
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
