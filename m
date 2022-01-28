Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 546B049F8A6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C50510E734;
	Fri, 28 Jan 2022 11:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEDF10E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370565; x=1674906565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZIk5HcK66h+SXYO98pjrNQP0h6a+Rp8uDGCqjepbchI=;
 b=bunF6v8Q/KQtFp++x9nKbZztaDxHTSoEWT7tA33DblXHuCkwf7fbQFus
 MzYRWeNKFzk+lA/V7NyDyp9axQaJdIU9bAR4ce/Wo7ow7rm5ebC0X7mV6
 JJhVjyFkYsj3aHt1zOaaj1qtbedt0ivIC3tNYqoVOXwjKiVmajRzGBD4+
 ypHpnwpxrnHuyqpATjfUP8akA+q8XI7Zl8sxMzy6Yn1NMdRZcaEMhT2w7
 FtRbAPx+s/xN+qHU3SkkiO7N8TQXLI6WA5uHbZK5SfTc98TDbGPNoXmoZ
 EqZFWYqxaV/4yUbykxGbPv7mumGsAAmhAl2SO5jNaRT1Ho7sjiVXXcEwx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420926"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420926"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712829"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:00 +0200
Message-Id: <20220128114914.2339526-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/19] drm/i915: Move the dg2 fixed_enable_delay
 power well param to a common bitfield
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
 drivers/gpu/drm/i915/display/intel_display_power.c |  5 ++---
 .../i915/display/intel_display_power_internal.h    | 14 +++++++-------
 .../gpu/drm/i915/display/intel_display_power_map.c | 10 +++++-----
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2ec9c7bd65640..ceac9c1a7693c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -265,15 +265,14 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
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
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
index 3fc7c7d0bc9e9..540668a1708b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_internal.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
@@ -16,8 +16,14 @@ struct i915_power_well_regs;
 /* Power well structure for haswell */
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
@@ -43,12 +49,6 @@ struct i915_power_well_desc {
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index e8732f6e85098..5daa20168b1e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -2057,37 +2057,37 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
@@ -2101,10 +2101,10 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
-- 
2.27.0

