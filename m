Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70B949EEF8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3906610E503;
	Thu, 27 Jan 2022 23:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4614310E41C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643327022; x=1674863022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3VW9rQqYqrJvoRrXOW4pOwxSg3/C30NsuMVPIao2Tpw=;
 b=nyCyIHJJ8aEqAjSoMTzwkVWk5P0ehZgoIXSUgDi0NdNJpf5SBKsj71zy
 +tYg/1DKDh6NKaeKB6Q4qMFVze7lDG8h+XrPoajg+n/Xgp01ddSmOfs0c
 W7N2PUFpbH7rlMQAHGf1DJcy6wn7q2Ydc0UyedIISD+hWnT6DagNfvZ6b
 MHKVRLePAdkjOsv2R1enqwHBnjekTl+wUiQp3gDwFabNjHlEH6iWuzXMJ
 S23CCMzNzlAefw2AbKNJu3G6tE2px0hh7tGZhjqoOrckffYtpYxOmZfLf
 f/HdxzNs8eeZFKySrRKL313ViN06xkCmyJQSjzqy1bJU5hHgTmJ7xrJgy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226973775"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226973775"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521448544"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:43:31 -0800
Message-Id: <20220127234334.4016964-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127234334.4016964-1-matthew.d.roper@intel.com>
References: <20220127234334.4016964-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 3/6] drm/i915: Parameterize R_PWR_CLK_STATE
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the moment we only use R_PWR_CLK_STATE in the context of the RCS
engine, but upcoming support for compute engines will start using
instances relative to the CCS engine base offsets.  Let's parameterize
the register and move it to the engine reg header.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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
index 87c28d46c48a..656b019fdb6f 100644
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
index b943b74f47f1..5a90e664059f 100644
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

