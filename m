Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439082A2C1C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 14:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0876E112;
	Mon,  2 Nov 2020 13:52:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C576E112
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 13:52:35 +0000 (UTC)
IronPort-SDR: l7pe/DLQGpTlU/kAy6iwP+8CzmSAp270XMfbpx8CnJwDC4z14g66RCNzdJs/ZzPApD6ulvvH+j
 u0QeQkPYnecw==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="166293575"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="166293575"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 05:52:34 -0800
IronPort-SDR: ldMpM7ykIaSD2m3p8pNcPwvqR7Cugo/SmXabYKs09if/963VbTTf/6fFS1pH2z5cDWocbUPHBp
 XLBHMgrQkrMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="357329534"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2020 05:52:33 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 21:56:14 +0800
Message-Id: <20201102135614.857-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201028144312.12520-1-shawn.c.lee@intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915/rkl: new rkl ddc map for different
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

Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can
works properly on rkl.

v2: update patch based on latest dinq branch.
v3: update ddc table for RKL+TGP sku.
    RKL+CNP sku will load cnp_ddc_pin_map[] setting.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4cc949b228f2..4de991bafd10 100644
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
@@ -1631,8 +1638,13 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
 		return vbt_pin;
 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
-		ddc_pin_map = icp_ddc_pin_map;
-		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
+		if (IS_ROCKETLAKE(dev_priv)) {
+			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
+			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
+		} else {
+			ddc_pin_map = icp_ddc_pin_map;
+			n_entries = ARRAY_SIZE(icp_ddc_pin_map);
+		}
 	} else if (HAS_PCH_CNP(dev_priv)) {
 		ddc_pin_map = cnp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
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
