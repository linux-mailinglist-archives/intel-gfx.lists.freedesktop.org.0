Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93D4FF27F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788A310FC3B;
	Wed, 13 Apr 2022 08:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EA410FC2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:45:36 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id lc2so2435538ejb.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 01:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=tZhPfwDbxlQnkc3jGt7bxNL3Y9fEa92AT11Pl+Gt15A=;
 b=kQdV93Fv0YXgsV7ic1ESrNoJ6grRx0zGL57zR5h9vAhYro4fn4zjaM37lZ6jYjK8nx
 xPwBQPwwfGot73GLNAd4vAmWVUNg1g0IFkOnOogz/8dyHKgC0YL5seT2ERgVHkEKZyJQ
 CRQhf9VZtZD6TJD3VbXeeXgyYZ2NxCGLzDXTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=tZhPfwDbxlQnkc3jGt7bxNL3Y9fEa92AT11Pl+Gt15A=;
 b=3jdvRDLIP2+ZzzMIcnSm7UkIzk6FFI0cj03Fn/P3AmyZUItNQ10SC3IxIXQjYZdpZK
 rbxFO10YL7U5wxmGNQq5tFiDrN6Yes4qHWHn0JVHjrBBGCzC3ZbXwMLooYKBcawAwnLy
 DmsbRZ/mNGoB+o//0kMKc+Otm0C2nHLf+ET9FjRs0F9YUaH6pvh9jTGoSh2509l2VkwJ
 lOmuTxaa943S+xoPORbzyw0qvQtGWhCDW75t8SFYIWwhUOMRqVe8lPj/vkxzT+vLNd2v
 h7yzGuxiyIlwgO/Ew4v10q/v87RUBveAU+gCykw1C0mGa5/X+GxEeRtqmJs62It8EHjc
 ogGQ==
X-Gm-Message-State: AOAM532buJJFaiVFW3ps91dxIXW4UUkCihsouUv9UwDGzlVyee9E3AWl
 BjPN7B9KAxyOYOl+JbGen0Y3TQ==
X-Google-Smtp-Source: ABdhPJzkuJrhjFVVaD+FeicC/JAGdUCgjuoCz93N0QjJQdbUTp1w0sllPG0kwR9VfLovGbAk5IHcCg==
X-Received: by 2002:a17:907:7e84:b0:6e8:b7ce:22b5 with SMTP id
 qb4-20020a1709077e8400b006e8b7ce22b5mr5255734ejc.763.1649839534887; 
 Wed, 13 Apr 2022 01:45:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 w22-20020a056402269600b004194f4eb3e7sm934803edd.19.2022.04.13.01.45.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 01:45:34 -0700 (PDT)
Date: Wed, 13 Apr 2022 10:45:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YlaNrDxQOY3QfoUu@phenom.ffwll.local>
References: <20220413082133.272445-1-matthew.auld@intel.com>
 <7c9f767f-60c4-6276-a3b2-7d77b7050e22@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c9f767f-60c4-6276-a3b2-7d77b7050e22@amd.com>
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
 Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 10:43:02AM +0200, Christian König wrote:
> Am 13.04.22 um 10:21 schrieb Matthew Auld:
> > It looks like we still need to call dma_fence_put() on the man->move,
> > otherwise we just end up leaking it, leading to fireworks later.
> > 
> > Closes: https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgitlab.freedesktop.org%2Fdrm%2Fintel%2F-%2Fissues%2F5689&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7C2c316b01285b4deacfda08da1d26a778%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637854349105267939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=bWuQuQm6N5Lf183uo%2BsEw%2FxMWQFYVkyfYnB6SH61fto%3D&amp;reserved=0
> > Fixes: 8bb31587820a ("drm/ttm: remove bo->moving")
> > Cc: Christian König <christian.koenig@amd.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> 
> Ah, yes! Previously we added the fence reference to bo->moving. I was
> already searching for that one as well.
> 
> Reviewed-by: Christian König <christian.koenig@amd.com>
> 
> Going to push it to drm-misc-next in a minute.

If you haven't pushed yet, pls also check my bikeshed, the code looks a
bit funny with this patch applied :-)
-Daniel

> 
> Thanks,
> Christian.
> 
> > ---
> >   drivers/gpu/drm/ttm/ttm_bo.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> > index 015a94f766de..b15b77e10383 100644
> > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > @@ -744,6 +744,8 @@ static int ttm_bo_add_move_fence(struct ttm_buffer_object *bo,
> >   		dma_fence_put(fence);
> >   		return ret;
> >   	}
> > +
> > +	dma_fence_put(fence);
> >   	return 0;
> >   }
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
