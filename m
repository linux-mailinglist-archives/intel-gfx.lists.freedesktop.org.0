Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D8C753169
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 07:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94ED110E1AA;
	Fri, 14 Jul 2023 05:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865E910E1AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 05:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689313514; x=1720849514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cPtsuvUCHO4feDSEQclKMzylFCAUK7b/9OXyusIAwS0=;
 b=HIPQx/C2HQEI965Gdxmn1/Siev3U/qo0MnvNxRFPTu2QTufIg8VYO4a7
 JQ+17E1g3lbEdjkBfAbzH9ogfXgDHwuFw11QLHviVHOnU32Fx2UM9C1xk
 aQifJNNpae04zH3KAApiGU4C0mGcaJPDXdLDUTT0A94xFT66T7dcI4pXH
 RZj8u1u91U76fRlsCRLraOTMSZsCjWA60dCk6MGPwxYzZnY0mCAWRzFXD
 lmZCBe1FQaQOShsWc40w2juujSVb6uQjUF5L7B6v2H5mDnx8CVxz8a5b5
 td3F1ZPSuBldhdbM2fju6JuKnjdDjdaLYvoj/Zy8AA0kamapwBeEx1Nj6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="431568027"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="431568027"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 22:45:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751916781"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="751916781"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2023 22:44:55 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jul 2023 11:07:33 +0530
Message-Id: <20230714053733.2117730-1-arun.r.murthy@intel.com>
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

