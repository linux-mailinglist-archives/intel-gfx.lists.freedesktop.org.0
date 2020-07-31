Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D43A233EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 08:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C3C6E9D1;
	Fri, 31 Jul 2020 06:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6316C6E9D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 06:07:24 +0000 (UTC)
IronPort-SDR: mSYraETHS1o6FgnwYoST8yPw9/uzzhSrgKBG5HroVutpAiHgyXwhUFbjsov2y0U0jIpcgIP3LM
 T7Rna8WkDr1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="151704962"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="151704962"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 23:07:23 -0700
IronPort-SDR: HTKxGY9d8HaulPC8RuMGjkYP5E2wAONtqxNNMcvM8elIpDEO+4L9S5SeguJqztfdhA/WO8eFiB
 cUD6whKTNSvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="304844500"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2020 23:07:23 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 23:07:22 -0700
Message-Id: <20200731060723.3911-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200731060723.3911-1-umesh.nerlige.ramappa@intel.com>
References: <20200731060723.3911-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/perf: Whitelist OA counter and
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
 drivers/gpu/drm/i915/i915_reg.h  |  8 ++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index d644cb5118d6..8ff502719dfd 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1350,11 +1350,19 @@ free_noa_wait(struct i915_perf_stream *stream)
 static struct i915_whitelist_reg gen9_oa_wl_regs[] = {
 	{ OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
 	{ OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ OA_PERF_COUNTER_A(18), RING_FORCE_TO_NONPRIV_ACCESS_RW |
+				 RING_FORCE_TO_NONPRIV_RANGE_4 },
+	{ GEN8_OASTATUS, RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			 RING_FORCE_TO_NONPRIV_RANGE_4 },
 };
 
 static struct i915_whitelist_reg gen12_oa_wl_regs[] = {
 	{ GEN12_OAG_OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
 	{ GEN12_OAG_OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ GEN12_OAG_PERF_COUNTER_A(18), RING_FORCE_TO_NONPRIV_ACCESS_RW |
+					RING_FORCE_TO_NONPRIV_RANGE_4 },
+	{ GEN12_OAG_OASTATUS, RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			      RING_FORCE_TO_NONPRIV_RANGE_4 },
 };
 
 static void intel_engine_apply_oa_whitelist(struct i915_perf_stream *stream)
@@ -4515,8 +4523,16 @@ int i915_perf_ioctl_version(void)
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
index 377339399458..6b93a5686cba 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -974,6 +974,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
 #define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
 
+/* Performance counters registers */
+#define OA_PERF_COUNTER_A(idx)       _MMIO(0x2800 + 8 * (idx))
+#define OA_PERF_COUNTER_A_UPPER(idx) _MMIO(0x2800 + 8 * (idx) + 4)
+
+/* Gen12 Performance counters registers */
+#define GEN12_OAG_PERF_COUNTER_A(idx)       _MMIO(0xD980 + 8 * (idx))
+#define GEN12_OAG_PERF_COUNTER_A_UPPER(idx) _MMIO(0xD980 + 8 * (idx) + 4)
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
