Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6486D3C6479
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC42C89DEC;
	Mon, 12 Jul 2021 20:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAAF89DC7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:04 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 u8-20020a7bcb080000b02901e44e9caa2aso787814wmj.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xraq1MM4Ot5KTmJFQcbsNY3hYSxDwT5IozJmWWpmH4k=;
 b=g8kMCVOucIJ+CKjZ6PhblT60JzvICur2GWR2yght9ioWEqUqP2YMIdjW/9KcPSlteN
 gqXTKM6XxC1AWjWzSRZGAnQtHBGHZTmuZwgtVQMaqiAnnLIXvWvDSTyk8Occ0UFlskPO
 sRUicLWwzB2S4akOrLIOCbX9LfumCH3FfOz10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xraq1MM4Ot5KTmJFQcbsNY3hYSxDwT5IozJmWWpmH4k=;
 b=M7pS9YlMxfQyQVdN9V6MRVGiXY2VfqxTVIhsYxtjRpSnl+NvWnewdZPRD0rI/r1TIQ
 8bUrK2zekgjBlNZtwbfWCM/kFL3zLH01KAgsz9IbLCOz8D1X+Mfjw8vje2ARfWE88E03
 uS8MoTzEsdQnYfC7GvR5B172eIKrCK9vb4ZmQHZHFZ2Ay9RSQrakh6nPctGaWyhE3Ks0
 +J5V8sEFY0bHGHUUn94y9PG3otoVPjcTJQ5dwrpBFHjcMOmKvfs2jZmvSUdVHtIfwa75
 tkMnFoMIVsOtsVVaB4o1QMmIKMxARBtQDARqZbB4yjfeTLkIACUbax0JQnee3I4jEzz5
 NYSw==
X-Gm-Message-State: AOAM533wuBEotJdrS2ZhRSYMA8zwu9P0T/r/EchZZe+04RVzj8qTQ3mR
 6fgaZ8/Rt5CbrIN9jeparALBzw==
X-Google-Smtp-Source: ABdhPJwECSpnAZjdXD5ZJaQVwNFrUwJmOFyrTpyGfpT0OrJOoKhvZlzligLy9o1s7MQfExdumK2MOA==
X-Received: by 2002:a1c:7201:: with SMTP id n1mr16653630wmc.4.1626120123387;
 Mon, 12 Jul 2021 13:02:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:39 +0200
Message-Id: <20210712175352.802687-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 05/18] drm/sched: improve docs around
 drm_sched_entity
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I found a few too many things that are tricky and not documented, so I
started typing.

I found a few more things that looked broken while typing, see the
varios FIXME in drm_sched_entity.

