Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EA11EB8D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AEF6ECF0;
	Fri, 13 Dec 2019 20:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441966ECFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:08:52 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a5so71654wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H4QwAX578NY4fhI+sexkPafex0WzGNL1MXJ3Dsnaavg=;
 b=ClR4vATi0lm/uR4AjmPvrLE1sJpqCemORzYcQ1ZyCMyMDz9nHE7MjkPPAbq2CwQUh4
 oCFzPzHDk+crtp1Wxw0tE8XY30FJKStbV5hn/qEcio8bHD8pIbcEYMlxJwKeeleN9dY2
 TdkBmKhNDVwIPzaUbzRIdJqvttbpH6SBk6j+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H4QwAX578NY4fhI+sexkPafex0WzGNL1MXJ3Dsnaavg=;
 b=j2VeNdoEr/aC9bXwrzbv+CTQEaOa4jyKDtJ2TtPvU16rcp1uQg5Y4OMP78KKKbH39T
 +iuCYeBYrkJ8mWj2KriM7e1lyn1IEcvg4pAMcvWH/Y7Tjhq7chOrBCHcyP8ZPI0YXYkK
 ncYlLlDWraqFLB6iEpJa7Nxfqmw2i4YTSxdZN6eSGPIoXq8/im/DXBBZV+UVE0dc5EH5
 Xwo84+dHMJWrceGYfFSoYDfmIHRxx8IpCuYaKB3/TtS44OrkYeIKytf0bDf5AwOjY2ps
 7eiv7Exs6VgaaZp8R1ecAgZ+vpt+3s6EXE8g4Jyv/NtIIizrUYJC+3XQL/aJIPLpgAKm
 c2lg==
X-Gm-Message-State: APjAAAX9BcjHJ1702ZDsG0pHZ1mar+JXpkDo9s2PUATD0jOPWk5ubPmm
 yv0HfwhcPN2uPmBVEQ60rplyHQ==
X-Google-Smtp-Source: APXvYqzX6tiAiCD80RNWHMwm27uqrP0XdXvT5VcypsRlEX/9sHkfmDkuq4dAFfmPiG9IIWxysxsJ7A==
X-Received: by 2002:a05:600c:388:: with SMTP id
 w8mr15123380wmd.177.1576267730921; 
 Fri, 13 Dec 2019 12:08:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id f1sm11018229wru.6.2019.12.13.12.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 12:08:50 -0800 (PST)
Date: Fri, 13 Dec 2019 21:08:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191213200848.GL624164@phenom.ffwll.local>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
 <20191125094356.161941-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125094356.161941-4-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/msm: Use dma_resv locking wrappers
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
Cc: freedreno@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 10:43:55AM +0100, Daniel Vetter wrote:
> I'll add more fancy logic to them soon, so everyone really has to use
> them. Plus they already provide some nice additional debug
> infrastructure on top of direct ww_mutex usage for the fences tracked
> by dma_resv.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org

Ping for some review/acks.

Thanks, Daniel

> ---
>  drivers/gpu/drm/msm/msm_gem_submit.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
> index 7d04c47d0023..385d4965a8d0 100644
> --- a/drivers/gpu/drm/msm/msm_gem_submit.c
> +++ b/drivers/gpu/drm/msm/msm_gem_submit.c
> @@ -157,7 +157,7 @@ static void submit_unlock_unpin_bo(struct msm_gem_submit *submit,
>  		msm_gem_unpin_iova(&msm_obj->base, submit->aspace);
>  
>  	if (submit->bos[i].flags & BO_LOCKED)
> -		ww_mutex_unlock(&msm_obj->base.resv->lock);
> +		dma_resv_unlock(msm_obj->base.resv);
>  
>  	if (backoff && !(submit->bos[i].flags & BO_VALID))
>  		submit->bos[i].iova = 0;
> @@ -180,8 +180,8 @@ static int submit_lock_objects(struct msm_gem_submit *submit)
>  		contended = i;
>  
>  		if (!(submit->bos[i].flags & BO_LOCKED)) {
> -			ret = ww_mutex_lock_interruptible(&msm_obj->base.resv->lock,
> -					&submit->ticket);
> +			ret = dma_resv_lock_interruptible(msm_obj->base.resv,
> +							  &submit->ticket);
>  			if (ret)
>  				goto fail;
>  			submit->bos[i].flags |= BO_LOCKED;
> @@ -202,8 +202,8 @@ static int submit_lock_objects(struct msm_gem_submit *submit)
>  	if (ret == -EDEADLK) {
>  		struct msm_gem_object *msm_obj = submit->bos[contended].obj;
>  		/* we lost out in a seqno race, lock and retry.. */
> -		ret = ww_mutex_lock_slow_interruptible(&msm_obj->base.resv->lock,
> -				&submit->ticket);
> +		ret = dma_resv_lock_slow_interruptible(msm_obj->base.resv,
> +						       &submit->ticket);
>  		if (!ret) {
>  			submit->bos[contended].flags |= BO_LOCKED;
>  			slow_locked = contended;
> -- 
> 2.24.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
