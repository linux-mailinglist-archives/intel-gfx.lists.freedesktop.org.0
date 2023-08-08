Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F787737EB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 06:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAAC510E025;
	Tue,  8 Aug 2023 04:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C883410E025
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 04:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691468846; x=1723004846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=97Qu5dxObgNAJHiP+H4MNFr7Jf+peQ68hZWk6ODHyuU=;
 b=JsaB7RfAP2r8/En5noHdJEgDlo2BtCo2Z4/02/R/0gZV5F3ClSsdoSyz
 eT5rPCmBV3qmoOqiLf8sqifbhSu4PedlYys5RFNFpMed1Mlo5ZUsaTE04
 nFV5pw5ngU+24QSlAkEFxlzseO64wL9SFYQSS8HPIxuRyEOygZPNjPJdn
 R+f6bC4m1tuKT+OX4VUNAbXDJjPkcFvC1P4RPfYQtDXy62bdtm6H9ZF6z
 Vl0FAh3aG1cS8VdP254sjEvlFkEbjGhgwD25+WKh6A4VYf4weoEHmL8HV
 Wclod8SsfPvpr2MdWtx2onfhyhBHucTWWfumFniEafj+m/4pF4eNJY3Ay A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="351018069"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="351018069"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 21:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="854951435"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="854951435"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 07 Aug 2023 21:27:24 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 09:50:00 +0530
Message-Id: <20230808042000.3210715-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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

The debug print for enabling SDP CRC16 is applicable only for DP2.0, but
this debug print was not within the uhbr check and was always printed.
Fis this by adding proper checks and returning.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a263773f4d68..4485ef4f8ec6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 	 * Default value of bit 31 is '0' hence discarding the write
 	 * TODO: Corrective actions on SDP corruption yet to be defined
 	 */
-	if (intel_dp_is_uhbr(crtc_state))
-		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
-		drm_dp_dpcd_writeb(&intel_dp->aux,
-				   DP_SDP_ERROR_DETECTION_CONFIGURATION,
-				   DP_SDP_CRC16_128B132B_EN);
+	if (!intel_dp_is_uhbr(crtc_state))
+		return;
+
+	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
+	drm_dp_dpcd_writeb(&intel_dp->aux,
+			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
+			   DP_SDP_CRC16_128B132B_EN);
 
 	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
-- 
2.25.1