Also some of the usual logics:
- actually include sched_entity.c declarations, that was lost in the
  move here: 620e762f9a98 ("drm/scheduler: move entity handling into
  separate file")

- Ditch the kerneldoc for internal functions, keep the comments where
  they're describing more than what the function name already implies.

- Switch drm_sched_entity to inline docs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/drm-mm.rst             |   3 +
 drivers/gpu/drm/scheduler/sched_entity.c |  85 ++++---------
 include/drm/gpu_scheduler.h              | 145 ++++++++++++++++++-----
 3 files changed, 146 insertions(+), 87 deletions(-)

diff --git a/Documentation/gpu/drm-mm.rst b/Documentation/gpu/drm-mm.rst
index d5a73fa2c9ef..0198fa43d254 100644
--- a/Documentation/gpu/drm-mm.rst
+++ b/Documentation/gpu/drm-mm.rst
@@ -504,3 +504,6 @@ Scheduler Function References
 
 .. kernel-doc:: drivers/gpu/drm/scheduler/sched_main.c
    :export:
+
+.. kernel-doc:: drivers/gpu/drm/scheduler/sched_entity.c
+   :export:
diff --git a/drivers/gpu/drm/scheduler/sched_entity.c b/drivers/gpu/drm/scheduler/sched_entity.c
index e4d33db1eb45..27e1573af96e 100644
--- a/drivers/gpu/drm/scheduler/sched_entity.c
+++ b/drivers/gpu/drm/scheduler/sched_entity.c
@@ -45,8 +45,14 @@
  * @guilty: atomic_t set to 1 when a job on this queue
  *          is found to be guilty causing a timeout
  *
- * Note: the sched_list should have at least one element to schedule
- *       the entity
+ * Note that the &sched_list must have at least one element to schedule the entity.
+ *
+ * For changing @priority later on at runtime see
+ * drm_sched_entity_set_priority(). For changing the set of schedulers
+ * @sched_list at runtime see drm_sched_entity_modify_sched().
+ *
+ * An entity is cleaned up by callind drm_sched_entity_fini(). See also
+ * drm_sched_entity_destroy().
  *
  * Returns 0 on success or a negative error code on failure.
  */
@@ -92,6 +98,11 @@ EXPORT_SYMBOL(drm_sched_entity_init);
  * @sched_list: the list of new drm scheds which will replace
  *		 existing entity->sched_list
  * @num_sched_list: number of drm sched in sched_list
+ *
+ * Note that this must be called under the same common lock for @entity as
+ * drm_sched_job_arm() and drm_sched_entity_push_job(), or the driver needs to
+ * guarantee through some other means that this is never called while new jobs
+ * can be pushed to @entity.
  */
 void drm_sched_entity_modify_sched(struct drm_sched_entity *entity,
 				    struct drm_gpu_scheduler **sched_list,
@@ -104,13 +115,6 @@ void drm_sched_entity_modify_sched(struct drm_sched_entity *entity,
 }
 EXPORT_SYMBOL(drm_sched_entity_modify_sched);
 
-/**
- * drm_sched_entity_is_idle - Check if entity is idle
- *
- * @entity: scheduler entity
- *
- * Returns true if the entity does not have any unscheduled jobs.
- */
 static bool drm_sched_entity_is_idle(struct drm_sched_entity *entity)
 {
 	rmb(); /* for list_empty to work without lock */
@@ -123,13 +127,7 @@ static bool drm_sched_entity_is_idle(struct drm_sched_entity *entity)
 	return false;
 }
 
-/**
- * drm_sched_entity_is_ready - Check if entity is ready
- *
- * @entity: scheduler entity
- *
- * Return true if entity could provide a job.
- */
+/* Return true if entity could provide a job. */
 bool drm_sched_entity_is_ready(struct drm_sched_entity *entity)
 {
 	if (spsc_queue_peek(&entity->job_queue) == NULL)
@@ -192,14 +190,7 @@ long drm_sched_entity_flush(struct drm_sched_entity *entity, long timeout)
 }
 EXPORT_SYMBOL(drm_sched_entity_flush);
 
-/**
- * drm_sched_entity_kill_jobs_cb - helper for drm_sched_entity_kill_jobs
- *
- * @f: signaled fence
- * @cb: our callback structure
- *
- * Signal the scheduler finished fence when the entity in question is killed.
- */
+/* Signal the scheduler finished fence when the entity in question is killed. */
 static void drm_sched_entity_kill_jobs_cb(struct dma_fence *f,
 					  struct dma_fence_cb *cb)
 {
@@ -224,14 +215,6 @@ drm_sched_job_dependency(struct drm_sched_job *job,
 	return NULL;
 }
 
-/**
- * drm_sched_entity_kill_jobs - Make sure all remaining jobs are killed
- *
- * @entity: entity which is cleaned up
- *
- * Makes sure that all remaining jobs in an entity are killed before it is
- * destroyed.
- */
 static void drm_sched_entity_kill_jobs(struct drm_sched_entity *entity)
 {
 	struct drm_sched_job *job;
@@ -273,9 +256,11 @@ static void drm_sched_entity_kill_jobs(struct drm_sched_entity *entity)
  *
  * @entity: scheduler entity
  *
- * This should be called after @drm_sched_entity_do_release. It goes over the
- * entity and signals all jobs with an error code if the process was killed.
+ * Cleanups up @entity which has been initialized by drm_sched_entity_init().
  *
+ * If there are potentially job still in flight or getting newly queued
+ * drm_sched_entity_flush() must be called first. This function then goes over
+ * the entity and signals all jobs with an error code if the process was killed.
  */
 void drm_sched_entity_fini(struct drm_sched_entity *entity)
 {
@@ -315,10 +300,10 @@ EXPORT_SYMBOL(drm_sched_entity_fini);
 
 /**
  * drm_sched_entity_destroy - Destroy a context entity
- *
  * @entity: scheduler entity
  *
- * Calls drm_sched_entity_do_release() and drm_sched_entity_cleanup()
+ * Calls drm_sched_entity_flush() and drm_sched_entity_fini() as a
+ * convenience wrapper.
  */
 void drm_sched_entity_destroy(struct drm_sched_entity *entity)
 {
@@ -327,9 +312,7 @@ void drm_sched_entity_destroy(struct drm_sched_entity *entity)
 }
 EXPORT_SYMBOL(drm_sched_entity_destroy);
 
-/*
- * drm_sched_entity_clear_dep - callback to clear the entities dependency
- */
+/* drm_sched_entity_clear_dep - callback to clear the entities dependency */
 static void drm_sched_entity_clear_dep(struct dma_fence *f,
 				       struct dma_fence_cb *cb)
 {
@@ -371,11 +354,7 @@ void drm_sched_entity_set_priority(struct drm_sched_entity *entity,
 }
 EXPORT_SYMBOL(drm_sched_entity_set_priority);
 
-/**
- * drm_sched_entity_add_dependency_cb - add callback for the entities dependency
- *
- * @entity: entity with dependency
- *
+/*
  * Add a callback to the current dependency of the entity to wake up the
  * scheduler when the entity becomes available.
  */
@@ -423,13 +402,6 @@ static bool drm_sched_entity_add_dependency_cb(struct drm_sched_entity *entity)
 	return false;
 }
 
-/**
- * drm_sched_entity_pop_job - get a ready to be scheduled job from the entity
- *
- * @entity: entity to get the job from
- *
- * Process all dependencies and try to get one job from the entities queue.
- */
 struct drm_sched_job *drm_sched_entity_pop_job(struct drm_sched_entity *entity)
 {
 	struct drm_sched_job *sched_job;
@@ -465,14 +437,6 @@ struct drm_sched_job *drm_sched_entity_pop_job(struct drm_sched_entity *entity)
 	return sched_job;
 }
 
-/**
- * drm_sched_entity_select_rq - select a new rq for the entity
- *
- * @entity: scheduler entity
- *
- * Check all prerequisites and select a new rq for the entity for load
- * balancing.
- */
 void drm_sched_entity_select_rq(struct drm_sched_entity *entity)
 {
 	struct dma_fence *fence;
@@ -520,7 +484,8 @@ void drm_sched_entity_select_rq(struct drm_sched_entity *entity)
  *
  * Note: To guarantee that the order of insertion to queue matches the job's
  * fence sequence number this function should be called with drm_sched_job_arm()
- * under common lock.
+ * under common lock for the struct drm_sched_entity that was set up for
+ * @sched_job in drm_sched_job_init().
  *
  * Returns 0 for success, negative error code otherwise.
  */
diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
index 2bb1869f2352..4451336bc758 100644
--- a/include/drm/gpu_scheduler.h
+++ b/include/drm/gpu_scheduler.h
@@ -53,56 +53,147 @@ enum drm_sched_priority {
  * struct drm_sched_entity - A wrapper around a job queue (typically
  * attached to the DRM file_priv).
  *
- * @list: used to append this struct to the list of entities in the
- *        runqueue.
- * @rq: runqueue on which this entity is currently scheduled.
- * @sched_list: A list of schedulers (drm_gpu_schedulers).
- *              Jobs from this entity can be scheduled on any scheduler
- *              on this list.
- * @num_sched_list: number of drm_gpu_schedulers in the sched_list.
- * @priority: priority of the entity
- * @rq_lock: lock to modify the runqueue to which this entity belongs.
- * @job_queue: the list of jobs of this entity.
- * @fence_seq: a linearly increasing seqno incremented with each
- *             new &drm_sched_fence which is part of the entity.
- * @fence_context: a unique context for all the fences which belong
- *                 to this entity.
- *                 The &drm_sched_fence.scheduled uses the
- *                 fence_context but &drm_sched_fence.finished uses
- *                 fence_context + 1.
- * @dependency: the dependency fence of the job which is on the top
- *              of the job queue.
- * @cb: callback for the dependency fence above.
- * @guilty: points to ctx's guilty.
- * @fini_status: contains the exit status in case the process was signalled.
- * @last_scheduled: points to the finished fence of the last scheduled job.
- * @last_user: last group leader pushing a job into the entity.
- * @stopped: Marks the enity as removed from rq and destined for termination.
- * @entity_idle: Signals when enityt is not in use
- *
  * Entities will emit jobs in order to their corresponding hardware
  * ring, and the scheduler will alternate between entities based on
  * scheduling policy.
  */
 struct drm_sched_entity {
+	/**
+	 * @list:
+	 *
+	 * Used to append this struct to the list of entities in the runqueue
+	 * @rq under &drm_sched_rq.entities.
+	 *
+	 * Protected by &drm_sched_rq.lock of @rq.
+	 */
 	struct list_head		list;
+
+	/**
+	 * @rq:
+	 *
+	 * Runqueue on which this entity is currently scheduled.
+	 *
+	 * FIXME: Locking is very unclear for this. Writers are protected by
+	 * @rq_lock, but readers are generally lockless and seem to just race
+	 * with not even a READ_ONCE.
+	 */
 	struct drm_sched_rq		*rq;
+
+	/**
+	 * @sched_list:
+	 *
+	 * A list of schedulers (struct drm_gpu_scheduler).  Jobs from this entity can
+	 * be scheduled on any scheduler on this list.
+	 *
+	 * This can be modified by calling drm_sched_entity_modify_sched().
+	 * Locking is entirely up to the driver, see the above function for more
+	 * details.
+	 *
+	 * This will be set to NULL if &num_sched_list equals 1 and @rq has been
+	 * set already.
+	 *
+	 * FIXME: This means priority changes through
+	 * drm_sched_entity_set_priority() will be lost henceforth in this case.
+	 */
 	struct drm_gpu_scheduler        **sched_list;
+
+	/**
+	 * @num_sched_list:
+	 *
+	 * Number of drm_gpu_schedulers in the @sched_list.
+	 */
 	unsigned int                    num_sched_list;
+
+	/**
+	 * @priority:
+	 *
+	 * Priority of the entity. This can be modified by calling
+	 * drm_sched_entity_set_priority(). Protected by &rq_lock.
+	 */
 	enum drm_sched_priority         priority;
+
+	/**
+	 * @rq_lock:
+	 *
+	 * Lock to modify the runqueue to which this entity belongs.
+	 */
 	spinlock_t			rq_lock;
 
+	/**
+	 * @job_queue: the list of jobs of this entity.
+	 */
 	struct spsc_queue		job_queue;
 
+	/**
+	 * @fence_seq:
+	 *
+	 * A linearly increasing seqno incremented with each new
+	 * &drm_sched_fence which is part of the entity.
+	 *
+	 * FIXME: Callers of drm_sched_job_arm() need to ensure correct locking,
+	 * this doesn't need to be atomic.
+	 */
 	atomic_t			fence_seq;
+
+	/**
+	 * @fence_context:
+	 *
+	 * A unique context for all the fences which belong to this entity.  The
+	 * &drm_sched_fence.scheduled uses the fence_context but
+	 * &drm_sched_fence.finished uses fence_context + 1.
+	 */
 	uint64_t			fence_context;
 
+	/**
+	 * @dependency:
+	 *
+	 * The dependency fence of the job which is on the top of the job queue.
+	 */
 	struct dma_fence		*dependency;
+
+	/**
+	 * @cb:
+	 *
+	 * Callback for the dependency fence above.
+	 */
 	struct dma_fence_cb		cb;
+
+	/**
+	 * @guilty:
+	 *
+	 * Points to entities' guilty.
+	 */
 	atomic_t			*guilty;
+
+	/**
+	 * @last_scheduled:
+	 *
+	 * Points to the finished fence of the last scheduled job. Only written
+	 * by the scheduler thread, can be accessed locklessly from
+	 * drm_sched_job_arm() iff the queue is empty.
+	 */
 	struct dma_fence                *last_scheduled;
+
+	/**
+	 * @last_user: last group leader pushing a job into the entity.
+	 */
 	struct task_struct		*last_user;
+
+	/**
+	 * @stopped:
+	 *
+	 * Marks the enity as removed from rq and destined for
+	 * termination. This is set by calling drm_sched_entity_flush() and by
+	 * drm_sched_fini().
+	 */
 	bool 				stopped;
+
+	/**
+	 * @entity_idle:
+	 *
+	 * Signals when entity is not in use, used to sequence entity cleanup in
+	 * drm_sched_entity_fini().
+	 */
 	struct completion		entity_idle;
 };
 
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
