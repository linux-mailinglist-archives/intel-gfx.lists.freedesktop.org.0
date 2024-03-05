Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F6687216A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9881E112B3F;
	Tue,  5 Mar 2024 14:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3B2112B43
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:27:12 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 1/3] drm: Add drm_vblank_work_flush_all().
Date: Tue,  5 Mar 2024 15:27:12 +0100
Message-ID: <20240305142714.5298-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305142714.5298-1-maarten.lankhorst@linux.intel.com>
References: <20240305142714.5298-1-maarten.lankhorst@linux.intel.com>
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

From: Maarten Lankhorst <dev@lankhorst.se>

In some cases we want to flush all vblank work, right before vblank_off
for example. Add a simple function to make this possible.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/drm_vblank_work.c | 22 ++++++++++++++++++++++
 include/drm/drm_vblank_work.h     |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index 43cd5c0f4f6f..ff86f2b2e052 100644
--- a/drivers/gpu/drm/drm_vblank_work.c
+++ b/drivers/gpu/drm/drm_vblank_work.c
@@ -232,6 +232,28 @@ void drm_vblank_work_flush(struct drm_vblank_work *work)
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
index eb41d0810c4f..e04d436b7297 100644
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
2.43.0

