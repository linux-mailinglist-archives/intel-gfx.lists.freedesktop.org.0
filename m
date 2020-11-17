Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCCA2B673E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 15:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6CC6E226;
	Tue, 17 Nov 2020 14:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BE26E226
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 14:21:44 +0000 (UTC)
IronPort-SDR: m5zrRoMgFvQZnGr2nSJhqM5WhISDacUmFYN5KJmnHbuaVwHRB3eKHHyfFteV3o/xjUDWOVlMvs
 KtxHXAZorjYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="158705633"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="158705633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:21:44 -0800
IronPort-SDR: JwEraXFbruJKn9GTNiBkyW1/3F4UdE08UbQUc298ydAHQnrpsEkRPpNDcVjzvJwBxgrbvG7LEN
 rthg5ymnOP4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="367880075"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2020 06:21:42 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 22:26:29 +0800
Message-Id: <20201117142629.28729-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201028144312.12520-1-shawn.c.lee@intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v5] drm/i915/rkl: new rkl ddc map for different
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
v5: fix typo in v4.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4cc949b228f2..cf2fba490b7b 100644
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
@@ -1630,6 +1637,9 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
 		return vbt_pin;
+	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
+		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
 		ddc_pin_map = icp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
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
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
