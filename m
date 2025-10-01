Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1788EBB1353
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 18:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198C510E733;
	Wed,  1 Oct 2025 16:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JLJYZF/e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826A310E72F;
 Wed,  1 Oct 2025 16:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759334707; x=1790870707;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=1UO9Ym9TKuQq/C+HClY/foPFLTKF+nR9cS7zP625eOE=;
 b=JLJYZF/eEw2FL9lHA68wZcoCo/iA8gZigw+1v5tH8I6rWl0CqYKb3uo2
 Kf0rU4FvBfZHQoaCJYHwibquqeGhC8s6Xt3K5DV9Ck4b760zjFh4ADSq6
 +XDxYeKrCXsICzWxBVvaXa3Eh4JbdcUuRPjSSIuqWcDF++i+uQ82fl0vO
 VHDz+HlGca6jIj0on1szikuT35hsKFZrWWOpavQeqnsTMxwN9Voh5ZYCr
 YdYfUZY42MtP4NGTn+fDY8hlaWSZe384FvOdZFHn+kKH3ryL96kHQ55rw
 HJTUtOKPs1CPE6mgmXfEwQ/tZEu4djJH+s/tOkYYhN+7PyNIAW7thztsD g==;
X-CSE-ConnectionGUID: 40To73CBS9G5XLaSy+Bc4Q==
X-CSE-MsgGUID: ix04akXjSqa4P29p59ePNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61570373"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61570373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:07 -0700
X-CSE-ConnectionGUID: zALcIZX2THy9c/2vlpaqqA==
X-CSE-MsgGUID: OxUUaR4ITWeRGi8u1pdlhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="178628738"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:05 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 01 Oct 2025 13:04:48 -0300
Subject: [PATCH v2 1/2] drm/i915/display: Extract separate AUX PW descriptors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-pica-power-before-aux-v2-1-6308df4de5a8@intel.com>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
In-Reply-To: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

In an upcoming change, we will fix an ordering issue between PICA and
AUX power wells for Xe2_LPD and later, making sure that the driver
acquires PICA power before AUX.  As a preparation for that, let's
extract separate descriptors for AUX power wells.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_map.c | 26 ++++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 39b71fffa2cd..e89f18b7037f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1516,7 +1516,11 @@ static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
 		.has_fuses = true,
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc xelpdp_power_wells_aux[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
 			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
@@ -1534,6 +1538,7 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 };
 
 I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
@@ -1583,6 +1588,7 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
 
@@ -1677,16 +1683,6 @@ static const struct i915_power_well_desc xe3lpd_power_wells_main[] = {
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
 		.has_fuses = true,
-	}, {
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
-			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
-			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
-			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
-			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
-			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
-		),
-		.ops = &xelpdp_aux_power_well_ops,
 	},
 };
 
@@ -1714,6 +1710,7 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
 
@@ -1751,7 +1748,11 @@ static const struct i915_power_well_desc wcl_power_wells_main[] = {
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
 		.has_fuses = true,
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc wcl_power_wells_aux[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
 			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
@@ -1767,6 +1768,7 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(wcl_power_wells_main),
+	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
 

-- 
2.51.0

