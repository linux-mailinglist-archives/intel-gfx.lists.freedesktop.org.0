Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C84B1397B7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8916E121;
	Mon, 13 Jan 2020 17:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045E489F6F;
 Mon, 13 Jan 2020 08:20:45 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2C401F063E020ABC8E3D;
 Mon, 13 Jan 2020 16:20:41 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Mon, 13 Jan 2020 16:20:31 +0800
From: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
To: <chris@chris-wilson.co.uk>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <airlied@linux.ie>, <daniel@ffwll.ch>, <intel-gfx@lists.freedesktop.org>,
 <zhangxiaoxu5@huawei.com>
Date: Mon, 13 Jan 2020 16:19:42 +0800
Message-ID: <20200113081942.15982-1-zhangxiaoxu5@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 13 Jan 2020 17:31:20 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix too few arguments to function
 i915_capture_error_state
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If 'CONFIG_DRM_I915_CAPTURE_ERROR' not configured, there is an error
when compile the kernel:

drivers/gpu/drm/i915/gt/intel_reset.c:
	In function intel_gt_handle_error:
drivers/gpu/drm/i915/gt/intel_reset.c:1233:3:
	error: too few arguments to function i915_capture_error_state
   i915_capture_error_state(gt->i915);
   ^~~~~~~~~~~~~~~~~~~~~~~~
In file included
         from ./drivers/gpu/drm/i915/i915_drv.h:97:0,
         from ./drivers/gpu/drm/i915/display/intel_display_types.h:46,
         from drivers/gpu/drm/i915/gt/intel_reset.c:10:
./drivers/gpu/drm/i915/i915_gpu_error.h:267:20: note: declared here
 static inline void i915_capture_error_state(struct drm_i915_private *dev_priv,

Fixes: 742379c0c400 ("drm/i915: Start chopping up the GPU error capture")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 1c800448c3ea..1b6dfcb79e14 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -264,9 +264,7 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
 #else
 
-static inline void i915_capture_error_state(struct drm_i915_private *dev_priv,
-					    u32 engine_mask,
-					    const char *error_msg)
+static inline void i915_capture_error_state(struct drm_i915_private *dev_priv)
 {
 }
 
-- 
2.17.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
