Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD008291B2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 02:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE18510E547;
	Wed, 10 Jan 2024 01:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.wasd.net (mail.wasd.net [209.141.53.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B86810E547
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 01:03:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1603661B29; Tue,  9 Jan 2024 17:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wasd.net; s=dkim;
 t=1704848602; h=from:subject:date:message-id:to:cc:mime-version:
 content-transfer-encoding; bh=jA6/S8VddEDU4g9Xm0pqEN5w3te6Adq5YKpjW+qMK1U=;
 b=cB2B72Ja6VZ1liDMt4N/TI14yDeaX5EKP+Qpy07rEW+mWlWE6LIsxRuZ4ENCrOmG3kGVFQ
 U00qJlXby9/P55TU23ss9VcaOBmKnwHPSvDM7YOpB1jkzD3S7vgdUltinFilSLyHDtpkHP
 eKEmi+iFsbCPe9CHcsIzb7fQ2vHq48FLUrwrw/8ALZn+664jR3RQMAW8J55mZ+44+WXlZJ
 JtJAr+dbS3J+9uQtx67n8lN0+NgxnCqDSzQCwcsZBR/VetbpniEuunKAc6+HaS2gD0EYft
 ZkWJ7F/yoarZ+7AVNpjWvLQG+qOmrzVEUHIGcbl4ZfjENGrW240zXYcedMRyHw==
From: Juan Escamilla <jcescami@wasd.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/gt: Use rc6.supported flag from intel_gt for
 rc6_enable sysfs
Date: Tue,  9 Jan 2024 17:03:00 -0800
Message-ID: <20240110010302.553597-1-jcescami@wasd.net>
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

Let's fix it by at least use the rc6.supported flag from intel_gt
information.

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

