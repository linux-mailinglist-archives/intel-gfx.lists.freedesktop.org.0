Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E57E2418D7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 11:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA046E4B5;
	Tue, 11 Aug 2020 09:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146146E4B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 09:25:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22093207-1500050 
 for multiple; Tue, 11 Aug 2020 10:25:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Aug 2020 10:25:32 +0100
Message-Id: <20200811092532.13753-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200811030209.21058-1-yan.y.zhao@intel.com>
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop runtime-pm assert from vgpu io
 accessors
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
Cc: Yan Zhao <yan.y.zhao@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The "mmio" writes into vgpu registers are simple memory traps from the
guest into the host. We do not need to assert in the guest that the
device is awake for the io as we do not write to the device itself.

However, over time we have refactored all the mmio accessors with the
result that the vgpu reuses the gen2 accessors and so inherits the
assert for runtime-pm of the native device. The assert though has
actually been there since commit 3be0bf5acca6 ("drm/i915: Create vGPU
specific MMIO operations to reduce traps").

References: 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operations to reduce traps")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Yan Zhao <yan.y.zhao@intel.com>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index f5edee17902a..6d3310794d0f 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1209,6 +1209,18 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
 		spin_unlock(&uncore->debug->lock);
 }
 
+#define __vgpu_read(x) \
+static u##x \
+vgpu_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { \
+	u##x val = __raw_uncore_read##x(uncore, reg); \
+	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
+	return val; \
+}
+__vgpu_read(8)
+__vgpu_read(16)
+__vgpu_read(32)
+__vgpu_read(64)
+
 #define GEN2_READ_HEADER(x) \
 	u##x val = 0; \
 	assert_rpm_wakelock_held(uncore->rpm);
@@ -1414,6 +1426,16 @@ __gen_reg_write_funcs(gen8);
 #undef GEN6_WRITE_FOOTER
 #undef GEN6_WRITE_HEADER
 
+#define __vgpu_write(x) \
+static void \
+vgpu_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { \
+	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
+	__raw_uncore_write##x(uncore, reg, val); \
+}
+__vgpu_write(8)
+__vgpu_write(16)
+__vgpu_write(32)
+
 #define ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, x) \
 do { \
 	(uncore)->funcs.mmio_writeb = x##_write8; \
@@ -1735,7 +1757,10 @@ static void uncore_raw_init(struct intel_uncore *uncore)
 {
 	GEM_BUG_ON(intel_uncore_has_forcewake(uncore));
 
-	if (IS_GEN(uncore->i915, 5)) {
+	if (intel_vgpu_active(uncore->i915)) {
+		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
+		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
+	} else if (IS_GEN(uncore->i915, 5)) {
 		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
 		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
 	} else {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
