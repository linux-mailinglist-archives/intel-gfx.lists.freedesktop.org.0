Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B82B4AD78A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A1110E64E;
	Tue,  8 Feb 2022 11:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37AC10E617
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320250; x=1675856250;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=h/jOxEMMCPOyq66ooZ6baCNySFQ8sx8OOwAH4y8LNrE=;
 b=hqiJJ14Oii6ZfnUw7hOMeDIegQiUSG/dtZh+n2JPkddNtE4s3KXVUyH2
 QVEfEH8uDgZn7ryTHM7+lC6PgAt5BCkM8PC9wyYnNQzISYe2hvwSL0uin
 JHC9MOortaZJIaizY5D0qXsrjYh9J5j/Lj/OjarLIjQzFpTIWjYVM8WaA
 HiP8U/VuuJMGPhDhFY8zyvfYwixi1+ZS9U03Bb6Oxr3XPQo73FKT38nfP
 OOjSSQEcRMSlDcsYxsaha08lJh0/ZwUUeuB1k8TzPyKp0ki/smreuTCPh
 VDv51lc4dS005hljo/R9R/nmpW1QOYo2DUUBJWmCWPT2NTZklrYObJH+h A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496021"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496021"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915378"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:29 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:55 +0200
Message-Id: <20220208113656.179823-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 25/26] drm/i915: Remove duplicate DDI/AUX
 power domain mappings
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

The DDI and AUX domain -> power well mappings are identical for a few
platforms/power well instances, reuse the mappings of earlier platforms
for these removing the duplicate mapping of new platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 89 +++++++------------
 1 file changed, 31 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 4c7def498dd6f..dce34a5b49f32 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -653,9 +653,6 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_d,	POWER_DOMAIN_PORT_DDI_IO_D);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_e,	POWER_DOMAIN_PORT_DDI_IO_E);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
@@ -714,9 +711,9 @@ static const struct i915_power_well_desc icl_power_wells_main[] = {
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
-			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
-			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &glk_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
 			I915_PW("DDI_IO_D", &icl_pwdoms_ddi_io_d, .hsw.idx = ICL_PW_CTL_IDX_DDI_D),
 			I915_PW("DDI_IO_E", &icl_pwdoms_ddi_io_e, .hsw.idx = ICL_PW_CTL_IDX_DDI_E),
 			I915_PW("DDI_IO_F", &icl_pwdoms_ddi_io_f, .hsw.idx = ICL_PW_CTL_IDX_DDI_F),
@@ -828,12 +825,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc4,	POWER_DOMAIN_PORT_DDI_IO_TC4);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc5,	POWER_DOMAIN_PORT_DDI_IO_TC5);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc6,	POWER_DOMAIN_PORT_DDI_IO_TC6);
 
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_a,
-	POWER_DOMAIN_AUX_A,
-	POWER_DOMAIN_AUX_IO_A);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
-
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc1,	POWER_DOMAIN_AUX_USBC1);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc2,	POWER_DOMAIN_AUX_USBC2);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc3,	POWER_DOMAIN_AUX_USBC3);
@@ -841,10 +832,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc4,	POWER_DOMAIN_AUX_USBC4);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc5,	POWER_DOMAIN_AUX_USBC5);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc6,	POWER_DOMAIN_AUX_USBC6);
 
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT4);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt5,	POWER_DOMAIN_AUX_TBT5);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt6,	POWER_DOMAIN_AUX_TBT6);
 
