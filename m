Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E03F3220CAC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 14:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6796EB3F;
	Wed, 15 Jul 2020 12:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E4A6EB3E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 12:10:26 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f139so5538833wmf.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 05:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YeY3ceeobf3rTLzyzdGZ+UO5t8iY8vjVpRgRkKrLY9E=;
 b=F85+Or1HqY4+vzwI5UoZRM9HDC4TscgHvtEYg2PIiXl6QeSIPl4Xsuz/8Tiup4pTV0
 9ejUoKlfLqrMD8Ir/VrZRiMvqmZWrCpPB7zgnyxmlzTDY+mHc52n6ln6m5zbvc2dGbkk
 RyFuWNkWFE+x2PtdcHQKuUgZx1rT2AEQIx0Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YeY3ceeobf3rTLzyzdGZ+UO5t8iY8vjVpRgRkKrLY9E=;
 b=RD1CUpY3cpny5uz7YKJJ1D/im5Mqlrnu39q7lfVpFVSI0KIeCnamu/UJHlDm8WFQXV
 M26RJcjNr0sxVXOx8JtKVCF+6GzCkuU8QYU5OXLjktzmDHnrTzqcu/nfIddub/W/GpLj
 yqcRXGaZBjzbAmArnx+tf1VaoBiVxpbktQoTQLiIbuFbeZRnjfZzMHuNSR2uzJlJtpjG
 Txe/DODIACs/0tQ1wxofeMApyvwUO8iBvFXj8oL7IeaG5/MrPS7ezEXB9fkmKN9sLZlp
 vWtpyXjSAivOHRq2rrpry4gEdzw+ayUR3n0WI3Tl0tTf7SNi9ql3cyCkoh39peeysTpz
 +KaQ==
X-Gm-Message-State: AOAM531QQYyxgcVoADAuHtLyA5DWbExFL0lbnLydbPzTOEASRSc/RfLc
 VSFd1smSGmlXKUd3H4LUgqJipg==
X-Google-Smtp-Source: ABdhPJyNf18pNb3Y1ZbijyqmwfkaX26id0aZ7dUXUeVHy0zzHO5/liARUaWvM5EyY/UjBQRL5h+OSA==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr8913810wmc.106.1594815024602; 
 Wed, 15 Jul 2020 05:10:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f15sm3121815wrx.91.2020.07.15.05.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 05:10:24 -0700 (PDT)
Date: Wed, 15 Jul 2020 14:10:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200715121022.GK3278063@phenom.ffwll.local>
References: <20200715104905.11006-1-chris@chris-wilson.co.uk>
 <20200715104905.11006-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715104905.11006-2-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf/dma-fence: Add quick tests
 before dma_fence_remove_callback
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

On Wed, Jul 15, 2020 at 11:49:05AM +0100, Chris Wilson wrote:
> When waiting with a callback on the stack, we must remove the callback
> upon wait completion. Since this will be notified by the fence signal
> callback, the removal often contends with the fence->lock being held by
> the signaler. We can look at the list entry to see if the callback was
> already signaled before we take the contended lock.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/dma-buf/dma-fence.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 8d5bdfce638e..b910d7bc0854 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -420,6 +420,9 @@ dma_fence_remove_callback(struct dma_fence *fence, struct dma_fence_cb *cb)
>  	unsigned long flags;
>  	bool ret;
>  
> +	if (list_empty(&cb->node))

I was about to say "but the races" but then noticed that Paul fixed
list_empty to use READ_ONCE like 5 years ago :-)

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +		return false;
> +
>  	spin_lock_irqsave(fence->lock, flags);
>  
>  	ret = !list_empty(&cb->node);
> -- 
> 2.20.1
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
