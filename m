Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E58143C7CAF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1706E182;
	Wed, 14 Jul 2021 03:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604676E167
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085870"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085870"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031567"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:25 -0700
Message-Id: <20210714031540.3539704-36-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 35/50] drm/i915/dg2: Don't wait for AUX power
 well enable ACKs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On DG2 we're supposed to just wait 600us after programming the well
before moving on; there won't be an ack from the hardware.

Bspec: 49296
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_power.h   |  6 ++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d92db471411e..04af987f3324 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -341,6 +341,17 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 	int pw_idx = power_well->desc->hsw.idx;
+	int enable_delay = power_well->desc->hsw.fixed_enable_delay;
+
+	/*
+	 * For some power wells we're not supposed to watch the status bit for
+	 * an ack, but rather just wait a fixed amount of time and then
+	 * proceed.  This is only used on DG2.
+	 */
+	if (IS_DG2(dev_priv) && enable_delay) {
+		usleep_range(enable_delay, 2 * enable_delay);
+		return;
+	}
 
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
@@ -4828,6 +4839,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+			.hsw.fixed_enable_delay = 600,
 		},
 	},
 	{
@@ -4838,6 +4850,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+			.hsw.fixed_enable_delay = 600,
 		},
 	},
 	{
@@ -4848,6 +4861,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
+			.hsw.fixed_enable_delay = 600,
 		},
 	},
 	{
@@ -4858,6 +4872,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
+			.hsw.fixed_enable_delay = 600,
 		},
 	},
 	{
@@ -4878,6 +4893,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
+			.hsw.fixed_enable_delay = 600,
 		},
 	},
 	{
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 4f0917df4375..22367b5cba96 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -223,6 +223,12 @@ struct i915_power_well_desc {
 			u8 idx;
 			/* Mask of pipes whose IRQ logic is backed by the pw */
 			u8 irq_pipe_mask;
+			/*
+			 * Instead of waiting for the status bit to ack enables,
+			 * just wait a specific amount of time and then consider
+			 * the well enabled.
+			 */
+			u16 fixed_enable_delay;
 			/* The pw is backing the VGA functionality */
 			bool has_vga:1;
 			bool has_fuses:1;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
