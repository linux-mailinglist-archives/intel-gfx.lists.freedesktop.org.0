Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB6501D23
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B7810E51B;
	Thu, 14 Apr 2022 21:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6DE10E51B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970444; x=1681506444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tf0As79+ktLQ8jsrJl8evuzuqyRGc8RtJZbwHXwAXpg=;
 b=IBzVcRnuykag782vkypSEt3G4Fwqe83Kebhb61jOihOh1pKRrNEXU5Lk
 t/zLX/Bor88AR/xm34F+1ATXx4TmNqYS8c8zGCihlC/Em7XMpgoUg923m
 oPB5b7W5zn/LkyklemrNhxVB8Zzrt1LSIEfgn/C7e+4JxGFl+Mv8dhcFX
 t+LBGBtm22x23Enj2MXEqyPGdaT9exybaYiEl0p8xAQUZqXryWOImRSra
 SPJMH7A3CG610Ivnnci1SqtPKc5Msc1oVcpbmWh0537Mi6W/zAN/EpKmv
 /9XwpbgyoEt1cY05ZP/4sY4vBffUC0yHEbMnlV671jubcr2+jeDUUdsOQ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089797"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089797"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550442"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:56 +0300
Message-Id: <20220414210657.1785773-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 17/18] drm/i915: Remove duplicate DDI/AUX power
 domain mappings
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 89 +++++++------------
 1 file changed, 31 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index d9cf3d3bc02e7..d647fb5da6b44 100644
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
2.30.2

