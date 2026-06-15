Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lipsEyFeMGqZSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2103689B96
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=a3AosFuL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E453410E632;
	Mon, 15 Jun 2026 20:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6028D10E625;
 Mon, 15 Jun 2026 20:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554714;
 bh=vsaNoFXeYHDcJs70VinA89fKKDpgmgPP1SBmcoWrJ0Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a3AosFuLkQB5s1XSMIThwtNCy+j0dvRB8qGZ1/Jms5P4CIt+iy8qmFVY+1xm19Xjw
 KJC/MxynfgCDt2I6B2Zq3uLlkcMt00ilqwSAHPfmWvtJbs/b4Jq9iuDhdpKahqVfB4
 vNnIuiqaQk0HYTAKd4o+07n5DnuGz5pg0bK7X5TSmSC1kOpLhiHaxaWWv44g89/hMq
 cEH3VaV6yvUC6wzwPt3efj6CTUzetokRRhU8g5mgS4Tgh3qJFw0c9qxUAzIhYX5nNw
 JedpAq0tupBbE1a931JR1mvSka3bqdeTYmhIeMbDfIzcvQbKNsA9kPkeHxh1BvyJJL
 9iE1DDeU2DWyA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v8 02/27] drm/vblank: Add a 2-stage version of
 drm_crtc_arm_vblank_event
Date: Mon, 15 Jun 2026 22:18:20 +0200
Message-ID: <20260615201846.307297-3-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B2103689B96

When trying to fix the hardware programming in intel/display, I had
to take all the vblank locks with local_irqs_disabled(). This
required converting the entire vblank code to raw spinlocks.

In the alternative approach, do all preparations in advance, and only
enable the vblank_event with interrupts disabled, this requires only
a simple write and prevents a complete re-architecture of the code.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/drm_vblank.c | 61 +++++++++++++++++++++++++++++++++++-
 include/drm/drm_vblank.h     | 14 ++++++++-
 2 files changed, 73 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index f90fb2d13e423..6856eff97dc97 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1127,12 +1127,68 @@ void drm_crtc_arm_vblank_event(struct drm_crtc *crtc,
 
 	assert_spin_locked(&dev->event_lock);
 
+	WARN_ON(e->postponed);
 	e->pipe = pipe;
 	e->sequence = drm_crtc_accurate_vblank_count(crtc) + 1;
 	list_add_tail(&e->base.link, &dev->vblank_event_list);
 }
 EXPORT_SYMBOL(drm_crtc_arm_vblank_event);
 
+/**
+ * drm_crtc_prepare_arm_vblank_event - arm vblank event *before* pageflip.
+ * @crtc: the source CRTC of the vblank event
+ * @e: the event to send
+ *
+ * See drm_crtc_arm_vblank_event(). This function is a 2-stage version of
+ * that call. This function is called *BEFORE* programming the hardware.
+ *
+ * After programming, call drm_crtc_arm_prepared_vblank_event() and the
+ * event will be scheduled on the next vblank.
+ *
+ * This is mainly useful for code that has to run on PREEMPT_RT kernels,
+ * with interrupts disabled, since all vblank spinlocks are converted to
+ * rtmutexes, and code running with irqs disabled cannot take any vblank lock.
+ *
+ * It also increases determinism for any hardware
+ * programming, since no vblank related locks are taking when arming.
+ */
+void drm_crtc_prepare_arm_vblank_event(struct drm_crtc *crtc,
+				       struct drm_pending_vblank_event *e)
+{
+	drm_crtc_arm_vblank_event(crtc, e);
+
+	/* Set the flag, so that the event is not fired yet */
+	e->postponed = true;
+}
+EXPORT_SYMBOL(drm_crtc_prepare_arm_vblank_event);
+
+/**
+ * drm_crtc_arm_prepared_vblank_event - arm prepared vblank event *after* pageflip.
+ * @crtc: the source CRTC of the vblank event
+ * @e: the event to send
+ *
+ * See drm_crtc_prepare_arm_vblank_event(). This function is a 2-stage version of
+ * that call. This function is called directly *AFTER* programming the hardware.
+ *
+ * Before this function is called, drm_crtc_prepare_arm_vblank_event() should be
+ * called instead.
+ *
+ * This is mainly useful for code that has to run on PREEMPT_RT kernels,
+ * with interrupts disabled, since all vblank spinlocks are converted to
+ * rtmutexes, and code running with irqs disabled cannot take any vblank lock.
+ *
+ * It also increases determinism for any hardware
+ * programming, since no vblank related locks are taking when arming.
+ */
+void drm_crtc_arm_prepared_vblank_event(struct drm_pending_vblank_event *e)
+{
+	WARN_ON(!e->postponed);
+
+	/* remove the flag to be processed as a normal event */
+	WRITE_ONCE(e->postponed, false);
+}
+EXPORT_SYMBOL(drm_crtc_arm_prepared_vblank_event);
+
 /**
  * drm_crtc_send_vblank_event - helper to send vblank event after pageflip
  * @crtc: the source CRTC of the vblank event
@@ -1390,6 +1446,8 @@ void drm_crtc_vblank_off(struct drm_crtc *crtc)
 	list_for_each_entry_safe(e, t, &dev->vblank_event_list, base.link) {
 		if (e->pipe != pipe)
 			continue;
+
+		WARN_ON(e->postponed);
 		drm_dbg_core(dev, "Sending premature vblank event on disable: "
 			     "wanted %llu, current %llu\n",
 			     e->sequence, seq);
@@ -1892,7 +1950,8 @@ static void drm_handle_vblank_events(struct drm_device *dev, unsigned int pipe)
 	seq = drm_vblank_count_and_time(dev, pipe, &now);
 
 	list_for_each_entry_safe(e, t, &dev->vblank_event_list, base.link) {
-		if (e->pipe != pipe)
+		/* Matches WRITE_ONCE in drm_crtc_arm_prepared_vblank_event() */
+		if (e->pipe != pipe || READ_ONCE(e->postponed))
 			continue;
 		if (!drm_vblank_passed(seq, e->sequence))
 			continue;
diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index 2fcef9c0f5b1b..956d5621eb7f9 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -53,6 +53,13 @@ struct drm_pending_vblank_event {
 	 * @sequence: frame event should be triggered at
 	 */
 	u64 sequence;
+
+	/**
+	 * @postponed: whether drm_crtc_prepare_arm_vblank_event() is called,
+	 * and drm_crtc_arm_prepared_vblank_event has yet to be called to arm.
+	 */
+	bool postponed;
+
 	/**
 	 * @event: Actual event which will be sent to userspace.
 	 */
@@ -294,7 +301,12 @@ int drm_crtc_next_vblank_start(struct drm_crtc *crtc, ktime_t *vblanktime);
 void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 			       struct drm_pending_vblank_event *e);
 void drm_crtc_arm_vblank_event(struct drm_crtc *crtc,
-			      struct drm_pending_vblank_event *e);
+			       struct drm_pending_vblank_event *e);
+
+void drm_crtc_prepare_arm_vblank_event(struct drm_crtc *crtc,
+				       struct drm_pending_vblank_event *e);
+void drm_crtc_arm_prepared_vblank_event(struct drm_pending_vblank_event *e);
+
 void drm_vblank_set_event(struct drm_pending_vblank_event *e,
 			  u64 *seq,
 			  ktime_t *now);
-- 
2.53.0

