Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2631BB1E47A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE6E10E8E7;
	Fri,  8 Aug 2025 08:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dX+PDnzv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795F410E8E7;
 Fri,  8 Aug 2025 08:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754642234; x=1786178234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VztVX7OHo+7pumyzc0nM0R9HCW1zc9T35uM5NilQO0I=;
 b=dX+PDnzveHUQN+K41JFZ7Y7E+qQZ2islIslXaS53dtMHjH1gqdLALFjO
 nwKWCXE3v2a6luzvOX3TFpBSkXvJXIm/JvHIrF3gOrGYdHd1QKpW+5h3t
 fUMJIlF+2mad2ymcmv562eQnQY6eaBrROZw2kM8Fve+isK5eG3foEoWhQ
 puO7Tl/kaNaAkFi6+obIed/5TXO7Lu4kZXU2rKZS/Y5m959tYbSCAUv1T
 stClN4F/81YaYEYOTYP8sAP+RCjWm0eeJrcVrRDJjNoK20h810HK3zwdO
 A9qPyOAcbV29NGEdUyajM1+Pamzm4d7tFnwJ7PeG+YxA9jp65JmTMS29t A==;
X-CSE-ConnectionGUID: GfO6dWJiQs+sDEdm7778+w==
X-CSE-MsgGUID: 2O7lIMwwQbiORjCwsVx4Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79544603"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79544603"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:37:14 -0700
X-CSE-ConnectionGUID: kdh7xVHzTJO46dTaGUN5aw==
X-CSE-MsgGUID: q/EbXF9JReG4WB9Xxufwhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165663832"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 08 Aug 2025 01:37:11 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	gustavo.sousa@intel.com
Subject: [PATCH 1/2] drm/i915/display: Add power well mapping for WCL
Date: Fri,  8 Aug 2025 13:49:30 +0530
Message-Id: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
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

WCL has 3 pipes and two TC ports, create power well mapping to reflect
HW. Rest remains similar to Xe3 power well configuration.

v2: Remove TC3/4 ports as they do not exist.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 56 ++++++++++++++++++-
 1 file changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 77268802b55e..611bbf188aba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1717,6 +1717,58 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
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
@@ -1824,7 +1876,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
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

