Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B41A2B5DC7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347266E192;
	Tue, 17 Nov 2020 11:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9354E6E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:01:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23015805-1500050 
 for multiple; Tue, 17 Nov 2020 11:01:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:01:31 +0000
Message-Id: <20201117110132.22267-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201117110132.22267-1-chris@chris-wilson.co.uk>
References: <20201117110132.22267-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/perf: Whitelist OA counter and
 buffer registers
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
Cc: Piotr Maciejewski <piotr.maciejewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

It is useful to have markers in the OA reports to identify triggered
reports. Whitelist some OA counters that can be used as markers.

A triggered report can be found faster if we can sample the HW tail and
head registers when the report was triggered. Whitelist OA buffer
specific registers.

v2:
- Bump up the perf revision (Lionel)
- Use indexing for counters (Lionel)
- Fix selftest for oa ticking register (Umesh)

v3: Pardon whitelisted registers for selftest (Umesh)

v4:
- Document whitelisted registers (Lionel)
- Fix live isolated whitelist for OA regs (Umesh)

v5:
- Free up whitelist slots. Remove GPU_TICKS and A20 counter (Piotr)
- Whitelist registers only if perf_stream_paranoid is set to 0 (Jon)

v6: Move oa whitelist array to i915_perf (Chris)

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h  | 16 ++++++++++++++--
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8abd2cfd1c2f..c91f2da84189 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1367,11 +1367,19 @@ free_noa_wait(struct i915_perf_stream *stream)
 static const i915_reg_t gen9_oa_wl_regs[] = {
 	{ __OAREPORTTRIG2 | RING_FORCE_TO_NONPRIV_ACCESS_RW },
 	{ __OAREPORTTRIG6 | RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ __OA_PERF_COUNTER_A(18) | (RING_FORCE_TO_NONPRIV_ACCESS_RW |
+				     RING_FORCE_TO_NONPRIV_RANGE_4) },
+	{ __GEN8_OASTATUS | (RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			     RING_FORCE_TO_NONPRIV_RANGE_4) },
 };
 
 static const i915_reg_t gen12_oa_wl_regs[] = {
 	{ __GEN12_OAG_OAREPORTTRIG2 | RING_FORCE_TO_NONPRIV_ACCESS_RW },
 	{ __GEN12_OAG_OAREPORTTRIG6 | RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ __GEN12_OAG_PERF_COUNTER_A(18) | (RING_FORCE_TO_NONPRIV_ACCESS_RW |
+					    RING_FORCE_TO_NONPRIV_RANGE_4) },
+	{ __GEN12_OAG_OASTATUS | (RING_FORCE_TO_NONPRIV_ACCESS_RD |
+				  RING_FORCE_TO_NONPRIV_RANGE_4) },
 };
 
 static int intel_engine_apply_oa_whitelist(struct i915_perf_stream *stream)
@@ -4543,8 +4551,16 @@ int i915_perf_ioctl_version(void)
 	 *    into the OA buffer. This applies only to gen8+. The feature can
 	 *    only be accessed if perf_stream_paranoid is set to 0 by privileged
 	 *    user.
+	 *
+	 * 7: Whitelist below OA registers for user to identify the location of
+	 *    triggered reports in the OA buffer. This applies only to gen8+.
+	 *    The feature can only be accessed if perf_stream_paranoid is set to
+	 *    0 by privileged user.
+	 *
+	 *    - OA buffer head/tail/status/buffer registers for read only
+	 *    - OA counters A18, A19, A20 for read/write
 	 */
-	return 6;
+	return 7;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7d27c271d607..479ecbdf4d3a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -678,7 +678,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN7_OASTATUS2_HEAD_MASK           0xffffffc0
 #define  GEN7_OASTATUS2_MEM_SELECT_GGTT     (1 << 0) /* 0: PPGTT, 1: GGTT */
 
-#define GEN8_OASTATUS _MMIO(0x2b08)
+#define __GEN8_OASTATUS 0x2b08
+#define GEN8_OASTATUS _MMIO(__GEN8_OASTATUS)
 #define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
 #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
 #define  GEN8_OASTATUS_OABUFFER_OVERFLOW    (1 << 1)
@@ -736,7 +737,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_GO_1_0_REPORTS     (1 << 2)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS (1 << 1)
 
-#define GEN12_OAG_OASTATUS _MMIO(0xdafc)
+#define __GEN12_OAG_OASTATUS 0xdafc
+#define GEN12_OAG_OASTATUS _MMIO(__GEN12_OAG_OASTATUS)
 #define  GEN12_OAG_OASTATUS_COUNTER_OVERFLOW (1 << 2)
 #define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
 #define  GEN12_OAG_OASTATUS_REPORT_LOST      (1 << 0)
@@ -979,6 +981,16 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
 #define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
 
+/* Performance counters registers */
+#define __OA_PERF_COUNTER_A(idx)	(0x2800 + 8 * (idx))
+#define OA_PERF_COUNTER_A(idx)		_MMIO(__OA_PERF_COUNTER_A(idx))
+#define OA_PERF_COUNTER_A_UDW(idx)		_MMIO(__OA_PERF_COUNTER_A(idx) + 4)
+
+/* Gen12 Performance counters registers */
+#define __GEN12_OAG_PERF_COUNTER_A(idx)	(0xD980 + 8 * (idx))
+#define GEN12_OAG_PERF_COUNTER_A(idx)	_MMIO(__GEN12_OAG_PERF_COUNTER_A(idx))
+#define GEN12_OAG_PERF_COUNTER_A_UDW(idx) _MMIO(__GEN12_OAG_PERF_COUNTER_A(idx) + 4)
+
 /* Same layout as OASTARTTRIGX */
 #define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
 #define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