@@ -890,9 +877,9 @@ static const struct i915_power_well_desc tgl_power_wells_main[] = {
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
-			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
-			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &glk_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
 			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
 			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
 			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
@@ -933,9 +920,9 @@ static const struct i915_power_well_desc tgl_power_wells_tc_cold_off[] = {
 static const struct i915_power_well_desc tgl_power_wells_aux[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("AUX_A", &tgl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
-			I915_PW("AUX_B", &tgl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
-			I915_PW("AUX_C", &tgl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
+			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
 			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
 			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
 			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
@@ -946,10 +933,10 @@ static const struct i915_power_well_desc tgl_power_wells_aux[] = {
 		.ops = &icl_aux_power_well_ops,
 	}, {
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("AUX_TBT1", &tgl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
-			I915_PW("AUX_TBT2", &tgl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
-			I915_PW("AUX_TBT3", &tgl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
-			I915_PW("AUX_TBT4", &tgl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
 			I915_PW("AUX_TBT5", &tgl_pwdoms_aux_tbt5, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5),
 			I915_PW("AUX_TBT6", &tgl_pwdoms_aux_tbt6, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6),
 		),
@@ -1058,8 +1045,8 @@ static const struct i915_power_well_desc rkl_power_wells_main[] = {
 static const struct i915_power_well_desc rkl_power_wells_ddi_aux[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
-			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
 			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
 			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
 		),
@@ -1273,22 +1260,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_d_xelpd,		POWER_DOMAIN_AUX_D_XELPD);
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_e_xelpd,		POWER_DOMAIN_AUX_E_XELPD);
 
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc1,		POWER_DOMAIN_AUX_USBC1);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc2,		POWER_DOMAIN_AUX_USBC2);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc3,		POWER_DOMAIN_AUX_USBC3);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_usbc4,		POWER_DOMAIN_AUX_USBC4);
-
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt1,		POWER_DOMAIN_AUX_TBT1);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt2,		POWER_DOMAIN_AUX_TBT2);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt3,		POWER_DOMAIN_AUX_TBT3);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_tbt4,		POWER_DOMAIN_AUX_TBT4);
-
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_d_xelpd,	POWER_DOMAIN_PORT_DDI_IO_D_XELPD);
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_e_xelpd,	POWER_DOMAIN_PORT_DDI_IO_E_XELPD);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc1,		POWER_DOMAIN_PORT_DDI_IO_TC1);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc2,		POWER_DOMAIN_PORT_DDI_IO_TC2);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc3,		POWER_DOMAIN_PORT_DDI_IO_TC3);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc4,		POWER_DOMAIN_PORT_DDI_IO_TC4);
 
 static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 	{
@@ -1340,37 +1313,37 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
-			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
-			I915_PW("DDI_IO_C", &icl_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
+			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
+			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
+			I915_PW("DDI_IO_C", &glk_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
 			I915_PW("DDI_IO_D_XELPD", &xelpd_pwdoms_ddi_io_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),
 			I915_PW("DDI_IO_E_XELPD", &xelpd_pwdoms_ddi_io_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),
-			I915_PW("DDI_IO_TC1", &xelpd_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
-			I915_PW("DDI_IO_TC2", &xelpd_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
-			I915_PW("DDI_IO_TC3", &xelpd_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
-			I915_PW("DDI_IO_TC4", &xelpd_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),
+			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
+			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
+			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
+			I915_PW("DDI_IO_TC4", &tgl_pwdoms_ddi_io_tc4, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC4),
 		),
 		.ops = &icl_ddi_power_well_ops,
 	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
 			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
-			I915_PW("AUX_C", &tgl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
+			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
 			I915_PW("AUX_D_XELPD", &xelpd_pwdoms_aux_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
 			I915_PW("AUX_E_XELPD", &xelpd_pwdoms_aux_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
-			I915_PW("AUX_USBC1", &xelpd_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
-			I915_PW("AUX_USBC2", &xelpd_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
-			I915_PW("AUX_USBC3", &xelpd_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
-			I915_PW("AUX_USBC4", &xelpd_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
 		),
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
-			I915_PW("AUX_TBT1", &xelpd_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
-			I915_PW("AUX_TBT2", &xelpd_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
-			I915_PW("AUX_TBT3", &xelpd_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
-			I915_PW("AUX_TBT4", &xelpd_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
+			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
+			I915_PW("AUX_TBT2", &icl_pwdoms_aux_tbt2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2),
+			I915_PW("AUX_TBT3", &icl_pwdoms_aux_tbt3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3),
+			I915_PW("AUX_TBT4", &icl_pwdoms_aux_tbt4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4),
 		),
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-- 
2.27.0

