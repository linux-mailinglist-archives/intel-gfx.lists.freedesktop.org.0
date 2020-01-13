Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A67441397B6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AA26E119;
	Mon, 13 Jan 2020 17:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 993 seconds by postgrey-1.36 at gabe;
 Mon, 13 Jan 2020 10:57:41 UTC
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E09B89F8E;
 Mon, 13 Jan 2020 10:57:41 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BC837F77BB32025BB1AA;
 Mon, 13 Jan 2020 18:41:05 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Mon, 13 Jan 2020 18:40:56 +0800
From: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
To: <chris@chris-wilson.co.uk>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <airlied@linux.ie>, <daniel@ffwll.ch>, <zhangxiaoxu5@huawei.com>
Date: Mon, 13 Jan 2020 18:40:09 +0800
Message-ID: <20200113104009.13274-1-zhangxiaoxu5@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 13 Jan 2020 17:31:20 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix multiple definition of
 'i915_vma_capture_finish'
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If 'CONFIG_DRM_I915_CAPTURE_ERROR' not configured, there are some
errors like:

drivers/gpu/drm/i915/i915_irq.o:
	In function `i915_vma_capture_finish':
./drivers/gpu/drm/i915/i915_gpu_error.h:312:
	multiple definition of `i915_vma_capture_finish'
drivers/gpu/drm/i915/i915_drv.o:
	./drivers/gpu/drm/i915/i915_gpu_error.h:312: first defined here

So, add 'static inline' on the defineation of the 'i915_vma_capture_finish'

Fixes: d713e3ab93fdc("drm/i915: Correct typo in i915_vma_compress_finish stub")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 1b6dfcb79e14..6bc7e7c901ed 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -307,7 +307,7 @@ i915_vma_capture_prepare(struct intel_gt_coredump *gt)
 	return NULL;
 }
 
-void i915_vma_capture_finish(struct intel_gt_coredump *gt,
+static inline void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 			     struct i915_vma_compress *compress)
 {
 }
-- 
2.17.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
