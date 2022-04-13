Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BC4FF27D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2639210F090;
	Wed, 13 Apr 2022 08:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5657310F090
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:44:51 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id l7so2515104ejn.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 01:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=toDuXyT9SyE1uvRYhsyrH5Uyl9aH4rFo2m6LNMH9czc=;
 b=Tvr5yYMnypRUWb52T/10jyGpFgV/Qk9HCp7HcNR2UunclPcoc1oc0/FqwKL9z0yh7Z
 a4RrvwZ+MOpbUttjEEthuXbNDPnhV6Ou4egaczEbe2ClvSuPpAOxU20kfxHRJV7VSTX9
 jOoh96qcnCm2hp6q+kSxQ4824nRtaEQTJueJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=toDuXyT9SyE1uvRYhsyrH5Uyl9aH4rFo2m6LNMH9czc=;
 b=SfetJI7Doxfe8l7QLdZBb2HaiT9khE7nTJnRt0Q9QI+GGbeB5xgOiJAAnbU1s6ashT
 CcgVO8aAaC68c51VlnenX+vKUbCS/OkNjNe/RLQ64cqcltAf3jYcF4mr8eXomXceySSw
 lBzRovS/xodyyPGYycxh8sbU1O5J1q3ohfY/1OnGLla95B5FF5J8Z01kryuZirGFOTq1
 ZRwL9USQPwci4MgpK6hNw/HtZRXyp1BWkgS0gk5C8vciO68KuSsvJ4a1C+DlTSGz/CCh
 E3b0OwtiLq8loA/4AttdluRB4/2/2qx58rEvHoU7v3C/jo6h2AYbXmC2+aaP+GP0K+m1
 VRWg==
X-Gm-Message-State: AOAM532jHUDGkmAPDlEN13oqN1g/jQ920xM8mvRNYBYobqRWURl96ohd
 CMWRkbTPk23Djx5nTwDOVimOc70l5HU/NukO
X-Google-Smtp-Source: ABdhPJzMuJuSLg8DFO0QSJIs5XFJE1/ymf9Qf/ui1eVa0Z+CnXBFot7TMsbr3dX+/Q59N3aZUCO+WQ==
X-Received: by 2002:a17:907:da7:b0:6df:9ff4:10c7 with SMTP id
 go39-20020a1709070da700b006df9ff410c7mr37047884ejc.106.1649839489903; 
 Wed, 13 Apr 2022 01:44:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 y22-20020a170906559600b006e858ba2549sm5745780ejp.49.2022.04.13.01.44.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 01:44:49 -0700 (PDT)
Date: Wed, 13 Apr 2022 10:44:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YlaNf7I7IaX6a7Mp@phenom.ffwll.local>
References: <20220413082133.272445-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220413082133.272445-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: fixup ttm_bo_add_move_fence
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 09:21:33AM +0100, Matthew Auld wrote:
> It looks like we still need to call dma_fence_put() on the man->move,
> otherwise we just end up leaking it, leading to fireworks later.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5689
> Fixes: 8bb31587820a ("drm/ttm: remove bo->moving")
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 015a94f766de..b15b77e10383 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -744,6 +744,8 @@ static int ttm_bo_add_move_fence(struct ttm_buffer_object *bo,
>  		dma_fence_put(fence);
>  		return ret;
>  	}
> +
> +	dma_fence_put(fence);

Please delete the above if () and simplify the function tail to

	dma_fence_put(fence);
	return ret;

With that Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

And thanks a lot for catching this, I guess I get a prize for most useless
review ever :-/ Hopefully this one here is better.
-Daniel


>  	return 0;
>  }
>  
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
