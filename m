Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2902141310
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 22:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B7D6F92F;
	Fri, 17 Jan 2020 21:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AB06F3EF;
 Fri, 17 Jan 2020 07:35:40 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F2D9E22C9DC8FC8FC8CA;
 Fri, 17 Jan 2020 15:35:36 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Fri, 17 Jan 2020 15:35:25 +0800
From: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
To: <chris@chris-wilson.co.uk>, <andi.shyti@intel.com>,
 <zhangxiaoxu5@huawei.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <airlied@linux.ie>, <daniel@ffwll.ch>
Date: Fri, 17 Jan 2020 15:34:36 +0800
Message-ID: <20200117073436.6507-1-zhangxiaoxu5@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 17 Jan 2020 21:29:09 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix i915_error_state_store error
 defination
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

Since commit 742379c0c4001 ("drm/i915: Start chopping up the GPU error
capture"), function 'i915_error_state_store' was defined and used with
only one parameter.

But if no 'CONFIG_DRM_I915_CAPTURE_ERROR', this function was defined
with two parameter.

This may lead compile error. This patch fix it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 9109004956bd..41c1475e1500 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -314,8 +314,7 @@ i915_vma_capture_finish(struct intel_gt_coredump *gt,
 }
 
 static inline void
-i915_error_state_store(struct drm_i915_private *i915,
-		       struct i915_gpu_coredump *error)
+i915_error_state_store(struct i915_gpu_coredump *error)
 {
 }
 
-- 
2.17.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
