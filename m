Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0173F322116
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 22:04:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4944F6E214;
	Mon, 22 Feb 2021 21:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11CE6E214
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 21:04:09 +0000 (UTC)
IronPort-SDR: +oKt8fujCGZIBX5MIQbGg17pBzu2bb3GDDvLRaKCD9QBEIM8noYIU/cv0uiKc08ezsstpFDkQQ
 9OfJTg6rzMfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="171731381"
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="171731381"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 13:04:04 -0800
IronPort-SDR: RGOMMnZJViN5rpbUcP+wnNNVIf3gG4J5p7rYaSba5FAVAyXAZeeF+2dtUkajdv2ny/++psMoDW
 sT/BSoSTDXNw==
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="390018993"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 13:04:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Feb 2021 23:04:00 +0200
Message-Id: <20210222210400.940158-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl+: Sanitize the DDI LANES/IO and
 AUX power domain names
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

In Bspec the TGL TypeC ports are TC1-6, the AUX power well request flags
are USBC1-6/TBT1-6, so for clarity use these names in the port power
domain names instead of the D-I terminology (which Bspec uses only for
the ICL TypeC ports).

No functional change.

Cc: Souza Jose <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 212 ++++++++----------
 .../drm/i915/display/intel_display_power.h    |  32 +++
 2 files changed, 130 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f00c1750febd..7e0eaa872350 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2886,24 +2886,24 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
 	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
 	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_G_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_H_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_I_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_G) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_H) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_I) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_D_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_G_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_H_TBT) |		\
-	BIT_ULL(POWER_DOMAIN_AUX_I_TBT) |		\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
 	BIT_ULL(POWER_DOMAIN_VGA) |			\
 	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
@@ -2921,18 +2921,12 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 
-#define TGL_DDI_IO_D_TC1_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO))
-#define TGL_DDI_IO_E_TC2_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO))
-#define TGL_DDI_IO_F_TC3_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_IO))
-#define TGL_DDI_IO_G_TC4_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_G_IO))
-#define TGL_DDI_IO_H_TC5_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_H_IO))
-#define TGL_DDI_IO_I_TC6_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_I_IO))
+#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC1)
+#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC2)
+#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC3)
+#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC4)
+#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC5)
+#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_TC6)
 
 #define TGL_AUX_A_IO_POWER_DOMAINS (		\
 	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |	\
@@ -2941,44 +2935,34 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_AUX_B))
 #define TGL_AUX_C_IO_POWER_DOMAINS (		\
 	BIT_ULL(POWER_DOMAIN_AUX_C))
-#define TGL_AUX_D_TC1_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_D))
-#define TGL_AUX_E_TC2_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_E))
-#define TGL_AUX_F_TC3_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_F))
-#define TGL_AUX_G_TC4_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_G))
-#define TGL_AUX_H_TC5_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_H))
-#define TGL_AUX_I_TC6_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_I))
-#define TGL_AUX_D_TBT1_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_D_TBT))
-#define TGL_AUX_E_TBT2_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_E_TBT))
-#define TGL_AUX_F_TBT3_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_F_TBT))
-#define TGL_AUX_G_TBT4_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_G_TBT))
-#define TGL_AUX_H_TBT5_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_H_TBT))
-#define TGL_AUX_I_TBT6_IO_POWER_DOMAINS (	\
-	BIT_ULL(POWER_DOMAIN_AUX_I_TBT))
+
+#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
+#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
+#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
+#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
+#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
+#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
+
+#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
+#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
+#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
+#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
+#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
+#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
 
 #define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
-	BIT_ULL(POWER_DOMAIN_AUX_D)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_E)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_F)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_G)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_H)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_I)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_D_TBT)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_E_TBT)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_F_TBT)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_G_TBT)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_H_TBT)	|	\
-	BIT_ULL(POWER_DOMAIN_AUX_I_TBT)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC3)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC4)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC5)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC6)	|	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |	\
 	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
 
 #define RKL_PW_4_POWER_DOMAINS (			\
@@ -2994,10 +2978,10 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
 	BIT_ULL(POWER_DOMAIN_VGA) |			\
 	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
