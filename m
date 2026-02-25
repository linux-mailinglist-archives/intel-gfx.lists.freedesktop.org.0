Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJFWGvD2nmm+YAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:19:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B867197EC2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0612410E355;
	Wed, 25 Feb 2026 13:19:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="eLksdrEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00A610E355
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 13:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1772025575;
 bh=/NEH2xisz7dampAPL10eFEUpis9QQlCFzJ4MkLP/ARk=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=eLksdrErN7v935pRhHGvkerVvpXlF/9wM540F3CtVTm/3PZyq6INAVx/tG32pEMeu
 oFp2SFN6PQnNjiHTW7nyN1/SDRNxHrm6bT/yuuS6SsSLP+Gz2q958x0adjxoAyXGnO
 CTknUsas9IyTHgC42UJWlQtNRdYdDTnhRibNAKO8ziqQYyWWg7np/BIzG6ZZxQuP1z
 aI9M6vqM5ZqDLvI6oSjBiW+aEpMwUpoTBZwraCLDG2LEca27/vvtCeb2OcCJxvC6Fy
 /44/zrKlOJl/FBvGGwYzPSCXf2Sm5cG6e8yYABbt6uP3R9DHnPR7LLQ+AKE9+911TW
 Xpcm7LY5Uj4kg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Subject: [i915-ci-only NO-REVIEW 01/25] drm/vblank_work: Add methods to
 schedule vblank_work in 2 stages
Date: Wed, 25 Feb 2026 14:19:05 +0100
Message-ID: <20260225131931.60724-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260225131931.60724-1-dev@lankhorst.se>
References: <20260225131931.60724-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:mid,lankhorst.se:dkim,lankhorst.se:email];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: 1B867197EC2
X-Rspamd-Action: no action

In case of vblank evasion in intel/display, it's necessary to
perform some work in advance, so the critical section will always run in
constant time on PREEMPT_RT.

By preparing all the work in advance, the part that needs to finish in
constant time only has to write a single variable instead. This allows
PREEMPT_RT to keep the interrupts disabled at the most critical part,
without completely reworking all locks to be raw spinlocks.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/drm_vblank_work.c | 106 ++++++++++++++++++++++--------
 include/drm/drm_vblank_work.h     |  12 ++++
 2 files changed, 92 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index 70f0199251ea0..6acb240b9c112 100644
--- a/drivers/gpu/drm/drm_vblank_work.c
+++ b/drivers/gpu/drm/drm_vblank_work.c
@@ -54,7 +54,8 @@ void drm_handle_vblank_works(struct drm_vblank_crtc *vblank)
 	assert_spin_locked(&vblank->dev->event_lock);
 
 	list_for_each_entry_safe(work, next, &vblank->pending_work, node) {
-		if (!drm_vblank_passed(count, work->count))
+		/* READ_ONCE pairs with WRITE_ONCE in drm_vblank_work_enable() */
+		if (!READ_ONCE(work->armed) || !drm_vblank_passed(count, work->count))
 			continue;
 
 		list_del_init(&work->node);
@@ -86,30 +87,8 @@ void drm_vblank_cancel_pending_works(struct drm_vblank_crtc *vblank)
 	wake_up_all(&vblank->work_wait_queue);
 }
 
