Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447D73CFBAC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 16:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAB389FF7;
	Tue, 20 Jul 2021 14:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC0889FF7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 14:11:56 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id w13so12364961wmc.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 07:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+99Bkzo1T6V6yipq2wGp2+VIlI+NtcGrsveGXBzQdfI=;
 b=k1BEYGeLHiKE943zq0AJ/A9pedtwmJ17JxmYuV4jtmxEfRKSE8dQjl6W+tJTa/wK2a
 Bv7QVR5ogsBTw6eCqZjS7dH+2Kf3SGjaDe/E4TOq+i0pHIOg5Tkz0jCkGqEaP8Sq8PY3
 2mVfh+W5FSvTgdru8i54oX5nOv9x9otz0tJNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+99Bkzo1T6V6yipq2wGp2+VIlI+NtcGrsveGXBzQdfI=;
 b=kPu4TqUbF5kjtSqex22tKQL3D3RZGDn5YjsAXboU06xHxJz8ZsgSb3KEAnf81yLs0t
 zClGya0JCsWN5eZX48HuBdKGdqp7yZKUaym51GjE6Vvp9W9Z8DR1KM4VJCokZdUazInL
 NSg/poewP9eh7qIeuSDBPTRTupjnwqnCYvlU5UC1HIxYXbGvcS62kh2p+ZHS5Vq2jLbe
 7P9etefTDvSAF0LIG2bHjTrlsLtnU3XnMKnSF6I+g5VdkRgjA6TqSaff9BAuoUO2wSL/
 eFakV5uM37bqUv29w92hb9LCGrZT0Sip8Jn/1zVYpszDV54yDT+tmJZN2q/nQ1gj19/I
 h6Ww==
X-Gm-Message-State: AOAM530p0sBtqNB7+IGkZn7DC6pXeXFBAWyXSHvVHuEMyWL4U6/SMqsi
 F9i2asCBu8IfeL94plNsFowH/g==
X-Google-Smtp-Source: ABdhPJw86dJRZqU8oOV8kCozRCnLqmfko4g/rt0FDg2+hmIjB+7H8yYryPt91ZKw0zbFxtv5KKT8sA==
X-Received: by 2002:a7b:c150:: with SMTP id z16mr37655298wmi.104.1626790315685; 
 Tue, 20 Jul 2021 07:11:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o7sm16273281wrs.52.2021.07.20.07.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 07:11:55 -0700 (PDT)
Date: Tue, 20 Jul 2021 16:11:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPbZqZx/mwenKcDV@phenom.ffwll.local>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
 <20210719183047.2624569-3-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210719183047.2624569-3-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Call i915_globals_exit() if
 pci_register_device() fails
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

On Mon, Jul 19, 2021 at 01:30:43PM -0500, Jason Ekstrand wrote:
> In the unlikely event that pci_register_device() fails, we were tearing
> down our PMU setup but not globals.  This leaves a bunch of memory slabs
> lying around.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> Fixes: 32eb6bcfdda9 ("drm/i915: Make request allocation caches global")
> Cc: Daniel Vetter <daniel@ffwll.ch>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> ---
>  drivers/gpu/drm/i915/i915_globals.c | 4 ++--
>  drivers/gpu/drm/i915/i915_pci.c     | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index 77f1911c463b8..87267e1d2ad92 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -138,7 +138,7 @@ void i915_globals_unpark(void)
>  	atomic_inc(&active);
>  }
>  
> -static void __exit __i915_globals_flush(void)
> +static void __i915_globals_flush(void)
>  {
>  	atomic_inc(&active); /* skip shrinking */
>  
> @@ -148,7 +148,7 @@ static void __exit __i915_globals_flush(void)
>  	atomic_dec(&active);
>  }
>  
> -void __exit i915_globals_exit(void)
> +void i915_globals_exit(void)
>  {
>  	GEM_BUG_ON(atomic_read(&active));
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 50ed93b03e582..4e627b57d31a2 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1230,6 +1230,7 @@ static int __init i915_init(void)
>  	err = pci_register_driver(&i915_pci_driver);
>  	if (err) {
>  		i915_pmu_exit();
> +		i915_globals_exit();
>  		return err;
>  	}
>  
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
