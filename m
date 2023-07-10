Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D81A74D7FF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25C110E11B;
	Mon, 10 Jul 2023 13:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703F910E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996657; x=1720532657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KE5NlZtsfk36T7cLFTZZWkTI9NPYty678/56rOv5vpg=;
 b=dz9fkhhjO1XSD/HlYpoP4DVS/PJzkdgGBs7LSCxqi79Zi9Bo2aswCSuW
 KaZE5xdMh2QuysNQhtThmkfHH52Sz44rerLRRFyZfhRmaGnI5wqIMWXE8
 G1r4F4cp1fpBErkQy4ObNU7ZoW8FqIe4kWTzDenkd18BWj8I2uHHm22y4
 C8Hfq8TUnvxxwYpLeoBuZDJYgsD+n7FFg35Y3MK5FZrbYcZfYlN2ntX6T
 OXeyUk8zGHtid+Sa3TdgNcbekaewbCkbbQmLAzWQ7UMEXskQHjtV1nQ2s
 pzC/sCY0pmfoliOdVXVmohNDe+T0legK6SCpTAwdgLo+gWQR8HWbxqtWS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="343939137"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343939137"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051364398"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="1051364398"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2023 06:44:15 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 19:13:16 +0530
Message-Id: <20230710134317.2794177-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
References: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/color: Upscale degamma values
 for MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
bit precision. Until a new uapi comes along to support higher bitdepth,
upscale the values sent from userland to 24 bit before writing into the
HW to continue supporting degamma on MTL.

Add helper function to upscale or downscale lut values. Parameters
'to' and 'from' needs to be less than 32. This should be sufficient
as currently there are no lut values exceeding 32 bit.

v2: (Jani)
    - Reuse glk_load_degamma_lut()
    - Create a helper function for upscaling values

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8966e6560516..15ada7fada96 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1453,6 +1453,16 @@ static int glk_degamma_lut_size(struct drm_i915_private *i915)
 		return 35;
 }
 
+/* change_lut_val_precision: helper function to upscale or downscale lut values.
+ * Parameters 'to' and 'from' needs to be less than 32. This should be sufficient
+ * as currently there are no lut values exceeding 32 bit.
+ **/
+
+static u32 change_lut_val_precision(u32 lut_val, int to, int from)
+{
+	return mul_u32_u32(lut_val, (1 << to)) / (1 << from);
+}
+
 static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 				 const struct drm_property_blob *blob)
 {
@@ -1487,8 +1497,15 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
+		u32 lut_val;
+
+		if (DISPLAY_VER(i915) >= 14)
+			lut_val = change_lut_val_precision(lut[i].green, 24, 16);
+		else
+			lut_val = lut[i].green;
+
 		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
-			      lut[i].green);
+			      lut_val);
 	}
 
 	/* Clamp values > 1.0. */
-- 
2.25.1

