Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B4F2FEE3C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E3F6E8B8;
	Thu, 21 Jan 2021 15:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4FF6E8B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:17:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23661941-1500050 
 for multiple; Thu, 21 Jan 2021 15:16:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 15:16:45 +0000
Message-Id: <20210121151645.10628-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check for all subplatform bits
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Current code is checking only 2 bits in the subplatform, but actually 3
bits are allocated for the field. Check all 3 bits.

v2: Apply the SUBPLATFORM_MASK bikeshed as it turns out we missed
another place BITS was used as a MASK.

Fixes: 805446c8347c9 (drm/i915: Introduce concept of a sub-platform)
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Link: https://patchwork.freedesktop.org/patch/msgid/20210120012111.44184-2-umesh.nerlige.ramappa@intel.com
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f0222de2d216..7efb501e22d2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1343,7 +1343,7 @@ intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
 {
 	const unsigned int pi = __platform_mask_index(info, p);
 
-	return info->platform_mask[pi] & INTEL_SUBPLATFORM_BITS;
+	return info->platform_mask[pi] & INTEL_SUBPLATFORM_MASK;
 }
 
 static __always_inline bool
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 699412c14c1d..7d98a718a051 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -223,7 +223,7 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		}
 	}
 
-	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_BITS);
+	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
 
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 79dab5a6f272..2ceafedeb62f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -94,6 +94,7 @@ enum intel_platform {
  */
 
 #define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_MASK GENMASK(INTEL_SUBPLATFORM_BITS - 1, 0)
 
 /* HSW/BDW/SKL/KBL/CFL */
 #define INTEL_SUBPLATFORM_ULT	(0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
