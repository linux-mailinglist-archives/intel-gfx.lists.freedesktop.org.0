Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94910186881
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8CF89B65;
	Mon, 16 Mar 2020 10:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9601689B65
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:03:44 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id d5so20047585wrc.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 03:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AcRSHSdiOyqt1hfLF4oq0FUotM9AVIQhsg3GLo4T9TA=;
 b=B2USPv5KbpHIGhkfFrJQCuShva+t1YuJ9supVSZJi7SmeRkQ+Ok1KYee9YtHwBKrRJ
 yl9Kx1VkDMtstyjHEa8hNZcH1bbmZ1PSKNLF8Wfi1VdxCwTEMpEDz/+R+LbQcMd387Ub
 aRmOwj1y8nIqpvf7WZqqHh9pJdmqcn05LP20o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AcRSHSdiOyqt1hfLF4oq0FUotM9AVIQhsg3GLo4T9TA=;
 b=NrltaTQ9BVvb5JArHDrD7k20fUL9g9tA4vxVvQXGBjf9+us4nFIs2NAZ97LacWEYpj
 EPfXNnr/Dh8C04kVpPRQuKuaL1d47X+Hpby+lg7oLb49b59V7KzOES251itQFMWkGh3t
 yl/1JwqtyYxCY9HJi3o0OxNZEeG5DMxM4D3cToHizTCFocr9rzOrVoa1YCoc+t/jarG7
 knaPYzrIQ0sylteUxY8CAa+Mb7SsSk3Zn3LYFEnSoEa6PAqJFuv0QTXPnxxRBoDSYPV/
 n3gdNQE3oo/UVhLhzohjhswsw3MJnJJgRWuLxaVPted9nVTDmJnETDfH3UIenx5/MyUG
 8d5Q==
X-Gm-Message-State: ANhLgQ1b5rXZ3uxH5mcqwuhiEycNNgwi9hsx7TtTduZ0L1nbgfAUCAVA
 wOAhjlJyBypD5cck5F4216yVGA==
X-Google-Smtp-Source: ADFU+vtSU5e+h6WkNw2sJ6apKMD24Minuj5xZyJFTkMlwMWGN+xpvYH0bJgEK7m2Qk/CueY//LMKFg==
X-Received: by 2002:adf:fc81:: with SMTP id g1mr36703578wrr.410.1584353023220; 
 Mon, 16 Mar 2020 03:03:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v2sm23290034wme.2.2020.03.16.03.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 03:03:42 -0700 (PDT)
Date: Mon, 16 Mar 2020 11:03:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200316100340.GL2363188@phenom.ffwll.local>
References: <20200309120151.7675-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309120151.7675-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm: Mark up racy check of
 drm_gem_object.handle_count
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 09, 2020 at 12:01:51PM +0000, Chris Wilson wrote:
> [ 1715.899800] BUG: KCSAN: data-race in drm_gem_handle_create_tail / drm_gem_object_handle_put_unlocked
> [ 1715.899838]
> [ 1715.899861] write to 0xffff8881830f3604 of 4 bytes by task 7834 on cpu 1:
> [ 1715.899896]  drm_gem_handle_create_tail+0x62/0x250
> [ 1715.899927]  drm_gem_open_ioctl+0xc1/0x160
> [ 1715.899956]  drm_ioctl_kernel+0xe4/0x120
> [ 1715.899981]  drm_ioctl+0x297/0x4c7
> [ 1715.900003]  ksys_ioctl+0x89/0xb0
> [ 1715.900027]  __x64_sys_ioctl+0x42/0x60
> [ 1715.900052]  do_syscall_64+0x6e/0x2c0
> [ 1715.900079]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [ 1715.900100]
> [ 1715.900119] read to 0xffff8881830f3604 of 4 bytes by task 8137 on cpu 0:
> [ 1715.900149]  drm_gem_object_handle_put_unlocked+0x31/0x130
> [ 1715.900180]  drm_gem_object_release_handle+0x93/0xe0
> [ 1715.900208]  drm_gem_handle_delete+0x7b/0xe0
> [ 1715.900235]  drm_gem_close_ioctl+0x61/0x80
> [ 1715.900264]  drm_ioctl_kernel+0xe4/0x120
> [ 1715.900291]  drm_ioctl+0x297/0x4c7
> [ 1715.900316]  ksys_ioctl+0x89/0xb0
> [ 1715.900340]  __x64_sys_ioctl+0x42/0x60
> [ 1715.900363]  do_syscall_64+0x6e/0x2c0
> [ 1715.900388]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

I'm impressed. The dream that we all get replaced by some scripts might be
real :-)

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_gem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index a9e4a610445a..37627d06fb06 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -218,7 +218,7 @@ drm_gem_object_handle_put_unlocked(struct drm_gem_object *obj)
>  	struct drm_device *dev = obj->dev;
>  	bool final = false;
>  
> -	if (WARN_ON(obj->handle_count == 0))
> +	if (WARN_ON(READ_ONCE(obj->handle_count) == 0))
>  		return;
>  
>  	/*
> -- 
> 2.20.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
