Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F993727DE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 11:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA366EAB1;
	Tue,  4 May 2021 09:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616B96EAB4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 09:11:16 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id gx5so12013082ejb.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 02:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YwqFj72jUjupjwhsKXszFdmsbIp/D5qjR/2ZXA5Gi3c=;
 b=V2b0ca/xF/RTSMWKHzVekM/cZMtR5xnDPm5oy0UyeuTcgE9P3rqg8cPmFbvcKEqwpw
 Y5IoKPfoxrEov/NyzwwANIsNcbD73IiPYlSKfUsEI3/p70ok8d2KW4fzz9sA2GeKSlyG
 0qaP23YVhvoH1DU6DvKXEYI/pwILC0M/G0v+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YwqFj72jUjupjwhsKXszFdmsbIp/D5qjR/2ZXA5Gi3c=;
 b=AZPX38wFaWWKkvszoJjJO5GNdxL6JDLCw6pgru1KAvnCIPSWbkYD3hNxBOIBA8jy7c
 ofdPv5J4izRdzG47ACFJqowHX7+Ah9re9pdqcbDPDqwyxK53tOMI/IJAp5rIHfQAqNUV
 yL5y7rYgD41DcpztpSX/UmuGzy9HFHjw06A76zofRHyqsOztf19tL4nq4+g3odUx+z0w
 H1Vw7jj80zY5geFVWpexu47fPeiBBuUgobusbijUCkPGPR5jrF8h022TDAfbaM6LmxCL
 iGebTL66iT7HTxpimfGmRsPhXwvIFaCSMKCWAl892dUdhZb4xMGd4bF0YAhi2SpDbBtr
 bJMA==
X-Gm-Message-State: AOAM532QXpMTRL76KElxkWIvuFODfP8bw11DeZvrIyh2dxQDr/slAgbD
 amLQaO2BxR0FDdC8uxwFNtonu4NiZPBHzw==
X-Google-Smtp-Source: ABdhPJy1+HuNlYb7Oaxg1TJc78TF4RItofR7MkoNEahbIqytxkejVhJJXJogcPaQEUZyKr/12BIhsg==
X-Received: by 2002:a17:906:7842:: with SMTP id
 p2mr3265275ejm.487.1620119475080; 
 Tue, 04 May 2021 02:11:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 9sm1064863ejv.73.2021.05.04.02.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 02:11:14 -0700 (PDT)
Date: Tue, 4 May 2021 11:11:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YJEPsD9pL0QHzRcN@phenom.ffwll.local>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
 <20210503155748.1961781-16-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210503155748.1961781-16-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 15/27] drm/i915: Add gem/i915_gem_context.h
 to the docs
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