-	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
-	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
+	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
+	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
 	BIT_ULL(POWER_DOMAIN_INIT))
 
 /*
@@ -4145,8 +4129,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		}
 	},
 	{
-		.name = "DDI D TC1 IO",
-		.domains = TGL_DDI_IO_D_TC1_POWER_DOMAINS,
+		.name = "DDI IO TC1",
+		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4155,8 +4139,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI E TC2 IO",
-		.domains = TGL_DDI_IO_E_TC2_POWER_DOMAINS,
+		.name = "DDI IO TC2",
+		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4165,8 +4149,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI F TC3 IO",
-		.domains = TGL_DDI_IO_F_TC3_POWER_DOMAINS,
+		.name = "DDI IO TC3",
+		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4175,8 +4159,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI G TC4 IO",
-		.domains = TGL_DDI_IO_G_TC4_POWER_DOMAINS,
+		.name = "DDI IO TC4",
+		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4185,8 +4169,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI H TC5 IO",
-		.domains = TGL_DDI_IO_H_TC5_POWER_DOMAINS,
+		.name = "DDI IO TC5",
+		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4195,8 +4179,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI I TC6 IO",
-		.domains = TGL_DDI_IO_I_TC6_POWER_DOMAINS,
+		.name = "DDI IO TC6",
+		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4241,8 +4225,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX D TC1",
-		.domains = TGL_AUX_D_TC1_IO_POWER_DOMAINS,
+		.name = "AUX USBC1",
+		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4252,8 +4236,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX E TC2",
-		.domains = TGL_AUX_E_TC2_IO_POWER_DOMAINS,
+		.name = "AUX USBC2",
+		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4263,8 +4247,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX F TC3",
-		.domains = TGL_AUX_F_TC3_IO_POWER_DOMAINS,
+		.name = "AUX USBC3",
+		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4274,8 +4258,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX G TC4",
-		.domains = TGL_AUX_G_TC4_IO_POWER_DOMAINS,
+		.name = "AUX USBC4",
+		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4285,8 +4269,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX H TC5",
-		.domains = TGL_AUX_H_TC5_IO_POWER_DOMAINS,
+		.name = "AUX USBC5",
+		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4296,8 +4280,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX I TC6",
-		.domains = TGL_AUX_I_TC6_IO_POWER_DOMAINS,
+		.name = "AUX USBC6",
+		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4307,8 +4291,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX D TBT1",
-		.domains = TGL_AUX_D_TBT1_IO_POWER_DOMAINS,
+		.name = "AUX TBT1",
+		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4318,8 +4302,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX E TBT2",
-		.domains = TGL_AUX_E_TBT2_IO_POWER_DOMAINS,
+		.name = "AUX TBT2",
+		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4329,8 +4313,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX F TBT3",
-		.domains = TGL_AUX_F_TBT3_IO_POWER_DOMAINS,
+		.name = "AUX TBT3",
+		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4340,8 +4324,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX G TBT4",
-		.domains = TGL_AUX_G_TBT4_IO_POWER_DOMAINS,
+		.name = "AUX TBT4",
+		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4351,8 +4335,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX H TBT5",
-		.domains = TGL_AUX_H_TBT5_IO_POWER_DOMAINS,
+		.name = "AUX TBT5",
+		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4362,8 +4346,8 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX I TBT6",
-		.domains = TGL_AUX_I_TBT6_IO_POWER_DOMAINS,
+		.name = "AUX TBT6",
+		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4471,8 +4455,8 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		}
 	},
 	{
-		.name = "DDI D TC1 IO",
-		.domains = TGL_DDI_IO_D_TC1_POWER_DOMAINS,
+		.name = "DDI IO TC1",
+		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4481,8 +4465,8 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	},
 	{
-		.name = "DDI E TC2 IO",
-		.domains = TGL_DDI_IO_E_TC2_POWER_DOMAINS,
+		.name = "DDI IO TC2",
+		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4511,8 +4495,8 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX D TC1",
-		.domains = TGL_AUX_D_TC1_IO_POWER_DOMAINS,
+		.name = "AUX USBC1",
+		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
@@ -4521,8 +4505,8 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		},
 	},
 	{
-		.name = "AUX E TC2",
-		.domains = TGL_AUX_E_TC2_IO_POWER_DOMAINS,
+		.name = "AUX USBC2",
+		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index bc30c479be53..f3ca5d5c9778 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -41,6 +41,14 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_G_LANES,
 	POWER_DOMAIN_PORT_DDI_H_LANES,
 	POWER_DOMAIN_PORT_DDI_I_LANES,
+
+	POWER_DOMAIN_PORT_DDI_LANES_TC1 = POWER_DOMAIN_PORT_DDI_D_LANES, /* tgl+ */
+	POWER_DOMAIN_PORT_DDI_LANES_TC2,
+	POWER_DOMAIN_PORT_DDI_LANES_TC3,
+	POWER_DOMAIN_PORT_DDI_LANES_TC4,
+	POWER_DOMAIN_PORT_DDI_LANES_TC5,
+	POWER_DOMAIN_PORT_DDI_LANES_TC6,
+
 	POWER_DOMAIN_PORT_DDI_A_IO,
 	POWER_DOMAIN_PORT_DDI_B_IO,
 	POWER_DOMAIN_PORT_DDI_C_IO,
@@ -50,6 +58,14 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_G_IO,
 	POWER_DOMAIN_PORT_DDI_H_IO,
 	POWER_DOMAIN_PORT_DDI_I_IO,
+
+	POWER_DOMAIN_PORT_DDI_IO_TC1 = POWER_DOMAIN_PORT_DDI_D_IO, /* tgl+ */
+	POWER_DOMAIN_PORT_DDI_IO_TC2,
+	POWER_DOMAIN_PORT_DDI_IO_TC3,
+	POWER_DOMAIN_PORT_DDI_IO_TC4,
+	POWER_DOMAIN_PORT_DDI_IO_TC5,
+	POWER_DOMAIN_PORT_DDI_IO_TC6,
+
 	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_PORT_CRT,
 	POWER_DOMAIN_PORT_OTHER,
@@ -64,6 +80,14 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_G,
 	POWER_DOMAIN_AUX_H,
 	POWER_DOMAIN_AUX_I,
+
+	POWER_DOMAIN_AUX_USBC1 = POWER_DOMAIN_AUX_D, /* tgl+ */
+	POWER_DOMAIN_AUX_USBC2,
+	POWER_DOMAIN_AUX_USBC3,
+	POWER_DOMAIN_AUX_USBC4,
+	POWER_DOMAIN_AUX_USBC5,
+	POWER_DOMAIN_AUX_USBC6,
+
 	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_C_TBT,
 	POWER_DOMAIN_AUX_D_TBT,
@@ -72,6 +96,14 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_G_TBT,
 	POWER_DOMAIN_AUX_H_TBT,
 	POWER_DOMAIN_AUX_I_TBT,
+
+	POWER_DOMAIN_AUX_TBT1 = POWER_DOMAIN_AUX_D_TBT, /* tgl+ */
+	POWER_DOMAIN_AUX_TBT2,
+	POWER_DOMAIN_AUX_TBT3,
+	POWER_DOMAIN_AUX_TBT4,
+	POWER_DOMAIN_AUX_TBT5,
+	POWER_DOMAIN_AUX_TBT6,
+
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
