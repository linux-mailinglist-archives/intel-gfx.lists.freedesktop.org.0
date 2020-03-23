Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5078A18F039
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 08:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8664989E57;
	Mon, 23 Mar 2020 07:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8A589E50
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:28:23 +0000 (UTC)
IronPort-SDR: G851lYGcBUgca/YwZ9NFGcRl94uI+62c3V8k9I8ldJ3b3mdhIeqyHskckwSE7cR3mZgc0ECNEW
 GwlkGbqugNKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 00:28:23 -0700
IronPort-SDR: Bi3jqohMCj8Z7m1lyixjznKmUdkaLWJEPYnU6A/W0+TRN5CKgoPurzmhUaPD0O3fVrEuYIoFpH
 2rWg/PZsYwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; d="scan'208";a="419414457"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 00:28:21 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 12:43:11 +0530
Message-Id: <20200323071313.5858-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200323071313.5858-1-anshuman.gupta@intel.com>
References: <20200323071313.5858-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Power well id for ICL PG3
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com, martin.peres@intel.com
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
index 246e406bb385..15af5177c260 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -943,7 +943,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
 	if (INTEL_GEN(dev_priv) >= 12)
-		high_pg = TGL_DISP_PW_3;
+		high_pg = ICL_DISP_PW_3;
 	else
 		high_pg = SKL_DISP_PW_2;
 
@@ -3564,7 +3564,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.name = "power well 3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = ICL_DISP_PW_3,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
@@ -3942,7 +3942,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
