Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34BE501D18
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CCB10E3AB;
	Thu, 14 Apr 2022 21:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA8410E255
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970426; x=1681506426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ooKGP50M62APUQD2KL8mwoslBkzrY7N5/dMAiUymiaU=;
 b=Bw+QASjJDk33ebo0SII4gxnYxneOw5B5ISTbNtNcHUwCopiug6bBgATM
 zwQu/cSGNThK4PerCzhL91yz/CwXNsoh878PIjVqwNNREQGPbqUud2BM/
 yOATtrUXH65LqxTVxK2j//vyma0pRqp5ylSf6c5l9AzOkI8XBsgMv6rGQ
 4yChBB41sIMRxHwU4l1C1buem5Iea9O4CF8gV2oplfZcc07lQu+CuIgiT
 rkmWgxtXPB0TPJVSmHFk3c4tr9/M0dISJNrzjIpSki7ZR3FtXqt3K8iwY
 6y9z1xAmBEyKNCevUmehCZ8hEcE1ozXEVpvo4eT5v4g7QGaCWTNKacPqr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089719"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089719"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550316"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:43 +0300
Message-Id: <20220414210657.1785773-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 04/18] drm/i915: Move the dg2 fixed_enable_delay
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_map.c | 10 +++++-----
 .../drm/i915/display/intel_display_power_well.c    |  5 ++---
 .../drm/i915/display/intel_display_power_well.h    | 14 +++++++-------
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 97e0daec95449..e1824936a998f 100644
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
index b49f0de30296f..0c90577de5d79 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -243,15 +243,14 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
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
index c4a8a3d728e06..cb4681d0ffc6a 100644
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
2.30.2

