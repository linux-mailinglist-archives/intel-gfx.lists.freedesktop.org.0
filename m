Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28F54F3C7C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 18:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026E310EA73;
	Tue,  5 Apr 2022 16:05:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A98110EA6E
 for <Intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 16:05:25 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w21so20070604wra.2
 for <Intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 09:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sMvoJW3qjiJxlpY+ypfpBvsVYO4URLi2WzYghZ2lEr0=;
 b=Ku7EyOXTZ3NMJibIqRt9wWFNFNnlcbUEF3gULlfsLWRY32pUSWuCe4BbhaQPyJdWz+
 1rOAK4EiBZ4NZ6cLC6DcveDiTfQcQxKJIA7EsmrtOTlfxLjGjGEkI3NFf6xKkyT0t0Kw
 KC+M1uD+pGoFPaBhI3K7rvVenp+gJyssznV64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sMvoJW3qjiJxlpY+ypfpBvsVYO4URLi2WzYghZ2lEr0=;
 b=Q2f6W9tiLNWCacj3A7Lxd0O5GtogEjhwzHQYt1FZAkWrlurBL6tJB8qtZW45VtHBdd
 YcCveSnUvK6RnhyxU8QmA0EPqLKU4yFSEeMAUrE9/R3HDyXDs2qvR5uhULoG2zlRBOqA
 RS7InuPZ/yVkDmDrFJkHzmXcC11a/0IQMcrA5zM7PElI3CZN5rv9RTmAwbKNe4XWrokE
 JNbEQ1PpzZF09AinOFcDjVykyrTtIVrBDdqlXfe7Ex1CbqH83b4loRPvIRB+zgysJE3/
 gQYYl1p6x55HRhZRgQSit6tbBJtbZ5oOrVjZs5sysPpbBI3t2tFDBo/YpZxqLV9kqQCG
 I3Uw==
X-Gm-Message-State: AOAM530XGV+OyGZBK+dMP39uSf0ba3ITF61CkDjhVKNxsblcfPSUXScT
 xPfJCmUfHnkN6voQlOC/9t44GQ==
X-Google-Smtp-Source: ABdhPJwM1/FE1hlfH/uq9QTXY/3xJdPu3UOg4N+hKWJypfeLUFWKBwG2R0ZNSh+gXFoFIOvxlWKVUg==
X-Received: by 2002:a05:6000:1d93:b0:205:e0af:e079 with SMTP id
 bk19-20020a0560001d9300b00205e0afe079mr3155662wrb.525.1649174723838; 
 Tue, 05 Apr 2022 09:05:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm3963493wmq.27.2022.04.05.09.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 09:05:23 -0700 (PDT)
Date: Tue, 5 Apr 2022 18:05:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YkxowQIS5SZer86X@phenom.ffwll.local>
References: <20220405155345.3292769-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220405155345.3292769-1-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fixup kerneldoc in struct
 i915_gem_context
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 04:53:45PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Mixup in rebasing and patchwork re-runs made me push the wrong version of
> the patch. Or I even forgot to send out the fixed version. Fix it up.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 748716041dfa ("drm/i915: Track all user contexts per client")
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

You picked the wrong sha1. Sure you're on the right tree? :-)

Fixes: 49bd54b390c2 ("drm/i915: Track all user contexts per client")
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>



> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 5946dcb11cf5..cb78214a7dcd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -296,7 +296,7 @@ struct i915_gem_context {
>  	/** @client: struct i915_drm_client */
>  	struct i915_drm_client *client;
>  
> -	/** link: &drm_client.context_list */
> +	/** @client_link: for linking onto &i915_drm_client.ctx_list */
>  	struct list_head client_link;
>  
>  	/**
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
