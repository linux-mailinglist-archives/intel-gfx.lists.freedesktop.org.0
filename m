Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1EF501D1E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6408110E4C4;
	Thu, 14 Apr 2022 21:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A11910E47A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970435; x=1681506435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/uhpYN+mtOG9i1MXEIGkuA0ie9qFVRISmp+r5KsGUvw=;
 b=PTeFZTrDubXRNm9qRnmbqmzU1+G92iYPlxGCCHZPZzhow1f6IhHoKfmy
 2mpiZoJW1o//2kYlCrZiZEq4SzXRUaQ11z0nVm4nJGvpR0bTc9XnzjDi4
 hURzF3xvurUCXJBgsI/iKriAzVinYaGlhksx8k2UyfblRAzEUCnjKpjRz
 z5Elce8Cv126t+IUFIDqP0D82tbRCIQ515jUDpq4UT+NwI/32SZQ41W7k
 iocbiiUoW2qVQTokSfCx/ICgchahgAesTpLWZ052QqPeduXbWGavDxm1/
 lZVT9Fq5y9lDSrIsZLwmWw8RupE9E7z9mxYEVc6mJQ81uP2x8BHEQ7nzH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089759"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089759"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550380"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:49 +0300
Message-Id: <20220414210657.1785773-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 10/18] drm/i915: Simplify power well definitions by
 adding power well instances
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

All the port specific AUX/DDI_IO power wells share the same power well
ops struct and flags, so we can save some space and simplify the
definition of these by listing for all such power wells only the params
specific to them (name, domains, power well register index, id). Move
these params to a new i915_power_well_instance struct and convert the
per-platform power well definitions accordingly.

For all power well instance the name and power domain list params must
be specified, while the register index and id are optional, add the
I915_PW() macro that both simplifies the definitions and ensures that
the required params are set.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 1515 +++++------------
 .../i915/display/intel_display_power_well.c   |   72 +-
 .../i915/display/intel_display_power_well.h   |   48 +-
 3 files changed, 505 insertions(+), 1130 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index a9e0ebf18fca5..c282e05bfc1ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -30,16 +30,23 @@
 #define I915_PW_DOMAINS_NONE	NULL
 #define I915_PW_DOMAINS_ALL	/* zero-length list */
 
+#define I915_PW_INSTANCES(...) \
+	(const struct i915_power_well_instance_list) \
+		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))
+
+#define I915_PW(_name, _domain_list, ...) \
+	{ .name = _name, .domain_list = _domain_list, ## __VA_ARGS__ }
+
 
 I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
 
 static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	},
 };
 
@@ -54,16 +61,16 @@ I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
 
 static const struct i915_power_well_desc i830_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "pipes",
-		.domain_list = &i830_pwdoms_pipes,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("pipes", &i830_pwdoms_pipes),
+		),
 		.ops = &i830_pipes_power_well_ops,
-		.id = DISP_PW_ID_NONE,
 	},
 };
 
@@ -87,20 +94,19 @@ I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
 
 static const struct i915_power_well_desc hsw_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "display",
-		.domain_list = &hsw_pwdoms_display,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("display", &hsw_pwdoms_display,
+				.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
+				.id = HSW_DISP_PW_GLOBAL),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
-		.id = HSW_DISP_PW_GLOBAL,
-		{
-			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-		},
 	},
 };
 
@@ -123,21 +129,20 @@ I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
 
 static const struct i915_power_well_desc bdw_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "display",
-		.domain_list = &bdw_pwdoms_display,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("display", &bdw_pwdoms_display,
+				.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
+				.id = HSW_DISP_PW_GLOBAL),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-		.id = HSW_DISP_PW_GLOBAL,
-		{
-			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-		},
 	},
 };
 
@@ -178,59 +183,37 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
 
 static const struct i915_power_well_desc vlv_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "display",
-		.domain_list = &vlv_pwdoms_display,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("display", &vlv_pwdoms_display,
+				.vlv.idx = PUNIT_PWGT_IDX_DISP2D,
+				.id = VLV_DISP_PW_DISP2D),
+		),
 		.ops = &vlv_display_power_well_ops,
-		.id = VLV_DISP_PW_DISP2D,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DISP2D,
-		},
 	}, {
-		.name = "dpio-tx-b-01",
-		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("dpio-tx-b-01", &vlv_pwdoms_dpio_tx_bc_lanes,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01),
+			I915_PW("dpio-tx-b-23", &vlv_pwdoms_dpio_tx_bc_lanes,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23),
+			I915_PW("dpio-tx-c-01", &vlv_pwdoms_dpio_tx_bc_lanes,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01),
+			I915_PW("dpio-tx-c-23", &vlv_pwdoms_dpio_tx_bc_lanes,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23),
+		),
 		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01,
-		},
 	}, {
-		.name = "dpio-tx-b-23",
-		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23,
-		},
-	}, {
-		.name = "dpio-tx-c-01",
-		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01,
-		},
-	}, {
-		.name = "dpio-tx-c-23",
-		.domain_list = &vlv_pwdoms_dpio_tx_bc_lanes,
-		.ops = &vlv_dpio_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23,
-		},
-	}, {
-		.name = "dpio-common",
-		.domain_list = &vlv_pwdoms_dpio_cmn_bc,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("dpio-common", &vlv_pwdoms_dpio_cmn_bc,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
+				.id = VLV_DISP_PW_DPIO_CMN_BC),
+		),
 		.ops = &vlv_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
