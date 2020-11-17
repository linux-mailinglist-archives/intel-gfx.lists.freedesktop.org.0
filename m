Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4F32B6731
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 15:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4644C6E245;
	Tue, 17 Nov 2020 14:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4366EAA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 14:15:14 +0000 (UTC)
IronPort-SDR: aB9Ahn/TSWCsRUvw2U/d1FlX27KQ3i5XEGb64f7lPY8I1kiMhCfuyaiRTocSsSBKIl9DTeeuNJ
 n6uhCdtxUTgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="168352557"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="168352557"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:15:14 -0800
IronPort-SDR: /1P0l3pTBVER0f0+oOfK8+1Zjmklwf3Ihvf07uUeAPKGPXJo29g9+RsDiEza9RFxrmKZbTFrcN
 FhQj8VWG1qqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="368106339"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2020 06:15:12 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 22:19:51 +0800
Message-Id: <20201117141951.28476-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201028144312.12520-1-shawn.c.lee@intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v4] drm/i915/rkl: new rkl ddc map for different
 PCH
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After boot into kernel. Driver configured ddc pin mapping based on
predefined table in parse_ddi_port(). Now driver configure rkl
ddc pin mapping depends on icp_ddc_pin_map[]. Then this table will
give incorrect gmbus port number to cause HDMI can't work.

Refer to commit cd0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can
works properly on rkl.

v2: update patch based on latest dinq branch.
v3: update ddc table for RKL+TGP sku.
    RKL+CNP sku will load cnp_ddc_pin_map[] setting.
v4: modify the if/else judgment to avoid nesting.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 7 +++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4cc949b228f2..823fabdb5c94 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1623,6 +1623,13 @@ static const u8 icp_ddc_pin_map[] = {
 	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
 };
 
+static const u8 rkl_pch_tgp_ddc_pin_map[] = {
+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
+	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
+	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
+};
+
 static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 {
 	const u8 *ddc_pin_map;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 49b4b5fca941..187ec573de59 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -319,6 +319,8 @@ enum vbt_gmbus_ddi {
 	ICL_DDC_BUS_DDI_A = 0x1,
 	ICL_DDC_BUS_DDI_B,
 	TGL_DDC_BUS_DDI_C,
+	RKL_DDC_BUS_DDI_D = 0x3,
+	RKL_DDC_BUS_DDI_E,
 	ICL_DDC_BUS_PORT_1 = 0x4,
 	ICL_DDC_BUS_PORT_2,
 	ICL_DDC_BUS_PORT_3,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
