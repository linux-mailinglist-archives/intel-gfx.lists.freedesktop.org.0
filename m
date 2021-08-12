Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E73A3EAAF3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 21:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927DD6E450;
	Thu, 12 Aug 2021 19:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59E96E450
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 19:28:14 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id x10so3514359wrt.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 12:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zQc5Xq0ndIRpgKH8ghD8CcpcMwMivDHL9fVBcQMh8YI=;
 b=Txj5PMLCQzEaiL5VP9XFbfZEfGFW8a92aEJuMiuEBU16ocYEhp1opugyO9eDpFciIE
 ZlL/jggYQqHWMqdaHm2q06oI1LJmx56SytQogrQlnD1sdIh+OEwstRRmRWV4O4gjPQLA
 Hk65sdIdfJPtAqTBVj7k2YpFIoJ0TCkwkquqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zQc5Xq0ndIRpgKH8ghD8CcpcMwMivDHL9fVBcQMh8YI=;
 b=JtjgTaKYuM7QzTgox9cN8ed5/UQxPSOVoztBAl/r8B/jlajILUPR6imUB8e7WxUvMv
 XF0FCyYRk+NBJ9Y9qv54a8y/5Gm8A8VJU/aqLpH+0AO2OtZIhNuv0FUQorVLcTo5QQTZ
 v8IttrFBTYHWMKEQU/GvuMhXXh0trf8TztXVITlZnfIn93GDS6n81exGxtxSvnEmLV+k
 PGC2L5ViI9FCUepy/xH12wmbV8G3hQvB5wO3i2esx94HwWKnZlZfI50SLxWgg78CAoYS
 7dGlje+t7+/guzYxyOV/4nICBRmsvYv77dFPh7/qICCinSkkqH7R7oT9VFQSvtE7dd08
 NsRg==
X-Gm-Message-State: AOAM530Y05HTnLGukN+SupN3UeOTxIADgFON+6cUdm0mL//v0Z9IBmTQ
 xopYllOi9jLKxLa4KCMfXcl7tg==
X-Google-Smtp-Source: ABdhPJxbk6lUfPYBtitJTGKWp+uNV4BEkm19ABgyYmwl3SPKqhTtE8vs0geO51IqJ6EU7krY5z5aXQ==
X-Received: by 2002:adf:ef85:: with SMTP id d5mr5725537wro.372.1628796493353; 
 Thu, 12 Aug 2021 12:28:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y3sm3822669wma.32.2021.08.12.12.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 12:28:12 -0700 (PDT)
Date: Thu, 12 Aug 2021 21:28:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 lima@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Message-ID: <YRV2ShnIbOyaHG8X@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-9-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210805104705.862416-9-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v5 08/20] drm/lima: use scheduler dependency
 tracking
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

On Thu, Aug 05, 2021 at 12:46:53PM +0200, Daniel Vetter wrote:
> Nothing special going on here.
> 
> Aside reviewing the code, it seems like drm_sched_job_arm() should be
> moved into lima_sched_context_queue_task and put under some mutex
> together with drm_sched_push_job(). See the kerneldoc for
> drm_sched_push_job().
> 
> v2: Rebase over renamed functions to add dependencies.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Qiang Yu <yuq825@gmail.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K�nig" <christian.koenig@amd.com>
> Cc: lima@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Ping for an ack here please. Testing would be even better ofc.
-Daniel

> ---
>  drivers/gpu/drm/lima/lima_gem.c   |  6 ++++--
>  drivers/gpu/drm/lima/lima_sched.c | 21 ---------------------
>  drivers/gpu/drm/lima/lima_sched.h |  3 ---
>  3 files changed, 4 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
> index c528f40981bb..640acc060467 100644
> --- a/drivers/gpu/drm/lima/lima_gem.c
> +++ b/drivers/gpu/drm/lima/lima_gem.c
> @@ -267,7 +267,9 @@ static int lima_gem_sync_bo(struct lima_sched_task *task, struct lima_bo *bo,
>  	if (explicit)
>  		return 0;
>  
> -	return drm_gem_fence_array_add_implicit(&task->deps, &bo->base.base, write);
> +	return drm_sched_job_add_implicit_dependencies(&task->base,
> +						       &bo->base.base,
> +						       write);
>  }
>  
>  static int lima_gem_add_deps(struct drm_file *file, struct lima_submit *submit)
> @@ -285,7 +287,7 @@ static int lima_gem_add_deps(struct drm_file *file, struct lima_submit *submit)
>  		if (err)
>  			return err;
>  
> -		err = drm_gem_fence_array_add(&submit->task->deps, fence);
> +		err = drm_sched_job_add_dependency(&submit->task->base, fence);
>  		if (err) {
>  			dma_fence_put(fence);
>  			return err;
> diff --git a/drivers/gpu/drm/lima/lima_sched.c b/drivers/gpu/drm/lima/lima_sched.c
> index e968b5a8f0b0..99d5f6f1a882 100644
> --- a/drivers/gpu/drm/lima/lima_sched.c
> +++ b/drivers/gpu/drm/lima/lima_sched.c
> @@ -134,24 +134,15 @@ int lima_sched_task_init(struct lima_sched_task *task,
>  	task->num_bos = num_bos;
>  	task->vm = lima_vm_get(vm);
>  
> -	xa_init_flags(&task->deps, XA_FLAGS_ALLOC);
> -
>  	return 0;
>  }
>  
>  void lima_sched_task_fini(struct lima_sched_task *task)
>  {
> -	struct dma_fence *fence;
> -	unsigned long index;
>  	int i;
>  
>  	drm_sched_job_cleanup(&task->base);
>  
> -	xa_for_each(&task->deps, index, fence) {
> -		dma_fence_put(fence);
> -	}
> -	xa_destroy(&task->deps);
> -
>  	if (task->bos) {
>  		for (i = 0; i < task->num_bos; i++)
>  			drm_gem_object_put(&task->bos[i]->base.base);
> @@ -186,17 +177,6 @@ struct dma_fence *lima_sched_context_queue_task(struct lima_sched_task *task)
>  	return fence;
>  }
>  
> -static struct dma_fence *lima_sched_dependency(struct drm_sched_job *job,
> -					       struct drm_sched_entity *entity)
> -{
> -	struct lima_sched_task *task = to_lima_task(job);
> -
> -	if (!xa_empty(&task->deps))
> -		return xa_erase(&task->deps, task->last_dep++);
> -
> -	return NULL;
> -}
> -
>  static int lima_pm_busy(struct lima_device *ldev)
>  {
>  	int ret;
> @@ -472,7 +452,6 @@ static void lima_sched_free_job(struct drm_sched_job *job)
>  }
>  
>  static const struct drm_sched_backend_ops lima_sched_ops = {
> -	.dependency = lima_sched_dependency,
>  	.run_job = lima_sched_run_job,
>  	.timedout_job = lima_sched_timedout_job,
>  	.free_job = lima_sched_free_job,
> diff --git a/drivers/gpu/drm/lima/lima_sched.h b/drivers/gpu/drm/lima/lima_sched.h
> index ac70006b0e26..6a11764d87b3 100644
> --- a/drivers/gpu/drm/lima/lima_sched.h
> +++ b/drivers/gpu/drm/lima/lima_sched.h
> @@ -23,9 +23,6 @@ struct lima_sched_task {
>  	struct lima_vm *vm;
>  	void *frame;
>  
> -	struct xarray deps;
> -	unsigned long last_dep;
> -
>  	struct lima_bo **bos;
>  	int num_bos;
>  
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
