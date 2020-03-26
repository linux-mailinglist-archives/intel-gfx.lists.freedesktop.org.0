Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4C8194034
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 14:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E713C6E8C9;
	Thu, 26 Mar 2020 13:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF6F6E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 13:46:43 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id d198so6562145wmd.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 06:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=WtrIiLn702c43/5OWwDtdFUHslpiuMl59i84eNI+ASk=;
 b=Ns2PQ5lKUMdVi1F0G1HQQDkFJnRf8y7UK0OYruKnkFl39mJoqOr46TUKJ7yYcUFhWh
 9WwKmR0J4/u1MV901pvTDtFrjU/lUcsQpar006DbgkDjP7cRGILufKi3eOwR6dnHsZCG
 PN3dFkmSu8Mwq8oaGIqYJptIhkBs1v5hAyTek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=WtrIiLn702c43/5OWwDtdFUHslpiuMl59i84eNI+ASk=;
 b=XooXKsVOmZ5iIssV/uMVmC/kLwYMBU6zmgRx1131V9Q0W/kqEnIvRoiAfUpCru3mPI
 A8majDdaUwmn+60D2EhmzFjL9/xE5jbqKqR4Whax4zzcwDcINMcsB4iSqExdRPjg0UYn
 DF36Dc9/ftZzpNukEjF/8pSOJ4/OZHGO8094/j2eXyyULHg7tGUC4oxJjHpbplbqcprw
 fKh/5pZrxV0FXyJOt0eL/b4OHY7xBrw4zZPDq734k3tcO5leBe914gNGiZ88oO0XUY8A
 HzEnVBnfoorSohmTyJBS0fItx6eHVwN2EsWfJH2n6f5+lKFPZ+jUCIJTn+bm4dKlvmE3
 y5Cw==
X-Gm-Message-State: ANhLgQ3789PG51iBmdjgRU8QRSCDmEdqGa15UX+l5ZfxrrKcRdHgMmFG
 sB5wUUIleQ+ogXh4sG5Rl2txTg==
X-Google-Smtp-Source: ADFU+vv4dsyd/GhJtKso+pL4OaOBZCg49jJhq0gbQGk2tqc7qiUGnH/ge5gCXBcJabOc6d8J9AtpCA==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr78382wmj.24.1585230402176;
 Thu, 26 Mar 2020 06:46:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i1sm3623859wrq.89.2020.03.26.06.46.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:46:41 -0700 (PDT)
Date: Thu, 26 Mar 2020 14:46:39 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20200326134639.GA2363188@phenom.ffwll.local>
Mail-Followup-To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, linux-mm@kvack.org
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
 <20200323144950.3018436-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323144950.3018436-2-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 01/51] mm/sl[uo]b: export
 __kmalloc_track(_node)_caller
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
Cc: linux-mm@kvack.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Pekka Enberg <penberg@kernel.org>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 23, 2020 at 03:49:00PM +0100, Daniel Vetter wrote:
> slab does this already, and I want to use this in a memory allocation
> tracker in drm for stuff that's tied to the lifetime of a drm_device,
> not the underlying struct device. Kinda like devres, but for drm.
> 
> Acked-by: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-mm@kvack.org
> --
> I plan to merge this through drm-misc-next (with Andrew's ack) once
> the remainder of the drm series is in shape.

Ok I pulled this in now, but it's going to miss the 5.7 merge window, so
queued for 5.8. Should show up in linux-next right after -rc1.
-Daniel

> -Daniel
> ---
>  mm/slob.c | 2 ++
>  mm/slub.c | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/mm/slob.c b/mm/slob.c
> index fa53e9f73893..ac2aecfbc7a8 100644
> --- a/mm/slob.c
> +++ b/mm/slob.c
> @@ -524,6 +524,7 @@ void *__kmalloc_track_caller(size_t size, gfp_t gfp, unsigned long caller)
>  {
>  	return __do_kmalloc_node(size, gfp, NUMA_NO_NODE, caller);
>  }
> +EXPORT_SYMBOL(__kmalloc_track_caller);
>  
>  #ifdef CONFIG_NUMA
>  void *__kmalloc_node_track_caller(size_t size, gfp_t gfp,
> @@ -531,6 +532,7 @@ void *__kmalloc_node_track_caller(size_t size, gfp_t gfp,
>  {
>  	return __do_kmalloc_node(size, gfp, node, caller);
>  }
> +EXPORT_SYMBOL(__kmalloc_node_track_caller);
>  #endif
>  
>  void kfree(const void *block)
> diff --git a/mm/slub.c b/mm/slub.c
> index 2988dae3f692..a937de5182cc 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -4377,6 +4377,7 @@ void *__kmalloc_track_caller(size_t size, gfp_t gfpflags, unsigned long caller)
>  
>  	return ret;
>  }
> +EXPORT_SYMBOL(__kmalloc_track_caller);
>  
>  #ifdef CONFIG_NUMA
>  void *__kmalloc_node_track_caller(size_t size, gfp_t gfpflags,
> @@ -4407,6 +4408,7 @@ void *__kmalloc_node_track_caller(size_t size, gfp_t gfpflags,
>  
>  	return ret;
>  }
> +EXPORT_SYMBOL(__kmalloc_node_track_caller);
>  #endif
>  
>  #ifdef CONFIG_SYSFS
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
