Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B10F849A42E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 03:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A67110E966;
	Tue, 25 Jan 2022 02:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C8410E966
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 02:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643076516; x=1674612516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qxpzKMBwdiowwtCIuL1Hic80sck8t+tP4KQXFnOMCjQ=;
 b=YSb7ShKetZqXfeJj+MFa+2p+vOm3XnW4Mc65zDUpujIu2eNPxK/FUT5O
 7DnsNyQh6xrkUjJUU18gVPVRadyT/75RrsaYchWjHBhxwD0VpfOgDCLj0
 ajm+EMgC0QVToI5VOrKtJCexY/b6zrkCH/3IGpLd0R5iJz1Kt5DKjtjf8
 21tqxTzAfy678LFiJNstAA7NlPROeLVq/3t99QdjVJ4vG5jhT+1faxhRh
 b8OwE47uQV9QLSy4XRAH+gH/L9ryxftvj44B5+KMeaPMKov+IbWrLcz7+
 hKLMrFKa2Ldq5uN+y2lv6Pw3CWkIB9hTRXme62IL/yk9ZHjWuATqc4/LQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246142665"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="246142665"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="562877877"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:35 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 18:08:23 -0800
Message-Id: <20220125020826.2693097-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220125020826.2693097-1-matthew.d.roper@intel.com>
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: Parameterize R_PWR_CLK_STATE
 register definition
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the moment we only use R_PWR_CLK_STATE in the context of the RCS
engine, but upcoming support for compute engines will start using
instances relative to the CCS engine base offsets.  Let's parameterize
the register and move it to the engine reg header.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/gem/selftests/i915_gem_context.c |  3 ++-
 drivers/gpu/drm/i915/gt/intel_engine_regs.h       | 15 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_sseu.c              |  2 +-
 drivers/gpu/drm/i915/i915_perf.c                  |  4 ++--
 drivers/gpu/drm/i915/i915_reg.h                   | 15 ---------------
 5 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 80d99b9c694f..7cc4fa8f8c56 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -8,6 +8,7 @@
 
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_engine_pm.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_reset.h"
@@ -894,7 +895,7 @@ static int rpcs_query_batch(struct drm_i915_gem_object *rpcs, struct i915_vma *v
 		return PTR_ERR(cmd);
 
 	*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
-	*cmd++ = i915_mmio_reg_offset(GEN8_R_PWR_CLK_STATE);
+	*cmd++ = i915_mmio_reg_offset(GEN8_R_PWR_CLK_STATE(RENDER_RING_BASE));
 	*cmd++ = lower_32_bits(vma->node.start);
 	*cmd++ = upper_32_bits(vma->node.start);
 	*cmd = MI_BATCH_BUFFER_END;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 60511f310767..daf4a241cf77 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -77,6 +77,21 @@
 #define RING_INSTPM(base)			_MMIO((base) + 0xc0)
 #define RING_CMD_CCTL(base)			_MMIO((base) + 0xc4)
 #define ACTHD(base)				_MMIO((base) + 0xc8)
+#define GEN8_R_PWR_CLK_STATE(base)		_MMIO((base) + 0xc8)
+#define   GEN8_RPCS_ENABLE			(1 << 31)
+#define   GEN8_RPCS_S_CNT_ENABLE		(1 << 18)
+#define   GEN8_RPCS_S_CNT_SHIFT			15
+#define   GEN8_RPCS_S_CNT_MASK			(0x7 << GEN8_RPCS_S_CNT_SHIFT)
+#define   GEN11_RPCS_S_CNT_SHIFT		12
+#define   GEN11_RPCS_S_CNT_MASK			(0x3f << GEN11_RPCS_S_CNT_SHIFT)
+#define   GEN8_RPCS_SS_CNT_ENABLE		(1 << 11)
+#define   GEN8_RPCS_SS_CNT_SHIFT		8
+#define   GEN8_RPCS_SS_CNT_MASK			(0x7 << GEN8_RPCS_SS_CNT_SHIFT)
+#define   GEN8_RPCS_EU_MAX_SHIFT		4
+#define   GEN8_RPCS_EU_MAX_MASK			(0xf << GEN8_RPCS_EU_MAX_SHIFT)
+#define   GEN8_RPCS_EU_MIN_SHIFT		0
+#define   GEN8_RPCS_EU_MIN_MASK			(0xf << GEN8_RPCS_EU_MIN_SHIFT)
+
 #define RING_RESET_CTL(base)			_MMIO((base) + 0xd0)
 #define   RESET_CTL_CAT_ERROR			REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET		REG_BIT(1)
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index bdf09051b8a0..f161087f30d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -4,7 +4,7 @@
  */
 
 #include "i915_drv.h"
-#include "intel_lrc_reg.h"
+#include "intel_engine_regs.h"
 #include "intel_sseu.h"
 
 void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 804e87b6ed0c..1253e396a911 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2420,7 +2420,7 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
 {
 	struct flex regs[] = {
 		{
-			GEN8_R_PWR_CLK_STATE,
+			GEN8_R_PWR_CLK_STATE(RENDER_RING_BASE),
 			CTX_R_PWR_CLK_STATE,
 		},
 	};
@@ -2440,7 +2440,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
 #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
 	struct flex regs[] = {
 		{
-			GEN8_R_PWR_CLK_STATE,
+			GEN8_R_PWR_CLK_STATE(RENDER_RING_BASE),
 			CTX_R_PWR_CLK_STATE,
 		},
 		{
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7f8f88904077..573dea4516ef 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -272,21 +272,6 @@
 #define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
 #define GEN12_SFC_DONE_MAX		4
 
-#define GEN8_R_PWR_CLK_STATE		_MMIO(0x20C8)
-#define   GEN8_RPCS_ENABLE		(1 << 31)
-#define   GEN8_RPCS_S_CNT_ENABLE	(1 << 18)
-#define   GEN8_RPCS_S_CNT_SHIFT		15
-#define   GEN8_RPCS_S_CNT_MASK		(0x7 << GEN8_RPCS_S_CNT_SHIFT)
-#define   GEN11_RPCS_S_CNT_SHIFT	12
-#define   GEN11_RPCS_S_CNT_MASK		(0x3f << GEN11_RPCS_S_CNT_SHIFT)
-#define   GEN8_RPCS_SS_CNT_ENABLE	(1 << 11)
-#define   GEN8_RPCS_SS_CNT_SHIFT	8
-#define   GEN8_RPCS_SS_CNT_MASK		(0x7 << GEN8_RPCS_SS_CNT_SHIFT)
-#define   GEN8_RPCS_EU_MAX_SHIFT	4
-#define   GEN8_RPCS_EU_MAX_MASK		(0xf << GEN8_RPCS_EU_MAX_SHIFT)
-#define   GEN8_RPCS_EU_MIN_SHIFT	0
-#define   GEN8_RPCS_EU_MIN_MASK		(0xf << GEN8_RPCS_EU_MIN_SHIFT)
-
 #define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
 /* HSW only */
 #define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT		2
-- 
2.34.1

