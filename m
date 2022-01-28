Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 245E649F8B6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214F110E5B3;
	Fri, 28 Jan 2022 11:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8473710E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370579; x=1674906579;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=We+FMfzgn7XxIFbVBXUrY3BXf0JHQIXEC9BD57l7//4=;
 b=et3PoBbIw7ii2VKLlDszHkxVWRoxwn8rhYOCq8rEYA0d70NxaPKEjVlN
 gDw9KsBQFr6wdNasMhDGvN3MfoIJeiMe2deCpyrOv3Q7w8MheOhc0HljC
 /rP2LqrGFdftcz/bD8WNdFpqwrk0yGmyX9akfXK6WlDhfoeuipgWGZxto
 51TDfRaw7eBkBQRUf+2BIRMFyyeYp3Wl43ZMp7nL7kHJaSRvARgzM5v3t
 sKZDTih1+H4aLyxQdSprjwGUC6SRwNbRtViRmem0aehoe9DP83qZ1CNtH
 O+TqfM5X6+5VrkzIhwOIzcccnVeZQPfQ3TgAN5DIe54xJ/2ZLA7R+4G3p A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420967"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420967"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712878"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:38 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:13 +0200
Message-Id: <20220128114914.2339526-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/19] drm/i915: Remove duplicate DDI/AUX power
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
---
 .../i915/display/intel_display_power_map.c    | 89 +++++++------------
 1 file changed, 31 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 1b79f04b1dd5d..2c9e55cb6e47d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1024,9 +1024,6 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_b,	POWER_DOMAIN_PORT_DDI_IO_B);
-I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_d,	POWER_DOMAIN_PORT_DDI_IO_D);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_e,	POWER_DOMAIN_PORT_DDI_IO_E);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
@@ -1085,9 +1082,9 @@ static const struct i915_power_well_desc icl_power_wells_main[] = {
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
@@ -1199,12 +1196,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc4,	POWER_DOMAIN_PORT_DDI_IO_TC4);
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
@@ -1212,10 +1203,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc4,	POWER_DOMAIN_AUX_USBC4);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc5,	POWER_DOMAIN_AUX_USBC5);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_usbc6,	POWER_DOMAIN_AUX_USBC6);
 
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
-I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT4);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt5,	POWER_DOMAIN_AUX_TBT5);
 I915_DECL_PW_DOMAINS(tgl_pwdoms_aux_tbt6,	POWER_DOMAIN_AUX_TBT6);
 
@@ -1261,9 +1248,9 @@ static const struct i915_power_well_desc tgl_power_wells_main[] = {
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
@@ -1304,9 +1291,9 @@ static const struct i915_power_well_desc tgl_power_wells_tc_cold_off[] = {
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
@@ -1317,10 +1304,10 @@ static const struct i915_power_well_desc tgl_power_wells_aux[] = {
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
@@ -1429,8 +1416,8 @@ static const struct i915_power_well_desc rkl_power_wells_main[] = {
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
@@ -1644,22 +1631,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
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
@@ -1711,37 +1684,37 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
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