-/**
- * drm_vblank_work_schedule - schedule a vblank work
- * @work: vblank work to schedule
- * @count: target vblank count
- * @nextonmiss: defer until the next vblank if target vblank was missed
- *
- * Schedule @work for execution once the crtc vblank count reaches @count.
- *
- * If the crtc vblank count has already reached @count and @nextonmiss is
- * %false the work starts to execute immediately.
- *
- * If the crtc vblank count has already reached @count and @nextonmiss is
- * %true the work is deferred until the next vblank (as if @count has been
- * specified as crtc vblank count + 1).
- *
- * If @work is already scheduled, this function will reschedule said work
- * using the new @count. This can be used for self-rearming work items.
- *
- * Returns:
- * %1 if @work was successfully (re)scheduled, %0 if it was either already
- * scheduled or cancelled, or a negative error code on failure.
- */
-int drm_vblank_work_schedule(struct drm_vblank_work *work,
-			     u64 count, bool nextonmiss)
+static int __drm_vblank_work_schedule(struct drm_vblank_work *work,
+				      u64 count, bool nextonmiss, bool armed)
 {
 	struct drm_vblank_crtc *vblank = work->vblank;
 	struct drm_device *dev = vblank->dev;
@@ -139,6 +118,7 @@ int drm_vblank_work_schedule(struct drm_vblank_work *work,
 		rescheduling = true;
 	}
 
+	work->armed = armed;
 	work->count = count;
 	cur_vbl = drm_vblank_count(dev, vblank->pipe);
 	passed = drm_vblank_passed(cur_vbl, count);
@@ -147,7 +127,7 @@ int drm_vblank_work_schedule(struct drm_vblank_work *work,
 			     "crtc %d vblank %llu already passed (current %llu)\n",
 			     vblank->pipe, count, cur_vbl);
 
-	if (!nextonmiss && passed) {
+	if (!nextonmiss && passed && armed) {
 		drm_vblank_put(dev, vblank->pipe);
 		ret = kthread_queue_work(vblank->worker, &work->base);
 
@@ -167,8 +147,82 @@ int drm_vblank_work_schedule(struct drm_vblank_work *work,
 		wake_up_all(&vblank->work_wait_queue);
 	return ret;
 }
+
+/**
+ * drm_vblank_work_schedule - schedule a vblank work
+ * @work: vblank work to schedule
+ * @count: target vblank count
+ * @nextonmiss: defer until the next vblank if target vblank was missed
+ *
+ * Schedule @work for execution once the crtc vblank count reaches @count.
+ *
+ * If the crtc vblank count has already reached @count and @nextonmiss is
+ * %false the work starts to execute immediately.
+ *
+ * If the crtc vblank count has already reached @count and @nextonmiss is
+ * %true the work is deferred until the next vblank (as if @count has been
+ * specified as crtc vblank count + 1).
+ *
+ * If @work is already scheduled, this function will reschedule said work
+ * using the new @count. This can be used for self-rearming work items.
+ *
+ * Returns:
+ * %1 if @work was successfully (re)scheduled, %0 if it was either already
+ * scheduled or cancelled, or a negative error code on failure.
+ */
+int drm_vblank_work_schedule(struct drm_vblank_work *work,
+			     u64 count, bool nextonmiss)
+{
+	return __drm_vblank_work_schedule(work, count, nextonmiss, true);
+}
 EXPORT_SYMBOL(drm_vblank_work_schedule);
 
+
+/**
+ * drm_vblank_work_schedule_disabled - schedule a vblank work, withoug enabling
+ * @work: vblank work to schedule
+ * @count: target vblank count
+ *
+ * Schedule @work for execution once the crtc vblank count reaches @count.
+ *
+ * The vblank work will not be scheduled until drm_vblank_work_enable() is called.
+ * If the crtc vblank count has already reached @count, the work will still
+ * not be scheduled until the first following vblank.
+ *
+ * If @work is already scheduled, this function will reschedule said work
+ * using the new @count. This can be used for self-rearming work items.
+ *
+ * Returns:
+ * %1 if @work was successfully (re)scheduled, %0 if it was either already
+ * scheduled or cancelled, or a negative error code on failure.
+ */
+int drm_vblank_work_schedule_disabled(struct drm_vblank_work *work, u64 count)
+{
+	return __drm_vblank_work_schedule(work, count, true, false);
+}
+EXPORT_SYMBOL(drm_vblank_work_schedule_disabled);
+
+/**
+ * drm_vblank_work_enable - enable vblank work
+ * @work: vblank work to enable
+ *
+ * This function is specifically only for when drm_vblank_work_schedule_disabled() is
+ * called. It allows for the work to be armed in any context, without any locks.
+ *
+ * The work will be signalled earliest at the @count argument, if it has been passed,
+ * it will signalled at the next vblank.
+ *
+ * This is particularly useful for PREEMPT_RT, where the spin_lock is converted
+ * into a sleeping rtmutex, and vblank evasion requires some work to be
+ * scheduled on completion with interrupts disabled.
+ */
+void drm_vblank_work_enable(struct drm_vblank_work *work)
+{
+	WARN_ON(work->armed);
+	WRITE_ONCE(work->armed, true);
+}
+EXPORT_SYMBOL(drm_vblank_work_enable);
+
 /**
  * drm_vblank_work_cancel_sync - cancel a vblank work and wait for it to
  * finish executing
diff --git a/include/drm/drm_vblank_work.h b/include/drm/drm_vblank_work.h
index e04d436b72973..e19351200da24 100644
--- a/include/drm/drm_vblank_work.h
+++ b/include/drm/drm_vblank_work.h
@@ -47,6 +47,14 @@ struct drm_vblank_work {
 	 */
 	int cancelling;
 
+	/**
+	 * @armed: If false, the work item has been added to the
+	 * drm_vblank_crtc.pending_work list, but will not yet be signalled.
+	 *
+	 * Call drm_vblank_work_enable() to fire on next vblank.
+	 */
+	bool armed;
+
 	/**
 	 * @node: The position of this work item in
 	 * &drm_vblank_crtc.pending_work.
@@ -64,6 +72,10 @@ struct drm_vblank_work {
 
 int drm_vblank_work_schedule(struct drm_vblank_work *work,
 			     u64 count, bool nextonmiss);
+
+int drm_vblank_work_schedule_disabled(struct drm_vblank_work *work, u64 count);
+void drm_vblank_work_enable(struct drm_vblank_work *work);
+
 void drm_vblank_work_init(struct drm_vblank_work *work, struct drm_crtc *crtc,
 			  void (*func)(struct kthread_work *work));
 bool drm_vblank_work_cancel_sync(struct drm_vblank_work *work);
-- 
2.51.0

