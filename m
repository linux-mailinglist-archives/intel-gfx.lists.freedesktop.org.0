Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638C98CBAAC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 07:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEBE10E4C9;
	Wed, 22 May 2024 05:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC1D10E1E2;
 Wed, 22 May 2024 05:33:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v6 1/3] drm: Add drm_vblank_work_flush_all().
Date: Wed, 22 May 2024 07:33:39 +0200
Message-ID: <20240522053341.137592-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
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

In some cases we want to flush all vblank work, right before vblank_off
for example. Add a simple function to make this possible.

Check that both pending_work and running work are empty when flushing.

Co-Developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/drm_vblank_work.c | 22 ++++++++++++++++++++++
 include/drm/drm_vblank_work.h     |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index 4fe9b1d3b00f..1752ffb44e1d 100644
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
+			    list_empty(&vblank->pending_work),
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

