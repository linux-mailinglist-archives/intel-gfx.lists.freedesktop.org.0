Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F10347E7A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 18:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AA46EA51;
	Wed, 24 Mar 2021 17:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6152A6EC98
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 17:05:46 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id v11so25179680wro.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ggqY3kzKXIudQSfbysUJcm6wQjUA68gKKpbGo6F6hcE=;
 b=GM5zXeSsMNpYcfmQqKlJ7I11h82mENj9TmYwWM2MzUnsvMmJSY+loC7uYd08GoNCA6
 /GHywybP4g1qfwfhYLlEp3oHiWgyHUPXZNz0klWFVoiZ61Ye1qFjRY0QMQERqwmlTMAr
 7VyN8fjL+5GlCyOSOUh0kDryPIoQ4BGnbzaxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ggqY3kzKXIudQSfbysUJcm6wQjUA68gKKpbGo6F6hcE=;
 b=pihWjQw/yJau+tI8dqfwb0kjblV5pLl6/FlVDsRdCxv+4uIg5YoaIrs7f5EZIKjs1p
 wS73NDnYJdLO48j0/FMn6H5kqCOjNYfDwPH5l6/9LBG9jDeBe3G0KauZAFSUhEc/AwJl
 dkh6a0ueqMYpXwa/yXtzLM7XHtRHgnMTX3JT/5TnJP3/QFvSZ/TA3x+u8cN0Q0tuq++a
 J+GtWVY5JzCnYrdddHIjHxKTGe3RNWyGo9INpSzb9eIzGPqhUpvbuIlhWkSCEqklogzL
 HX/jSmLa6nzI8/Vu2GTBWwIbpcfJbC7/08WtLXt0A1rTEFuhpWKlgaL7IYlCf+orm93P
 0GuA==
X-Gm-Message-State: AOAM532g+Z1iXA/Wv6lCYU3jLcOolOIH6GDQ8EJmzlS+0TjtCTmA8L+I
 w/OEzpyCXG+Wly1KHUlRU8B/pw==
X-Google-Smtp-Source: ABdhPJzkMnp3MCfwVdXL4kFlc43xXqwKYR/bOvYdcY459wfvHBtDyf5IzRG8XBVKbDMhreMWP69DYw==
X-Received: by 2002:adf:d1c5:: with SMTP id b5mr4533414wrd.126.1616605544841; 
 Wed, 24 Mar 2021 10:05:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h25sm3242653wml.32.2021.03.24.10.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 10:05:44 -0700 (PDT)
Date: Wed, 24 Mar 2021 18:05:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFtxZs0cRCbD7QFb@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-65-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-65-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 64/70] drm/i915: Add missing -EDEADLK
 path in execbuffer ggtt pinning.
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

On Tue, Mar 23, 2021 at 04:50:53PM +0100, Maarten Lankhorst wrote:
> In reloc_iomap we swallow the -EDEADLK error, but this needs to
> be returned for -EDEADLK handling. Add the missing check to
> make bsw pass again.
> 
> Testcase: gem_exec_fence.basic-await
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

This partially reverts

https://lore.kernel.org/intel-gfx/CAM0jSHOHkZhivgi-X37W2rxYQHm1vbqB8uzAVYexEjuwE0LxSQ@mail.gmail.com/

which I'm going to throw out anyway. So not merged this one here.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 37fecd295eb6..f85ca10bf7f3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1216,6 +1216,8 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
>  							  PIN_MAPPABLE |
>  							  PIN_NONBLOCK /* NOWARN */ |
>  							  PIN_NOEVICT);
> +		if (vma == ERR_PTR(-EDEADLK))
> +			return vma;
>  		if (IS_ERR(vma)) {
>  			memset(&cache->node, 0, sizeof(cache->node));
>  			mutex_lock(&ggtt->vm.mutex);
> -- 
> 2.31.0
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
