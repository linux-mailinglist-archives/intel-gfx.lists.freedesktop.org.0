Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF53EEAA7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 12:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020EB6E069;
	Tue, 17 Aug 2021 10:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873406E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 10:10:29 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id q10so27784675wro.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+aMIML02DeFl51LhhThOq1s67DpAXrQuB2GOPhk27dM=;
 b=A49XFyxxUKkEYFa9OKZFiz91KXxE0clCOfnRscS8auDA0R5nXe7iBp8hsn4wY7VIBH
 5mrV0iU2xFKls7K+bd4DDetK8Jh+7Hc6eE7xdeMXxBmZCL4Q5UllZkH2tc12oNTrQXFy
 IRrIamgzQ4ddn3OVmheMWb+nMSzU4QingKpmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+aMIML02DeFl51LhhThOq1s67DpAXrQuB2GOPhk27dM=;
 b=DgfznIBZbKvs9Yp6fe9p3hCfUMl2mINSOPptr4YXHvWgaU72ZfwKs4GfsdOkhIQdaH
 J03JlREzlppE/5aUL899kbtYUBBN2W3K9avmvuyD4GG8h8ebzwcrlfR+nch0wM6Aj45L
 T/YZbhFMUR71nrRJL8nROKC8LUHoPi4yLtgHd3ciB6jODlR9jwyUObTSKYVrHya0LkFx
 F5R6WdnWkWvQ/CVE52x4cdNUseQHJhzmcB9RhvadrqPjQaeLkzU+G8DNJHn0GSTI/ZEX
 RqRKIQdrBO0agirTtI2vyNhaRb2EZZzFPhwg7x7lEJjwMmPyZ8EsCkx3PmzEG1dHyuP1
 o7gA==
X-Gm-Message-State: AOAM5302vTzWk2EUYRQ+q0dPYdBc6M26x0RYsb8p7TDAMrQWY43ZntaU
 V6Qb6f4cK1samLwSSKmaVDo6mw==
X-Google-Smtp-Source: ABdhPJzCjgbTdlGHR1yDloImfYa+znmHfcOSq53K6h/pzUKYjf9SfpMxf/xQAY72YixzLjLdqIryvA==
X-Received: by 2002:adf:ebd2:: with SMTP id v18mr3158791wrn.248.1629195027992; 
 Tue, 17 Aug 2021 03:10:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g21sm1660442wmk.8.2021.08.17.03.10.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:10:27 -0700 (PDT)
Date: Tue, 17 Aug 2021 12:10:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Message-ID: <YRuLEUQ27bNMbBsT@phenom.ffwll.local>
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-18-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816135139.10060-18-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 17/22] drm/i915/guc: Move guc_blocked fence
 to struct guc_state
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

On Mon, Aug 16, 2021 at 06:51:34AM -0700, Matthew Brost wrote:
> Move guc_blocked fence to struct guc_state as the lock which protects
> the fence lives there.
> 
> s/ce->guc_blocked/ce->guc_state.blocked_fence/g
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

General comment, but latest when your combine your count state with a wait
queue you're very far into "reinventing a mutex/semaphore, badly" land.

I think we really need to look into why we can't just protect this all
with a mutex and make sure the awkward transition states are never visible
to anyone else.
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_context.c        |  5 +++--
>  drivers/gpu/drm/i915/gt/intel_context_types.h  |  5 ++---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++---------
>  3 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 745e84c72c90..0e48939ec85f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -405,8 +405,9 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
>  	 * Initialize fence to be complete as this is expected to be complete
>  	 * unless there is a pending schedule disable outstanding.
>  	 */
> -	i915_sw_fence_init(&ce->guc_blocked, sw_fence_dummy_notify);
> -	i915_sw_fence_commit(&ce->guc_blocked);
> +	i915_sw_fence_init(&ce->guc_state.blocked_fence,
> +			   sw_fence_dummy_notify);
> +	i915_sw_fence_commit(&ce->guc_state.blocked_fence);
>  
>  	i915_active_init(&ce->active,
>  			 __intel_context_active, __intel_context_retire, 0);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 3a73f3117873..c06171ee8792 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -167,6 +167,8 @@ struct intel_context {
>  		 * fence related to GuC submission
>  		 */
>  		struct list_head fences;
> +		/* GuC context blocked fence */
> +		struct i915_sw_fence blocked_fence;
>  	} guc_state;
>  
>  	struct {
> @@ -190,9 +192,6 @@ struct intel_context {
>  	 */
>  	struct list_head guc_id_link;
>  
> -	/* GuC context blocked fence */
> -	struct i915_sw_fence guc_blocked;
> -
>  	/*
>  	 * GuC priority management
>  	 */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 9ae4633aa7cb..7aa16371908a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1482,24 +1482,24 @@ static void guc_blocked_fence_complete(struct intel_context *ce)
>  {
>  	lockdep_assert_held(&ce->guc_state.lock);
>  
> -	if (!i915_sw_fence_done(&ce->guc_blocked))
> -		i915_sw_fence_complete(&ce->guc_blocked);
> +	if (!i915_sw_fence_done(&ce->guc_state.blocked_fence))
> +		i915_sw_fence_complete(&ce->guc_state.blocked_fence);
>  }
>  
>  static void guc_blocked_fence_reinit(struct intel_context *ce)
>  {
>  	lockdep_assert_held(&ce->guc_state.lock);
> -	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_blocked));
> +	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_state.blocked_fence));
>  
>  	/*
>  	 * This fence is always complete unless a pending schedule disable is
>  	 * outstanding. We arm the fence here and complete it when we receive
>  	 * the pending schedule disable complete message.
>  	 */
> -	i915_sw_fence_fini(&ce->guc_blocked);
> -	i915_sw_fence_reinit(&ce->guc_blocked);
> -	i915_sw_fence_await(&ce->guc_blocked);
> -	i915_sw_fence_commit(&ce->guc_blocked);
> +	i915_sw_fence_fini(&ce->guc_state.blocked_fence);
> +	i915_sw_fence_reinit(&ce->guc_state.blocked_fence);
> +	i915_sw_fence_await(&ce->guc_state.blocked_fence);
> +	i915_sw_fence_commit(&ce->guc_state.blocked_fence);
>  }
>  
>  static u16 prep_context_pending_disable(struct intel_context *ce)
> @@ -1539,7 +1539,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
>  		if (enabled)
>  			clr_context_enabled(ce);
>  		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		return &ce->guc_blocked;
> +		return &ce->guc_state.blocked_fence;
>  	}
>  
>  	/*
> @@ -1555,7 +1555,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
>  	with_intel_runtime_pm(runtime_pm, wakeref)
>  		__guc_context_sched_disable(guc, ce, guc_id);
>  
> -	return &ce->guc_blocked;
> +	return &ce->guc_state.blocked_fence;
>  }
>  
>  static void guc_context_unblock(struct intel_context *ce)
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
