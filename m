Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8868207C38
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 21:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02D86E4CB;
	Wed, 24 Jun 2020 19:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269426E4A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 19:32:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id h5so3422529wrc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 12:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+4ebruNCBdCynGDUnGs85oad3dMnv96iWbK1LEDmKbk=;
 b=PDSXk5u5+Z0eU6rgKUZ5l0akAg56gsi08fxGN0ibav/zrjyRg4Xq93zH5esHVMFdZg
 9H56dUS4NLS5JE6bG6PaDFwcO7S8tFiPhMtye+VJsmvkNZ9aXgr2/TOSAXLqiUS1Fqtk
 c/6oEqnQRq3BPNOtStp+jEJbFaGI4Ng37s7QU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+4ebruNCBdCynGDUnGs85oad3dMnv96iWbK1LEDmKbk=;
 b=iWnAhVf6RgImlvSsEQ4JXKxaE9ZlYFVevLDffW1IlFDJB4niGBDqWqzEXphEbB+3bv
 o+Z+ju2Xej6Yi8DLVJd6XYRFWd/NF57aCaawP2df087U1hFChvM79DGXtlH/dO8MT40L
 uK8U4wXj0nWjGXb6OJ4HAoNTemL2paubgn6b6dg5ulBj8T7vXiAThzC67LuikjSB8OLK
 5qcrm+3FYELnBtxbBhpeSILyy5upPBQPivpwmtQBQGnNWp0jfv5VA4F34laqKBsVn2Os
 zi7lu+ApZT+ky5ar/F2ftKBhsVy4xW2vuVlVhrPw+4PCqIgmlhODcWA4fYWbDSaIJyBt
 t01A==
X-Gm-Message-State: AOAM533W6Q/zLgXeKnkYlVMBHIlpIvGA+EZwiRopMODeE1fm2RbnZux1
 8pab5Ik+3mIo6MbKA1s45a17Bw==
X-Google-Smtp-Source: ABdhPJxnkZ76oCIpJabe2FyolWSHM20kaC2Gw20tI9DR0WWfWdHIqwJO1ykuIYiurQfYR4L+XDAE3A==
X-Received: by 2002:adf:cc85:: with SMTP id p5mr28819522wrj.273.1593027172786; 
 Wed, 24 Jun 2020 12:32:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s18sm30989426wra.85.2020.06.24.12.32.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 12:32:52 -0700 (PDT)
Date: Wed, 24 Jun 2020 21:32:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20200624144431.GA3278063@phenom.ffwll.local>
References: <20200604081224.863494-3-daniel.vetter@ffwll.ch>
 <20200612070535.1778368-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612070535.1778368-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] dma-buf: minor doc touch-ups
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 09:05:35AM +0200, Daniel Vetter wrote:
> Just some tiny edits:
> - fix link to struct dma_fence
> - give slightly more meaningful title - the polling here is about
>   implicit fences, explicit fences (in sync_file or drm_syncobj) also
>   have their own polling
> 
> v2: I misplaced the .rst include change corresponding to this patch.
> 
> Reviewed-by: Thomas Hellstrom <thomas.hellstrom@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

I went ahead and merged this one, shouldn't be the controversial part of
the series :-)
-Daniel

> ---
>  Documentation/driver-api/dma-buf.rst | 6 +++---
>  drivers/dma-buf/dma-buf.c            | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-api/dma-buf.rst
> index 63dec76d1d8d..7fb7b661febd 100644
> --- a/Documentation/driver-api/dma-buf.rst
> +++ b/Documentation/driver-api/dma-buf.rst
> @@ -100,11 +100,11 @@ CPU Access to DMA Buffer Objects
>  .. kernel-doc:: drivers/dma-buf/dma-buf.c
>     :doc: cpu access
>  
> -Fence Poll Support
> -~~~~~~~~~~~~~~~~~~
> +Implicit Fence Poll Support
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  
>  .. kernel-doc:: drivers/dma-buf/dma-buf.c
> -   :doc: fence polling
> +   :doc: implicit fence polling
>  
>  Kernel Functions and Structures Reference
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 01ce125f8e8d..e018ef80451e 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -161,11 +161,11 @@ static loff_t dma_buf_llseek(struct file *file, loff_t offset, int whence)
>  }
>  
>  /**
> - * DOC: fence polling
> + * DOC: implicit fence polling
>   *
>   * To support cross-device and cross-driver synchronization of buffer access
> - * implicit fences (represented internally in the kernel with &struct fence) can
> - * be attached to a &dma_buf. The glue for that and a few related things are
> + * implicit fences (represented internally in the kernel with &struct dma_fence)
> + * can be attached to a &dma_buf. The glue for that and a few related things are
>   * provided in the &dma_resv structure.
>   *
>   * Userspace can query the state of these implicitly tracked fences using poll()
> -- 
> 2.26.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
