Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC1029D062
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 15:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5286E53C;
	Wed, 28 Oct 2020 14:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50EA6E53C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 14:40:01 +0000 (UTC)
IronPort-SDR: nGqDwTitziYCGtgGk6k6YdUaCfp35sEpKF7jpVxGEh4+DgXNIJz7g13N/3n/XZPehXHZKZGFRH
 cnKrlh3iD2ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="148123922"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="148123922"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 07:39:57 -0700
IronPort-SDR: oaEe4BsgbQ+wGYGDBBH2g5lLJT3Yv5Dt3UZ307iqqDNRpki9dRv0VE8lqrH5iyowNeIlEwiE1r
 wbrJ+z+QEe8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="351029965"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2020 07:39:55 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 22:43:12 +0800
Message-Id: <20201028144312.12520-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/rkl: new rkl ddc map for different PCH
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

Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can
works properly on rkl.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 22 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a0a41ec5c341..f2c4772e4c7f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1597,12 +1597,32 @@ static const u8 icp_ddc_pin_map[] = {
 	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
 };
 
+static const u8 rkl_pch_tgp_ddc_pin_map[] = {
+	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
+	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
+};
+
+static const u8 rkl_pch_cmp_ddc_pin_map[] = {
+	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_3_BXT,
+	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_4_CNP,
+};
+
 static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 {
 	const u8 *ddc_pin_map;
 	int n_entries;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
+	if (IS_ROCKETLAKE(dev_priv)) {
+		if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP) {
+			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
+			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
+		} else {
+			ddc_pin_map = rkl_pch_cmp_ddc_pin_map;
+			n_entries = ARRAY_SIZE(rkl_pch_cmp_ddc_pin_map);
+		}
+	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
 		ddc_pin_map = icp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
 	} else if (HAS_PCH_CNP(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 6faabd4f6d49..3418c00446c1 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -315,6 +315,10 @@ enum vbt_gmbus_ddi {
 	ICL_DDC_BUS_DDI_A = 0x1,
 	ICL_DDC_BUS_DDI_B,
 	TGL_DDC_BUS_DDI_C,
+	RKL_DDC_BUS_DDI_B = 0x1,
+	RKL_DDC_BUS_DDI_C,
+	RKL_DDC_BUS_DDI_D,
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
