Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B22181995A4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B1D6E2EA;
	Tue, 31 Mar 2020 11:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F466E81C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:47:54 +0000 (UTC)
IronPort-SDR: ODc+tfmT418qvbawwXvd4CY/JVJmfv9iveFhobEsNSsAq/DDAB3bU2veG66y/wL01CB1fyFDx9
 vbX157+QEMRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:47:54 -0700
IronPort-SDR: Gg/9ng2C1BCGCTrFxpBelyGtgcJYi6BTkkthedmDNOK3YKNYx2nbN1hsV2pBsk5Dy/ium0Vsyd
 /VJEEHFt1sWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="240100999"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2020 04:47:52 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:07:33 +0530
Message-Id: <20200331113735.5452-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200331113735.5452-1-anshuman.gupta@intel.com>
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915: Power well id for ICL PG3
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gen11 onwards PG3 is contains functions for pipe B,
external displays, and VGA. It make sense to add
a power well id with name ICL_DISP_PW_3 rather then
TGL_DISP_PW_3, Also PG3 power well id requires to
know if lpsp is enabled.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 433e5a81dd4d..3672c00be94a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -943,7 +943,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
 	if (INTEL_GEN(dev_priv) >= 12)
-		high_pg = TGL_DISP_PW_3;
+		high_pg = ICL_DISP_PW_3;
 	else
 		high_pg = SKL_DISP_PW_2;
 
@@ -3571,7 +3571,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.name = "power well 3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = ICL_DISP_PW_3,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
@@ -3949,7 +3949,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.name = "power well 3",
 		.domains = TGL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = TGL_DISP_PW_3,
+		.id = ICL_DISP_PW_3,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index da64a5edae7a..56cbae6327b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -100,7 +100,7 @@ enum i915_power_well_id {
 	SKL_DISP_PW_MISC_IO,
 	SKL_DISP_PW_1,
 	SKL_DISP_PW_2,
-	TGL_DISP_PW_3,
+	ICL_DISP_PW_3,
 	SKL_DISP_DC_OFF,
 };
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
