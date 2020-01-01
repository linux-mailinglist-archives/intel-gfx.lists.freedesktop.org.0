Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C068912DF0A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 14:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E5FC8991A;
	Wed,  1 Jan 2020 13:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33CDA8991A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 13:42:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19741910-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 13:42:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 13:42:03 +0000
Message-Id: <20200101134204.706541-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm: Export drm_minor_create_anonfile()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Export the routine for creating an anonymous file for wrapping the
drm_device.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/drm_file.c                | 7 ++++---
 drivers/gpu/drm/i915/selftests/igt_mmap.c | 2 +-
 drivers/gpu/drm/i915/selftests/mock_drm.h | 2 +-
 include/drm/drm_file.h                    | 3 ++-
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 92d16724f949..0f1e902191a9 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -758,7 +758,7 @@ void drm_send_event(struct drm_device *dev, struct drm_pending_event *e)
 EXPORT_SYMBOL(drm_send_event);
 
 /**
- * mock_drm_getfile - Create a new struct file for the drm device
+ * drm_minor_create_anonfile - Create a new struct file for the drm device
  * @minor: drm minor to wrap (e.g. #drm_device.primary)
  * @flags: file creation mode (O_RDWR etc)
  *
@@ -771,7 +771,8 @@ EXPORT_SYMBOL(drm_send_event);
  * RETURNS:
  * Pointer to newly created struct file, ERR_PTR on failure.
  */
-struct file *mock_drm_getfile(struct drm_minor *minor, unsigned int flags)
+struct file *
+drm_minor_create_anonfile(struct drm_minor *minor, unsigned int flags)
 {
 	struct drm_device *dev = minor->dev;
 	struct drm_file *priv;
@@ -795,4 +796,4 @@ struct file *mock_drm_getfile(struct drm_minor *minor, unsigned int flags)
 
 	return file;
 }
-EXPORT_SYMBOL_FOR_TESTS_ONLY(mock_drm_getfile);
+EXPORT_SYMBOL(drm_minor_create_anonfile);
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index 583a4ff8b8c9..85105900f3f4 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -19,7 +19,7 @@ unsigned long igt_mmap_node(struct drm_i915_private *i915,
 	int err;
 
 	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	file = drm_minor_create_anonfile(i915->drm.primary, O_RDWR);
 	if (IS_ERR(file))
 		return PTR_ERR(file);
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_drm.h b/drivers/gpu/drm/i915/selftests/mock_drm.h
index 9916b6f95526..0d7ed9b05ee0 100644
--- a/drivers/gpu/drm/i915/selftests/mock_drm.h
+++ b/drivers/gpu/drm/i915/selftests/mock_drm.h
@@ -34,7 +34,7 @@ struct file;
 
 static inline struct file *mock_file(struct drm_i915_private *i915)
 {
-	return mock_drm_getfile(i915->drm.primary, O_RDWR);
+	return drm_minor_create_anonfile(i915->drm.primary, O_RDWR);
 }
 
 static inline struct drm_file *to_drm_file(struct file *f)
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 8b099b347817..42459aaac794 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -388,6 +388,7 @@ void drm_event_cancel_free(struct drm_device *dev,
 void drm_send_event_locked(struct drm_device *dev, struct drm_pending_event *e);
 void drm_send_event(struct drm_device *dev, struct drm_pending_event *e);
 
-struct file *mock_drm_getfile(struct drm_minor *minor, unsigned int flags);
+struct file *drm_minor_create_anonfile(struct drm_minor *minor,
+				       unsigned int flags);
 
 #endif /* _DRM_FILE_H_ */
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