-		},
 	},
 };
 
@@ -272,37 +255,31 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
 
 static const struct i915_power_well_desc chv_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "display",
 		/*
 		 * Pipe A power well is the new disp2d well. Pipe B and C
 		 * power wells don't actually exist. Pipe A power well is
 		 * required for any pipe to work.
 		 */
-		.domain_list = &chv_pwdoms_display,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("display", &chv_pwdoms_display),
+		),
 		.ops = &chv_pipe_power_well_ops,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "dpio-common-bc",
-		.domain_list = &chv_pwdoms_dpio_cmn_bc,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("dpio-common-bc", &chv_pwdoms_dpio_cmn_bc,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
+				.id = VLV_DISP_PW_DPIO_CMN_BC),
+			I915_PW("dpio-common-d", &chv_pwdoms_dpio_cmn_d,
+				.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_D,
+				.id = CHV_DISP_PW_DPIO_CMN_D),
+		),
 		.ops = &chv_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_BC,
-		},
-	}, {
-		.name = "dpio-common-d",
-		.domain_list = &chv_pwdoms_dpio_cmn_d,
-		.ops = &chv_dpio_cmn_power_well_ops,
-		.id = CHV_DISP_PW_DPIO_CMN_D,
-		{
-			.vlv.idx = PUNIT_PWGT_IDX_DPIO_CMN_D,
-		},
 	},
 };
 
@@ -355,80 +332,54 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
 
 static const struct i915_power_well_desc skl_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "MISC_IO",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("MISC_IO", I915_PW_DOMAINS_NONE,
+				.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
+				.id = SKL_DISP_PW_MISC_IO),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
-		.id = SKL_DISP_PW_MISC_IO,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &skl_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &skl_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &skl_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &skl_pwdoms_pw_2,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "DDI_IO_A_E",
-		.domain_list = &skl_pwdoms_ddi_io_a_e,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A_E", &skl_pwdoms_ddi_io_a_e, .hsw.idx = SKL_PW_CTL_IDX_DDI_A_E),
+			I915_PW("DDI_IO_B", &skl_pwdoms_ddi_io_b, .hsw.idx = SKL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &skl_pwdoms_ddi_io_c, .hsw.idx = SKL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_D", &skl_pwdoms_ddi_io_d, .hsw.idx = SKL_PW_CTL_IDX_DDI_D),
+		),
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
-		},
-	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &skl_pwdoms_ddi_io_b,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
-		},
-	}, {
-		.name = "DDI_IO_C",
-		.domain_list = &skl_pwdoms_ddi_io_c,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
-		},
-	}, {
-		.name = "DDI_IO_D",
-		.domain_list = &skl_pwdoms_ddi_io_d,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
-		},
 	},
 };
 
@@ -474,54 +425,47 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
 
 static const struct i915_power_well_desc bxt_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &bxt_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &bxt_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &bxt_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &bxt_pwdoms_pw_2,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "dpio-common-a",
-		.domain_list = &bxt_pwdoms_dpio_cmn_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("dpio-common-a", &bxt_pwdoms_dpio_cmn_a,
+				.bxt.phy = DPIO_PHY1,
+				.id = BXT_DISP_PW_DPIO_CMN_A),
+			I915_PW("dpio-common-bc", &bxt_pwdoms_dpio_cmn_bc,
+				.bxt.phy = DPIO_PHY0,
+				.id = VLV_DISP_PW_DPIO_CMN_BC),
+		),
 		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = BXT_DISP_PW_DPIO_CMN_A,
-		{
-			.bxt.phy = DPIO_PHY1,
-		},
-	}, {
-		.name = "dpio-common-bc",
-		.domain_list = &bxt_pwdoms_dpio_cmn_bc,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.bxt.phy = DPIO_PHY0,
-		},
 	},
 };
 
@@ -587,110 +531,60 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
 
 static const struct i915_power_well_desc glk_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &glk_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &glk_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &glk_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &glk_pwdoms_pw_2,
+				.hsw.idx = SKL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "dpio-common-a",
-		.domain_list = &glk_pwdoms_dpio_cmn_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("dpio-common-a", &glk_pwdoms_dpio_cmn_a,
+				.bxt.phy = DPIO_PHY1,
+				.id = BXT_DISP_PW_DPIO_CMN_A),
+			I915_PW("dpio-common-b", &glk_pwdoms_dpio_cmn_b,
+				.bxt.phy = DPIO_PHY0,
+				.id = VLV_DISP_PW_DPIO_CMN_BC),
+			I915_PW("dpio-common-c", &glk_pwdoms_dpio_cmn_c,
+				.bxt.phy = DPIO_PHY2,
+				.id = GLK_DISP_PW_DPIO_CMN_C),
+		),
 		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = BXT_DISP_PW_DPIO_CMN_A,
