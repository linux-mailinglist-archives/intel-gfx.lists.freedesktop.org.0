Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B757E6D7B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 16:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8795310E8D1;
	Thu,  9 Nov 2023 15:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 103464 seconds by postgrey-1.36 at gabe;
 Thu, 09 Nov 2023 15:34:54 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3B410E8CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 15:34:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 16:34:48 +0100
Message-Id: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm: Add drm_vblank_work_flush_all().
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

In some cases we want to flush all vblank work, right before vblank_off
for example. Add a simple function to make this possible.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/drm_vblank_work.c | 22 ++++++++++++++++++++++
 include/drm/drm_vblank_work.h     |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index bd481fdd6b870..27c8646a79c8e 100644
--- a/drivers/gpu/drm/drm_vblank_work.c
+++ b/drivers/gpu/drm/drm_vblank_work.c
@@ -229,6 +229,28 @@ void drm_vblank_work_flush(struct drm_vblank_work *work)
 }
 EXPORT_SYMBOL(drm_vblank_work_flush);
 
+/**
+ * drm_vblank_work_flush_all - flush all currently pending vblank work on crtc.
+ * @crtc: crtc for which vblank work to flush
+ *
+ * Wait until all currently queued vblank work on @crtc
+ * has finished executing once.
+ */
+void drm_vblank_work_flush_all(struct drm_crtc *crtc)
+{
+	struct drm_device *dev = crtc->dev;
+	struct drm_vblank_crtc *vblank = &dev->vblank[drm_crtc_index(crtc)];
+
+	spin_lock_irq(&dev->event_lock);
+	wait_event_lock_irq(vblank->work_wait_queue,
+			    waitqueue_active(&vblank->work_wait_queue),
+			    dev->event_lock);
+	spin_unlock_irq(&dev->event_lock);
+
+	kthread_flush_worker(vblank->worker);
+}
+EXPORT_SYMBOL(drm_vblank_work_flush_all);
+
 /**
  * drm_vblank_work_init - initialize a vblank work item
  * @work: vblank work item
diff --git a/include/drm/drm_vblank_work.h b/include/drm/drm_vblank_work.h
index eb41d0810c4ff..e04d436b72973 100644
--- a/include/drm/drm_vblank_work.h
+++ b/include/drm/drm_vblank_work.h
@@ -17,6 +17,7 @@ struct drm_crtc;
  * drm_vblank_work_init()
  * drm_vblank_work_cancel_sync()
  * drm_vblank_work_flush()
+ * drm_vblank_work_flush_all()
  */
 struct drm_vblank_work {
 	/**
@@ -67,5 +68,6 @@ void drm_vblank_work_init(struct drm_vblank_work *work, struct drm_crtc *crtc,
 			  void (*func)(struct kthread_work *work));
 bool drm_vblank_work_cancel_sync(struct drm_vblank_work *work);
 void drm_vblank_work_flush(struct drm_vblank_work *work);
+void drm_vblank_work_flush_all(struct drm_crtc *crtc);
 
 #endif /* !_DRM_VBLANK_WORK_H_ */
-- 
2.39.2

