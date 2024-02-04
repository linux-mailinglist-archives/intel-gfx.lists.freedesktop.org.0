Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272B9848BF4
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 08:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A94E10FE68;
	Sun,  4 Feb 2024 07:49:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K61cqw+N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C091120FE
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707032946; x=1738568946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxBiL/8Ll1F5aHspBs1+g5SZqRtXjEFM0D1548o72K0=;
 b=K61cqw+NHIx6Yb0nYNUlcl2co1oyQ8fP115i4XA5LpECP5BPFcrvr0Rf
 1W16bSsvuCb34goBgUFj+tRCVTHtjyCYPs6+yhAXRGqZcUqKWqUHx8rr0
 /W640PZwOC2AwmT2JAc1JB9+5VGfjQdJ9mG9l/zCGkPH5TqiGHGfFC6dn
 d/P+nPH7Op4dnVrFUENaw4SEMTvEc2Mt8d4KvVyUfMRDZVEt8OhXMm76P
 y/JEJrgMegU82RBo+G5Tq7ARdMbCGEG/f/axW7FNNgmtLAQzJygNaaVb/
 ae+wJ0Mfkefi0U04LBYWf0/4bi0k7CAbT6sgDxMjndcyRZKRn0HspNy8o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="279254"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="279254"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 23:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5067711"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 03 Feb 2024 23:41:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/11] drm/i915/hdcp: Read Rxcaps for robustibility
Date: Sun,  4 Feb 2024 13:09:36 +0530
Message-Id: <20240204073936.1135848-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204073936.1135848-1-suraj.kandpal@intel.com>
References: <20240204073936.1135848-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

We see some monitors and docks report incorrect hdcp version
and capability in first few reads so we read rx_caps three times
before we conclude the monitor's or docks HDCP capability

--v2
-Add comment to justify the 3 time read loop for hdcp capability[Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 29 ++++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 2370bd0e4aa3..6d15826ec76f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -638,18 +638,29 @@ int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
 			    bool *capable)
 {
 	u8 rx_caps[3];
-	int ret;
+	int ret, i;
 
 	*capable = false;
-	ret = drm_dp_dpcd_read(aux,
-			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
-			       rx_caps, HDCP_2_2_RXCAPS_LEN);
-	if (ret != HDCP_2_2_RXCAPS_LEN)
-		return ret >= 0 ? -EIO : ret;
 
-	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
-	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
-		*capable = true;
+	/*
+	 * Some HDCP monitors act really shady by not giving the correct hdcp
+	 * capability on the first rx_caps read and usually take an extra read
+	 * to give the capability. We read rx_caps three times before we
+	 * declare a monitor not capable of HDCP 2.2.
+	 */
+	for (i = 0; i < 3; i++) {
+		ret = drm_dp_dpcd_read(aux,
+				       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
+				       rx_caps, HDCP_2_2_RXCAPS_LEN);
+		if (ret != HDCP_2_2_RXCAPS_LEN)
+			return ret >= 0 ? -EIO : ret;
+
+		if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
+		    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2])) {
+			*capable = true;
+			break;
+		}
+	}
 
 	return 0;
 }
-- 
2.25.1

