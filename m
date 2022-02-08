Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8444AD785
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48AE10E635;
	Tue,  8 Feb 2022 11:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76E610E605
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320235; x=1675856235;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TuZ9aWORdNsR272gCqQAGt5KIo/Uw81nQrjzJ9WUqs0=;
 b=FgRpLU3WzMr4u4As6H+TZnD+Jy2qOc0qWzkWV4+V7WB4V8Fyxcpk43cy
 kbLn5gGWaFMsPU946s507WZW2+3TfspJCXYpGNPuB+EF/V9QO+tuWusA8
 /vzhXTQf3rFm4Sbl1h0XyfYZt3On6f5qb3L2adCFGWpgt856MsH4hY1Qu
 hk4oRIwGjtmXCNUGR0sBr4Eoqr0yfAXpiLLRjf6u+bHqP3SyjjIA5h1tO
 00PT1WBmegMJOJ4uYV6KdG9O242KoxBMaCn4fXuBRCZM2t2gzMxFSEBlc
 ANyxQUSYKmxE3MS9l4BCFWVHOZvGLw1CKmGBvYe09KLuBasiL11EjmEfB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495983"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495983"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915294"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:14 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:42 +0200
Message-Id: <20220208113656.179823-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/26] drm/i915: Move the dg2
 fixed_enable_delay power well param to a common bitfield
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

The DG2 fixed delay duration is always 600usec, so save some space in
the power well descriptors by converting the parameter to a flag. While
at it also use a bitfield for both the always_on and fixed_enable_delay
flag.

This change also lets simplifying the definiton of power wells sharing
the same flags in an upcoming patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_map.c | 10 +++++-----
 .../drm/i915/display/intel_display_power_well.c    |  5 ++---
 .../drm/i915/display/intel_display_power_well.h    | 14 +++++++-------
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 998cc7ad399f0..18fa146fb761f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1920,37 +1920,37 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.name = "AUX A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-			.hsw.fixed_enable_delay = 600,
 		},
 	}, {
 		.name = "AUX B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-			.hsw.fixed_enable_delay = 600,
 		},
 	}, {
 		.name = "AUX C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-			.hsw.fixed_enable_delay = 600,
 		},
 	}, {
 		.name = "AUX D_XELPD",
 		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
-			.hsw.fixed_enable_delay = 600,
 		},
 	}, {
 		.name = "AUX E_XELPD",
@@ -1964,10 +1964,10 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.name = "AUX USBC1",
 		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.fixed_enable_delay = 600,
 		},
 	}, {
 		.name = "AUX USBC2",
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index a92bb807f1972..0e13c15edfdd2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -242,15 +242,14 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
-	int enable_delay = power_well->desc->hsw.fixed_enable_delay;
 
 	/*
 	 * For some power wells we're not supposed to watch the status bit for
 	 * an ack, but rather just wait a fixed amount of time and then
 	 * proceed.  This is only used on DG2.
 	 */
-	if (IS_DG2(dev_priv) && enable_delay) {
-		usleep_range(enable_delay, 2 * enable_delay);
+	if (IS_DG2(dev_priv) && power_well->desc->fixed_enable_delay) {
+		usleep_range(600, 1200);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 473b65269896c..b3d8baa2b7d41 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -50,8 +50,14 @@ enum i915_power_well_id {
 
 struct i915_power_well_desc {
 	const char *name;
-	bool always_on;
 	u64 domains;
+	u8 always_on:1;
+	/*
+	 * Instead of waiting for the status bit to ack enables,
+	 * just wait a specific amount of time and then consider
+	 * the well enabled.
+	 */
+	u8 fixed_enable_delay:1;
 	/* unique identifier for this power well */
 	enum i915_power_well_id id;
 	/*
@@ -77,12 +83,6 @@ struct i915_power_well_desc {
 			u8 idx;
 			/* Mask of pipes whose IRQ logic is backed by the pw */
 			u8 irq_pipe_mask;
-			/*
-			 * Instead of waiting for the status bit to ack enables,
-			 * just wait a specific amount of time and then consider
-			 * the well enabled.
-			 */
-			u16 fixed_enable_delay;
 			/* The pw is backing the VGA functionality */
 			bool has_vga:1;
 			bool has_fuses:1;
-- 
2.27.0

