Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF3A40FAE2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 16:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1124D6ED8D;
	Fri, 17 Sep 2021 14:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D012D6ED8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 14:56:14 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id v24so30994691eda.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 07:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=X29mbY4XMQeoCuwbVUTtCWIrpaTXec+xmjDFVMtuCBM=;
 b=A1mcavcYt2QQTNBkoc/FLtlWT1v9wbPlqaIljyDs2v8H+aMqb3YWAo/dBjkr7bnB9Q
 fdKFk/C3fl1c+dc4jgBuYmy83h8ZIAXghsGelEppBnIbXsB+MPbQHYy2wL6veYXqLwB0
 IXY7RuywYKGiRoaVNoO2pnLtiRV+KPnamRdbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=X29mbY4XMQeoCuwbVUTtCWIrpaTXec+xmjDFVMtuCBM=;
 b=wPhjvgLgCv3qxQF9u47ptVNSXkF+xzBKTRuPIZkE03Yk4+HOU595X0wPeqQFHgMMR+
 cUD0/7yNXoOubQTlywR7MJrHW0girccI67tNkrocNKABLfSqbGRkxlYw8lsGE3gxc9jr
 1dD8NMc5qQzVHKBGiHJrDuV6QYKNDLDjyPWyVQW4qwAxOrJC1KKQRBVjTTs2XcG34vvz
 4KwTvb4e5fLjBhmG1NctCigdXvJR+c8RTc6zQhzSukIL2vNn4BwOD//xm0r9sVOqWLcv
 B/9YnOOaLM3BM3mD0YOV1JrDYWcnQBaXaujny+V6T5l5umHoa9FjS0trCpb5AcFQQrGF
 AzMA==
X-Gm-Message-State: AOAM531p7hYiiRDheURPO07WF3xrtIKGUaS/urvbh2SxYvuv/rAHd3LG
 50lX5GN+FBHXFypUXfi44yDtOQ==
X-Google-Smtp-Source: ABdhPJzipdEA6H6mMcSGep1fE9poMh/Q4IA14eEu/6Rd+xLXMksMP/16auhU0CWMS0H+xVD6zggZfg==
X-Received: by 2002:a17:906:fb13:: with SMTP id
 lz19mr12364559ejb.516.1631890573401; 
 Fri, 17 Sep 2021 07:56:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o23sm2752212eds.75.2021.09.17.07.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:56:12 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:56:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Message-ID: <YUSsixkj+ivSug/5@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-27-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917123513.1106-27-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 17, 2021 at 02:35:13PM +0200, Christian König wrote:
> Heureka, that's finally not used any more.
> 
> Signed-off-by: Christian König <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  include/linux/dma-resv.h | 26 --------------------------
>  1 file changed, 26 deletions(-)
> 
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 8c968f8c9d33..f42ca254acb5 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -423,32 +423,6 @@ dma_resv_excl_fence(struct dma_resv *obj)
>  	return rcu_dereference_check(obj->fence_excl, dma_resv_held(obj));
>  }
>  
> -/**
> - * dma_resv_get_excl_unlocked - get the reservation object's
> - * exclusive fence, without lock held.
> - * @obj: the reservation object
> - *
> - * If there is an exclusive fence, this atomically increments it's
> - * reference count and returns it.
> - *
> - * RETURNS
> - * The exclusive fence or NULL if none
> - */
> -static inline struct dma_fence *
> -dma_resv_get_excl_unlocked(struct dma_resv *obj)
> -{
> -	struct dma_fence *fence;
> -
> -	if (!rcu_access_pointer(obj->fence_excl))
> -		return NULL;
> -
> -	rcu_read_lock();
> -	fence = dma_fence_get_rcu_safe(&obj->fence_excl);
> -	rcu_read_unlock();
> -
> -	return fence;
> -}
> -
>  /**
>   * dma_resv_shared_list - get the reservation object's shared fence list
>   * @obj: the reservation object
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