On Mon, May 03, 2021 at 10:57:36AM -0500, Jason Ekstrand wrote:
> In order to prevent kernel doc warnings, also fill out docs for any
> missing fields and fix those that forgot the "@".
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  Documentation/gpu/i915.rst                    |  2 +
>  .../gpu/drm/i915/gem/i915_gem_context_types.h | 43 ++++++++++++++++---
>  2 files changed, 38 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 486c720f38907..0529e5183982e 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -422,6 +422,8 @@ Batchbuffer Parsing
>  User Batchbuffer Execution
>  --------------------------
>  
> +.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +
>  .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>     :doc: User command execution
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index df76767f0c41b..5f0673a2129f9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -30,19 +30,39 @@ struct i915_address_space;
>  struct intel_timeline;
>  struct intel_ring;
>  
> +/**
> + * struct i915_gem_engines - A set of engines
> + */
>  struct i915_gem_engines {
>  	union {
> +		/** @link: Link in i915_gem_context::stale::engines */
>  		struct list_head link;
> +
> +		/** @rcu: RCU to use when freeing */
>  		struct rcu_head rcu;
>  	};
> +
> +	/** @fence: Fence used for delayed destruction of engines */
>  	struct i915_sw_fence fence;

I got derailed a bit appreciating the lifetime complexity here as
expressed in the callbacks for this. I hope this all simplifies?

Anyway patch looks good, or at least better than what we had.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
> +	/** @ctx: i915_gem_context backpointer */
>  	struct i915_gem_context *ctx;
> +
> +	/** @num_engines: Number of engines in this set */
>  	unsigned int num_engines;
> +
> +	/** @engines: Array of engines */
>  	struct intel_context *engines[];
>  };
>  
> +/**
> + * struct i915_gem_engines_iter - Iterator for an i915_gem_engines set
> + */
>  struct i915_gem_engines_iter {
> +	/** @idx: Index into i915_gem_engines::engines */
>  	unsigned int idx;
> +
> +	/** @engines: Engine set being iterated */
>  	const struct i915_gem_engines *engines;
>  };
>  
> @@ -53,10 +73,10 @@ struct i915_gem_engines_iter {
>   * logical hardware state for a particular client.
>   */
>  struct i915_gem_context {
> -	/** i915: i915 device backpointer */
> +	/** @i915: i915 device backpointer */
>  	struct drm_i915_private *i915;
>  
> -	/** file_priv: owning file descriptor */
> +	/** @file_priv: owning file descriptor */
>  	struct drm_i915_file_private *file_priv;
>  
>  	/**
> @@ -81,7 +101,9 @@ struct i915_gem_context {
>  	 * CONTEXT_USER_ENGINES flag is set).
>  	 */
>  	struct i915_gem_engines __rcu *engines;
> -	struct mutex engines_mutex; /* guards writes to engines */
> +
> +	/** @engines_mutex: guards writes to engines */
> +	struct mutex engines_mutex;
>  
>  	/**
>  	 * @syncobj: Shared timeline syncobj
> @@ -118,7 +140,7 @@ struct i915_gem_context {
>  	 */
>  	struct pid *pid;
>  
> -	/** link: place with &drm_i915_private.context_list */
> +	/** @link: place with &drm_i915_private.context_list */
>  	struct list_head link;
>  
>  	/**
> @@ -153,11 +175,13 @@ struct i915_gem_context {
>  #define CONTEXT_CLOSED			0
>  #define CONTEXT_USER_ENGINES		1
>  
> +	/** @mutex: guards everything that isn't engines or handles_vma */
>  	struct mutex mutex;
>  
> +	/** @sched: scheduler parameters */
>  	struct i915_sched_attr sched;
>  
> -	/** guilty_count: How many times this context has caused a GPU hang. */
> +	/** @guilty_count: How many times this context has caused a GPU hang. */
>  	atomic_t guilty_count;
>  	/**
>  	 * @active_count: How many times this context was active during a GPU
> @@ -171,15 +195,17 @@ struct i915_gem_context {
>  	unsigned long hang_timestamp[2];
>  #define CONTEXT_FAST_HANG_JIFFIES (120 * HZ) /* 3 hangs within 120s? Banned! */
>  
> -	/** remap_slice: Bitmask of cache lines that need remapping */
> +	/** @remap_slice: Bitmask of cache lines that need remapping */
>  	u8 remap_slice;
>  
>  	/**
> -	 * handles_vma: rbtree to look up our context specific obj/vma for
> +	 * @handles_vma: rbtree to look up our context specific obj/vma for
>  	 * the user handle. (user handles are per fd, but the binding is
>  	 * per vm, which may be one per context or shared with the global GTT)
>  	 */
>  	struct radix_tree_root handles_vma;
> +
> +	/** @lut_mutex: Locks handles_vma */
>  	struct mutex lut_mutex;
>  
>  	/**
> @@ -191,8 +217,11 @@ struct i915_gem_context {
>  	 */
>  	char name[TASK_COMM_LEN + 8];
>  
> +	/** @stale: tracks stale engines to be destroyed */
>  	struct {
> +		/** @lock: guards engines */
>  		spinlock_t lock;
> +		/** @engines: list of stale engines */
>  		struct list_head engines;
>  	} stale;
>  };
> -- 
> 2.31.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