-		{
-			.bxt.phy = DPIO_PHY1,
-		},
 	}, {
-		.name = "dpio-common-b",
-		.domain_list = &glk_pwdoms_dpio_cmn_b,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = VLV_DISP_PW_DPIO_CMN_BC,
-		{
-			.bxt.phy = DPIO_PHY0,
-		},
-	}, {
-		.name = "dpio-common-c",
-		.domain_list = &glk_pwdoms_dpio_cmn_c,
-		.ops = &bxt_dpio_cmn_power_well_ops,
-		.id = GLK_DISP_PW_DPIO_CMN_C,
-		{
-			.bxt.phy = DPIO_PHY2,
-		},
-	}, {
-		.name = "AUX_A",
-		.domain_list = &glk_pwdoms_aux_a,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &glk_pwdoms_aux_b,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_C",
-		.domain_list = &glk_pwdoms_aux_c,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
-		},
-	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &glk_pwdoms_ddi_io_a,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
-		},
-	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &glk_pwdoms_ddi_io_b,
-		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
-		},
-	}, {
-		.name = "DDI_IO_C",
-		.domain_list = &glk_pwdoms_ddi_io_c,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &glk_pwdoms_aux_a, .hsw.idx = GLK_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &glk_pwdoms_aux_b, .hsw.idx = GLK_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_C", &glk_pwdoms_aux_c, .hsw.idx = GLK_PW_CTL_IDX_AUX_C),
+			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = GLK_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = SKL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &glk_pwdoms_ddi_io_c, .hsw.idx = SKL_PW_CTL_IDX_DDI_C),
+		),
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
-		},
 	},
 };
 
@@ -790,193 +684,82 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT_F);
 
 static const struct i915_power_well_desc icl_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &icl_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &icl_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &icl_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &icl_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "PW_3",
-		.domain_list = &icl_pwdoms_pw_3,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_3", &icl_pwdoms_pw_3,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+				.id = ICL_DISP_PW_3),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-		},
 	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &icl_pwdoms_ddi_io_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_D", &icl_pwdoms_ddi_io_d, .hsw.idx = ICL_PW_CTL_IDX_DDI_D),
+			I915_PW("DDI_IO_E", &icl_pwdoms_ddi_io_e, .hsw.idx = ICL_PW_CTL_IDX_DDI_E),
+			I915_PW("DDI_IO_F", &icl_pwdoms_ddi_io_f, .hsw.idx = ICL_PW_CTL_IDX_DDI_F),
+		),
 		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		},
 	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &icl_pwdoms_ddi_io_b,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		},
-	}, {
-		.name = "DDI_IO_C",
-		.domain_list = &icl_pwdoms_ddi_io_c,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		},
-	}, {
-		.name = "DDI_IO_D",
-		.domain_list = &icl_pwdoms_ddi_io_d,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
-		},
-	}, {
-		.name = "DDI_IO_E",
-		.domain_list = &icl_pwdoms_ddi_io_e,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
-		},
-	}, {
-		.name = "DDI_IO_F",
-		.domain_list = &icl_pwdoms_ddi_io_f,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
-		},
-	}, {
-		.name = "AUX_A",
-		.domain_list = &icl_pwdoms_aux_a,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &icl_pwdoms_aux_b,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
+			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = ICL_PW_CTL_IDX_AUX_D),
+			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = ICL_PW_CTL_IDX_AUX_E),
+			I915_PW("AUX_F", &icl_pwdoms_aux_f, .hsw.idx = ICL_PW_CTL_IDX_AUX_F),
+		),
 		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_C",
-		.domain_list = &icl_pwdoms_aux_c,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-		},
-	}, {
-		.name = "AUX_D",
-		.domain_list = &icl_pwdoms_aux_d,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
-		},
-	}, {
-		.name = "AUX_E",
-		.domain_list = &icl_pwdoms_aux_e,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
-		},
-	}, {
-		.name = "AUX_F",
-		.domain_list = &icl_pwdoms_aux_f,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
-		},
-	}, {
-		.name = "AUX_TBT1",
-		.domain_list = &icl_pwdoms_aux_tbt1,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
-		},
-	}, {
-		.name = "AUX_TBT2",
-		.domain_list = &icl_pwdoms_aux_tbt2,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
-		},
-	}, {
-		.name = "AUX_TBT3",
-		.domain_list = &icl_pwdoms_aux_tbt3,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
-		},
 	}, {
-		.name = "AUX_TBT4",
-		.domain_list = &icl_pwdoms_aux_tbt4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1),
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2),
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3),
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4),
+		),
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
-		},
 	}, {
-		.name = "PW_4",
-		.domain_list = &icl_pwdoms_pw_4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_4", &icl_pwdoms_pw_4,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
 		.has_fuses = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-		},
 	},
 };
 
@@ -1087,276 +870,104 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
 
 static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &tgl_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &tgl_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &tgl_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &tgl_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "PW_3",
