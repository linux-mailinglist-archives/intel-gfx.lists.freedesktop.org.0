Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C18296F03
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BD06E519;
	Fri, 23 Oct 2020 12:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFA36E519
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:25:19 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id l20so476513wme.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FInTsrlxn5zRrEYVhBvIObLdmzQifIc9746GM4j/Irs=;
 b=XO34PK2FsWX5JnNWrqjfHEege4GU2+FcPa7J5PWjn78LfRsI2hbCiNh2NGoG6NqsHn
 1uH395uJINpiNH9g2093a0ym8EVnmwx3sahbml48jBWZ+qFcUAAtkJ2hVNioTjHsM25q
 Rp9jiRBzMM/eqMO4tFgfm6W0FRRXY6iDzsBf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FInTsrlxn5zRrEYVhBvIObLdmzQifIc9746GM4j/Irs=;
 b=IqRkw0V8tQeMu2tmzDwVH5eUrhPBTfAyxJ0YFbQYbWrgzzA70GCOJrk1qyzTn28Re3
 4yLOBI2YJghjDoDXM4A6XibPOqvrcpuGvm0T7o+0khVZ+CLtlsLif8hZ/dOfkhn5AUwX
 SjToMJ1pBVQM+7sh/Dlgo8QelSDk/rpBgKLG31OrEeByQzhn46L1qWVKjJCrM+KoNfXg
 n5xRLpFFh5fHkpx21OZyAcB/6PJKzP7MZEpu58xxiRLrHf34E0PmxcuYEmoHq+zOnUSA
 Plo/5D+bovYuDJzMl+zHzyiBWuruM2lZsco7aZoc0VwtFmJ9JIcF+CxEDibwGnvY78Nh
 92dQ==
X-Gm-Message-State: AOAM530lk3hTu5dbDbwSUoIUTCuTQh2KGTUShA75XCnL2cU5tV2dVfhG
 jgOdb+NvNkVFm0TiUGejX6yRMg==
X-Google-Smtp-Source: ABdhPJz4yulKhVN53rEdvLQIKbyL8+Zwu+9oYZYlSsPFjUVw8TP9MnAIZ9AfupumbxNzHyumB/d1HQ==
X-Received: by 2002:a1c:f314:: with SMTP id q20mr2149633wmq.171.1603455918522; 
 Fri, 23 Oct 2020 05:25:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i33sm3079508wri.79.2020.10.23.05.25.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:25:17 -0700 (PDT)
Date: Fri, 23 Oct 2020 14:25:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20201023122516.GA401619@phenom.ffwll.local>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 01/65] drm/vc4: Drop legacy_cursor_update
 override
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 02:21:12PM +0200, Daniel Vetter wrote:
> With the removal of helper support it doesn't do anything anymore.
> Also, we already have async plane update code in vc4.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Maxime Ripard <mripard@kernel.org>

Apologies for this patch bomb, typoed git send-email command.
-Daniel

> ---
>  drivers/gpu/drm/vc4/vc4_kms.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
> index 149825ff5df8..bf0da77ab2e6 100644
> --- a/drivers/gpu/drm/vc4/vc4_kms.c
> +++ b/drivers/gpu/drm/vc4/vc4_kms.c
> @@ -353,12 +353,6 @@ static int vc4_atomic_commit(struct drm_device *dev,
>  		return 0;
>  	}
>  
> -	/* We know for sure we don't want an async update here. Set
> -	 * state->legacy_cursor_update to false to prevent
> -	 * drm_atomic_helper_setup_commit() from auto-completing
> -	 * commit->flip_done.
> -	 */
> -	state->legacy_cursor_update = false;
>  	ret = drm_atomic_helper_setup_commit(state, nonblock);
>  	if (ret)
>  		return ret;
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
