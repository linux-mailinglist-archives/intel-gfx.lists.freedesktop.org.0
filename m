Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C90F213DC48
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 14:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182B26ED0A;
	Thu, 16 Jan 2020 13:45:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2B66ED0A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 13:45:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 05:45:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="425538251"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.174])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jan 2020 05:45:11 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 13:45:08 +0000
Message-Id: <20200116134508.25211-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Align engine->uabi_class/instance
 with i915_drm.h
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

In our ABI we have defined I915_ENGINE_CLASS_INVALID_NONE and
I915_ENGINE_CLASS_INVALID_VIRTUAL as negative values which creates
implicit coupling with type widths used in, also ABI, struct
i915_engine_class_instance.

One place where we export engine->uabi_class
I915_ENGINE_CLASS_INVALID_VIRTUAL is from our our tracepoints. Because the
type of the former is u8 in contrast to u16 defined in the ABI, 254 will
be returned instead of 65534 which userspace would legitimately expect.

Another place is I915_CONTEXT_PARAM_ENGINES.

Therefore we need to align the type used to store engine ABI class and
instance.

v2:
 * Update the commit message mentioning get_engines and cc stable.
   (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v5.3+
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_busy.c     | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
index 3d4f5775a4ba..25235ef630c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
@@ -9,16 +9,16 @@
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
 
-static __always_inline u32 __busy_read_flag(u8 id)
+static __always_inline u32 __busy_read_flag(u16 id)
 {
-	if (id == (u8)I915_ENGINE_CLASS_INVALID)
+	if (id == (u16)I915_ENGINE_CLASS_INVALID)
 		return 0xffff0000u;
 
 	GEM_BUG_ON(id >= 16);
 	return 0x10000u << id;
 }
 
-static __always_inline u32 __busy_write_id(u8 id)
+static __always_inline u32 __busy_write_id(u16 id)
 {
 	/*
 	 * The uABI guarantees an active writer is also amongst the read
@@ -29,14 +29,14 @@ static __always_inline u32 __busy_write_id(u8 id)
 	 * last_read - hence we always set both read and write busy for
 	 * last_write.
 	 */
-	if (id == (u8)I915_ENGINE_CLASS_INVALID)
+	if (id == (u16)I915_ENGINE_CLASS_INVALID)
 		return 0xffffffffu;
 
 	return (id + 1) | __busy_read_flag(id);
 }
 
 static __always_inline unsigned int
-__busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u8 id))
+__busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u16 id))
 {
 	const struct i915_request *rq;
 
@@ -57,7 +57,7 @@ __busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u8 id))
 		return 0;
 
 	/* Beware type-expansion follies! */
-	BUILD_BUG_ON(!typecheck(u8, rq->engine->uabi_class));
+	BUILD_BUG_ON(!typecheck(u16, rq->engine->uabi_class));
 	return flag(rq->engine->uabi_class);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 00287515e7af..350da59e605b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -278,8 +278,8 @@ struct intel_engine_cs {
 	u8 class;
 	u8 instance;
 
-	u8 uabi_class;
-	u8 uabi_instance;
+	u16 uabi_class;
+	u16 uabi_instance;
 
 	u32 uabi_capabilities;
 	u32 context_size;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