-		.domain_list = &tgl_pwdoms_pw_3,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_3", &tgl_pwdoms_pw_3,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+				.id = ICL_DISP_PW_3),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-		},
 	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &icl_pwdoms_ddi_io_a,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &icl_pwdoms_ddi_io_b,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	}, {
-		.name = "DDI_IO_C",
-		.domain_list = &icl_pwdoms_ddi_io_c,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		}
-	}, {
-		.name = "DDI_IO_TC1",
-		.domain_list = &tgl_pwdoms_ddi_io_tc1,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	}, {
-		.name = "DDI_IO_TC2",
-		.domain_list = &tgl_pwdoms_ddi_io_tc2,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	}, {
-		.name = "DDI_IO_TC3",
-		.domain_list = &tgl_pwdoms_ddi_io_tc3,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
-		},
-	}, {
-		.name = "DDI_IO_TC4",
-		.domain_list = &tgl_pwdoms_ddi_io_tc4,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
-		},
-	}, {
-		.name = "DDI_IO_TC5",
-		.domain_list = &tgl_pwdoms_ddi_io_tc5,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
-		},
-	}, {
-		.name = "DDI_IO_TC6",
-		.domain_list = &tgl_pwdoms_ddi_io_tc6,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC6,
-		},
-	}, {
-		.name = "TC_cold_off",
-		.domain_list = &tgl_pwdoms_tc_cold_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
+			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
+			I915_PW("DDI_IO_TC4", &tgl_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),
+			I915_PW("DDI_IO_TC5", &tgl_pwdoms_ddi_io_tc5, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC5),
+			I915_PW("DDI_IO_TC6", &tgl_pwdoms_ddi_io_tc6, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC6),
+		),
+		.ops = &icl_ddi_power_well_ops,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("TC_cold_off", &tgl_pwdoms_tc_cold_off,
+				.id = TGL_DISP_PW_TC_COLD_OFF),
+		),
 		.ops = &tgl_tc_cold_off_ops,
-		.id = TGL_DISP_PW_TC_COLD_OFF,
 	}, {
-		.name = "AUX_A",
-		.domain_list = &tgl_pwdoms_aux_a,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &tgl_pwdoms_aux_b,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_C",
-		.domain_list = &tgl_pwdoms_aux_c,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-		},
-	}, {
-		.name = "AUX_USBC1",
-		.domain_list = &tgl_pwdoms_aux_usbc1,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-		},
-	}, {
-		.name = "AUX_USBC2",
-		.domain_list = &tgl_pwdoms_aux_usbc2,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
-	}, {
-		.name = "AUX_USBC3",
-		.domain_list = &tgl_pwdoms_aux_usbc3,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
-		},
-	}, {
-		.name = "AUX_USBC4",
-		.domain_list = &tgl_pwdoms_aux_usbc4,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
-		},
-	}, {
-		.name = "AUX_USBC5",
-		.domain_list = &tgl_pwdoms_aux_usbc5,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
-		},
-	}, {
-		.name = "AUX_USBC6",
-		.domain_list = &tgl_pwdoms_aux_usbc6,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
-		},
-	}, {
-		.name = "AUX_TBT1",
-		.domain_list = &tgl_pwdoms_aux_tbt1,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-		},
-	}, {
-		.name = "AUX_TBT2",
-		.domain_list = &tgl_pwdoms_aux_tbt2,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-		},
-	}, {
-		.name = "AUX_TBT3",
-		.domain_list = &tgl_pwdoms_aux_tbt3,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-		},
-	}, {
-		.name = "AUX_TBT4",
-		.domain_list = &tgl_pwdoms_aux_tbt4,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-		},
-	}, {
-		.name = "AUX_TBT5",
-		.domain_list = &tgl_pwdoms_aux_tbt5,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
-		},
-	}, {
-		.name = "AUX_TBT6",
-		.domain_list = &tgl_pwdoms_aux_tbt6,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &tgl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &tgl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_C", &tgl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
+			I915_PW("AUX_USBC5", &tgl_pwdoms_aux_usbc5, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC5),
+			I915_PW("AUX_USBC6", &tgl_pwdoms_aux_usbc6, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC6),
+		),
+		.ops = &icl_aux_power_well_ops,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_TBT1", &tgl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
+			I915_PW("AUX_TBT2", &tgl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
+			I915_PW("AUX_TBT3", &tgl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
+			I915_PW("AUX_TBT4", &tgl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
+			I915_PW("AUX_TBT5", &tgl_pwdoms_aux_tbt5, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5),
+			I915_PW("AUX_TBT6", &tgl_pwdoms_aux_tbt6, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6),
+		),
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
-		},
 	}, {
-		.name = "PW_4",
-		.domain_list = &tgl_pwdoms_pw_4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_4", &tgl_pwdoms_pw_4,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-		}
 	}, {
-		.name = "PW_5",
-		.domain_list = &tgl_pwdoms_pw_5,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_5", &tgl_pwdoms_pw_5,
+				.hsw.idx = TGL_PW_CTL_IDX_PW_5),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_D),
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-		},
 	},
 };
 
@@ -1416,112 +1027,61 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
 
 static const struct i915_power_well_desc rkl_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &rkl_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &rkl_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_3",
-		.domain_list = &rkl_pwdoms_pw_3,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_3", &rkl_pwdoms_pw_3,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+				.id = ICL_DISP_PW_3),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_vga = true,
 		.has_fuses = true,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-		},
 	}, {
-		.name = "PW_4",
-		.domain_list = &rkl_pwdoms_pw_4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_4", &rkl_pwdoms_pw_4,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-		}
 	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &icl_pwdoms_ddi_io_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
+		),
 		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
 	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &icl_pwdoms_ddi_io_b,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	}, {
-		.name = "DDI_IO_TC1",
-		.domain_list = &tgl_pwdoms_ddi_io_tc1,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	}, {
-		.name = "DDI_IO_TC2",
-		.domain_list = &tgl_pwdoms_ddi_io_tc2,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	}, {
-		.name = "AUX_A",
-		.domain_list = &icl_pwdoms_aux_a,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &icl_pwdoms_aux_b,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_USBC1",
-		.domain_list = &tgl_pwdoms_aux_usbc1,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-		},
-	}, {
-		.name = "AUX_USBC2",
-		.domain_list = &tgl_pwdoms_aux_usbc2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+		),
 		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
 	},
 };
 
