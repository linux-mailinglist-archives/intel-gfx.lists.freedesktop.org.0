Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3465534B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 18:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E0E10E1C0;
	Fri, 23 Dec 2022 17:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com
 [IPv6:2001:4860:4864:20::35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BEE10E1C0;
 Fri, 23 Dec 2022 17:43:10 +0000 (UTC)
Received: by mail-oa1-x35.google.com with SMTP id
 586e51a60fabf-1322d768ba7so6607314fac.5; 
 Fri, 23 Dec 2022 09:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3Gbm3HjHSvO9ZqwIw8l0jkXHXLax5XuWUSm/tD2PIEk=;
 b=Bu95Dssvhnt9eExkuJXddB9NJ3VxVl/UpBOyIJ0Qf2FlUCIGIoctbkY/VuvVPRIBEI
 RDenHukqJ2YtaEdZVK12azK5on6i/tYxucKpk5CqeD83F7p7Pq+QEWIETb8oqj+fAtjI
 wp9GdZBztddgfiz1BO059dA2DB9PQxXUkb0OnVkw09ndN/S5KM2//RTyMR6UiWXNNGQg
 BXOnuV6niTZ/K418E5EE0xMiKP32U+u6wZ2JN2Cg0A7pRJOojPNBbLSVnC33P6f09V5s
 YzBBhXVe2z7gIRvO1UQKXCA5dX0o4LauyazApsdlvkrMKrieaXrrH+4zfqsShxpYwMAM
 OgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3Gbm3HjHSvO9ZqwIw8l0jkXHXLax5XuWUSm/tD2PIEk=;
 b=H4P0XE3GtR6hH4xYe6uS5/ogJVcPzXzhq+EHqb8R4P2mkOMW1U2Xw/10tewNak8jii
 qp4HQtPBADgRgVxUr39XsgLPvab+LcWZWOGHASdQ6a/lYKismTKetYLtBMZieURzmQ49
 +AKYsbyjMJ9Z+qjj8aJwYV/a9SnoDPNa1SQmCZoZEyFZuvPyp93YW28wq3HcCRn4fqXd
 79LxOT/gCKoQo7/ETdzyQ5NnTuk0uxTLAewdzLypqqfH9WMvGQ4RI38yqRKZm9O6niM3
 V1UowpA7L6K6lzTsyfzkhVNeFUlu6IOLdthFaJWXgH7qm37CyWLVLvKGfcF107dW3vJC
 gs0w==
X-Gm-Message-State: AFqh2kpMSDapwRVDgnd1+TdKpurkv74FGY8ob8KJGPVWtKrdTRsEMcuJ
 uFWGiiJXFODwrilyZlYcrAFyi4EWNEb20ojaZbXBqlNZ
X-Google-Smtp-Source: AMrXdXsmlBeiuFaAMIPmwVsP0TGOLwORBH1wc+TsAbUe0V/hyT0zensPvaMGGsqd/oth9AF+5uToGr0/r1btsd32bYQ=
X-Received: by 2002:a05:6870:513:b0:13d:51fe:3404 with SMTP id
 j19-20020a056870051300b0013d51fe3404mr639858oao.183.1671817389270; Fri, 23
 Dec 2022 09:43:09 -0800 (PST)
MIME-Version: 1.0
References: <20221222222127.34560-1-matthew.brost@intel.com>
 <20221222222127.34560-5-matthew.brost@intel.com>
In-Reply-To: <20221222222127.34560-5-matthew.brost@intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 23 Dec 2022 09:42:58 -0800
Message-ID: <CAF6AEGvin1x1xW4GWVtP+exiDeza5EWcChDURgX-9mcqbs8APw@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC PATCH 04/20] drm/sched: Convert drm scheduler
 to use a work queue rather than kthread
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 22, 2022 at 2:29 PM Matthew Brost <matthew.brost@intel.com> wrote:
>
> In XE, the new Intel GPU driver, a choice has made to have a 1 to 1
> mapping between a drm_gpu_scheduler and drm_sched_entity. At first this
> seems a bit odd but let us explain the reasoning below.
>
> 1. In XE the submission order from multiple drm_sched_entity is not
> guaranteed to be the same completion even if targeting the same hardware
> engine. This is because in XE we have a firmware scheduler, the GuC,
> which allowed to reorder, timeslice, and preempt submissions. If a using
> shared drm_gpu_scheduler across multiple drm_sched_entity, the TDR falls
> apart as the TDR expects submission order == completion order. Using a
> dedicated drm_gpu_scheduler per drm_sched_entity solve this problem.
>
> 2. In XE submissions are done via programming a ring buffer (circular
> buffer), a drm_gpu_scheduler provides a limit on number of jobs, if the
> limit of number jobs is set to RING_SIZE / MAX_SIZE_PER_JOB we get flow
> control on the ring for free.
>
> A problem with this design is currently a drm_gpu_scheduler uses a
> kthread for submission / job cleanup. This doesn't scale if a large
> number of drm_gpu_scheduler are used. To work around the scaling issue,
> use a worker rather than kthread for submission / job cleanup.

