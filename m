Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4084EB20B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7568010F126;
	Tue, 29 Mar 2022 16:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE7010F0D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572363; x=1680108363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/q6sLRNkmFNkxLXhdglHjHVDgWwiAnBwXxejJLfKj6c=;
 b=MLX73nZh7u16OQR/3DaxvVuhVJ+Mn7tmpZTto9BZQsCQiDafgfYbP32g
 B0uw7vNBg0KJ51fG57px0CbA0psie8QgIXTXJeq/tt5YLfqQY4jnh69Of
 5e0/vJv1xQSgh+Bul8R8/yXipclZ9pfLz0CWWMNn0hrYQ8/1cg41+suie
 f/wbnruYnSp0ZYUmL1oUVbwGmx1x+ccSnkK7nFujn4766Nawe411TeImK
 F1ecs4ex0Xya6EPr6Q9zVXRonHMXUpG4VLATMxZtjLCz8mzZw6LgAE7ic
 EflYlTPNs5viwRaeh2W/PBOD0+vSlfarPKJaKMXuUPTb0cPOWfwhY9fkW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239237122"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239237122"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513841"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:22 +0300
Message-Id: <20220329164336.1199359-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/18] drm/i915: Move the dg2
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

