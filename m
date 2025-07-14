Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB7B0369C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 08:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C980510E210;
	Mon, 14 Jul 2025 06:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hBiKrIfz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E13610E210;
 Mon, 14 Jul 2025 06:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752473500; x=1784009500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SQsI75a80nRMTNJwreWrJ+CFrPTRI8EPM6xfACKsGPU=;
 b=hBiKrIfzn7tizAxJhr7xhkqYwGMeQLMXLSakR/VRNFzTW4YXQRN6YVB7
 D0tJchZHFl9DTKYSGel4s2gCNNyoq41c5vZX1tbVNw6nQHaATOOxnDnD6
 ccbcU6Sl4yzTwFuBhQmLiFLI9QNTIU6qsQF9bXCrmuOtQdHZvb0dtjbHF
 Ldwxv420OjIOYrZHSxItyH181JGNvC/Jg1burA2udv/A0v/Nc2LnU3AMG
 C/qbos1Qo2lF3/P/L2irq4GFWYzzLNsJ6k3vI+rtm3TM1MuxHsb1+yU8Z
 IdSNz25rWkrIJYadgSt2UP1lkycxi0uSXhxCy7p/jkzxSAxGiLcyCxrTW w==;
X-CSE-ConnectionGUID: t+HtAhtWQqa5rPteBy2ggw==
X-CSE-MsgGUID: AjP/U6GdRZi3Lpy9buC5RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="42293415"
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600"; d="scan'208";a="42293415"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2025 23:11:37 -0700
X-CSE-ConnectionGUID: XuS+URUgQ7yQNML7PMWI5w==
X-CSE-MsgGUID: erDKorVUTfuuqasrzn8/sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600"; d="scan'208";a="180533434"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 13 Jul 2025 23:11:35 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, dnyaneshwar.bhadane@intel.com,
 dibin.moolakadan.subrahmanian@intel.com, imre.deak@intel.com
Subject: [PATCH] drm/i915/display: Add power well mapping for WCL
Date: Mon, 14 Jul 2025 11:23:44 +0530
Message-Id: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

WCL has 3 pipes, create power well mapping to reflect
HW. Rest remains similar to Xe3 power well configuration.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 77268802b55e..23c59b587f78 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1717,6 +1717,60 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
 
+static const struct i915_power_well_desc wcl_power_wells_main[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
+		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_A),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_C),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
+			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
+			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
+			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
+			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
+		),
+		.ops = &xelpdp_aux_power_well_ops,
+	},
+};
+static const struct i915_power_well_desc_list wcl_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
+	I915_PW_DESCRIPTORS(wcl_power_wells_main),
+	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+};
+
 static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
@@ -1824,7 +1878,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 		return 0;
 	}
 
-	if (DISPLAY_VER(display) >= 30)
+	if (DISPLAY_VERx100(display) == 3002)
+		return set_power_wells(power_domains, wcl_power_wells);
+	else if (DISPLAY_VER(display) >= 30)
 		return set_power_wells(power_domains, xe3lpd_power_wells);
 	else if (DISPLAY_VER(display) >= 20)
 		return set_power_wells(power_domains, xe2lpd_power_wells);
-- 
2.25.1

