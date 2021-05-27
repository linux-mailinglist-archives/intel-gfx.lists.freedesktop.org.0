Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1351392C1A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 12:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C88E6EE6A;
	Thu, 27 May 2021 10:46:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880636EE6E
 for <Intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 10:46:37 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 u4-20020a05600c00c4b02901774b80945cso2299758wmm.3
 for <Intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 03:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c4mAgs3hJlBW+DiixgSX63+ZKG0ya2IvVafcPSMKtOY=;
 b=eE+DepAkkxmAXyPtGebp5t2DkS0QWpt3NP//4e9CgMA/g5oE9asyfE5MtuHtdp1xtT
 wQDW2qY84c/fQz3v+F9mJ/99u+Mx+motiKogG85xeBODBRPUukq+SoaO/zsmaaWLzHkc
 DyML0I0pCifpOBSDrAtOgB3uMZky0vsyRKag0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c4mAgs3hJlBW+DiixgSX63+ZKG0ya2IvVafcPSMKtOY=;
 b=aB4y/ivNJbU7zXZy8Bbocmz67JD407zWSP94h97VEH+0rju0LPwAjbgw0lhKlZi1Fc
 6wr2Ki0XgoW5wSMa4qTgBZ0Gr9jHj7EPiYo/Of21xbN5RLG3xU5QwumOeMsNxA6yf4i4
 J64Kz3dXqf/j5UepGXmYQA5gapjXZdPEdUtWl0nE5Zl+thIlhOFEumyeiclBcPF2yepc
 FsPIbfHOcMRRuHpXX+OrfWfdLdEUqpiRKWbLHLme6fWvayHZhbrSVFEtwlPqtibyRSQy
 TDk5+K4VmA4D2hLOTPv7XsiF6bPE/REWyJ5YdGct6Nev5eH6QVk/ZyM6zdNxEQ8fYN0V
 zFaw==
X-Gm-Message-State: AOAM531J9WRAmuzRbv82q9aUfzakzE7u+pi2JwXwR4Ux49MSe/H5hVWC
 qmAigdiw4LDOJrvVMmaj9uJ2UA==
X-Google-Smtp-Source: ABdhPJwEM6S72jKFAAfC0ikqcP1P7/Pbjc03v3unHEzNzPOpsI1rIbDFECddTTELO8u5abhghy9QYQ==
X-Received: by 2002:a1c:4444:: with SMTP id r65mr7507098wma.127.1622112396063; 
 Thu, 27 May 2021 03:46:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h8sm2579047wrw.85.2021.05.27.03.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 03:46:35 -0700 (PDT)
Date: Thu, 27 May 2021 12:46:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YK94iSW7JoJippim@phenom.ffwll.local>
References: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
 <20210526141456.2334192-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526141456.2334192-2-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Take rcu_read_lock for
 querying fence's driver/timeline names
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 03:14:45PM +0100, Tvrtko Ursulin wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> The name very often may be freed independently of the fence, with the
> only protection being RCU. To be safe as we read the names, hold RCU.

Yeah no.

If it's not clear why, figure it out first.
-Daniel

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_sw_fence.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 2744558f3050..dfabf291e5cd 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -430,11 +430,13 @@ static void timer_i915_sw_fence_wake(struct timer_list *t)
>  	if (!fence)
>  		return;
>  
> +	rcu_read_lock();
>  	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\n",
>  		  cb->dma->ops->get_driver_name(cb->dma),
>  		  cb->dma->ops->get_timeline_name(cb->dma),
>  		  cb->dma->seqno,
>  		  i915_sw_fence_debug_hint(fence));
> +	rcu_read_unlock();
>  
>  	i915_sw_fence_set_error_once(fence, -ETIMEDOUT);
>  	i915_sw_fence_complete(fence);
> -- 
> 2.30.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
