Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8719D1AAF54
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1165D6EA3F;
	Wed, 15 Apr 2020 17:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038F86EA3E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:20:41 +0000 (UTC)
IronPort-SDR: Xt0bsP5xiCs2b3gnih3NIjW+kOPdun3KbclPwH5svKK7DsW/qAMY2jc82FzX7fqbXyHZu4AyS7
 MCP5d/eLXZ5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 10:20:41 -0700
IronPort-SDR: ozzlxE6Egdj5X9KNCSWDo5pIADnOxKdcLdTB61z4bSTvOKx9esDvt42wYsJz676jjWZpuoW4Tp
 HlBFuwyGSSxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="400382902"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 15 Apr 2020 10:20:40 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 22:35:52 +0530
Message-Id: <20200415170555.15531-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200415170555.15531-1-anshuman.gupta@intel.com>
References: <20200415170555.15531-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/4] drm/i915: Power well id for ICL PG3
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

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
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