@@ -1559,133 +1119,77 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
 
 static const struct i915_power_well_desc dg1_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &dg1_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &dg1_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &dg1_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &dg1_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "PW_3",
-		.domain_list = &dg1_pwdoms_pw_3,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_3", &dg1_pwdoms_pw_3,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+				.id = ICL_DISP_PW_3),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_vga = true,
 		.has_fuses = true,
-		.id = ICL_DISP_PW_3,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-		},
 	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &icl_pwdoms_ddi_io_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
+		),
 		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
 	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &icl_pwdoms_ddi_io_b,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	}, {
-		.name = "DDI_IO_TC1",
-		.domain_list = &tgl_pwdoms_ddi_io_tc1,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		},
-	}, {
-		.name = "DDI_IO_TC2",
-		.domain_list = &tgl_pwdoms_ddi_io_tc2,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		},
-	}, {
-		.name = "AUX_A",
-		.domain_list = &tgl_pwdoms_aux_a,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &tgl_pwdoms_aux_b,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_USBC1",
-		.domain_list = &tgl_pwdoms_aux_usbc1,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-		},
-	}, {
-		.name = "AUX_USBC2",
-		.domain_list = &tgl_pwdoms_aux_usbc2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &tgl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &tgl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+		),
 		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = false,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
 	}, {
-		.name = "PW_4",
-		.domain_list = &tgl_pwdoms_pw_4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_4", &tgl_pwdoms_pw_4,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-		}
 	}, {
-		.name = "PW_5",
-		.domain_list = &tgl_pwdoms_pw_5,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_5", &tgl_pwdoms_pw_5,
+				.hsw.idx = TGL_PW_CTL_IDX_PW_5),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_D),
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-		},
 	},
 };
 
@@ -1816,283 +1320,131 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc4,		POWER_DOMAIN_PORT_DDI_IO_TC4);
 
 static const struct i915_power_well_desc xelpd_power_wells[] = {
 	{
-		.name = "always-on",
-		.domain_list = &i9xx_pwdoms_always_on,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("always-on", &i9xx_pwdoms_always_on),
+		),
 		.ops = &i9xx_always_on_power_well_ops,
 		.always_on = true,
-		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "PW_1",
 		/* Handled by the DMC firmware */
-		.domain_list = I915_PW_DOMAINS_NONE,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+				.id = SKL_DISP_PW_1),
+		),
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_1,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-		},
 	}, {
-		.name = "DC_off",
-		.domain_list = &xelpd_pwdoms_dc_off,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
 		.ops = &gen9_dc_off_power_well_ops,
-		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "PW_2",
-		.domain_list = &xelpd_pwdoms_pw_2,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &xelpd_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
 		.has_fuses = true,
-		.id = SKL_DISP_PW_2,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-		},
 	}, {
-		.name = "PW_A",
-		.domain_list = &xelpd_pwdoms_pw_a,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_A),
 		.has_fuses = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