You might want to enable CONFIG_DRM_MSM in your kconfig, I think you
missed a part

BR,
-R

> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c |  14 +--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c  |  12 +-
>  drivers/gpu/drm/scheduler/sched_main.c      | 124 ++++++++++++--------
>  include/drm/gpu_scheduler.h                 |  13 +-
>  4 files changed, 93 insertions(+), 70 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> index f60753f97ac5..9c2a10aeb0b3 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> @@ -1489,9 +1489,9 @@ static int amdgpu_debugfs_test_ib_show(struct seq_file *m, void *unused)
>         for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
>                 struct amdgpu_ring *ring = adev->rings[i];
>
> -               if (!ring || !ring->sched.thread)
> +               if (!ring || !ring->sched.ready)
>                         continue;
> -               kthread_park(ring->sched.thread);
> +               drm_sched_run_wq_stop(&ring->sched);
>         }
>
>         seq_printf(m, "run ib test:\n");
> @@ -1505,9 +1505,9 @@ static int amdgpu_debugfs_test_ib_show(struct seq_file *m, void *unused)
>         for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
>                 struct amdgpu_ring *ring = adev->rings[i];
>
> -               if (!ring || !ring->sched.thread)
> +               if (!ring || !ring->sched.ready)
>                         continue;
> -               kthread_unpark(ring->sched.thread);
> +               drm_sched_run_wq_start(&ring->sched);
>         }
>
>         up_write(&adev->reset_domain->sem);
> @@ -1727,7 +1727,7 @@ static int amdgpu_debugfs_ib_preempt(void *data, u64 val)
>
>         ring = adev->rings[val];
>
> -       if (!ring || !ring->funcs->preempt_ib || !ring->sched.thread)
> +       if (!ring || !ring->funcs->preempt_ib || !ring->sched.ready)
>                 return -EINVAL;
>
>         /* the last preemption failed */
> @@ -1745,7 +1745,7 @@ static int amdgpu_debugfs_ib_preempt(void *data, u64 val)
>                 goto pro_end;
>
>         /* stop the scheduler */
> -       kthread_park(ring->sched.thread);
> +       drm_sched_run_wq_stop(&ring->sched);
>
>         /* preempt the IB */
>         r = amdgpu_ring_preempt_ib(ring);
> @@ -1779,7 +1779,7 @@ static int amdgpu_debugfs_ib_preempt(void *data, u64 val)
>
>  failure:
>         /* restart the scheduler */
> -       kthread_unpark(ring->sched.thread);
> +       drm_sched_run_wq_start(&ring->sched);
>
>         up_read(&adev->reset_domain->sem);
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 076ae400d099..9552929ccf87 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -4577,7 +4577,7 @@ bool amdgpu_device_has_job_running(struct amdgpu_device *adev)
>         for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                 struct amdgpu_ring *ring = adev->rings[i];
>
> -               if (!ring || !ring->sched.thread)
> +               if (!ring || !ring->sched.ready)
>                         continue;
>
>                 spin_lock(&ring->sched.job_list_lock);
> @@ -4708,7 +4708,7 @@ int amdgpu_device_pre_asic_reset(struct amdgpu_device *adev,
>         for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                 struct amdgpu_ring *ring = adev->rings[i];
>
> -               if (!ring || !ring->sched.thread)
> +               if (!ring || !ring->sched.ready)
>                         continue;
>
>                 /*clear job fence from fence drv to avoid force_completion
> @@ -5247,7 +5247,7 @@ int amdgpu_device_gpu_recover(struct amdgpu_device *adev,
>                 for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                         struct amdgpu_ring *ring = tmp_adev->rings[i];
>
> -                       if (!ring || !ring->sched.thread)
> +                       if (!ring || !ring->sched.ready)
>                                 continue;
>
>                         drm_sched_stop(&ring->sched, job ? &job->base : NULL);
> @@ -5321,7 +5321,7 @@ int amdgpu_device_gpu_recover(struct amdgpu_device *adev,
>                 for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                         struct amdgpu_ring *ring = tmp_adev->rings[i];
>
> -                       if (!ring || !ring->sched.thread)
> +                       if (!ring || !ring->sched.ready)
>                                 continue;
>
>                         drm_sched_start(&ring->sched, true);
> @@ -5648,7 +5648,7 @@ pci_ers_result_t amdgpu_pci_error_detected(struct pci_dev *pdev, pci_channel_sta
>                 for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                         struct amdgpu_ring *ring = adev->rings[i];
>
> -                       if (!ring || !ring->sched.thread)
> +                       if (!ring || !ring->sched.ready)
>                                 continue;
>
>                         drm_sched_stop(&ring->sched, NULL);
> @@ -5776,7 +5776,7 @@ void amdgpu_pci_resume(struct pci_dev *pdev)
>         for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
>                 struct amdgpu_ring *ring = adev->rings[i];
>
> -               if (!ring || !ring->sched.thread)
> +               if (!ring || !ring->sched.ready)
>                         continue;
>
>                 drm_sched_start(&ring->sched, true);
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 27d52ffbb808..8c64045d0692 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -44,7 +44,6 @@
>   * The jobs in a entity are always scheduled in the order that they were pushed.
>   */
>
> -#include <linux/kthread.h>
>  #include <linux/wait.h>
>  #include <linux/sched.h>
>  #include <linux/completion.h>
> @@ -251,6 +250,53 @@ drm_sched_rq_select_entity_fifo(struct drm_sched_rq *rq)
>         return rb ? rb_entry(rb, struct drm_sched_entity, rb_tree_node) : NULL;
>  }
>
> +/**
> + * drm_sched_run_wq_stop - stop scheduler run worker
> + *
> + * @sched: scheduler instance to stop run worker
> + */
> +void drm_sched_run_wq_stop(struct drm_gpu_scheduler *sched)
> +{
> +       sched->pause_run_wq = true;
> +       smp_wmb();
> +
> +       cancel_work_sync(&sched->work_run);
> +}
> +EXPORT_SYMBOL(drm_sched_run_wq_stop);
> +
> +/**
> + * drm_sched_run_wq_start - start scheduler run worker
> + *
> + * @sched: scheduler instance to start run worker
> + */
> +void drm_sched_run_wq_start(struct drm_gpu_scheduler *sched)
> +{
> +       sched->pause_run_wq = false;
> +       smp_wmb();
> +
> +       queue_work(sched->run_wq, &sched->work_run);
> +}
> +EXPORT_SYMBOL(drm_sched_run_wq_start);
> +
> +/**
> + * drm_sched_run_wq_queue - queue scheduler run worker
> + *
> + * @sched: scheduler instance to queue run worker
> + */
> +static void drm_sched_run_wq_queue(struct drm_gpu_scheduler *sched)
> +{
> +       smp_rmb();
> +
> +       /*
> +        * Try not to schedule work if pause_run_wq set but not the end of world
> +        * if we do as either it will be cancelled by the above
> +        * cancel_work_sync, or drm_sched_main turns into a NOP while
> +        * pause_run_wq is set.
> +        */
> +       if (!sched->pause_run_wq)
> +               queue_work(sched->run_wq, &sched->work_run);
> +}
> +
>  /**
>   * drm_sched_job_done - complete a job
>   * @s_job: pointer to the job which is done
> @@ -270,7 +316,7 @@ static void drm_sched_job_done(struct drm_sched_job *s_job)
>         dma_fence_get(&s_fence->finished);
>         drm_sched_fence_finished(s_fence);
>         dma_fence_put(&s_fence->finished);
> -       wake_up_interruptible(&sched->wake_up_worker);
> +       drm_sched_run_wq_queue(sched);
>  }
>
>  /**
> @@ -433,7 +479,7 @@ void drm_sched_stop(struct drm_gpu_scheduler *sched, struct drm_sched_job *bad)
>  {
>         struct drm_sched_job *s_job, *tmp;
>
> -       kthread_park(sched->thread);
> +       drm_sched_run_wq_stop(sched);
>
>         /*
>          * Reinsert back the bad job here - now it's safe as
> @@ -546,7 +592,7 @@ void drm_sched_start(struct drm_gpu_scheduler *sched, bool full_recovery)
>                 spin_unlock(&sched->job_list_lock);
>         }
>
> -       kthread_unpark(sched->thread);
> +       drm_sched_run_wq_start(sched);
>  }
>  EXPORT_SYMBOL(drm_sched_start);
>
> @@ -831,7 +877,7 @@ static bool drm_sched_ready(struct drm_gpu_scheduler *sched)
>  void drm_sched_wakeup(struct drm_gpu_scheduler *sched)
>  {
>         if (drm_sched_ready(sched))
> -               wake_up_interruptible(&sched->wake_up_worker);
> +               drm_sched_run_wq_queue(sched);
>  }
>
>  /**
> @@ -941,60 +987,42 @@ drm_sched_pick_best(struct drm_gpu_scheduler **sched_list,
>  }
>  EXPORT_SYMBOL(drm_sched_pick_best);
>
> -/**
> - * drm_sched_blocked - check if the scheduler is blocked
> - *
> - * @sched: scheduler instance
> - *
> - * Returns true if blocked, otherwise false.
> - */
> -static bool drm_sched_blocked(struct drm_gpu_scheduler *sched)
> -{
> -       if (kthread_should_park()) {
> -               kthread_parkme();
> -               return true;
> -       }
> -
> -       return false;
> -}
> -
>  /**
>   * drm_sched_main - main scheduler thread
>   *
>   * @param: scheduler instance
> - *
> - * Returns 0.
>   */
> -static int drm_sched_main(void *param)
> +static void drm_sched_main(struct work_struct *w)
>  {
> -       struct drm_gpu_scheduler *sched = (struct drm_gpu_scheduler *)param;
> +       struct drm_gpu_scheduler *sched =
> +               container_of(w, struct drm_gpu_scheduler, work_run);
>         int r;
>
> -       sched_set_fifo_low(current);
> -
> -       while (!kthread_should_stop()) {
> -               struct drm_sched_entity *entity = NULL;
> +       while (!READ_ONCE(sched->pause_run_wq)) {
> +               struct drm_sched_entity *entity;
>                 struct drm_sched_fence *s_fence;
>                 struct drm_sched_job *sched_job;
>                 struct dma_fence *fence;
> -               struct drm_sched_job *cleanup_job = NULL;
> +               struct drm_sched_job *cleanup_job;
>
> -               wait_event_interruptible(sched->wake_up_worker,
> -                                        (cleanup_job = drm_sched_get_cleanup_job(sched)) ||
> -                                        (!drm_sched_blocked(sched) &&
> -                                         (entity = drm_sched_select_entity(sched))) ||
> -                                        kthread_should_stop());
> +               cleanup_job = drm_sched_get_cleanup_job(sched);
> +               entity = drm_sched_select_entity(sched);
>
>                 if (cleanup_job)
>                         sched->ops->free_job(cleanup_job);
>
> -               if (!entity)
> +               if (!entity) {
> +                       if (!cleanup_job)
> +                               break;
>                         continue;
> +               }
>
>                 sched_job = drm_sched_entity_pop_job(entity);
>
>                 if (!sched_job) {
>                         complete_all(&entity->entity_idle);
> +                       if (!cleanup_job)
> +                               break;
>                         continue;
>                 }
>
> @@ -1022,14 +1050,14 @@ static int drm_sched_main(void *param)
>                                           r);
>                 } else {
>                         if (IS_ERR(fence))
> -                               dma_fence_set_error(&s_fence->finished, PTR_ERR(fence));
> +                               dma_fence_set_error(&s_fence->finished,
> +                                                   PTR_ERR(fence));
>
>                         drm_sched_job_done(sched_job);
>                 }
>
>                 wake_up(&sched->job_scheduled);
>         }
> -       return 0;
>  }
>
>  /**
> @@ -1054,35 +1082,28 @@ int drm_sched_init(struct drm_gpu_scheduler *sched,
>                    long timeout, struct workqueue_struct *timeout_wq,
>                    atomic_t *score, const char *name, struct device *dev)
>  {
> -       int i, ret;
> +       int i;
>         sched->ops = ops;
>         sched->hw_submission_limit = hw_submission;
>         sched->name = name;
>         sched->timeout = timeout;
>         sched->timeout_wq = timeout_wq ? : system_wq;
> +       sched->run_wq = system_wq;      /* FIXME: Let user pass this in */
>         sched->hang_limit = hang_limit;
>         sched->score = score ? score : &sched->_score;
>         sched->dev = dev;
>         for (i = DRM_SCHED_PRIORITY_MIN; i < DRM_SCHED_PRIORITY_COUNT; i++)
>                 drm_sched_rq_init(sched, &sched->sched_rq[i]);
>
> -       init_waitqueue_head(&sched->wake_up_worker);
>         init_waitqueue_head(&sched->job_scheduled);
>         INIT_LIST_HEAD(&sched->pending_list);
>         spin_lock_init(&sched->job_list_lock);
>         atomic_set(&sched->hw_rq_count, 0);
>         INIT_DELAYED_WORK(&sched->work_tdr, drm_sched_job_timedout);
> +       INIT_WORK(&sched->work_run, drm_sched_main);
>         atomic_set(&sched->_score, 0);
>         atomic64_set(&sched->job_id_count, 0);
> -
> -       /* Each scheduler will run on a seperate kernel thread */
> -       sched->thread = kthread_run(drm_sched_main, sched, sched->name);
> -       if (IS_ERR(sched->thread)) {
> -               ret = PTR_ERR(sched->thread);
> -               sched->thread = NULL;
> -               DRM_DEV_ERROR(sched->dev, "Failed to create scheduler for %s.\n", name);
> -               return ret;
> -       }
> +       sched->pause_run_wq = false;
>
>         sched->ready = true;
>         return 0;
> @@ -1101,8 +1122,7 @@ void drm_sched_fini(struct drm_gpu_scheduler *sched)
>         struct drm_sched_entity *s_entity;
>         int i;
>
> -       if (sched->thread)
> -               kthread_stop(sched->thread);
> +       drm_sched_run_wq_stop(sched);
>
>         for (i = DRM_SCHED_PRIORITY_COUNT - 1; i >= DRM_SCHED_PRIORITY_MIN; i--) {
>                 struct drm_sched_rq *rq = &sched->sched_rq[i];
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index ca857ec9e7eb..ff50f3c289cd 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -456,17 +456,16 @@ struct drm_sched_backend_ops {
>   * @timeout: the time after which a job is removed from the scheduler.
>   * @name: name of the ring for which this scheduler is being used.
>   * @sched_rq: priority wise array of run queues.
> - * @wake_up_worker: the wait queue on which the scheduler sleeps until a job
> - *                  is ready to be scheduled.
>   * @job_scheduled: once @drm_sched_entity_do_release is called the scheduler
>   *                 waits on this wait queue until all the scheduled jobs are
>   *                 finished.
>   * @hw_rq_count: the number of jobs currently in the hardware queue.
>   * @job_id_count: used to assign unique id to the each job.
> + * @run_wq: workqueue used to queue @work_run
>   * @timeout_wq: workqueue used to queue @work_tdr
> + * @work_run: schedules jobs and cleans up entities
>   * @work_tdr: schedules a delayed call to @drm_sched_job_timedout after the
>   *            timeout interval is over.
> - * @thread: the kthread on which the scheduler which run.
>   * @pending_list: the list of jobs which are currently in the job queue.
>   * @job_list_lock: lock to protect the pending_list.
>   * @hang_limit: once the hangs by a job crosses this limit then it is marked
> @@ -475,6 +474,7 @@ struct drm_sched_backend_ops {
>   * @_score: score used when the driver doesn't provide one
>   * @ready: marks if the underlying HW is ready to work
>   * @free_guilty: A hit to time out handler to free the guilty job.
> + * @pause_run_wq: pause queuing of @work_run on @run_wq
>   * @dev: system &struct device
>   *
>   * One scheduler is implemented for each hardware ring.
> @@ -485,13 +485,13 @@ struct drm_gpu_scheduler {
>         long                            timeout;
>         const char                      *name;
>         struct drm_sched_rq             sched_rq[DRM_SCHED_PRIORITY_COUNT];
> -       wait_queue_head_t               wake_up_worker;
>         wait_queue_head_t               job_scheduled;
>         atomic_t                        hw_rq_count;
>         atomic64_t                      job_id_count;
> +       struct workqueue_struct         *run_wq;
>         struct workqueue_struct         *timeout_wq;
> +       struct work_struct              work_run;
>         struct delayed_work             work_tdr;
> -       struct task_struct              *thread;
>         struct list_head                pending_list;
>         spinlock_t                      job_list_lock;
>         int                             hang_limit;
> @@ -499,6 +499,7 @@ struct drm_gpu_scheduler {
>         atomic_t                        _score;
>         bool                            ready;
>         bool                            free_guilty;
> +       bool                            pause_run_wq;
>         struct device                   *dev;
>  };
>
> @@ -529,6 +530,8 @@ void drm_sched_entity_modify_sched(struct drm_sched_entity *entity,
>
>  void drm_sched_job_cleanup(struct drm_sched_job *job);
>  void drm_sched_wakeup(struct drm_gpu_scheduler *sched);
> +void drm_sched_run_wq_stop(struct drm_gpu_scheduler *sched);
> +void drm_sched_run_wq_start(struct drm_gpu_scheduler *sched);
>  void drm_sched_stop(struct drm_gpu_scheduler *sched, struct drm_sched_job *bad);
>  void drm_sched_start(struct drm_gpu_scheduler *sched, bool full_recovery);
>  void drm_sched_resubmit_jobs(struct drm_gpu_scheduler *sched);
> --
> 2.37.3
>
