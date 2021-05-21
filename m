Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DAA38C980
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 16:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 917156E152;
	Fri, 21 May 2021 14:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74676E152
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 14:49:05 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 n17-20020a7bc5d10000b0290169edfadac9so7585717wmk.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 07:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+mcIKTei4IpD01Jdmi7OhRPrbVaGzeTO4mJXe5DTMf4=;
 b=DiuF60D/AW3A2SJK3NEy+/hFcf8GKdrdMw9uGTtrvaTFTJ55H5paZbYVnDO0nLuQhE
 caxlK+BL3JDQEeWfoBBMVSIQrTc+NpdO28pnu5mxRTknLpIx7wXh5Q6LPeBe+GRlLVO+
 8yInunxg7NoKH+HXbggrt62goIxNCinpYq/Lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+mcIKTei4IpD01Jdmi7OhRPrbVaGzeTO4mJXe5DTMf4=;
 b=tPFtHxXNoPh9qga1wz91ApIA6lgi8vrTpMNlhT1jsUrj8B8wcCFiLxYL15Ah3tvQ8x
 FU5tTCQBVYQEgpPHbmm6x65xQtn4O9W73HSQoVT0j39AqM9pA/q+4G9da+/tHMh3Kez/
 CDL6jAHUpWJ73EkznMQHyMgs8iOLif64HbBCrW1V0NXlfYTiTg/CI/E5gmP+CgRzONCB
 SOyUdRD8lwj8OMw/ZPxQ9kw7nn7p2+pu9qaDbTc5rYkyUtagAXImeQHwHeNcB5sLNDJ9
 GEKlS2RewSowsH9i9iZ1fhyFDnmoaBuQEdZlNnISSFf+nUL5So6iACERm0NaSKyk2xZ9
 m60A==
X-Gm-Message-State: AOAM530prpOiQVfyl80irDZKJBT3t1FH52KJG4EWtdHfU866OmJ90Inf
 97x/NpANP3B+omXvVr29xGeVfQ==
X-Google-Smtp-Source: ABdhPJzajKZRmtEvc+Z6pvT30yUE8NQp0jFepxbyaPHcqhZDtx6Xnws9MKeHWGJbKjGpUf+Uyq9hXQ==
X-Received: by 2002:a7b:cc15:: with SMTP id f21mr9638322wmh.86.1621608544464; 
 Fri, 21 May 2021 07:49:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x16sm2429642wrp.6.2021.05.21.07.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 07:49:03 -0700 (PDT)
Date: Fri, 21 May 2021 16:49:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas Stach <l.stach@pengutronix.de>
Message-ID: <YKfIXdZbWVk1NQxD@phenom.ffwll.local>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-2-daniel.vetter@ffwll.ch>
 <066b1c490a1251113fbcf7f2270654be25be4f29.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <066b1c490a1251113fbcf7f2270654be25be4f29.camel@pengutronix.de>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/panfrost: Remove sched_lock
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 21, 2021 at 11:32:48AM +0200, Lucas Stach wrote:
> Am Freitag, dem 21.05.2021 um 11:09 +0200 schrieb Daniel Vetter:
> > Scheduler takes care of its own locking, dont worry. For everything else
> > there's reservation locking on each bo.
> > 
> > So seems to be entirely redundnant and just a bit in the way.
> 
> I haven't read all the surrounding code, but this looks wrong from a
> glance. You must hold a lock across drm_sched_job_init ->
> drm_sched_entity_push_job as the scheduler fences are initialized in
> the job init, so if there's no exclusive section across those two
> function calls you might end up with jobs being queued with their fence
> seqnos not monotonically increasing, which breaks all kinds of other
> stuff.

Uh indeed. That's a bit a loaded gun since generally _init() shouldn't
have any such side effects.

> I don't see a reason to hold the lock across the reservation calls,
> though.

Ok I'll adjust the patch.
-Daniel

> 
> Regards,
> Lucas
> 
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > Cc: Steven Price <steven.price@arm.com>
> > Cc: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > ---
> >  drivers/gpu/drm/panfrost/panfrost_device.c |  1 -
> >  drivers/gpu/drm/panfrost/panfrost_device.h |  2 --
> >  drivers/gpu/drm/panfrost/panfrost_job.c    | 13 ++-----------
> >  3 files changed, 2 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> > index 125ed973feaa..23070c01c63f 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> > @@ -199,7 +199,6 @@ int panfrost_device_init(struct panfrost_device *pfdev)
> >  	int err;
> >  	struct resource *res;
> >  
> > -	mutex_init(&pfdev->sched_lock);
> >  	INIT_LIST_HEAD(&pfdev->scheduled_jobs);
> >  	INIT_LIST_HEAD(&pfdev->as_lru_list);
> >  
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
> > index 597cf1459b0a..7519903bb031 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> > @@ -105,8 +105,6 @@ struct panfrost_device {
> >  
> >  	struct panfrost_perfcnt *perfcnt;
> >  
> > -	struct mutex sched_lock;
> > -
> >  	struct {
> >  		struct work_struct work;
> >  		atomic_t pending;
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_job.c b/drivers/gpu/drm/panfrost/panfrost_job.c
> > index 6003cfeb1322..f5d39ee14ab5 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_job.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_job.c
> > @@ -218,26 +218,19 @@ static void panfrost_attach_object_fences(struct drm_gem_object **bos,
> >  
> >  int panfrost_job_push(struct panfrost_job *job)
> >  {
> > -	struct panfrost_device *pfdev = job->pfdev;
> >  	int slot = panfrost_job_get_slot(job);
> >  	struct drm_sched_entity *entity = &job->file_priv->sched_entity[slot];
> >  	struct ww_acquire_ctx acquire_ctx;
> >  	int ret = 0;
> >  
> > -	mutex_lock(&pfdev->sched_lock);
> > -
> >  	ret = drm_gem_lock_reservations(job->bos, job->bo_count,
> >  					    &acquire_ctx);
> > -	if (ret) {
> > -		mutex_unlock(&pfdev->sched_lock);
> > +	if (ret)
> >  		return ret;
> > -	}
> >  
> >  	ret = drm_sched_job_init(&job->base, entity, NULL);
> > -	if (ret) {
> > -		mutex_unlock(&pfdev->sched_lock);
> > +	if (ret)
> >  		goto unlock;
> > -	}
> >  
> >  	job->render_done_fence = dma_fence_get(&job->base.s_fence->finished);
> >  
> > @@ -248,8 +241,6 @@ int panfrost_job_push(struct panfrost_job *job)
> >  
> >  	drm_sched_entity_push_job(&job->base, entity);
> >  
> > -	mutex_unlock(&pfdev->sched_lock);
> > -
> >  	panfrost_attach_object_fences(job->bos, job->bo_count,
> >  				      job->render_done_fence);
> >  
> 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
