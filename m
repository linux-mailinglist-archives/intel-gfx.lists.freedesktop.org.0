Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4C4BAEF3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 02:02:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8C010E995;
	Fri, 18 Feb 2022 01:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A682E10E995
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 01:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645146151; x=1676682151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bgc1zU90BQnzhHE5BFAO76t1/AirL2pOPu2AlQ7Gz+U=;
 b=f5eoCmY+zF0lyDTiRb1M8N7KaUh7r52Tf0s3V0J17RTT+72I3R83SgGg
 x6pECOg/YL+qNjU1w39YPy1vsptczbhYJcPNC2W5NYyNMKMJFgEXJbkk2
 TUH3HPPoHjLtNCb7ORulATAnNe2wzpSEx/ag6qsWCG2s8rHNFN0MEbOdg
 /mCZ/QV0v8lTjvDZgNWv/V8+djGM/l+IdLHbB/nOC8pbK1Mfnr1i6/XIH
 LOnod5wudopHfbbqwxRKE7JH7/2elPnPtpzsMhD6bfggnspnZYhsxG+0e
 YA4Wzq/Ijb46D/0kF4jV7OQsgS8gx+M3BU4vWAB9yJ9H9GsjdqnH/x+aM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="311760956"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="311760956"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 17:02:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="637494126"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 17:02:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 17:03:26 -0800
Message-Id: <20220218010328.183423-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915: Fix for PHY_MISC_TC1 offset
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jouni Högander <jouni.hogander@intel.com>

Currently ICL_PHY_MISC macro is returning offset 0x64C10 for PHY_E.
The PORT_TC1 port is not yet enabled properly in the driver, but
intel_phy_snps.c is relying on intel_phy_is_snps() to filter out
unavailable phys. That function was already considering the last phy as
available. Just correct the offset of the last phy to 0x64C14 as the
rest of the support for it is coming on next commits.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 8573a458811a..36a0f78a18dd 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -32,7 +32,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		if (!intel_phy_is_snps(i915, phy))
 			continue;
 
-		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
+		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
 			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
 				phy);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b23ff4a19200..a24cb2826d9d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9355,8 +9355,10 @@ enum skl_power_gate {
 
 #define _ICL_PHY_MISC_A		0x64C00
 #define _ICL_PHY_MISC_B		0x64C04
-#define ICL_PHY_MISC(port)	_MMIO_PORT(port, _ICL_PHY_MISC_A, \
-						 _ICL_PHY_MISC_B)
+#define _DG2_PHY_MISC_TC1	0x64C14 /* TC1="PHY E" but offset as if "PHY F" */
+#define ICL_PHY_MISC(port)	_MMIO_PORT(port, _ICL_PHY_MISC_A, _ICL_PHY_MISC_B)
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))
 #define  ICL_PHY_MISC_MUX_DDID			(1 << 28)
 #define  ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN	(1 << 23)
 #define  DG2_PHY_DP_TX_ACK_MASK			REG_GENMASK(23, 20)
-- 
2.35.1