-		},
 	}, {
-		.name = "PW_B",
-		.domain_list = &xelpd_pwdoms_pw_b,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_B", &xelpd_pwdoms_pw_b,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
-		},
 	}, {
-		.name = "PW_C",
-		.domain_list = &xelpd_pwdoms_pw_c,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_C", &xelpd_pwdoms_pw_c,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
 		.has_fuses = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
-		},
 	}, {
-		.name = "PW_D",
-		.domain_list = &xelpd_pwdoms_pw_d,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_D", &xelpd_pwdoms_pw_d,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
+		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
 		.has_fuses = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
-		},
 	}, {
-		.name = "DDI_IO_A",
-		.domain_list = &icl_pwdoms_ddi_io_a,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
-		}
-	}, {
-		.name = "DDI_IO_B",
-		.domain_list = &icl_pwdoms_ddi_io_b,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
-		}
-	}, {
-		.name = "DDI_IO_C",
-		.domain_list = &icl_pwdoms_ddi_io_c,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
-		}
-	}, {
-		.name = "DDI_IO_D_XELPD",
-		.domain_list = &xelpd_pwdoms_ddi_io_d_xelpd,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
-		}
-	}, {
-		.name = "DDI_IO_E_XELPD",
-		.domain_list = &xelpd_pwdoms_ddi_io_e_xelpd,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
-		}
-	}, {
-		.name = "DDI_IO_TC1",
-		.domain_list = &xelpd_pwdoms_ddi_io_tc1,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
-		}
-	}, {
-		.name = "DDI_IO_TC2",
-		.domain_list = &xelpd_pwdoms_ddi_io_tc2,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
-		}
-	}, {
-		.name = "DDI_IO_TC3",
-		.domain_list = &xelpd_pwdoms_ddi_io_tc3,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
-		}
-	}, {
-		.name = "DDI_IO_TC4",
-		.domain_list = &xelpd_pwdoms_ddi_io_tc4,
-		.ops = &icl_ddi_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
-		}
-	}, {
-		.name = "AUX_A",
-		.domain_list = &icl_pwdoms_aux_a,
-		.ops = &icl_aux_power_well_ops,
-		.fixed_enable_delay = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
-		},
-	}, {
-		.name = "AUX_B",
-		.domain_list = &icl_pwdoms_aux_b,
-		.ops = &icl_aux_power_well_ops,
-		.fixed_enable_delay = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
-		},
-	}, {
-		.name = "AUX_C",
-		.domain_list = &tgl_pwdoms_aux_c,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_D_XELPD", &xelpd_pwdoms_ddi_io_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),
+			I915_PW("DDI_IO_E_XELPD", &xelpd_pwdoms_ddi_io_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),
+			I915_PW("DDI_IO_TC1", &xelpd_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
+			I915_PW("DDI_IO_TC2", &xelpd_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
+			I915_PW("DDI_IO_TC3", &xelpd_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
+			I915_PW("DDI_IO_TC4", &xelpd_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),
+		),
+		.ops = &icl_ddi_power_well_ops,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_C", &tgl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
+			I915_PW("AUX_D_XELPD", &xelpd_pwdoms_aux_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
+			I915_PW("AUX_E_XELPD", &xelpd_pwdoms_aux_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
+			I915_PW("AUX_USBC1", &xelpd_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &xelpd_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+			I915_PW("AUX_USBC3", &xelpd_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
+			I915_PW("AUX_USBC4", &xelpd_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
+		),
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-		},
-	}, {
-		.name = "AUX_D_XELPD",
-		.domain_list = &xelpd_pwdoms_aux_d_xelpd,
-		.ops = &icl_aux_power_well_ops,
-		.fixed_enable_delay = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
-		},
-	}, {
-		.name = "AUX_E_XELPD",
-		.domain_list = &xelpd_pwdoms_aux_e_xelpd,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
-		},
-	}, {
-		.name = "AUX_USBC1",
-		.domain_list = &xelpd_pwdoms_aux_usbc1,
-		.ops = &icl_aux_power_well_ops,
-		.fixed_enable_delay = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-		},
-	}, {
-		.name = "AUX_USBC2",
-		.domain_list = &xelpd_pwdoms_aux_usbc2,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-		},
-	}, {
-		.name = "AUX_USBC3",
-		.domain_list = &xelpd_pwdoms_aux_usbc3,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
-		},
-	}, {
-		.name = "AUX_USBC4",
-		.domain_list = &xelpd_pwdoms_aux_usbc4,
-		.ops = &icl_aux_power_well_ops,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
-		},
-	}, {
-		.name = "AUX_TBT1",
-		.domain_list = &xelpd_pwdoms_aux_tbt1,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-		},
-	}, {
-		.name = "AUX_TBT2",
-		.domain_list = &xelpd_pwdoms_aux_tbt2,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-		},
-	}, {
-		.name = "AUX_TBT3",
-		.domain_list = &xelpd_pwdoms_aux_tbt3,
-		.ops = &icl_aux_power_well_ops,
-		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-		},
 	}, {
-		.name = "AUX_TBT4",
-		.domain_list = &xelpd_pwdoms_aux_tbt4,
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_TBT1", &xelpd_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
+			I915_PW("AUX_TBT2", &xelpd_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
+			I915_PW("AUX_TBT3", &xelpd_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
+			I915_PW("AUX_TBT4", &xelpd_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
+		),
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-		.id = DISP_PW_ID_NONE,
-		{
-			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-		},
 	},
 };
 
-static void init_power_well_domains(const struct i915_power_well_desc *desc,
+static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
 	int j;
 
-	if (!desc->domain_list)
+	if (!inst->domain_list)
 		return;
 
-	if (desc->domain_list->count == 0) {
+	if (inst->domain_list->count == 0) {
 		bitmap_fill(power_well->domains.bits, POWER_DOMAIN_NUM);
 
 		return;
 	}
 
-	for (j = 0; j < desc->domain_list->count; j++)
-		set_bit(desc->domain_list->list[j], power_well->domains.bits);
+	for (j = 0; j < inst->domain_list->count; j++)
+		set_bit(inst->domain_list->list[j], power_well->domains.bits);
 }
 
+#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
+		for ((_inst) = (_desc)->instances->list; \
+		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
+		     (_inst)++)
+
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc *power_well_descs,
@@ -2102,11 +1454,13 @@ __set_power_wells(struct i915_power_domains *power_domains,
 						     struct drm_i915_private,
 						     power_domains);
 	u64 power_well_ids = 0;
+	const struct i915_power_well_desc *desc;
+	const struct i915_power_well_instance *inst;
 	int power_well_count = 0;
-	int i, plt_idx = 0;
+	int plt_idx = 0;
 
-	for (i = 0; i < power_well_descs_sz; i++)
-		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc, inst)
+		if (!(BIT_ULL(inst->id) & skip_mask))
 			power_well_count++;
 
 	power_domains->power_well_count = power_well_count;
@@ -2117,16 +1471,19 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	if (!power_domains->power_wells)
 		return -ENOMEM;
 
-	for (i = 0; i < power_well_descs_sz; i++) {
-		enum i915_power_well_id id = power_well_descs[i].id;
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc, inst) {
+		struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
+		enum i915_power_well_id id = inst->id;
 
 		if (BIT_ULL(id) & skip_mask)
 			continue;
 
-		power_domains->power_wells[plt_idx].desc =
-			&power_well_descs[i];
+		pw->desc = desc;
+		drm_WARN_ON(&i915->drm,
+			    overflows_type(inst - desc->instances->list, pw->instance_idx));
+		pw->instance_idx = inst - desc->instances->list;
 
-		init_power_well_domains(&power_well_descs[i], &power_domains->power_wells[plt_idx]);
+		init_power_well_domains(inst, pw);
 
 		plt_idx++;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index b8f31d232cd14..000a25ed4a5ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -58,6 +58,12 @@ struct i915_power_well_ops {
 			   struct i915_power_well *power_well);
 };
 
+static const struct i915_power_well_instance *
+i915_power_well_instance(const struct i915_power_well *power_well)
+{
+	return &power_well->desc->instances->list[power_well->instance_idx];
+}
+
 struct i915_power_well *
 lookup_power_well(struct drm_i915_private *i915,
 		  enum i915_power_well_id power_well_id)
@@ -65,7 +71,7 @@ lookup_power_well(struct drm_i915_private *i915,
 	struct i915_power_well *power_well;
 
 	for_each_power_well(i915, power_well)
-		if (power_well->desc->id == power_well_id)
+		if (i915_power_well_instance(power_well)->id == power_well_id)
 			return power_well;
 
 	/*
@@ -84,7 +90,7 @@ lookup_power_well(struct drm_i915_private *i915,
 void intel_power_well_enable(struct drm_i915_private *i915,
 			     struct i915_power_well *power_well)
 {
-	drm_dbg_kms(&i915->drm, "enabling %s\n", power_well->desc->name);
+	drm_dbg_kms(&i915->drm, "enabling %s\n", intel_power_well_name(power_well));
 	power_well->desc->ops->enable(i915, power_well);
 	power_well->hw_enabled = true;
 }
@@ -92,7 +98,7 @@ void intel_power_well_enable(struct drm_i915_private *i915,
 void intel_power_well_disable(struct drm_i915_private *i915,
 			      struct i915_power_well *power_well)
 {
-	drm_dbg_kms(&i915->drm, "disabling %s\n", power_well->desc->name);
+	drm_dbg_kms(&i915->drm, "disabling %s\n", intel_power_well_name(power_well));
 	power_well->hw_enabled = false;
 	power_well->desc->ops->disable(i915, power_well);
 }
@@ -117,7 +123,7 @@ void intel_power_well_put(struct drm_i915_private *i915,
 {
 	drm_WARN(&i915->drm, !power_well->count,
 		 "Use count on power well %s is already zero",
-		 power_well->desc->name);
+		 i915_power_well_instance(power_well)->name);
 
 	if (!--power_well->count)
 		intel_power_well_disable(i915, power_well);
@@ -151,7 +157,7 @@ bool intel_power_well_is_always_on(struct i915_power_well *power_well)
 
 const char *intel_power_well_name(struct i915_power_well *power_well)
 {
-	return power_well->desc->name;
+	return i915_power_well_instance(power_well)->name;
 }
 
 struct intel_power_domain_mask *intel_power_well_domains(struct i915_power_well *power_well)
@@ -195,7 +201,7 @@ static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
 
 static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well *power_well)
 {
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
 	return power_well->desc->is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
 					     ICL_AUX_PW_TO_CH(pw_idx);
@@ -242,7 +248,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   bool timeout_expected)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
 	/*
 	 * For some power wells we're not supposed to watch the status bit for
@@ -285,7 +291,7 @@ static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	bool disabled;
 	u32 reqs;
 
@@ -323,7 +329,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 				  struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	u32 val;
 
 	if (power_well->desc->has_fuses) {
@@ -370,7 +376,7 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	u32 val;
 
 	hsw_power_well_pre_disable(dev_priv,
@@ -387,7 +393,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
 
@@ -419,7 +425,7 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 				     struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
 
@@ -505,7 +511,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	val = intel_de_read(dev_priv, regs->driver);
 	intel_de_write(dev_priv, regs->driver,
-		       val | HSW_PWR_WELL_CTL_REQ(power_well->desc->hsw.idx));
+		       val | HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
 
 	/*
 	 * An AUX timeout is expected if the TBT DP tunnel is down,
@@ -521,7 +527,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
 		enum tc_port tc_port;
 
-		tc_port = TGL_AUX_PW_TO_TC_PORT(power_well->desc->hsw.idx);
+		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
 			       HIP_INDEX_VAL(tc_port, 0x2));
 
@@ -583,8 +589,8 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	enum i915_power_well_id id = power_well->desc->id;
-	int pw_idx = power_well->desc->hsw.idx;
+	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
 		   HSW_PWR_WELL_CTL_STATE(pw_idx);
 	u32 val;
@@ -888,7 +894,7 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	int pw_idx = power_well->desc->hsw.idx;
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 bios_req = intel_de_read(dev_priv, regs->bios);
 
@@ -905,19 +911,19 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	bxt_ddi_phy_init(dev_priv, power_well->desc->bxt.phy);
+	bxt_ddi_phy_init(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	bxt_ddi_phy_uninit(dev_priv, power_well->desc->bxt.phy);
+	bxt_ddi_phy_uninit(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	return bxt_ddi_phy_is_enabled(dev_priv, power_well->desc->bxt.phy);
+	return bxt_ddi_phy_is_enabled(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private *dev_priv)
@@ -926,18 +932,18 @@ static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private *dev_priv)
 
 	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_ddi_phy_verify_state(dev_priv, power_well->desc->bxt.phy);
+		bxt_ddi_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 
 	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_ddi_phy_verify_state(dev_priv, power_well->desc->bxt.phy);
+		bxt_ddi_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		power_well = lookup_power_well(dev_priv,
 					       GLK_DISP_PW_DPIO_CMN_C);
 		if (intel_power_well_refcount(power_well) > 0)
 			bxt_ddi_phy_verify_state(dev_priv,
-						 power_well->desc->bxt.phy);
+						 i915_power_well_instance(power_well)->bxt.phy);
 	}
 }
 
@@ -1070,7 +1076,7 @@ static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
 static void vlv_set_power_well(struct drm_i915_private *dev_priv,
 			       struct i915_power_well *power_well, bool enable)
 {
-	int pw_idx = power_well->desc->vlv.idx;
+	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	u32 mask;
 	u32 state;
 	u32 ctrl;
@@ -1119,7 +1125,7 @@ static void vlv_power_well_disable(struct drm_i915_private *dev_priv,
 static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	int pw_idx = power_well->desc->vlv.idx;
+	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	bool enabled = false;
 	u32 mask;
 	u32 state;
@@ -1413,15 +1419,16 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
+	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 	enum pipe pipe;
 	u32 tmp;
 
 	drm_WARN_ON_ONCE(&dev_priv->drm,
-			 power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
-			 power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
+			 id != VLV_DISP_PW_DPIO_CMN_BC &&
+			 id != CHV_DISP_PW_DPIO_CMN_D);
 
-	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
+	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
 		pipe = PIPE_A;
 		phy = DPIO_PHY0;
 	} else {
@@ -1447,7 +1454,7 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 		DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
 	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW28, tmp);
 
-	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
+	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
 		tmp = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW6_CH1);
 		tmp |= DPIO_DYNPWRDOWNEN_CH1;
 		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
@@ -1478,13 +1485,14 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
+	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 
 	drm_WARN_ON_ONCE(&dev_priv->drm,
-			 power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
-			 power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
+			 id != VLV_DISP_PW_DPIO_CMN_BC &&
+			 id != CHV_DISP_PW_DPIO_CMN_D);
 
-	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
+	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
 		phy = DPIO_PHY0;
 		assert_pll_disabled(dev_priv, PIPE_A);
 		assert_pll_disabled(dev_priv, PIPE_B);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index bd60fb4166e74..d0624642dcb62 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -33,7 +33,7 @@ struct i915_power_well;
  * wells must be assigned DISP_PW_ID_NONE.
  */
 enum i915_power_well_id {
-	DISP_PW_ID_NONE,
+	DISP_PW_ID_NONE = 0,		/* must be kept zero */
 
 	VLV_DISP_PW_DISP2D,
 	BXT_DISP_PW_DPIO_CMN_A,
@@ -49,29 +49,12 @@ enum i915_power_well_id {
 	TGL_DISP_PW_TC_COLD_OFF,
 };
 
-struct i915_power_well_desc {
+struct i915_power_well_instance {
 	const char *name;
 	const struct i915_power_domain_list {
 		const enum intel_display_power_domain *list;
 		u8 count;
 	} *domain_list;
-	/* Mask of pipes whose IRQ logic is backed by the pw */
-	u16 irq_pipe_mask:4;
-	u16 always_on:1;
-	/*
-	 * Instead of waiting for the status bit to ack enables,
-	 * just wait a specific amount of time and then consider
-	 * the well enabled.
-	 */
-	u16 fixed_enable_delay:1;
-	/* The pw is backing the VGA functionality */
-	u16 has_vga:1;
-	u16 has_fuses:1;
-	/*
-	 * The pw is for an ICL+ TypeC PHY port in
-	 * Thunderbolt mode.
-	 */
-	u16 is_tc_tbt:1;
 
 	/* unique identifier for this power well */
 	enum i915_power_well_id id;
@@ -98,7 +81,32 @@ struct i915_power_well_desc {
 			u8 idx;
 		} hsw;
 	};
+};
+
+struct i915_power_well_desc {
 	const struct i915_power_well_ops *ops;
+	const struct i915_power_well_instance_list {
+		const struct i915_power_well_instance *list;
+		u8 count;
+	} *instances;
+
+	/* Mask of pipes whose IRQ logic is backed by the pw */
+	u16 irq_pipe_mask:4;
+	u16 always_on:1;
+	/*
+	 * Instead of waiting for the status bit to ack enables,
+	 * just wait a specific amount of time and then consider
+	 * the well enabled.
+	 */
+	u16 fixed_enable_delay:1;
+	/* The pw is backing the VGA functionality */
+	u16 has_vga:1;
+	u16 has_fuses:1;
+	/*
+	 * The pw is for an ICL+ TypeC PHY port in
+	 * Thunderbolt mode.
+	 */
+	u16 is_tc_tbt:1;
 };
 
 struct i915_power_well {
@@ -108,6 +116,8 @@ struct i915_power_well {
 	int count;
 	/* cached hw enabled state */
 	bool hw_enabled;
+	/* index into desc->instances->list */
+	u8 instance_idx;
 };
 
 struct i915_power_well *lookup_power_well(struct drm_i915_private *i915,
-- 
2.30.2

