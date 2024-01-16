Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C982F32F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 18:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFD910E59B;
	Tue, 16 Jan 2024 17:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.wasd.net (mail.wasd.net [209.141.53.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8993910E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 17:29:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1FA1B6215E; Tue, 16 Jan 2024 09:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wasd.net; s=dkim;
 t=1705426181; h=from:subject:date:message-id:to:cc:mime-version:
 content-transfer-encoding; bh=pjOCQxmy6lDZbL6bzQ/hbMWFwTcDq901UjtTDYEVd1Q=;
 b=GEsmOU/GtKz5xImQ2GUrTEH5llrrixi2s8Sn2AW+U4njes29wyhSvjCj++R2YqQ0US6v2w
 CeVitRRHZcOp1xgtNJFwPohLbKSzOQoB4Y0ik5H797UBBvqWcJNBYDLqFkn0cJxHpL3Z4c
 U4M4TJb2FXMXqCFmk/xIQb3PgT2jI5Y+eavKpMB4hM2joxi4N+Sn37j6sym/+MDrkC/SVM
 oS8lmjDOqwxee6pIteMjr0pZSUyaKWTBOYEwAJYszreJmGRblAcvILMkKAnTZiH16nkfMX
 W5oMOpDlt1mxvSnIpQaVDIz6J7eZe7zNvKs0RzyX/rlZ6op9Lw5onIouvjD0bg==
From: Juan Escamilla <jcescami@wasd.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/gt: Reflect the true and current status of rc6_enable
Date: Tue, 16 Jan 2024 09:29:19 -0800
Message-ID: <20240116172922.3460695-1-jcescami@wasd.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
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
Cc: Juan Escamilla <jcescami@wasd.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The sysfs file is named 'enabled', thus users might want to know the
true state of the RC6 instead of only the indication if the RC6
should be enabled.

Let's use rc6.enable directly instead of rc6.supported.

Signed-off-by: Juan Escamilla <jcescami@wasd.net>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 2d3c4dab6d21..c0b202223940 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -182,7 +182,7 @@ static ssize_t rc6_enable_show(struct kobject *kobj,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
+	return sysfs_emit(buff, "%x\n", gt->rc6.enabled);
 }
 
 static ssize_t rc6_enable_dev_show(struct device *dev,
@@ -191,7 +191,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
+	return sysfs_emit(buff, "%x\n", gt->rc6.enabled);
 }
 
 static u32 __rc6_residency_ms_show(struct intel_gt *gt)
-- 
2.43.0

