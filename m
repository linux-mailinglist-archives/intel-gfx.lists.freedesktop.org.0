Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA11091C9DA
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2024 02:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B39D10E02A;
	Sat, 29 Jun 2024 00:56:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjDjDZjM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8F110E02A
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2024 00:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719622607; x=1751158607;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZN3dZrgjkVlwUD2Cspy/cX13Jysr2L+pHGxouvXh+DU=;
 b=JjDjDZjMORnHYF+1v1kUF0KxVybHLx7pAGGwKfPuLUa9lp/vjqsQhNnj
 6cknOh7DIU0hLjKJfTAQ6MCVsTgpnjUEoR1rwuRxa1uUpWmtDMV5qwGbp
 gGUFRe0K7Yp/XdCJ/6i0E/A7cd3stHx066U6SVJnyNaXr5+pNS8I88N7w
 LkGlmeVR7oTE0A20zFuhNJgwrgNkIe+qGqFhCtLIGPdIF6vxeKQsV1IOD
 0n1RE2SFHtyucinfVa2omHbWuSfEYFcBcW2BLNCL2u2YjqIFNpJXZKwDe
 RaobWXTCynhj+NNceOlcN4HFhrCJb8ovuk56eK2q0bjPOFZfXODYz4ojU w==;
X-CSE-ConnectionGUID: xaWDQ1L6QPWyJKy+555P4Q==
X-CSE-MsgGUID: 9Tdfg4mAQX2fI35fmPMCRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="17044626"
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="17044626"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 17:56:47 -0700
X-CSE-ConnectionGUID: XbPXB/hSQlCrB6PXZ6kF2Q==
X-CSE-MsgGUID: 0A+LGr/6QaynZ/Df/jX+Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="44936843"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 17:56:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: [PATCH] i915/perf: Remove code to update PWR_CLK_STATE for gen12
Date: Fri, 28 Jun 2024 17:56:43 -0700
Message-Id: <20240629005643.3050678-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PWR_CLK_STATE only needs to be modified up until gen11. For gen12 this
code is not applicable. Remove code to update context image with
PWR_CLK_STATE for gen12.

Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 33 --------------------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0b1cd4c7a525..025a79fe5920 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2748,26 +2748,6 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	return 0;
 }
 
-static int
-gen12_configure_all_contexts(struct i915_perf_stream *stream,
-			     const struct i915_oa_config *oa_config,
-			     struct i915_active *active)
-{
-	struct flex regs[] = {
-		{
-			GEN8_R_PWR_CLK_STATE(RENDER_RING_BASE),
-			CTX_R_PWR_CLK_STATE,
-		},
-	};
-
-	if (stream->engine->class != RENDER_CLASS)
-		return 0;
-
-	return oa_configure_all_contexts(stream,
-					 regs, ARRAY_SIZE(regs),
-					 active);
-}
-
 static int
 lrc_configure_all_contexts(struct i915_perf_stream *stream,
 			   const struct i915_oa_config *oa_config,
@@ -2874,7 +2854,6 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_uncore *uncore = stream->uncore;
-	struct i915_oa_config *oa_config = stream->oa_config;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
 	u32 sqcnt1;
@@ -2918,15 +2897,6 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 
 	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, sqcnt1);
 
-	/*
-	 * Update all contexts prior writing the mux configurations as we need
-	 * to make sure all slices/subslices are ON before writing to NOA
-	 * registers.
-	 */
-	ret = gen12_configure_all_contexts(stream, oa_config, active);
-	if (ret)
-		return ret;
-
 	/*
 	 * For Gen12, performance counters are context
 	 * saved/restored. Only enable it for the context that
@@ -2980,9 +2950,6 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 				   _MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
 	}
 
-	/* Reset all contexts' slices/subslices configurations. */
-	gen12_configure_all_contexts(stream, NULL, NULL);
-
 	/* disable the context save/restore or OAR counters */
 	if (stream->ctx)
 		gen12_configure_oar_context(stream, NULL);
-- 
2.38.1

