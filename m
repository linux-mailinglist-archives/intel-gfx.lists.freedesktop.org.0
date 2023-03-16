Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7246BDA1A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A3010E2FB;
	Thu, 16 Mar 2023 20:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047AE10E2FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998390; x=1710534390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hALqEJEsqxcyjtZyTWutaN+2JSoah86g5wvVi8ZLcl4=;
 b=iDZaETtVp9RF0+aJC1qECqofoNP3aek3+r1+e1IzswO87ESs165phxxi
 zPCZFZGwhmMWgVsuVOwiZ14YXQROaSwMiFYIcQBiKGCRtv7R8GLSuuaJz
 hQKcNtDl0SwAaCUZwrf9uRwpVU74gNqH+BXYzlzsAokFZlDatlFWf9qtd
 uI6u3n8o92gjGaMXYnaEO4TgS0su5XH+2yfaCYskiSEGodN6rwrDr7PTH
 PsRKEq5gtHQubS3XNCsvkMFnEkcy4Ut69byWvIxZwbA5urzDFEPLVTFgm
 4F/OX3136dY/OkTUtU5vGvZXOOKqurOVkyyCWhLjqTo2tW8Ns87hjFTM+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475487"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475487"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031878"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031878"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:45 -0700
Message-Id: <20230316202549.1764024-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Use separate "DC off" power well
 for ADL-P and DG2
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Although ADL-P and DG2 both use the same general power well setup, the
DC5/DC6 requirements are slightly different which means each platform
should have its own "DC off" power well.

DG2 (i.e., Xe_HPD IP) requires that DC5 be disabled whenever PG2 is
active.  However ADL-P (i.e., Xe_LPD IP) only requires DC5/DC6 to be
disabled when the PGC or PGD subwells are active; we should be able to
remain in these DC states when PGB and general PG2 functionality is in
use.

Bspec: 49193
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 41 +++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..d9e02cc9cf3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1301,7 +1301,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
  */
 
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
-	XELPD_PW_2_POWER_DOMAINS,
+	XELPD_PW_C_POWER_DOMAINS,
+	XELPD_PW_D_POWER_DOMAINS,
 	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
@@ -1310,14 +1311,38 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc xelpd_power_wells_main[] = {
+static const struct i915_power_well_desc xelpd_power_wells_dcoff[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
 		),
 		.ops = &gen9_dc_off_power_well_ops,
-	}, {
+	}
+};
+
+I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
+	POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xehpd_power_wells_dcoff[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xehpd_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
+		.ops = &gen9_dc_off_power_well_ops,
+	}
+};
+
+static const struct i915_power_well_desc xelpd_power_wells_main[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_2", &xelpd_pwdoms_pw_2,
 				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
@@ -1400,6 +1425,14 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 static const struct i915_power_well_desc_list xelpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_dcoff),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
+};
+
+static const struct i915_power_well_desc_list xehpd_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xehpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
 };
 
@@ -1624,6 +1657,8 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 
 	if (DISPLAY_VER(i915) >= 14)
 		return set_power_wells(power_domains, xelpdp_power_wells);
+	else if (IS_DG2(i915))
+		return set_power_wells(power_domains, xehpd_power_wells);
 	else if (DISPLAY_VER(i915) >= 13)
 		return set_power_wells(power_domains, xelpd_power_wells);
 	else if (IS_DG1(i915))
-- 
2.34.1

