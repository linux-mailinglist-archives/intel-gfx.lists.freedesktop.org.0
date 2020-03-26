Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02206194067
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 14:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE0A899E7;
	Thu, 26 Mar 2020 13:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0C5899E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 13:52:01 +0000 (UTC)
IronPort-SDR: p1RWzOphAUar7+6QSzyjgpKQ6HTWq3UGqCze1WgJLMY0n/4QsM8dmnAEWq9kIcCJf+0kMlLTfD
 uRMFJYqSpwPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 06:52:01 -0700
IronPort-SDR: jcMp1DJprtt4W0qheEamuNc/CIXigHNzFKfGh+H8UzQPH9DKFJy9qCLLL8/jqSCkpE8Kr7nz37
 8MRx/BKrn8eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="420707704"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 06:51:58 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 19:11:40 +0530
Message-Id: <20200326134142.31997-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200326134142.31997-1-anshuman.gupta@intel.com>
References: <20200326134142.31997-1-anshuman.gupta@intel.com>
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
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
