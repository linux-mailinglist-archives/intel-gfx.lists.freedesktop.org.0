Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E702C827C96
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 02:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E46C10E351;
	Tue,  9 Jan 2024 01:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 484 seconds by postgrey-1.36 at gabe;
 Tue, 09 Jan 2024 01:39:24 UTC
Received: from mail.wasd.net (mail.wasd.net [209.141.53.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8294B10E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 01:39:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 45C7260596; Mon,  8 Jan 2024 17:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wasd.net; s=dkim;
 t=1704763876; h=from:subject:date:message-id:to:cc:mime-version:
 content-transfer-encoding; bh=lTkwu8yBtEg7z/rHI+ygrDF2XpAmQhcxWY3DmMhB/Gs=;
 b=jJhzpPgJQ5V/MQW351ho0wiIy5jFNzcK4IUPln1NHbQLynjbZ27/+fSShoO27oildWwZrO
 GnB6Hhelmz81M/bnSW0LlEtu5QT/YlhqAxodx7PIwiy4eiVotNEINy7sCoYQzYrrYNhaMs
 g3AGazXVBpONUBXqq+2dhjjT/rHc2/w+YPI8cnp/u5wzooWmNEYHr3nRvTSyC9dSseEIWG
 7pOX6kXp5VfixF1Ce4cZIIyRf9Gsq6zFbWaSshpwoC/NWkx25QUW4DT3uaIUblzOvTfYgq
 3jRemtYfxaagw8l5GFqiL3vh5y7d/EJQ60BJ76Zs5+CvRZwoL45eiQMD10FVEg==
From: Juan Escamilla <jcescami@wasd.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/gt: Use rc6.supported flag from intel_gt for
 rc6_enable sysfs
Date: Mon,  8 Jan 2024 17:30:26 -0800
Message-ID: <20240109013030.1450099-1-jcescami@wasd.net>
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

Currently if rc6 is supported, it gets enabled and the sysfs files for
rc6_enable_show and rc6_enable_dev_show uses masks to check information
from drm_i915_private.

However rc6_support functions take more variables and conditions into
consideration and thus these masks are not enough for most of the modern
hardware and it is simpley lyting to the user.

Let's fix it by at least use the rc6.supported flag from intel_gt information.

Signed-off-by: Juan Escamilla <jcescami@wasd.net>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index f0dea54880af..2d3c4dab6d21 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -176,27 +176,13 @@ static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
 	return DIV_ROUND_CLOSEST_ULL(res, 1000);
 }
 
-static u8 get_rc6_mask(struct intel_gt *gt)
-{
-	u8 mask = 0;
-
-	if (HAS_RC6(gt->i915))
-		mask |= BIT(0);
-	if (HAS_RC6p(gt->i915))
-		mask |= BIT(1);
-	if (HAS_RC6pp(gt->i915))
-		mask |= BIT(2);
-
-	return mask;
-}
-
 static ssize_t rc6_enable_show(struct kobject *kobj,
 			       struct kobj_attribute *attr,
 			       char *buff)
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
+	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
 }
 
 static ssize_t rc6_enable_dev_show(struct device *dev,
@@ -205,7 +191,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
+	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
 }
 
 static u32 __rc6_residency_ms_show(struct intel_gt *gt)
-- 
2.43.0

